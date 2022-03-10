import 'package:flutter/material.dart' hide Colors;
import 'package:twitter/controllers/home_controller.dart';
import 'package:twitter/values/colors.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {

  final HomeController _homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: renderAppBar(),
      body: renderBody(),
    );
  }

  Widget renderAppBar(){
    return
        AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 50,
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black,),
              onPressed: (){
                Get.back();
              },
            )
          ),
          centerTitle: true,
          title: Text('Đang theo dõi', style: TextStyle( color: Colors.black)),
          actions: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0,0,20,0),
              child: Icon(Icons.star_rate , size: 20, color: Colors.black,),
            ),
          ],
        );
  }

  Widget renderBody() {
    return Column(
        children: [
          //list of user
          Obx(() => ListUser(_homeController.userListData[0].follow)),
          //   Obx(()=> Expanded(
        //       child: ListView.builder(
        //         itemCount: _homeController.userListData[0].follow.length,
        //         itemBuilder: (context, index){
        //         return Padding(
        //           padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        //           child: Card(
        //             child: ListTile(
        //               leading: Icon(Icons.dashboard, size: 30,),
        //               onTap: (){},
        //               title: Row(
        //                 children: [
        //                   Expanded(
        //                       flex: 1,
        //                       child: Text('${_homeController.userListData[0].follow[index].id} : ${_homeController.userListData[0].follow[index].name}')
        //                   ),
        //                   Expanded(
        //                       flex:1,
        //                       child:  FlatButton(
        //                         child: Text('Đang theo dõi', style: TextStyle(fontSize: 13, color: Colors.black), ),
        //                         onPressed: ((){
        //                         _homeController.deleteFollow(_homeController.userListData[0].follow[index]);
        //                         }),
        //                       )
        //                 )
        //                 ],
        //               ),
        //               subtitle: Text('Some text here ...${_homeController.userListData[0].follow[index].description} '),
        //             ),
        //            ),
        //         );
        //       },
        //     ),
        //   ),
        // )
        ]
    );
  }

  //list user follow
  Widget ListUser(users){
    return  Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB25lYJUAyBrGFKHqg0c4g8atFIQPoIJdXcQ&usqp=CAU"),
                  radius: 40,
                ),
                onTap: (){
                },
                title: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Text('${users[index].id} : ${users[index].name}', )),

                    // Expanded(
                    //     flex:1,
                    //     child:  FlatButton(
                    //       child: Text('Đang theo dõi', style: TextStyle(fontSize: 13, color: Colors.white, backgroundColor: Colors.black  ), ),
                    //       onPressed: ((){
                    //         _homeController.deleteFollow(users[index]);
                    //       }),
                    //     )
                    // )
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top:10, bottom:10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                        ),

                        child:  FlatButton(
                                child: Text('Đang theo dõi', style: TextStyle(fontSize: 13, color: Colors.white, backgroundColor: Colors.black  ), ),
                                onPressed: ((){
                                  _homeController.deleteFollow(users[index]);
                                }),
                              )
                      ),
                    )
                  ],
                ),
                subtitle: Text('Some text here ...${users[index].description} '),
              ),
            ),
          );
        },
      ),
    );

  }



}

