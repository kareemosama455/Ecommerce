import 'package:flutter/material.dart';

class Categories_screen extends StatefulWidget {
  const Categories_screen({super.key});

  @override
  State<Categories_screen> createState() => _Categories_screenState();
}

class _Categories_screenState extends State<Categories_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Text(
                  'categories',
                  style: TextStyle(fontSize: 50),
                ),
              ),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  icon: Icon(Icons.search, color: Colors.purple),
                  suffix: Icon(Icons.search, color: Colors.purple),
                  labelText: 'search category',
                  border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(30),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Image.network(
                                      'https://chnz.co.nz/images/pc-repair-christchurch.jpg')));
                        },
                        child: Stack(children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                'https://th.bing.com/th/id/R.77c1c75ad616d0addb7faf0782011a69?rik=IFEejPO2hRFHdA&pid=ImgRaw&r=0'),
                          ),
                          Container(margin: EdgeInsets.all(30),child: Text('computers',style: TextStyle(color: Colors.white70)))
                        ])),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Image.network(
                                      'https://th.bing.com/th/id/R.58d492e2f26df7e9a2fe246f3d363bcd?rik=lEE3WSbO7gG2wg&riu=http%3a%2f%2ftechbeat.com%2fwp-content%2fuploads%2f2013%2f01%2fSmartphone.jpg&ehk=BATf99yB2LxHH7UUWn9DEZqXzIr073JGrX4o%2bhPNHGM%3d&risl=&pid=ImgRaw&r=0')));
                        },
                        child: Stack(children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                'https://th.bing.com/th/id/R.58d492e2f26df7e9a2fe246f3d363bcd?rik=lEE3WSbO7gG2wg&riu=http%3a%2f%2ftechbeat.com%2fwp-content%2fuploads%2f2013%2f01%2fSmartphone.jpg&ehk=BATf99yB2LxHH7UUWn9DEZqXzIr073JGrX4o%2bhPNHGM%3d&risl=&pid=ImgRaw&r=0'),
                          ),
                          Container(margin: EdgeInsets.all(30),child: Text('Mobiles & Accessories',style: TextStyle(color: Colors.white)))
                        ])),
                  )
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Image.network(
                                      'https://th.bing.com/th/id/OIP.moW47YwV0L7sTNMnrVWk5QAAAA?pid=ImgDet&w=300&h=300&rs=1')));
                        },
                        child: Stack(children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                'https://th.bing.com/th/id/OIP.moW47YwV0L7sTNMnrVWk5QAAAA?pid=ImgDet&w=300&h=300&rs=1'),
                          ),
                          Container(margin: EdgeInsets.all(20),child: Text('Lights & Lighting',style: TextStyle(color: Colors.white)))
                        ])),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => Image.network(
                                      'https://th.bing.com/th/id/OIP.vT41ILU1ZiTKPNSBELRv0wHaFj?pid=ImgDet&rs=1')));
                        },
                        child: Stack(children: [
                          SizedBox(
                            height: 200,
                            width: 200,
                            child: Image.network(
                                'https://th.bing.com/th/id/OIP.vT41ILU1ZiTKPNSBELRv0wHaFj?pid=ImgDet&rs=1'),
                          ),
                          Container(margin: EdgeInsets.all(20),child: Text('Office & Equipments',style: TextStyle(color: Colors.white)))
                        ])),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}



//  Stack(children:[
//                         Container(height: 200,child:
//                          Image.network('https://th.bing.com/th/id/R.77c1c75ad616d0addb7faf0782011a69?rik=IFEejPO2hRFHdA&pid=ImgRaw&r=0'),)
//                      ,Text('computers') ] 
//                        )