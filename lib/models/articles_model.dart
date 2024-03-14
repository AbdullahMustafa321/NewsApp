class ArticlesMosdel {
  final String title;
  final String? subtitle;
  final String? image;
  final String url;
  ArticlesMosdel( {
    required this.url,
    required this.title,
    required this.subtitle,
    required this.image
});

  factory ArticlesMosdel.fromJson(json){
    return ArticlesMosdel(
        title: json['title'],
        subtitle: json['description'],
        image: json['image_url'],
        url: json['source_url']
    );
  }
}