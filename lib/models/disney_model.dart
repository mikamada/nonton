class DisneyModel {
  final int id;
  final String overview;
  final String backdropPath;
  final DateTime releaseDate;
  final String title;
  final num voteAverage;
  final int voteCount;

  DisneyModel({
    required this.id,
    required this.overview,
    required this.backdropPath,
    required this.releaseDate,
    required this.title,
    required this.voteAverage,
    required this.voteCount,
  });

  factory DisneyModel.fromJson(Map<String, dynamic> json) => DisneyModel(
        id: json['id'],
        overview: json['overview'],
        backdropPath: 'http://image.tmdb.org/t/p/w500' + json['backdrop_path'],
        title: json['title'],
        voteAverage: json['vote_average'],
        voteCount: json['vote_count'],
        releaseDate: DateTime.parse(
          json['release_date'],
        ),
      );
}
