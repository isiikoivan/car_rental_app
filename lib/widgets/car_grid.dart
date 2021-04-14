
import 'package:car_rental_app/models/cars.dart';
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
      itemBuilder:(ctx, i)=>Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          boxShadow: [BoxShadow(color: Colors.grey,
          blurRadius:10)]
        ),
        child: Column(
          children: [
            Image.asset(allCars.cars[i].path),
            Text(allCars.cars[i].title,
            style: BasicHeading,),
            Text((allCars.cars[i].price).toString(),
              style: SubHeading,),
            Text('per month')
          ],
        )
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}