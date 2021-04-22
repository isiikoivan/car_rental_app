import 'package:flutter/material.dart';
import '../util/utils.dart';

class SpecificationCard extends StatelessWidget {
  final double price;
  final String name;
  final name2;

  SpecificationCard({
    required this.price,
    required this.name,
    required this.name2
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      height: price == price ?100.0 :80.0,
      width: 100.0,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey,
        width:2,  
         
        ),
       borderRadius: BorderRadius.circular(10)
      ),
      child: price == price ?
       Column(
                 children: [
          Text(name,
          style: BasicHeading,
          ),  
          SizedBox(
            height: 5,

          ),

          Text(
            name2,
            style: SubHeading,
          ),

        ]
       )
      :Column(
        children: [
          Text(name,
          style: BasicHeading,
          ),  
          SizedBox(
            height: 5,

          ),
  
          if (price == price) Text(name2,style:  SubHeading,)
          else  
         Text((price).toString(),style: SubHeading
          ),
          Text(
            name2,
            style: SubHeading,
          ),
          SizedBox(
            height: 5,

          ),

        ]
      ),
    );
  }
}