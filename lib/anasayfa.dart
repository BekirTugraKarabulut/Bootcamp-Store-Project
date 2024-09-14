import 'package:flutter/material.dart';
import 'package:shopier/apple.dart';
import 'package:shopier/huawei.dart';
import 'package:shopier/samsung.dart';
import 'package:shopier/xiaomi.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int secilenIndeks = 1;

  var sayfalar = [const Anasayfa()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(title: Text("BeTu Store" , style: TextStyle(color: Colors.white , fontFamily: "BebesNeue"),),
      backgroundColor: Colors.black87,
      centerTitle: true,
      ),
      body: Center(
        child: Column( 
          children: [
            Text("\nMarkalar" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(width: 100, height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Apple()));
                        },
                          child: Image.asset("resim/apple-logo.png" , height: 40, width: 40,),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Apple" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 100, height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Samsung()));
                        }, child: Image.asset("resim/samsung.png" , height: 40, width: 40,),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Samsung" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ],
            ),
            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    SizedBox(width: 100, height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Huawei()));
                        }, child: Image.asset("resim/huawei.png" , height: 40, width: 40,),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Huawei" , style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                Column(
                  children: [
                    SizedBox(width: 100, height: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Xiaomi()));
                        }, child: Image.asset("resim/xiaomi.png" , height: 40, width: 40,),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15)))
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Text("Xiaomi" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
              ],
            ),
           Padding(
             padding: const EdgeInsets.only(top: 40),
             child: Column(
               children: [
                 Text("\nPopüler Telefonlar\n" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 15),),
                 Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       children: [
                         Image.asset("resim/141002-1_large.png" , width: 150, height: 150,),
                         Text("İphone 15 " , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                         Text("54.999 ₺" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                       ],
                     ),
                     Column(
                       children: [
                         Image.asset("resim/141019-1_large.png" , width: 150, height: 150,),
                         Text("İphone 15 Plus" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                         Text("65.799 ₺" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold),),
                       ],
                     ),
                   ],
                 )
               ],
             ),
           )
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
            secilenIndeks = indeks;
          });
        },
      ),
    );
  }
}