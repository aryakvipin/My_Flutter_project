import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogtList extends StatelessWidget{
  List images=[
    'images/ammul.jpg',
    'images/ammul.jpg',
    'images/ammul.jpg',
    'images/ammul.jpg',
    'images/ammul.jpg',
    'images/ammul.jpg',

  ];
  List name=[
    'Ammul Chocalte',
    'Ammul Chocalte',
    'Ammul Chocalte',
    'Ammul Chocalte',
    'Ammul Chocalte',
    'Ammul Chocalte',

  ];
  List box=[
    'Box',
    'Box',
    'Box',
    'Box',
    'Box',
    'Box',


  ];
  List numbers=["22.00  SR",
    "22.00  SR",
    "22.00  SR","22.00  SR",
    "22.00  SR",
    "22.00  SR",


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.indigo[50],

        body: GridView.builder(itemCount: images.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext obj,index){

          return Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Card(color:Colors.indigo[50],
                  child: Column(
                    children: <Widget>[
                      Image(image: AssetImage(images[index],),
                        width: 150,
                        height: 150,
                      ),
                      Text(
                      name[index],style: TextStyle(fontWeight: FontWeight.bold),

                      ),
                      Text(
                        box[index],style: TextStyle(fontWeight: FontWeight.bold),

                      ),
                      Text(
                        numbers[index],style: TextStyle(fontWeight: FontWeight.bold),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
    );
  }


}

