import 'package:car_rental_app/widgets/car_grid.dart';
import 'package:flutter/material.dart';
import 'package:car_rental_app/util/utils.dart';
import '../widgets/car_grid.dart';

class CarsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
         centerTitle: true,
        elevation: 0,
        title: Text('okCars'
        ,style: SubHeading,
        )
       
        ),
        body: ListView(
children: [
  Text('Available Cars',
  style:MainHeading,
  ),
  CarsGrid()
],
        ),
    );
  }
}