import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet,FormsModule],
  templateUrl: './app.component.html',
  styleUrl: './app.component.css'
})
export class AppComponent {
  public productName:string = " ";
  public productPrice:number = 0;
  public productQuantity:number = 0;

  public totalAmount:number = 0;

  public get()
  {
    this.totalAmount = this.productPrice*this.productQuantity;
  }

  public dec()
  {
    if(this.productQuantity <=0)
        alert("No qunatity Selected")
    if(this.productQuantity >0)
        this.productQuantity--;
    this.totalAmount = this.productPrice*this.productQuantity;
  }
  public inc()
  {
    this.productQuantity++;
    this.totalAmount = this.productPrice*this.productQuantity;
  }
}
