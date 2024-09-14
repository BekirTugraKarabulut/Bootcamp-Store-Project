import 'package:flutter/material.dart';
import 'package:shopier/anasayfa.dart';
import 'package:shopier/huawei12s.dart';
import 'package:shopier/huawei12se.dart';
import 'package:shopier/huaweipura.dart';

class Huawei extends StatefulWidget {
  const Huawei({super.key});

  @override
  State<Huawei> createState() => _HuaweiState();
}

class _HuaweiState extends State<Huawei> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text("Huawei", style: TextStyle(fontFamily: "BebesNeue" , color: Colors.white , fontWeight: FontWeight.bold),),
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
                Image.asset("resim/pura.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Huawei Pura 70 PRO\t\t\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Huaweipura()));
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
                Image.asset("resim/nova12se.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Huawei Nova 12 SE\t\t\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Huawei12se()));
                      },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          child: Text("Detaylar" , style: TextStyle(color: Colors.white),)),
                    ),
                  ],
                )
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("resim/nova.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("Huawei Nova 12S\t\t\t\t\t\t" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Huawei12s()));
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
