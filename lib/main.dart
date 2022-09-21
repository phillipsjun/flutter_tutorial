import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Design Study',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                Stack(
                  children: [
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset('images/picture/venis1.jpeg',
                        fit: BoxFit.cover,),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(30.20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){}, icon: const Icon(Icons.share,color: Colors.white70,)),
                          IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border,color: Colors.white70,)),
                        ],),
                    ),
                    Positioned(
                      left: 10,
                      bottom:50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          children: const [
                            Text('Venice',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.gps_fixed,color: Colors.white,),
                            Text('Italy',style: TextStyle(fontSize: 30,color: Colors.white),),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Icon(Icons.star,size: 30,color: Colors.white),
                            Icon(Icons.star,size: 30,color: Colors.white),
                            Icon(Icons.star,size: 30,color: Colors.white),
                            Icon(Icons.star,size: 30,color: Colors.white),
                            Icon(Icons.star_outline,size: 30,color: Colors.white),
                            Text('4.0',style: TextStyle(color: Colors.white),)

                          ],)
                      ],),
                    )

                    ],

                ),
                SafeArea(
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              shape: BoxShape.rectangle,border: Border.all(color: Colors.grey,width: 5)
                            ),
                            child: const Icon(Icons.wifi,size: 30,)),
                        const SizedBox(height: 8,),
                        const Text('Wi-Fi'),

                      ]
                      ,
                    ),
                      Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,border: Border.all(color: Colors.grey,width: 5)
                              ),
                              child: const Icon(Icons.flatware,size: 30,)),
                          const SizedBox(height: 8,),
                          const Text('キッチン'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,border: Border.all(color: Colors.grey,width: 5)
                              ),
                              child: const Icon(Icons.umbrella,size: 30,)),
                          const SizedBox(height: 8,),
                          const Text('ビーチ'),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle,border: Border.all(color: Colors.grey,width: 5)
                              ),
                              child: const Icon(Icons.more_horiz,size: 30,)),
                          const SizedBox(height: 8,),
                          const Text('その他'),
                        ],
                      ),



                  ],),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10,bottom: 5),
                  child: Text('詳細',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),

                   Padding(
                     padding: const EdgeInsets.only(right: 20,left: 20),
                     child: Container(
                       decoration:BoxDecoration(
                         borderRadius: BorderRadius.circular(15),color: Colors.grey.withOpacity(0.2)
                       ) ,
                       child: const Text('イタリア共和国北東部に位置する都市で、その周辺地域を含む人口約26万人の基礎自治体（コムーネ）。'
                           'ヴェネト州の州都、ヴェネツィア県の県都である。ヴの表記によりベネチアと表記されることもある。中世にはヴェネツィア共和国の首都として栄えた都市で、「アドリア海の女王」「水の都」などの別名を持つ。'
                           '英語では「Venice」と呼ばれ、これに由来して日本語でもヴェニス、ベニスと呼ばれることもある。'
                           ,
                         maxLines: 8,
                         style: TextStyle(fontSize: 13,),
                       ),

                     ),
                   ),
                  ]),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    floatingActionButton: FloatingActionButton.extended(
    onPressed: () {},
    label: const Text('ホテルを予約する'),


    )
    );

  }
}
