import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TermsandcondComponent } from './termsandcond.component';

describe('TermsandcondComponent', () => {
  let component: TermsandcondComponent;
  let fixture: ComponentFixture<TermsandcondComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [TermsandcondComponent]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TermsandcondComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
