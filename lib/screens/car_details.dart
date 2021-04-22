import 'package:flutter/material.dart';
import '../util/utils.dart';
import '../widgets/specification.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String path;
  final String brand;

  CarDetail({
    required this.price,
    required this.color,
    required this.fuel,
    required this.gearbox,
    required this.path,
    required this.title,
    required this.brand
      });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: [
        IconButton(
           onPressed: () {print("clicked bookmark");},
          icon: Icon(Icons.bookmark),
        iconSize: 30,
        color: Theme.of(context).accentColor,
        ),

       IconButton(
        onPressed: () {print("clicked share");},
         icon: Icon(Icons.share),
         iconSize: 30,
       )
      ],),
      body: Column(
        children:[
          Text(title, style: MainHeading),
          Text(brand, style: BasicHeading),
          Hero(
            tag: title,
            child: Image.asset(path)),
                SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                SpecificationCard(
                price: price*12,  
                name: "12 Month", 
               name2: "Dollars"
                ),
                SpecificationCard(
                price: price*6,  
                name: "6 Month", 
               name2: "Dollars"
                ),
                SpecificationCard(
                price: price,  
                name: "1 Month", 
                name2: "Dollars"
                )
            ]
          ),
          SizedBox(height: 10),
          Text(
            'SPECIFICATIONS',style: IVNS,
            ),
            SizedBox(height: 10),
                      Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
                SpecificationCard(
                price: price,
                name: "Color ", 
               name2: color,
                ),
                SpecificationCard(
                 price: price,
                name: "GearBox", 
               name2: gearbox,
                ),
                SpecificationCard(
               price: price,
                name: "Fuel", 
                name2: fuel
                )
            ]
          ),
           SizedBox(height: 10),
           
           RaisedButton(
             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
             textColor: Colors.white,
             disabledColor:Theme.of(context).accentColor,
             onPressed:null,
             child: Text('Book Now',
             style: TextStyle(fontSize:20,color:Colors.white),
             )
             ,)
        ]
      ),
    );
  }
}