import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { AboutComponent } from './about/about.component';
import { ContactComponent } from './contact/contact.component';
import { LoginComponent } from './login/login.component';
import { CookiepolicyComponent } from './cookiepolicy/cookiepolicy.component';
import { PrivacypolicyComponent } from './privacypolicy/privacypolicy.component';
import { TermsandcondComponent } from './termsandcond/termsandcond.component';
import { HomeComponent } from './home/home.component';
import { NotfoundComponent } from './notfound/notfound.component';
import { SignupComponent } from './signup/signup.component';
import { ShoppingComponent } from './shopping/shopping.component';

export const routes: Routes = [
  {path:'home', component:HomeComponent},
  { path: 'login', component: LoginComponent },
  { path: 'about', component: AboutComponent },
  { path: 'contact', component: ContactComponent },
  { path: 'cookiepolicy', component:CookiepolicyComponent},
  { path:'privacypolicy', component:PrivacypolicyComponent},
  { path:'termsandcond', component:TermsandcondComponent},
  {path: 'signup', component:SignupComponent},
  {path:'shopping', component:ShoppingComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
