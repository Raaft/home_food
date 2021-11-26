class DrinksModel{
  String? title;
  String? subTitle;
  String? price;
  String? avatar;
  DrinksModel(this.title, this.subTitle, this.price, this.avatar);


  DrinksModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subTitle = json['subTitle'];
    price = json['price'];
    avatar = json['avatar'];

  }

}