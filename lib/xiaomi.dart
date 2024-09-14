import 'package:flutter/material.dart';
import 'package:shopier/anasayfa.dart';
import 'package:shopier/redmi13.dart';
import 'package:shopier/redmi13c.dart';
import 'package:shopier/redmi13pro.dart';

class Xiaomi extends StatefulWidget {
  const Xiaomi({super.key});

  @override
  State<Xiaomi> createState() => _XiaomiState();
}

class _XiaomiState extends State<Xiaomi> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text("Xiaomi", style: TextStyle(fontFamily: "BebesNeue" , color: Colors.white , fontWeight: FontWeight.bold),),
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
                Image.asset("resim/redmi13.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Xiaomi Redmi 13 256GB\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Redmi13()));
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
                Image.asset("resim/redmi13c.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Xiaomi Redmi 13C\t\t\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Redmi13c()));
                      },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          child: Text("Detaylar" , style: TextStyle(color: Colors.white),)),
                    ),
                  ],
                )
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("resim/redmi13pro.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Redmi Note 13 Pro\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Redmi13pro()));
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
