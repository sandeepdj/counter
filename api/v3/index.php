<?php
 use Monolog\Logger;
 use Monolog\Handler\RotatingFileHandler;
 use \Firebase\JWT\JWT;
 use  Tuupola\Base62;

// Create and configure Slim app
$config = ['settings' => [
    'displayErrorDetails' => true,
    'debug' => true,
    "db" => [
        "host" => "localhost",
        "dbname" => "salesManager",
        "user" => "root",
        "pass" => "root"
    ],
]];
require 'vendor/autoload.php';
$app = new \Slim\App($config);

$app->add(function ($req, $res, $next) {
    $response = $next($req, $res);
    return $response
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Access-Control-Allow-Headers', 'X-Requested-With, Content-Type, Accept, Origin, Authorization')
            ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, PATCH, OPTIONS');
});

$logger = new Logger("slim");
$rotating = new RotatingFileHandler(__DIR__ . "/logs/slim.log", 0, Logger::DEBUG);
$logger->pushHandler($rotating);
$container = $app->getContainer();
$container['logger'] = function($c) {
    $logger = new \Monolog\Logger('my_logger');
    $file_handler = new \Monolog\Handler\StreamHandler('../logs/app.log');
    $logger->pushHandler($file_handler);
    return $logger;
};
 

 

function dbConnect(){
    $conn = mysqli_connect("localhost","root","root","salesManager");
    return $conn;
}
 


$app->add(new \Slim\Middleware\JwtAuthentication([
    "path" => ["/books","/modules"],
    "passthrough" => ["/login"],
    "secret" => "supersecretkeyyoushouldnotcommittogithub",
    "algorithm" => ["HS256", "HS384"],
    "callback" => function ($request, $response, $arguments) use ($container) {
        $container["jwt"] = $arguments["decoded"];
    },
    "error" => function ($request, $response, $arguments) {
        $data["status"] = "error";
        $data["message"] = $arguments["message"];
        return $response
            ->withHeader("Content-Type", "application/json")
            ->write(json_encode($data, JSON_UNESCAPED_SLASHES | JSON_PRETTY_PRINT));
    }
]));

$app->get('/hello/{name}', function ($request, $response, $args) {
   

    $conn = dbConnect();
    var_dump($conn);
});

function token($emid,$name){
    $now = new DateTime();
    $future = new DateTime("now +2 hours");
     $future1 = new DateTime("now +3 hours");
    $jti = new Base62(["characters" => Base62::GMP]);
    $secret = "supersecretkeyyoushouldnotcommittogithub";
    $payload = [
        "emid" =>$emid,
        "ename"=>$name,
         "jti" => $jti,
        "nbf"=>$future1->getTimeStamp(),
        "iat" => $now->getTimeStamp(),
        "exp" => $future->getTimeStamp()
    ];
    JWT::$leeway = 60;
    $token = JWT::encode($payload, $secret, "HS256");
    return $token;
}
 




$app->post('/login', function ($request, $response, $args) use ($app) {
    //$token  = token();
    $response=array();
    $data = $request->getParsedBody();
    $username = $data['username'];
    $password = $data['password'];
   
  $conn = dbConnect();
 
        $user = "select * from users where email='$username' AND password='$password'";
        $exec=mysqli_query($conn , $user) or die(mysqli_error($conn));
        $ucount = mysqli_num_rows($exec);
        if($ucount==1){
            $udata = mysqli_fetch_assoc($exec);
            $uid       =     $udata['emuidid'];
            $name      =     $udata['name'];
            $email      =     $udata['email'];
            $phone  =     $udata['phone'];
            $token  = token($emid,$name);
            $response["token"] = $token;
            $response['name']=$name;
            $response['email']= $email;
            $response['phone']= $phone;
        }else{
            $response['status']='error';
            $response['message']='Wrong login credentails';
            $response['user']="No user found";
        }
   
    echo json_encode($response); 

//echoResponse(200,$response);
});
 
$app->get('/modules',function($request, $response, $args){

   
     $conn = dbConnect();
     

      //$conn =getConnection();
    $refs = array();
    $list = array();
    $sql ="select * from menus where active='Yes'";
    $result = mysqli_query($conn,$sql) or die(mysqli_error($conn));
    while($data = mysqli_fetch_assoc($result)) {
        $thisref = &$refs[ $data['mid'] ];
        $thisref['mnm'] = $data['mnm'];
        $thisref['url'] = $data['url'];
        $thisref['icon'] = $data['icon'];
         $thisref['parent_id'] = $data['pid'];
        if ($data['pid'] == 0) {
            $list[  ] = &$thisref;
        } else {
            $refs[ $data['pid'] ]['children'][] = &$thisref;
        }
    }
    $mylist["data"] = $list;
echo json_encode($mylist);
});



$app->group('/books', function () use ($app) {
    $app->get('', function ($request, $response, $args) {
        $response = array();
        $db = $this->jwt->dbname;
        $conn = getConnection($db);
        $user = "select * from employee ";
        $exec=mysqli_query($conn , $user) or die(mysqli_error($conn));
        while($row = mysqli_fetch_assoc($exec)){
              $response['users'][] = $row;
        }
        //$response['users'][] = $_SESSION;
        echo json_encode($response);

        //var_dump($response);
    });
    $app->post('', function ($request, $response, $args) {
        // Create a new book
    });
    $app->get('/{id:\d+}', function ($request, $response, $args) {
        // Return a single book
    });
    $app->put('/{id:\d+}', function ($request, $response, $args) {
        // Update a book
    });
});

$app->run();

