import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:twitter/views/home/home_view.dart';
import 'package:twitter/router/router_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Twitter',
      initialRoute: RouterConfig.ROUTE_HOME,
      getPages: RouterConfig.route,
      // home: HomeView(),
      //Navigator(),
    );
  }
}

class User{
  String id;
  String name;
  String description;
  List<dynamic> follow = [] ;
  User({this.id, this.name, this.description, this.follow});

  void Folow(value){
    this.follow.add(value);
  }

  getListFollow(){
    return this.follow;
  }

}


final Textinput = TextField(
  style: TextStyle(fontSize: 20),
  // autofocus: false,
  textAlign: TextAlign.left,
  decoration: InputDecoration(
    border: new OutlineInputBorder(
        borderSide: new BorderSide(color: Colors.teal)
    ),
    labelStyle: TextStyle(
        color: Colors.red,
        fontSize: 22,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline),
    labelText: 'Id User',
    counterStyle: TextStyle(fontSize: 20)
  ),
);

//list user and follower
List<User> Users = [
  User(id: '1',name:'Triều',description: 'Mobile Team',
      follow: [
        User(id: '2',name: 'Toàn',description: 'Mobile Team'),
        User(id: '3',name: 'Việt',description: 'Mobile Team'),
        User(id: '4', name: 'Thịnh', description: 'Web Team'),
        User(id: '5', name: 'Tín', description: 'Web Team'),
        User(id: '6',name: 'Bảo', description: 'Web Team'),
        User(id: '7',name:'Triều2',description: 'Mobile Team'),
        User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
        User(id: '9',name: 'Việt2',description: 'Mobile Team'),
        User(id: '10', name: 'Thịnh2', description: 'Web Team'),
        User(id: '11', name: 'Tín2', description: 'Web Team'),
        User(id: '12',name: 'Bảo2', description: 'Web Team')
      ]),
  User(id: '2',name: 'Toàn',description: 'Mobile Team'),
  User(id: '3',name: 'Việt',description: 'Mobile Team'),
  User(id: '4', name: 'Thịnh', description: 'Web Team'),
  User(id: '5', name: 'Tín', description: 'Web Team'),
  User(id: '6',name: 'Bảo', description: 'Web Team'),
  User(id: '7',name:'Triều2',description: 'Mobile Team'),
  User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
  User(id: '9',name: 'Việt2',description: 'Mobile Team'),
  User(id: '10', name: 'Thịnh2', description: 'Web Team'),
  User(id: '11', name: 'Tín2', description: 'Web Team'),
  User(id: '12',name: 'Bảo2', description: 'Web Team')
];

