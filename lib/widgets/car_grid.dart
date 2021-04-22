
import 'package:car_rental_app/models/cars.dart';
import 'package:car_rental_app/screens/car_details.dart';
import 'package:car_rental_app/util/utils.dart';
import 'package:flutter/material.dart';
import '../models/cars.dart';

class CarsGrid extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: allCars.cars.length,
      itemBuilder:(ctx, i)=>Padding
      (
        padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx)=>CarDetail(
                              price: allCars.cars[i].price, 
                              color: allCars.cars[i].color, 
                              fuel: allCars.cars[i].fuel, 
                              gearbox: allCars.cars[i].gearbox,
                               path: allCars.cars[i].path, 
                              title: allCars.cars[i].title, 
                              brand: allCars.cars[i].brand)));
                        },
                                              child: Container(
                          margin: EdgeInsets.only(
                            top:i.isEven?0 : 15,
                            bottom:i.isEven?20:0),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            boxShadow: [BoxShadow(color: Colors.black26,
            blurRadius:5,
            spreadRadius: 1
            )]
          ),
          child: Column(
            children: [
              SizedBox(width:120.0,
              height:100.0,
              child: Image.asset(allCars.cars[i].path)),
              Text(allCars.cars[i].title,
                style: BasicHeading,),
              Text((allCars.cars[i].price).toString(),
                style: SubHeading,),
              Text('per month')
            ],
          )
        ),
                      ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}