import 'package:flutter/material.dart';
import 'package:shopier/anasayfa.dart';
import 'package:shopier/pembeIphone.dart';
import 'package:shopier/plus15iphone.dart';
import 'package:shopier/pro15iphone.dart';

class Apple extends StatefulWidget {
  const Apple({super.key});

  @override
  State<Apple> createState() => _AppleState();
}

class _AppleState extends State<Apple> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text("Apple", style: TextStyle( fontFamily: "BebesNeue" , color: Colors.white , fontWeight: FontWeight.bold),),
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
                Image.asset("resim/141002-1_large.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("İphone 15 128GB Pembe" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pembeiphone()));
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
                Image.asset("resim/141019-1_large.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("İphone 15 Plus 256GB " , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Plus15iphone()));
                      },  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                          child: Text("Detaylar" , style: TextStyle(color: Colors.white),)),
                    ),
                  ],
                )
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("resim/141034-1_large.png" , width: 200, height: 200,),
                Column(
                  children: [
                    Text("İphone 15 Pro 256GB " , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pro15iphone()));
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