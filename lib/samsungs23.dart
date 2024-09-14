import 'package:flutter/material.dart';
import 'package:shopier/anasayfa.dart';

class Samsungs23 extends StatefulWidget {
  const Samsungs23({super.key});

  @override
  State<Samsungs23> createState() => _Samsungs23State();
}

class _Samsungs23State extends State<Samsungs23> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text("Samsung Galaxy S23" , style: TextStyle(fontFamily: "BebesNeue" , color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black87,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios , color: Colors.white,)),
      ),
      body: Column(
        children: [
          Center(
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Image.asset("resim/s23.png" , scale: 4,),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text("Özellikler" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 20) , textAlign: TextAlign.center,),
                ),
                Text("\t\tEkran Boyutu Aralığı : 6.1 inch – 6.5 inch" , style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tMobil Ram Boyutu (GB) : 8 GB", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tEkran Boyutu : 	6.1 inch", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tDahili Hafıza : 256 GB", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tİşletim Sistemi	 : Android", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tRenk Grubu		 : Beyaz", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tHızlı Şarj		 : Var", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                Text("\t\tGaranti		 : 24", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("32.499 ₺" , style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 25 , color: Colors.white),),
                TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))
                    ),
                    child: Text("Satın Al" , style: TextStyle(color: Colors.white),)),
              ],
            ),
          ),
        ],
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
