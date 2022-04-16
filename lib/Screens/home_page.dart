import 'package:flutter/material.dart';

import 'details.dart';

class home_page extends StatelessWidget {
  List<String>Names=[
    'OMAR ELSHARIF',
    'RAMI MALEK',
    'KHALED SALEH',
    'kHALED ELNAGA'
  ];

  List<String>description=[
    "Omar Sharif was generally regarded as his country's greatest male film star. He began his career in his native country in the 1950s.",
    "Rami Said Malek is an American actor. He is known for portraying computer hacker Elliot Alderson in the USA Network.",
    "Even though the great actor died at a rather young age, Saleh’s enriching artistic contributions.",
    "Kal Naga, is an Egyptian actor, director and producer. He is recognized primarily for his work in Egypt and the Middle East.",
  ];
  List<String>text2=[
    'Omar Sharif was generally regarded as his country\'s greatest male film star.',
    'Rami Said Malek is an American actor.',
    'Saleh’s enriching artistic contributions.',
    'Kal Naga, is an Egyptian actor, director and producer.',
  ];

  List<String>profils=[
    'images/omar-sharif.webp',
    'images/ramy.jpg',
    'images/saleh.jpg',
    'images/naga.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: Text('News',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25
              ),
            ),

          ),
          body: Container(
            color:Colors.black,
            child: ListView.separated(
              itemBuilder: (context,index)=>Container(
                decoration: BoxDecoration(
                  color: Color(0xff212121),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: SingleChildScrollView(
                      scrollDirection:Axis.horizontal ,
                      child: Row(
                          children: [
                            GestureDetector(
                              onTap:()=>
                                  Navigator.push(context,MaterialPageRoute(
                                    builder:(context) => detailScrean(text1: text2[index],text2: description[index],image: profils[index],),

                                  )),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                child:Image.asset('${profils[index]}',height: 150,width: 200,),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Column(
                              children: [
                                SizedBox(height: 45,),
                                Text("${Names[index]}",
                                  style:TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w800,
                                    color:  Colors.white,
                                  ) ,),
                                SizedBox(height: 40,),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("13K",style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color:  Color(0xdbebff08),
                                    ),),

                                    Icon(Icons.person_rounded,size: 30,color: Color(0xdbebff08),),
                                    SizedBox(width: 60,),
                                    Icon(Icons.favorite_border_outlined,color: Colors.red,size: 30,),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(width: 10,),

                          ]
                      ),
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context,index)=> SizedBox(height: 10,),
              itemCount: profils.length,
            ),
          )

      ),
    );
  }
}
