class TemplesHistory {
  String? image;

  TemplesHistory(this.image);
}

List<TemplesHistory> sites =
    sitesData.map((item) => TemplesHistory(item['image'])).toList();

var sitesData = [
  {
    "image":
        "https://www.treebo.com/blog/wp-content/uploads/2018/08/Best-Temples-In-Amritsar.jpg"
  },
  {
    "image":
        "https://img.traveltriangle.com/blog/wp-content/uploads/2017/09/rsz_shutterstock_131742155-1.jpg"
  },
  {
    "image":
        "https://www.newsx.com/wp-content/uploads/2020/05/badrinath-028192-RU5kOP6G.jpg"
  },
  {
    "image":
        "https://static.thousandwonders.net/Konark.Sun.Temple.original.222.jpg"
  },
  {
    "image":
        "https://www.tamilnadutourisminfo.com/wp-content/uploads/2019/03/Brihadeeswara_Temple_Thanjavur.jpg"
  },
  {
    "image":
        "https://i.pinimg.com/originals/e3/ee/d6/e3eed6abad69c61b71788f0c2c668bda.jpg"
  },
  {"image": "https://wallpapercave.com/wp/wp6698299.jpg"},
];
