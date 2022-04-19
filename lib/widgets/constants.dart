import 'package:pilgrimage_app/models/category.dart';
import 'package:pilgrimage_app/models/news.dart';

class StaticValues {
  List<News> news = [
    News(
        title: "Padmanabhaswamy Temple - "
            "The Golden Forbidden Zone",
        descrption:
            "The Shree Padmanabhaswamy Temple is a Hindu temple located in Thiruvananthapuram, the state capital of Kerala, India. It is considered as the richest place of worship in the world. The name of the city of 'Thiruvananthapuram' in Malayalam translates to "
            "The City of Lord Ananta"
            ", (The City Of Lord Vishnu)  referring to the deity of the Padmanabhaswamy temple. The temple is built in an intricate fusion of the Chera style of architecture, featuring high walls, and a 16th-century gopura.[2][3] While the Ananthapura temple in Kumbla in Kasaragod is considered as the original seat of the deity ("
            "Moolasthanam"
            "), architecturally to some extent, the temple is a replica of the Adikesava Perumal temple in Thiruvattar.",
        image:
            "https://i.pinimg.com/originals/84/88/74/8488747dcf4b146dfcc81bde3c890a00.jpg",
        source: "The Economic Times",
        sourceImage:
            "https://yt3.ggpht.com/ytc/AAUvwngucVKXeH6T2_0PfZbyB2XJ3Toff"
            "5CfTnZ1alshs_4=s900-c-k-c0x00ffffff-no-rj",
        time: "Today, 8:28 AM"),
    News(
        title: "Sagrada Família - "
            "Sculpture of the choir of angel children",
        image:
            "https://th.bing.com/th/id/OIP.xr_00e00sLz0z2x4hIbqAQHaLH?pid=ImgDet&rs=1",
        source: "Times of India",
        sourceImage: "https://static.toiimg.com/photo/47529300.cms",
        time: "3 Days Ago",
        descrption:
            "La Sagrada Familia is an absolutely breathtaking church located in Barcelona, Spain. The architect behind this gem, which is still not completed, is none other than Antoni Gaudí. Gaudí has world-renowned masterpieces spread throughout Barcelona, although none have quite an interesting background like La Sagrada Familia. Here are some incredible facts you need to know about this sacred space before visiting."),
    News(
        title: "Masjid al-Haram - "
            "Era of Abraham and Ishmael",
        image:
            "https://www.pointchaser.com/wp-content/uploads/2017/02/Masjid-Al-Haram-in-Mecca-During-the-Day-Umrah.jpg",
        source: "Indian Express",
        sourceImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn"
            ":ANd9GcTYl2TxpCA39qFBqA2U2vVYj005OIalFxAwkg&usqp=CAU",
        time: "4 Days Ago",
        descrption:
            "With Covid playing havoc, financial savings of households, "
            "especially bank deposits and equity investments, are "
            "on the decline. The Reserve bank of India’s preliminary "
            "estimate of household financial savings is at 8.2 per "
            "cent of GDP in the third quarter of 2020-21, exhibiting "
            "a sequential moderation for the second consecutive "
            "quarter after having spiked in the pandemic-hit first "
            "quarter of 2020-21.")
  ];

  List<Category> categories = [
    Category(
      name: "Hinduism",
    ),
    Category(
      name: "Christianity",
    ),
    Category(
      name: "Islam",
    ),
    Category(
      name: "Buddhism",
    ),
    Category(
      name: "Jainism",
    ),
  ];
}
