
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List imagephone = [
    "https://media.istockphoto.com/photos/adidas-baseball-cap-picture-id478100798?k=20&m=478100798&s=612x612&w=0&h=FT8uItxSSeLzGqcOvzuztIFi6ELZHq1Z3-oiRDWoJvw=",
    "https://media.istockphoto.com/photos/white-baseball-hat-picture-id497040301?k=20&m=497040301&s=612x612&w=0&h=dCg-cQmc3FoV9aHs957F3i4ft6bjGP0jLOGRVG-Rrls=",
    "https://media.istockphoto.com/photos/black-baseball-hat-picture-id497600473?k=20&m=497600473&s=612x612&w=0&h=UlppKkyd5ivapSxSDxt-F9USI4cJb0bf8Rhp4kd0sCo=",
    "https://media.istockphoto.com/photos/red-baseball-cap-picture-id474219511?k=20&m=474219511&s=612x612&w=0&h=zhMNK9wzgfI3j-BvXxIq7il4fChRpGShuZstNT9hYH4="
  ];
  List phone = ["addidas", "ZARA", "H&M", "CHANEL"];

  List priceold = ["15", "14", "12", "13"];
  List pricenew = ['10', '11', '9.99', '11'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:  Colors.pink[500],
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Colors.pink[700],
          title: Text('Caps section'),
        ),
        body: Container(
         
          child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                        setState(() {
                          phone[i] = "${phone[i]} add to cart";
                        });
                      },
                          child: Row(
                            children: [ 
                              Icon(Icons.plus_one,color: Colors.white,),
                              Text('added to cart')
                            ],
                          ),),
                      Text(
                        "${phone[i]} ",
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                    ],
                  ),
                       trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          phone[i] = "${phone[i]} added to  favarite";
                        });
                      },
                  
                  
                      icon: Icon(Icons.favorite),color: Colors.yellowAccent,),
                      
                  leading: Image(
                    image: NetworkImage(imagephone[i]),
                  ),
                  subtitle: Row(
                    children: [
                      // Padding(padding:EdgeInsets.all(20)),

                      Text(
                        "${priceold[i]}\$",
                        style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            color: Colors.amberAccent,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "${pricenew[i]}\$",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  ),
             
                );
              }),
        ),
      ),
    );
  }
}
