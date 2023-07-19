import 'package:flutter/material.dart';
class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
     TabController _tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Stack(children: [
            Container(color: Colors.blueGrey,),
           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(88),
                  ),
                  image: DecorationImage(image: AssetImage("assets/img.jpg"), fit:BoxFit.cover)
                ),
              ),
           
          ],
          )
          ),
          Container(
            height: 400,
            child: Stack(children: [
            
                
                Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1e1c2a),
                 //image: DecorationImage(image: AssetImage("assets/img.jpg"), fit:BoxFit.cover)
                ),
                          ),
             
             Container(
              decoration: BoxDecoration(
                 color: Colors.blueGrey,
                 borderRadius: BorderRadius.only(
                    topRight: Radius.circular(88),
                  ),
              ),
              child: Center(
                child:Container(
                  width: double.maxFinite,
                  height: 350,
                  child: Column(children: [
                  Container(
                    child: TabBar(
                      labelPadding: const EdgeInsets.only(left:20, right:20),
                      controller: _tabController,
                     
                      unselectedLabelColor: Colors.white,
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicatorSize: TabBarIndicatorSize.label,
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20),
                      unselectedLabelStyle: TextStyle(color: Colors.white, fontSize: 15),
                      tabs: [
                         Tab(text: "Sign in",),
                          Tab(text: "Sign up",),
                      ],
                    ) ,),
                    Container(
                      padding:const EdgeInsets.only(top:15),
                      height: 250,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                         Column(
                          crossAxisAlignment:  CrossAxisAlignment.center,
                        children: [
                    Container(
                      width:230,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                      decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email,color: Colors.blueGrey,),
                      hintText: 'Email adresse',
                      border: InputBorder.none),
                      
                              ),
                    ),
                    SizedBox(height: 15,),
                     Container(
                       width:230,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                       child: TextField(
                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock ,color: Colors.blueGrey,),
                    hintText: 'pass Word',
                    border: InputBorder.none),
                    
                              ),
                     ),
                   
                        SizedBox(height: 15,),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                          child: Center(child: 
                          Text("Sign in", style: TextStyle(color: Colors.blueGrey, fontSize: 20),)),
                          ),
                           SizedBox(height: 10,),
                             Text("Forgot password", style: TextStyle(color: Colors.white, fontSize: 15),),
                        ],),

                          //.......................................................
                        Column(
                           crossAxisAlignment:  CrossAxisAlignment.center,
                          children: [
                    Container(
                       width:230,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                         
                      decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email,color: Colors.blueGrey,),
                      hintText: 'Email adresse',
                      border: InputBorder.none),
                      
                              ),
                    ),
                    SizedBox(height: 15,),
                     Container(
                       width:230,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                       child: TextField(
                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock ,color: Colors.blueGrey,),
                    hintText: 'pass Word',
                    border: InputBorder.none),
                    
                              ),
                     ),
                    SizedBox(height: 15,),
                     Container(
                       width:230,
                      decoration: BoxDecoration(color:Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                       child: TextField(
                    decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock,color: Colors.blueGrey,),
                    hintText: 'confirm pass word',
                    border: InputBorder.none),
                    
                              ),
                     ),
                        SizedBox(height: 15,),
                        Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                          child: Center(child: 
                          Text("Sign up", style: TextStyle(color: Colors.blueGrey, fontSize: 20),)),),

                        ],),

                      ]),
                    ),

                  ]),
                ),
              ),
             ),

            ]),
          ),
      ]),
    );
  }
}