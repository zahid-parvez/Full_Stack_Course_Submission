import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';

@Component({
  selector: 'app-http',
  standalone: true,
  imports: [CommonModule, FormsModule],
  providers: [HttpClient],
  templateUrl: './http.component.html',
  styleUrl: './http.component.css'
})
export class HttpComponent {
  public userData: any[] = [];
  constructor(private _httpObj: HttpClient) {

  }

  public getUserDetails() {
    this._httpObj.get('https://reqres.in/api/users/').subscribe((resData: any) => {
      // console.log(resData.data);
      this.userData = resData.data;
    });
  }
}
