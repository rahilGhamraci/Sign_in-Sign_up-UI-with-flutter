import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sign_up/sign_in_up_page.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:  Column(
          children: [
            Expanded(
             
              child: Stack(children: [
                Container(color: Colors.white,),
                 Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(88)),
                    color: Colors.black,
                    image: DecorationImage(image: AssetImage("assets/img.jpg"), fit:BoxFit.cover )
                    ),
                 ),
              ]),
            ),
            Container(
               height:200,
              
               child:Stack(children: [
                 Container(
                  padding: const EdgeInsets.only(top:0),
                  decoration: BoxDecoration(
                     color: Color(0xFF1e1c2a),
                 //image: DecorationImage(image: AssetImage("assets/img.jpg"), fit:BoxFit.cover )
                 
                    ),
                    
                     ),
                  Container(
                  decoration:BoxDecoration(
                    color: Colors.white,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(88),bottomLeft: Radius.circular(88)),
                  ),
                  child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                          itemCount: 3,
                    itemBuilder: (_,index){
                      return Container(
                        padding: const EdgeInsets.only(top:25),
                        width:100,
                        height: 80,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Night Camping", style:TextStyle(color: Color(0xFF1e1c2a), fontSize: 20)),
                            SizedBox(height:5),
                             Text("you want to have fun ?", style:TextStyle(color: Color(0xFF1e1c2a).withOpacity(0.8), fontSize: 20)),
                             Text("try to camp with your freinds", style:TextStyle(color: Color(0xFF1e1c2a).withOpacity(0.8), fontSize: 20)),
                            Text("and enjoy nature", style:TextStyle(color: Color(0xFF1e1c2a).withOpacity(0.8), fontSize: 20)),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment:  MainAxisAlignment.center,
                              children: 
                              List.generate(3, (indexDots){
                                return Container(
                      margin: const EdgeInsets.only(right: 2),
                      height: 9,
                      width: 9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: index==indexDots?Color(0xFF1e1c2a):Color(0xFF1e1c2a).withOpacity(0.8),
                      ),
      
                      );
                              }
                            ),
                            )
                           ],
                           
                        )
                      );
                    },)
                  ),
               ],)


            ),
            Container(
               height: 100,
               child:Stack(children: [
                Container( color: Colors.white,),
                 Container(
                  decoration:BoxDecoration(
                    color: Color(0xFF1e1c2a),
                     borderRadius: BorderRadius.only(topRight: Radius.circular(88)),
                  ),
                  child:  Center(child: InkWell(
                    onTap:(){
                      
                     Get.to(()=> SignPage());
                   
                    },
                    child: Text("Sign in", style:TextStyle(color: Colors.white, fontSize: 20))))
                 ),
               ],),
            ),
          
          ],
        ),
      
    );
  }
}
