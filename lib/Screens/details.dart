import 'package:flutter/material.dart';
class detailScrean extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;

  detailScrean({
    required this.image,
    required this.text1,
    required this.text2
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff212121),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(image,height: 400,width: double.infinity, fit:BoxFit.cover,),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text1,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white,

                      ),),
                      SizedBox(height: 20,),
                      Text('Sunday . March 13. 2022',style: TextStyle(
                        color: Color(0xffebff08),
                      ),),
                      SizedBox(height: 20,),
                      Text(text2
                        ,style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),
                      ),
                      IconButton(onPressed: (){
                        Navigator.pop(context);
                      }, icon: Icon(Icons.subdirectory_arrow_left_outlined,size: 35,color: Color(0xffebff08),))
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
