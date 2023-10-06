import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homework 10',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),

      body: Column(
        children: [
          Expanded(child: Container(
            color: Colors.cyan,
            width: double.infinity,
            child: Column(
              children: [
              Expanded(child:   Row(
                children: [
                  Expanded(child: Container(
                      height: 150,
                      width: 250,
                      margin: EdgeInsets.only(right: 160,top:10 ),
                      child: Column(
                        children: [
                          Text(
                            'Tokyo,JPN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text('Friday,June 26',
                            style: TextStyle(
                                color: Colors.white54,
                                fontSize: 21,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      )
                  ),flex: 6,),
                  Expanded(child: Container(
                    margin: EdgeInsets.only(bottom: 40),
                    child: Icon(Icons.chevron_left,color:Colors.pink ,size: 65,),
                  ),flex: 1,)
                ],
              ),flex: 2,),
               Expanded(child:  Container(

                 child: Center(
                   child: Text('19°',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 150,
                     ),
                   ),
                 ),
               ),flex: 3,),
                Expanded(child: Container(
                  width: 320,
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      Expanded(child: Row(

                        children: [
                          Icon(Icons.cloudy_snowing,size: 25,color: Colors.white,),
                          Text('19:30',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),),
                          SizedBox(width: 130,),
                          Icon(Icons.cloudy_snowing,size: 25,color: Colors.white,),
                          Text('19:30',style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.bold),)
                        ],
                      ),flex: 1,),


                    ],
                  ),
                ),flex: 1,)
              ],
            ),
          ),flex: 1,),
         Expanded(child: Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                     color: Colors.lightBlueAccent,


                    ),
                    Container(

                    ),
                    Container(

                    ),

                  ],
                )
              ],
            ),
         ),flex:1)
        ],
      ),
    );
  }
}
