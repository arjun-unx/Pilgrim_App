class RecommendedModel {
  String? name;
  String? image;

  RecommendedModel(this.name, this.image);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(item['name'], item['image']))
    .toList();

var recommendationsData = [
  {
    "name": "Badrinath Temple",
    "image":
        "https://www.newsx.com/wp-content/uploads/2020/05/badrinath-028192-RU5kOP6G.jpg"
  },
  {
    "name": "Sun Temple",
    "image":
        "https://static.thousandwonders.net/Konark.Sun.Temple.original.222.jpg"
  },
  {
    "name": "Brihadeeswara Temple",
    "image":
        "https://www.tamilnadutourisminfo.com/wp-content/uploads/2019/03/Brihadeeswara_Temple_Thanjavur.jpg"
  },
  {
    "name": "Somnath Temple",
    "image":
        "https://i.pinimg.com/originals/e3/ee/d6/e3eed6abad69c61b71788f0c2c668bda.jpg"
  },
  {
    "name": "Kedarnath Temple",
    "image": "https://wallpapercave.com/wp/wp6698299.jpg"
  },
];
