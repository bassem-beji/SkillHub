import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ExpertPageComponent } from './expert-page.component';

describe('ExpertPageComponent', () => {
  let component: ExpertPageComponent;
  let fixture: ComponentFixture<ExpertPageComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ExpertPageComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(ExpertPageComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
