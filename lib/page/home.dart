import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'dart:html' as html;
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, String? title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
int rad=0;
class _MyHomePageState extends State<MyHomePage> {
String my="I'm second year understudy seeking Btech student.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

body: Stack(
  children: [
   VxAnimatedBox().size(context.screenWidth, context.screenHeight).withGradient(
     LinearGradient(colors:[
       Themee.pc1,
       Themee.pc2
     ],
     begin: Alignment.topLeft,
     end: Alignment.bottomRight)
   )
   .make(),
  AppBar(
    automaticallyImplyLeading: false,
    title: "Shashank Patel\nPortFolio!!".text.center.bold.white.make().shimmer(
      primaryColor: Color.fromARGB(255, 185, 119, 255), secondaryColor: Vx.white
    ),
    
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    centerTitle: true,
  ).h(100.0).p16(),
4.heightBox,
  VxSwiper.builder(
    itemCount: 5,
    initialPage: 0,
    enableInfiniteScroll: true,
    enlargeCenterPage: true,
  aspectRatio: 1.0, 
  autoPlay: true,
  
  onPageChanged: (index) {
    rad=index;
    my="I'm second year student"; 
    },
  itemBuilder: (context, index){
    
    rad=index;
    String i="assets/assets/t.png";
  if((context.isMobile)&&rad==0)
  my="I'm second year understudy Btech student with software engineering, designing and specialization in Artificial Intelligence from ABESIT College Of Engineering , Ghaziabad.";
else if((context.isMobile)!=0&&rad==0)
  my="I'm second year understudy Btech student with software engineering, designing and specialization in Artificial Intelligence from ABESIT College Of Engineering , Ghaziabad. I am Enthusiastic Engineer eager to contribute to team success through hard work ,attention to detail and excellent project skills. Clear understanding of programming and development . Motivated to learn , grow and excel in project .";
else if(rad==1)
  my="1.C++/C                2.Dart\n3.C#                      4.Python\n5.Javascript         6.HTML/Css\n7.UI/UX                 8.Flutter";
  else if(rad==2)
  my="1. '3star'Coder at CodeChef\n2. '5Star' in C++ at Hackerank\n3. '3star' in Problem Solving\n4. College Club Member ";
else if(rad==3)
  my="1. Comedian House (Flutter/Dart)\n2. Network Traffic Analyzer(C#)\n3. Data Leakage(Python)\n4. Photo Size Compressor(Python)";
  else
my="Hello!! Shashank";
   return VxBox(
     
    child: (rad==0)?ZStack([  
        Align(
          alignment: Alignment.center,
          child: [
             5.heightBox,
            "Me!!".text.uppercase.white.bold.make().centered().p16(),
            VxCircle(backgroundImage: DecorationImage(image: NetworkImage("assets/assets/me.png"),
            fit: BoxFit.cover),
            backgroundColor: Colors.transparent,).p2(),
            
            "Hello!! I am Shashank".text.white.bold.make().p8(),
                
            AutoSizeText(
 
          my,
  style: TextStyle(fontSize: 10,color: Vx.white,),
  maxLines: 8,
).p8(),
        
      
           ].vStack()
           )]
           ):(rad==1)?ZStack([
               
        Align(
          alignment: Alignment.center,
          child: [
            
             5.heightBox,
            "Tech Bucket!!".text.uppercase.white.bold.make().centered().p16(),
            VxCircle(backgroundImage: DecorationImage(image: NetworkImage("assets/assets/c.png"),
            fit: BoxFit.cover),
            backgroundColor: Colors.transparent,).p2(),
            5.heightBox,
            my.text.white.bold.make().p4(),
           
         RaisedButton(
                onPressed: () {
                  html.window.open('https://www.linkedin.com/in/pshashankp/',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 33, 1, 109),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["LinkedIn  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/in.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered()
           
        
      
           ].vStack()
           )]
           ):(rad==2)?ZStack([  
        Align(
          alignment: Alignment.center,
          child: [
            
             5.heightBox,
            "Achievements!!".text.uppercase.white.bold.make().centered().p16(),
            VxCircle(backgroundImage: DecorationImage(image: NetworkImage("assets/assets/b.png"),
            fit: BoxFit.cover),
            backgroundColor: Colors.transparent,).p2(),
            5.heightBox,
            my.text.white.bold.make().p4(),
           
         RaisedButton(
                onPressed: () {
                  html.window.open('https://drive.google.com/file/d/1qi0jQ0Y8f7EGQVvES22KzleDa6pOFWCE/view?usp=drivesdk',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Resume  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/r.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered()
           
        
      
           ].vStack()
           )]
           ):(rad==3)?ZStack([  
        Align(
          alignment: Alignment.center,
          child:  [
            
             4.heightBox,
            "Projects!!".text.uppercase.white.bold.make().centered().p16(),
            VxCircle(backgroundImage: DecorationImage(image: NetworkImage("assets/assets/d.png"),
            fit: BoxFit.cover),
            backgroundColor: Colors.transparent,).p2(),
            5.heightBox,
            my.text.white.bold.make().p4(),
           
         RaisedButton(
                onPressed: () {
                  html.window.open('https://github.com/Shashankfeeling?tab=repositories',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Github  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/g.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered()
           
        
      
           ].vStack()
           )]
           ):ZStack([  
        Align(
          alignment: Alignment.center,
          child:  [
            
             7.heightBox,
            "Connect with Me!!".text.uppercase.white.bold.make().centered().p16(),
          
            3.heightBox,
         RaisedButton(
                onPressed: () {
                  html.window.open('https://github.com/Shashankfeeling/',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Github  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/g.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered(),
              RaisedButton(
                onPressed: () {
                  html.window.open('https://www.linkedin.com/in/pshashankp/',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["LinkedIn  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/in.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered(),
              RaisedButton(
                onPressed: () {
                  html.window.open('https://www.hackerrank.com/shashank_feeling',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Hackerank  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/h.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered(),

           
         RaisedButton(
                onPressed: () {
                  html.window.open('https://www.instagram.com/_shashank.patel/',"_blank");
                },
                splashColor: Color.fromARGB(255, 98, 0, 255),
                hoverColor: Color.fromARGB(255, 51, 4, 128),
                color: Colors.transparent,
                
                shape: RoundedRectangleBorder(
                  
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(color: Color.fromARGB(255, 61, 192, 253)
                    )
                    ),
                child: Row(children: ["Instagram  ".text.white.bold.make().centered().px16(),
                Image.asset(
                    "assets/ins.png",
                    height: 35,
                    width: 35,
                  ),
                ]
                , mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,).centered().p8(),
              ).p8().centered()
           
        
      
           ].vStack()
           )]
           )
         
         
           )
    .bgImage(
      DecorationImage(image: NetworkImage(i),
    
      fit: BoxFit.cover,
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.lighten))
    ).withRounded(value:30.0)
    .make().pOnly(right: 2,left: 2,top: 4,bottom: 0).centered();



  }).p8(),

  
  ],
 fit: StackFit.expand, 
),
    );
  }
}