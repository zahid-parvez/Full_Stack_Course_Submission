import { Component } from '@angular/core';
import { RouterModule, RouterOutlet } from '@angular/router';
import { CarouselComponent } from "../carousel/carousel.component";

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [RouterModule, RouterOutlet, CarouselComponent],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

}
