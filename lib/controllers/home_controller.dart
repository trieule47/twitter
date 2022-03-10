import 'package:twitter/models/user_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  var userListData = List<UserModel>().obs;
  var count = 0.obs;
  var listFollow = UserModel;

  increate(){
    count++;
    print('count ++');
  }

  void onInit() {
    apiGetUserList();
    super.onInit();
  }

  addFollow(User){
    print('add ${User.name}');
    var len = userListData[0].follow.length;
    //kiểm tra xem trong danh sach follow có User chưa
   // dynamic foundUser = null;
   //final foundUser = userListData[0].follow.firstWhere((u) => u.id == User.id);
    print('add  : ');
    //add user vào
    //if(foundUser = null)
    userListData[0].follow.add(User);
  }

  getListFollow(User){
    print('get  list follow');
    dynamic foundUser = userListData.firstWhere((u) => u.id == User.id);
    listFollow = foundUser;
  }

  deleteFollow(User){
    print('delete: ${User.id}');
    var len = userListData.length;

    //tìm user cần xóa trong list follow
    //userListData[0].follow.forEach((u)=>{print('${u.id}')});
    final foundUser =  userListData[0].follow.firstWhere((u) => u.id == User.id);
    print(foundUser.id);
    var a= userListData[0].follow;
    if(foundUser != null) userListData[0].follow.remove(User);

  }

  deleteUser(User){
    print('delete user: ${User.id}');
    var len = userListData.length;

    //tìm user cần xóa trong list follow
    //userListData[0].follow.forEach((u)=>{print('${u.id}')});
    dynamic foundUser =  userListData.firstWhere((u) => u.id == User.id);
    print(foundUser.id);

    if(foundUser != null) userListData.remove(User);

  }

  void apiGetUserList() async{

    userListData.add(UserModel(id: '01',name:'Triều 123',description: 'Mobile Team',
        follow: [
          UserModel(id: '112',name: 'Toàn fff',description: 'Mobile Team'),
          UserModel(id: '113',name: 'Việt fff',description: 'Mobile Team'),
          UserModel(id: '114', name: 'Thịnh fff', description: 'Web Team'),
          UserModel(id: '115', name: 'Tín fff', description: 'Web Team'),
          UserModel(id: '116',name: 'Bảo fff', description: 'Web Team'),
          // UserModel(id: '117',name:'Triều2 fff',description: 'Mobile Team'),
          // UserModel(id: '118',name: 'Toàn2',description: 'Mobile Team'),
          // UserModel(id: '119',name: 'Việt2',description: 'Mobile Team'),
          // UserModel(id: '110', name: 'Thịnh2', description: 'Web Team'),
          // UserModel(id: '111', name: 'Tín2', description: 'Web Team'),
          // UserModel(id: '112',name: 'Bảo2', description: 'Web Team')
        ].obs),);

    userListData.add(UserModel(id: '011', name: 'Tín2', description: 'Web Team'));

    //List<UserModel> Users
    userListData.addAll([
      UserModel(id: '1',name:'Triều',description: 'Mobile Team',
          follow: [
            UserModel(id: '2',name: 'Toàn fff',description: 'Mobile Team'),
            UserModel(id: '3',name: 'Việt fff',description: 'Mobile Team'),
            UserModel(id: '4', name: 'Thịnh fff', description: 'Web Team'),
            UserModel(id: '5', name: 'Tín fff', description: 'Web Team'),
            UserModel(id: '6',name: 'Bảo fff', description: 'Web Team'),
            UserModel(id: '7',name:'Triều2 fff',description: 'Mobile Team'),
            UserModel(id: '8',name: 'Toàn2',description: 'Mobile Team'),
            UserModel(id: '9',name: 'Việt2',description: 'Mobile Team'),
            UserModel(id: '10', name: 'Thịnh2', description: 'Web Team'),
            UserModel(id: '11', name: 'Tín2', description: 'Web Team'),
            UserModel(id: '12',name: 'Bảo2', description: 'Web Team')
          ].obs),
      UserModel(id: '2',name: 'Toàn',description: 'Mobile Team'),
      UserModel(id: '3',name: 'Việt',description: 'Mobile Team'),
      UserModel(id: '4', name: 'Thịnh', description: 'Web Team'),
      UserModel(id: '5', name: 'Tín', description: 'Web Team'),
      UserModel(id: '6',name: 'Bảo', description: 'Web Team'),
      UserModel(id: '7',name:'Triều2',description: 'Mobile Team'),
      UserModel(id: '8',name: 'Toàn2',description: 'Mobile Team'),
      UserModel(id: '9',name: 'Việt2',description: 'Mobile Team',
          follow: [
            UserModel(id: '2',name: 'Toàn ggg',description: 'Mobile Team'),
            UserModel(id: '3',name: 'Việt ggg',description: 'Mobile Team'),
            UserModel(id: '4', name: 'Thịnh ggg', description: 'Web Team'),
            UserModel(id: '5', name: 'Tín ggg', description: 'Web Team'),
            UserModel(id: '6',name: 'Bảo gggisBlank', description: 'Web Team'),
            UserModel(id: '7',name:'Triều2 ggg',description: 'Mobile Team'),
            UserModel(id: '8',name: 'Toàn2',description: 'Mobile Team'),
            UserModel(id: '9',name: 'Việt2',description: 'Mobile Team'),
            UserModel(id: '10', name: 'Thịnh2', description: 'Web Team'),
            UserModel(id: '11', name: 'Tín2', description: 'Web Team'),
            UserModel(id: '12',name: 'Bảo2', description: 'Web Team')
          ].obs),
      UserModel(id: '10', name: 'Thịnh2', description: 'Web Team'),
      UserModel(id: '11', name: 'Tín2', description: 'Web Team'),
      UserModel(id: '12',name: 'Bảo2', description: 'Web Team')
    ]);

    //userListData = Users;
  }

}