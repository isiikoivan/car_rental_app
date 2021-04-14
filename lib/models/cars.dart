class CarItem {
  final String title;
  final double price;
  final String path;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;

  CarItem({
  required this.title,
  required this.price,
  required this.path,
  required this.color,
  required this.fuel,
  required this.gearbox,
  required this.brand
  
  });
}

CarsList allCars = CarsList(cars: [
 CarItem(
   title:'Grey',
   price:9000, 
   color:'Grey Lumia',
   gearbox:'8',
   fuel:'8L', 
   brand:'Fire',
   path:'lib/assets/mode12.jpg',

  ),

   CarItem(
   title:'Ferari',
   price:6776 , 
   color:'Red',
   gearbox:'8',
   fuel:'6L',
   brand:'Sport Car',
   path:'lib/assets/ferari.jpg',

  ),

 CarItem(
   title:'Reaper',
   price:8988, 
   color:'Orange & Black',
   gearbox:'8',
   fuel:'9L',
   brand:'Speedier',
   path:'lib/assets/reaper.jpg',

  ),

 CarItem(
   title:'Runner',
   price: 9000, 
   color:'Black',
   gearbox:'9',
   fuel:'20L',
   brand:'Fielder',
   path:'lib/assets/runer.jpg',

  ),

 CarItem(
   title:'Deamon',
   price: 7878, 
   color:'blue',
   gearbox:'6',
   fuel:'8L',
   brand:'Variet',
   path:'lib/assets/demon.jpg',

  ),

 CarItem(
   title:'AMG',
   price: 8987, 
   color: 'Tough green',
   gearbox:'4',
   fuel:'4L',
   brand:'Benz',
   path: 'lib/assets/mode7.jpg',

  ),

 CarItem(
   title:'Neon',
   price: 9090, 
   color:'Light fur',
   gearbox:'5',
   fuel:'12L',
   brand:'Flyer',
   path:'lib/assets/neon.jpg',

  ),

 CarItem(
   title:'Mustang yl',
   price: 67678, 
   color:'Yellow' ,
   gearbox:'6',
   fuel:'19L',
   brand:'Finder',
   path:'lib/assets/yellow.jpg',

  ),

 CarItem(
   title:'white wolf',
   price: 324, 
   color: 'white',
   gearbox:'4',
   fuel:'4L',
   brand:'Honda',
   path:'lib/assets/white.jpg',

  ),



 CarItem(
   title:'audi',
   price:3432, 
   color:'silver',
   gearbox:'6',
   fuel:'6L',
   brand:'Sporter',
   path:'lib/assets/lambogin.jpg',

  ),



]);

class CarsList {
  List<CarItem>cars;
  CarsList({ required this.cars});
}