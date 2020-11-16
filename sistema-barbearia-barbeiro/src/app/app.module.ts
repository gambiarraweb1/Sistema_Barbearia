import { ServiceCardListModule } from './service-card-list/service-card-list.module';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { FontAwesomeModule } from '@fortawesome/angular-fontawesome';
import {MatCardModule} from '@angular/material/card';

import { HomeComponentComponent } from './home-component/home-component.component';
import { SidebarComponent } from './sidebar/sidebar.component';
import { HeaderComponent } from './header/header.component';
import { FooterComponent } from './footer/footer.component';
import { AppTitleComponent } from './app-title/app-title.component';
import { CardComponent } from './card/card.component';
import { CardMComponent } from './card-m/card-m.component';


@NgModule({
  declarations: [
    AppComponent,
    HomeComponentComponent,
    SidebarComponent,
    HeaderComponent,
    FooterComponent,
    AppTitleComponent,
    CardComponent,
    CardMComponent,


  ],
  imports: [
    MatCardModule,
    BrowserModule,
    AppRoutingModule,
    BrowserAnimationsModule,
    FontAwesomeModule,
    ServiceCardListModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
