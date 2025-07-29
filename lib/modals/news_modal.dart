class NewsArticle {
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final DateTime publishedAt;
  final String? content;
  final String sourceName;

  NewsArticle({
    required this.title,
    required this.url,
    required this.publishedAt,
    required this.sourceName,
    this.author,
    this.description,
    this.urlToImage,
    this.content,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      author: json['author'],
      title: json['title'] ?? '',
      description: json['description'],
      url: json['url'],
      urlToImage: json['urlToImage'],
      publishedAt: DateTime.parse(json['publishedAt']),
      content: json['content'],
      sourceName: json['source']?['name'] ?? 'Unknown',
    );
  }
}
