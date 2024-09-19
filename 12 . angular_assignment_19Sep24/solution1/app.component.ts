import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, CommonModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  public deptsArray: any[] = [
    { deptno: 10, dname: "Accounts", loc: "Hyderabad" },
    { deptno: 20, dname: "Sales", loc: "Pune" },
    { deptno: 30, dname: "Operations", loc: "Mumbai" },
    { deptno: 40, dname: "Marketing", loc: "Chennai" },
    { "deptno": 20, "dname": "Sales", "loc": "New York" },
    { "deptno": 30, "dname": "HR", "loc": "San Francisco" },
    { "deptno": 40, "dname": "IT", "loc": "Chicago" },
    { "deptno": 50, "dname": "Marketing", "loc": "Los Angeles" },
    { "deptno": 60, "dname": "Finance", "loc": "Boston" },

  ]
}
