import 'package:flutter/material.dart';


class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(height: 46,),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                    "Selamat Pagi, Febri!",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800
                    ),),
                    Icon(
                      Icons.coffee,
                      size: 25,
                    ),
                ],)
                ),
                const SizedBox(height: 20,),

                 Padding(padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "Current Location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                   
                    ),),
                    Row(mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                    "Alamat",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                   
                    ),),
                      ],),
                ],)
                ),
               
              ],
            ),
            ),
            
            ), 

            
            
            
    );
  }
}