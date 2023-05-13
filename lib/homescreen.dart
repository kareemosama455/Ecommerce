import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({super.key});

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Card(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.search, color: Colors.purple),
                      suffix: Icon(Icons.search, color: Colors.purple),
                      labelText: 'search product',
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(Icons.shopping_cart,
                      size: 35.0, color: Colors.purple),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              ),
              SizedBox(
                child: RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.notification_important,
                    size: 35.0,
                    color: Colors.purple,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              )
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.all(10),
            child: Row(children: [
              Text(
                'special for you',
                style: TextStyle(fontSize: 30),
              )
            ])),
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.all(10),
                    color: Colors.purple,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                    Image.network(
                      'https://th.bing.com/th/id/OIP.TPhuSBqqpOoJHZd5cHrxhgHaF9?pid=ImgDet&rs=1',
                      height: 200,
                    ),
                    Text('computers')
                      ],
                    ),
                  )),
        ),
      ],
    ));
  }
}
