class CategoryModel{
 late  String image , name;

  CategoryModel({ required this.image,required this.name});
   CategoryModel.fromJson(Map<String , dynamic>map){
     // if(map == null){
     //   return ;
     // }
     name = map["name"];
     image = map["image"];
   }

  toJson(){
     return {
       "name":name,
      "image" :image
     };
  }
}