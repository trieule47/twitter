import 'package:get/get.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:twitter/router/router_config.dart';
import 'package:twitter/values/colors.dart';
import 'package:twitter/values/constants.dart';
import 'package:twitter/styles/common_style.dart';
import 'package:twitter/controllers/home_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';

class userModel{
  String name;
  String age;
  userModel({this.name,this.age});
}


class HomeView extends StatelessWidget {
  // var User1 = List<userModel>();
  // List<userModel> User2 = [];

  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final HomeController _homeController = Get.put(HomeController());
  @override

  Widget build(BuildContext context) {
    
    return Scaffold(
      key: _key,
      backgroundColor: Colors.background,
      appBar: this.renderAppBar(),
      body: this.renderBody(),
      drawer: this.renderDrawer(),
      floatingActionButton:
      Padding(
        padding: const EdgeInsets.fromLTRB(0,0,5,40),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print('show');
          },
        ),

      )
    );
  }
  Widget renderDrawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.primary,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB25lYJUAyBrGFKHqg0c4g8atFIQPoIJdXcQ&usqp=CAU"),
                  radius: 40,
                ),
                Text('${_homeController.userListData[0].name}'),
              ],
            ),

          ),
          ListTile(
            title: const Text('Đang theo dõi'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Get.toNamed(RouterConfig.ROUTE_LOGIN);
            },
          ),
          ListTile(
            title: const Text('Người theo dõi'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer

            },
          ),
        ],
      ),
    );
  }
  //render app bar
  Widget renderAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      toolbarHeight: 50,
      leading: Padding(
        padding: const EdgeInsets.all(1.0),
        child: FlatButton(
          height: 30,
          child: CircleAvatar(
            radius: 10,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB25lYJUAyBrGFKHqg0c4g8atFIQPoIJdXcQ&usqp=CAU"),
          ),
            onPressed: () => _key.currentState.openDrawer(),
        )
      ),
      centerTitle: true,
      title: Image(
        image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4f/Twitter-logo.svg/1200px-Twitter-logo.svg.png"),
        height: 30,
        width: 30,
        // alignment: Alignment.center,
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,0,20,0),
          child: Icon(Icons.star_rate , size: 20, color: Colors.black,),
        ),
      ],
    );
  }

  Widget renderBody(){
    return Column(
      children: [
      Container(
        height: 50,
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
            left: BorderSide(width: 1.0, color: Color(0xFFDFDFDF)),
            right: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
            bottom: BorderSide(width: 1.0, color: Color(0xFF7F7F7F)),
          ),
          color: Colors.white,
        ),
        child: TextField(
          style: TextStyle(fontSize: 20),
          // autofocus: false,
          textAlign: TextAlign.left,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
              border: new OutlineInputBorder(
                  borderSide: new BorderSide(color: Colors.blue)
              ),
              labelStyle: TextStyle(
                  color: Colors.red,
                  fontSize: 22,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline),
              labelText: 'Id User',
              counterStyle: TextStyle(fontSize: 20)
          ),
        ),
      //Textinput
      ),
        //list of users
        ListUser(_homeController.userListData),
      //   Obx(()=>Expanded(
      //     child: ListView.builder(// list user
      //       itemCount: _homeController.userListData.length,
      //       itemBuilder: (context, index){
      //         return Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      //           child: Card(
      //             child: ListTile(
      //               leading: Icon(Icons.dashboard, size: 30,),
      //               onTap: (){
      //               },
      //               title: Text('${_homeController.userListData[index].id}  : ${_homeController.userListData[index].name}'),
      //               subtitle: Text('Some text here ...${_homeController.userListData[index].description} '),
      //               trailing: Icon(Icons.more_vert, size: 30),
      //               // leading: CircleAvatar(
      //               //   backgroundImage: AssetImage('assets/${locations[index].flag}'),
      //               // ),
      //             ),
      //           ),
      //         );
      //       },
      //     ),
      //   )
      //   ),
        //bottom tab

        // bottom tab navigate
       ButtonTab(),
    ]
    );
    // Expanded(
    //   child: ListView.builder(
    //     itemCount: users.length,
    //     itemBuilder: (context, index){
    //       return Padding(
    //         padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
    //         child: Card(
    //           child: ListTile(
    //             leading: Icon(Icons.dashboard, size: 30,),
    //             onTap: (){
    //             },
    //             title: Text('${users[index].id} : ${users[index].name}'),
    //             subtitle: Text('Some text here ...${users[index].description} '),
    //             trailing: Icon(Icons.more_vert, size: 30),
    //             // leading: CircleAvatar(
    //             //   backgroundImage: AssetImage('assets/${locations[index].flag}'),
    //             // ),
    //           ),
    //         ),
    //       );
    //     },
    //   ),
    // ),
  }

  //list of user
  Widget ListUser(users){

    return Obx(()=>Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Card(
              elevation: 0,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB25lYJUAyBrGFKHqg0c4g8atFIQPoIJdXcQ&usqp=CAU"),
                  radius: 40,
                ),
                onTap: (){
                  _homeController.addFollow(users[index]);//add follow
                  Show(index);//Show toast in bottom when add follow
                },
                title: Text('${users[index].id}  : ${users[index].name}'),
                subtitle: Text('Some text here ...${users[index].description} '),
                trailing: Icon(Icons.more_vert, size: 30),
              ),
            ),
          );
        },
      ),
    )
    );
  }

  //bottom tab navigate
  Widget ButtonTab(){
    return  Container(
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(width: 1,color: Colors.black)
          )
      ),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home, size: 30),
            onPressed: (){
              Get.toNamed(RouterConfig.ROUTE_HOME);
            },
          ),
          IconButton(
            icon: Icon(Icons.search, size: 30),
            onPressed: (){
              Get.toNamed(RouterConfig.ROUTE_LOGIN);
            },
          ),
          IconButton(
            icon: Icon(Icons.more, size: 30),
            onPressed: (){
              print("hiiii");
            },
          ),
          IconButton(
            icon: Icon(Icons.message , size: 30),
            onPressed: (){
              //show toast in bottom
              // Show();
              // Fluttertoast.showToast(
              //     msg: "you follow ${_homeController.userListData[0].name}",
              //     toastLength: Toast.LENGTH_SHORT,
              //     gravity: ToastGravity.BOTTOM,
              //     timeInSecForIosWeb: 1,
              //     backgroundColor: Colors.primary,
              //     textColor: Colors.white,
              //     fontSize: 16.0
              // );
              print('sss');
            },
          ),
        ],
      ),
    );
  }

  void showToast1(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Added to favorite'),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }

  void Show(index)=> Fluttertoast.showToast(
  msg: "You follow ${_homeController.userListData[index].name}",
  toastLength: Toast.LENGTH_SHORT,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 1,
  backgroundColor: Colors.primary,
  textColor: Colors.white,
  fontSize: 16.0
  );

}
