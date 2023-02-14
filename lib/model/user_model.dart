class UserModel{
  String? name , email , pic , uId;

  UserModel({required this.name,required this.email,required this.uId , required this.pic});

  UserModel.fromJson(Map<String , dynamic>map){
    if(map== null){
      return ;
    }
    name = map["name"];
    email = map["email"];
    pic = map["pic"];
    uId = map["uId"];

  }
  toJson(){
    return{
      "name":name,
      "email":email,
"pic":pic,
      "uId":uId,

    };
  }

}