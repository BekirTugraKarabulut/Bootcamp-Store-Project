import 'package:flutter/material.dart';
import 'package:shopier/anasayfa.dart';
import 'package:shopier/samsunga54.dart';
import 'package:shopier/samsungs23.dart';
import 'package:shopier/samsungs23ultra.dart';

class Samsung extends StatefulWidget {
  const Samsung({super.key});

  @override
  State<Samsung> createState() => _SamsungState();
}

class _SamsungState extends State<Samsung> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white70,
    appBar: AppBar(title: Text("Samsung", style: TextStyle(fontFamily: "BebesNeue" , color: Colors.white , fontWeight: FontWeight.bold),),
      backgroundColor: Colors.black87,
      centerTitle: true,
      leading: IconButton(onPressed: (){
          Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back_ios , color: Colors.white,)),
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("resim/s23.png" , width: 200, height: 200,),
              Column(
                children: [
                  Text("Samsung Galaxy S23 256" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Samsungs23()));
                    },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: Text("Detaylar" , style: TextStyle(color: Colors.white),)
                    ),
                  ),
                ],
              )
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("resim/s23ultra.png" , width: 200, height: 200,),
              Column(
                children: [
                  Text("Samsung Galaxy S23 Ultra\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Samsungs23ultra()));
                    },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: Text("Detaylar" , style: TextStyle(color: Colors.white),)),
                  ),
                ],
              )
            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("resim/samsunga54.png" , width: 200, height: 200,),
              Column(
                children: [
                  Text("Samsung Galaxy A54 128GB\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Samsunga54()));
                    },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                        child: Text("Detaylar" , style: TextStyle(color: Colors.white),)),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    ),
    bottomNavigationBar: BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "Profil"),
        BottomNavigationBarItem(icon: Icon(Icons.account_balance_outlined), label: "Anasayfa"),
        BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "Arama")
      ],
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Colors.black87,

      currentIndex: secilenIndeks,

      onTap: (indeks){
        setState(() {
          indeks = secilenIndeks;
          Navigator.of(context).popUntil((route) => route.isFirst);
        });
      },
    ),
    );
  }
}
