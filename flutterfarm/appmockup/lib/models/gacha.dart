class Gacha {
  int id;
  String title;
  String rarity;

  Gacha({this.id, this.title, this.rarity});

  Gacha.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['title'];
    rarity = json['rarity'];
  }
}