class Navigator extends StatefulWidget {
  const Navigator({Key key}) : super(key: key);

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {

  List<User> Users = [
    User(id: '1',name:'Triều',description: 'Mobile Team'),
    User(id: '2',name: 'Toàn',description: 'Mobile Team'),
    User(id: '3',name: 'Việt',description: 'Mobile Team'),
    User(id: '4', name: 'Thịnh', description: 'Web Team'),
    User(id: '5', name: 'Tín', description: 'Web Team'),
    User(id: '6',name: 'Bảo', description: 'Web Team'),
    User(id: '7',name:'Triều2',description: 'Mobile Team'),
    User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
    User(id: '9',name: 'Việt2',description: 'Mobile Team'),
    User(id: '10', name: 'Thịnh2', description: 'Web Team'),
    User(id: '11', name: 'Tín2', description: 'Web Team'),
    User(id: '12',name: 'Bảo2', description: 'Web Team')
  ];

  User A=User(id: '12',name: 'Bảo2', description: 'Web Team');
  User B=User(id: '12',name: 'Bảo22', description: 'Web Team');

  List<User> Users1 = [
    User(id: '1',name:'Triều',description: 'Mobile Team',
        follow: [
          User(id: '2',name: 'Toàn fff',description: 'Mobile Team'),
          User(id: '3',name: 'Việt fff',description: 'Mobile Team'),
          User(id: '4', name: 'Thịnh fff', description: 'Web Team'),
          User(id: '5', name: 'Tín fff', description: 'Web Team'),
          User(id: '6',name: 'Bảo fff', description: 'Web Team'),
          User(id: '7',name:'Triều2 fff',description: 'Mobile Team'),
          User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
          User(id: '9',name: 'Việt2',description: 'Mobile Team'),
          User(id: '10', name: 'Thịnh2', description: 'Web Team'),
          User(id: '11', name: 'Tín2', description: 'Web Team'),
          User(id: '12',name: 'Bảo2', description: 'Web Team')
        ]),
    User(id: '2',name: 'Toàn',description: 'Mobile Team'),
    User(id: '3',name: 'Việt',description: 'Mobile Team'),
    User(id: '4', name: 'Thịnh', description: 'Web Team'),
    User(id: '5', name: 'Tín', description: 'Web Team'),
    User(id: '6',name: 'Bảo', description: 'Web Team'),
    User(id: '7',name:'Triều2',description: 'Mobile Team'),
    User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
    User(id: '9',name: 'Việt2',description: 'Mobile Team',
        follow: [
          User(id: '2',name: 'Toàn ggg',description: 'Mobile Team'),
          User(id: '3',name: 'Việt ggg',description: 'Mobile Team'),
          User(id: '4', name: 'Thịnh ggg', description: 'Web Team'),
          User(id: '5', name: 'Tín ggg', description: 'Web Team'),
          User(id: '6',name: 'Bảo gggisBlank', description: 'Web Team'),
          User(id: '7',name:'Triều2 ggg',description: 'Mobile Team'),
          User(id: '8',name: 'Toàn2',description: 'Mobile Team'),
          User(id: '9',name: 'Việt2',description: 'Mobile Team'),
          User(id: '10', name: 'Thịnh2', description: 'Web Team'),
          User(id: '11', name: 'Tín2', description: 'Web Team'),
          User(id: '12',name: 'Bảo2', description: 'Web Team')
        ]),
    User(id: '10', name: 'Thịnh2', description: 'Web Team'),
    User(id: '11', name: 'Tín2', description: 'Web Team'),
    User(id: '12',name: 'Bảo2', description: 'Web Team')
  ];


  dynamic users ={};
  dynamic CurrentUser = new User(id: '0', name: 'Trieu', description: 'Mobile Team') ;

  String id_need_Find;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
    print(size.size.height);
    var Theight = size.size.height -200;
    print(Theight);
    print(Users1[0].follow[0].name);
    print(CurrentUser.name);

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 50,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB25lYJUAyBrGFKHqg0c4g8atFIQPoIJdXcQ&usqp=CAU"),
          ),
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
      ),
      body: Column(
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
                onChanged: (e){
                  // setState(() {
                  //   users = Users1[0].follow;
                  // });

                  int E ;
                  e==''? E= Users1.length : E = int.parse(e);
                  print('$e : $E');
                  E >= Users1.length || Users1[E].follow == null ?
                  // print('NUll follower: ${Users1[E].name}')
                  setState(() {
                    users = {};
                  })
                      :
                  setState(() {
                    CurrentUser = Users1[E];
                    users = Users1[E].follow;
                  });
                },
                style: TextStyle(fontSize: 20),
                // autofocus: false,
                textAlign: TextAlign.left,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
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
          Container(
            height: 50,
            child: FlatButton(
              height: 50,
              child: Text('Click'),
              onPressed: (){
                setState(() {
                  // users = Users;
                  users = Users1[0].follow;
                });
                print(users[0].id);
              },
            ),
          ),

          Container(
            height: 50,
            color: Colors.amber[600],
            child:  Text('User: ${CurrentUser.name}'),
          ),
          Tab(users),
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
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1,color: Colors.grey)
              )
            ),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home, size: 30),
                  onPressed: (){
                    print("hiiiggi");
                  },
                ),
                IconButton(
                  icon: Icon(Icons.search, size: 30),
                  onPressed: (){
                    print("higgiii");
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
                    print("hiiii");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class Navigator1 extends StatelessWidget {

  final GetUser = (){
    return Users;
  };
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context);
      print(size.size.height);
      var Theight = size.size.height -200;
      print(Theight);
      dynamic users = {};
    return Scaffold(backgroundColor: Colors.blue,
          appBar: AppBar(
            toolbarHeight: 50,
            title: Text('Twitter ID', style: TextStyle(  fontSize: 20)),
          ),
          body: Column(
            children: [
              Container(
                height: 50,
                child: Textinput
              ),
              Container(
                height: 50,
                child: FlatButton(
                  height: 50,
                  child: Text('Click'),
                  onPressed: (){
                    users = GetUser();
                    print(users[0].id);
                  },
                ),
              ),
              Container(
                height: 50,
                color: Colors.amber[600],
                child: const Center(child: Text('Entry A')),
              ),
              Tab(users),

            ],
          ),
    );
  }
}

Widget Tab (dynamic users){
  return Expanded(
    child: ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
          child: Card(
            child: ListTile(
              leading: Icon(Icons.dashboard, size: 30,),
              onTap: (){
              },
              title: Text('${users[index].id} : ${users[index].name}'),
              subtitle: Text('Some text here ...${users[index].description} '),
              trailing: Icon(Icons.more_vert, size: 30),
              // leading: CircleAvatar(
              //   backgroundImage: AssetImage('assets/${locations[index].flag}'),
              // ),
            ),
          ),
        );
      },
    ),
  );
}



final spinkit = SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);
