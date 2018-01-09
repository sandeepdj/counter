import { BrowserModule } from '@angular/platform-browser';
import {BrowserAnimationsModule} from '@angular/platform-browser/animations';

import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpClientModule,HTTP_INTERCEPTORS } from '@angular/common/http';
import { AppComponent } from './app.component';
import {
  LoginComponent,
  HeaderComponent,
  SidebarComponent,
  LayoutComponent,
  FooterComponent
 } from './components/index';


 
import {
  DashboardComponent,
  HomeComponent,
} from './modules/index';

import {
  C404Component,
  C401HComponent,
} from './http-status/index';

import { AppGlobals } from './shared/app.global';
import { AppRoutingModule } from './app.router';
//Services
import {TokenInterceptor} from './services/token.interceptor';
import { AuthService, AuthGuard,SidebarService } from './services/index';
import { MenulistComponent } from './components/sidebar/menulist/menulist.component';
import { MaterialModule } from './material.module';
import { ChartModule } from 'angular2-highcharts';

 declare var require: any;

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    HeaderComponent,
    DashboardComponent,
    HomeComponent,
    SidebarComponent,
    LayoutComponent,
    FooterComponent,
    MenulistComponent,
    C404Component,
    C401HComponent,
   ],
  imports: [
    BrowserModule,
    BrowserAnimationsModule,
    FormsModule,
    AppRoutingModule,
    HttpClientModule,
    MaterialModule,
    ChartModule.forRoot(
      require('highcharts'),
      require('highcharts/modules/exporting'),
      require('highcharts/highcharts-3d'),
    )
  ],
  providers: [
    AuthGuard,
    AuthService,
    AppGlobals,
    SidebarService,
     {
      provide: HTTP_INTERCEPTORS,
      useClass: TokenInterceptor,
      multi: true
    }
     
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }


// ,
//     {
//       provide: HTTP_INTERCEPTORS,
//       useClass: TokenInterceptor,
//       multi: true
//     }