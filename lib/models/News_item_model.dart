class NewsItemModel {
  final String title;
  final int id;
  final String imgurl;
  final String author;
  final String category;
  final String time;
  final bool isFavorite;

  NewsItemModel({
    required this.title,
    required this.id,
    required this.imgurl,
    required this.author,
    required this.category,
    required this.time,
    this.isFavorite = false,
  });
  NewsItemModel copyWith({
    int? id,
    String? title,
    String? imgurl,
    String? category,
    String? author,
    String? time,
    bool? isFavorite,
  }) {
    return NewsItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      imgurl: imgurl ?? this.imgurl,
      category: category ?? this.category,
      author: author ?? this.author,
      time: time ?? this.time,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }
}

List<NewsItemModel> newsItems = [
  NewsItemModel(
      title: "Wow what tf !",
      id: 1,
      imgurl:
          "https://ichef.bbci.co.uk/news/480/cpsprodpb/b974/live/1eacf530-1486-11f0-9c12-3306e577b130.jpg.webp",
      author: "CNN",
      category: "Sports",
      time: "8 min ago"),
  NewsItemModel(
      title: "Wow what tf!",
      id: 1,
      imgurl:
          "https://ichef.bbci.co.uk/news/480/cpsprodpb/14ae/live/9783d9c0-145d-11f0-ba12-8d27eb561761.jpg.webp",
      author: "BBC",
      category: "Sports",
      time: "8 min ago"),
  NewsItemModel(
      title: "Holly Crap Rice!",
      id: 1,
      imgurl:
          "https://ichef.bbci.co.uk/news/480/cpsprodpb/1de7/live/58afad50-1476-11f0-aff1-f1386d086010.jpg.webp",
      author: "ElNahar",
      category: "Sports",
      time: "8 min ago"),
  NewsItemModel(
      title: "Ferhat Smin",
      id: 1,
      imgurl:
          "https://ichef.bbci.co.uk/news/480/cpsprodpb/3a33/live/78f0bc50-1474-11f0-a455-cf1d5f751d2f.jpg.webp",
      author: "Dz Tv",
      category: "Sports",
      time: "8 min ago")
];
