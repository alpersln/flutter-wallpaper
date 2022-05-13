// To parse this JSON data, do
//
//     final photoModel = photoModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final photoModel = photoModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final photoModel = photoModelFromJson(jsonString);

import 'dart:convert';

PhotoModel photoModelFromJson(String str) =>
    PhotoModel.fromJson(json.decode(str));

String photoModelToJson(PhotoModel data) => json.encode(data.toJson());

class PhotoModel {
  PhotoModel({
    this.data,
    this.meta,
  });

  List<Datum>? data;
  Meta? meta;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta == null ? null : meta!.toJson(),
      };
}

class Datum {
  Datum({
    this.id,
    this.purity,
    this.category,
    this.dimensionX,
    this.dimensionY,
    this.resolution,
    this.path,
    this.thumbs,
  });

  String? id;
  String? purity;
  String? category;
  int? dimensionX;
  int? dimensionY;
  String? resolution;
  String? path;
  Thumbs? thumbs;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
        purity: json["purity"] == null ? null : json["purity"],
        category: json["category"] == null ? null : json["category"],
        dimensionX: json["dimension_x"] == null ? null : json["dimension_x"],
        dimensionY: json["dimension_y"] == null ? null : json["dimension_y"],
        resolution: json["resolution"] == null ? null : json["resolution"],
        path: json["path"] == null ? null : json["path"],
        thumbs: json["thumbs"] == null ? null : Thumbs.fromJson(json["thumbs"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "purity": purity == null ? null : purity,
        "category": category == null ? null : category,
        "dimension_x": dimensionX == null ? null : dimensionX,
        "dimension_y": dimensionY == null ? null : dimensionY,
        "resolution": resolution == null ? null : resolution,
        "path": path == null ? null : path,
        "thumbs": thumbs == null ? null : thumbs!.toJson(),
      };
}

class Thumbs {
  Thumbs({
    this.large,
    this.original,
    this.small,
  });

  String? large;
  String? original;
  String? small;

  factory Thumbs.fromJson(Map<String, dynamic> json) => Thumbs(
        large: json["large"] == null ? null : json["large"],
        original: json["original"] == null ? null : json["original"],
        small: json["small"] == null ? null : json["small"],
      );

  Map<String, dynamic> toJson() => {
        "large": large == null ? null : large,
        "original": original == null ? null : original,
        "small": small == null ? null : small,
      };
}

class Meta {
  Meta({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
    this.query,
    this.seed,
  });

  int? currentPage;
  int? lastPage;
  int? perPage;
  int? total;
  String? query;
  dynamic seed;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"] == null ? null : json["current_page"],
        lastPage: json["last_page"] == null ? null : json["last_page"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        total: json["total"] == null ? null : json["total"],
        query: json["query"] == null ? null : json["query"],
        seed: json["seed"],
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage == null ? null : currentPage,
        "last_page": lastPage == null ? null : lastPage,
        "per_page": perPage == null ? null : perPage,
        "total": total == null ? null : total,
        "query": query == null ? null : query,
        "seed": seed,
      };
}



/*
import 'dart:convert';

PhotoModel photoModelFromJson(String str) =>
    PhotoModel.fromJson(json.decode(str));

String photoModelToJson(PhotoModel data) => json.encode(data.toJson());

class PhotoModel {
  PhotoModel({
    this.page,
    this.perPage,
    this.photos,
    this.totalResults,
    this.nextPage,
  });

  int? page;
  int? perPage;
  List<Photos>? photos;
  int? totalResults;
  String? nextPage;

  factory PhotoModel.fromJson(Map<String, dynamic> json) => PhotoModel(
        page: json["page"] == null ? null : json["page"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        photos: json["photos"] == null
            ? null
            : List<Photos>.from(json["photos"].map((x) => Photos.fromJson(x))),
        totalResults:
            json["total_results"] == null ? null : json["total_results"],
        nextPage: json["next_page"] == null ? null : json["next_page"],
      );

  Map<String, dynamic> toJson() => {
        "page": page == null ? null : page,
        "per_page": perPage == null ? null : perPage,
        "photos": photos == null
            ? null
            : List<dynamic>.from(photos!.map((x) => x.toJson())),
        "total_results": totalResults == null ? null : totalResults,
        "next_page": nextPage == null ? null : nextPage,
      };
}

class Photos {
  Photos({
    this.id,
    this.width,
    this.height,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.avgColor,
    this.src,
    this.alt,
  });

  int? id;
  int? width;
  int? height;
  String? url;
  String? photographer;
  String? photographerUrl;
  int? photographerId;
  String? avgColor;
  Src? src;
  String? alt;

  factory Photos.fromJson(Map<String, dynamic> json) => Photos(
        id: json["id"] == null ? null : json["id"],
        width: json["width"] == null ? null : json["width"],
        height: json["height"] == null ? null : json["height"],
        url: json["url"] == null ? null : json["url"],
        photographer:
            json["photographer"] == null ? null : json["photographer"],
        photographerUrl:
            json["photographer_url"] == null ? null : json["photographer_url"],
        photographerId:
            json["photographer_id"] == null ? null : json["photographer_id"],
        avgColor: json["avg_color"] == null ? null : json["avg_color"],
        src: json["src"] == null ? null : Src.fromJson(json["src"]),
        alt: json["alt"] == null ? null : json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "url": url == null ? null : url,
        "photographer": photographer == null ? null : photographer,
        "photographer_url": photographerUrl == null ? null : photographerUrl,
        "photographer_id": photographerId == null ? null : photographerId,
        "avg_color": avgColor == null ? null : avgColor,
        "src": src == null ? null : src!.toJson(),
        "alt": alt == null ? null : alt,
      };
}

class Src {
  Src({
    this.original,
    this.large2X,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  String? original;
  String? large2X;
  String? large;
  String? medium;
  String? small;
  String? portrait;
  String? landscape;
  String? tiny;

  factory Src.fromJson(Map<String, dynamic> json) => Src(
        original: json["original"] == null ? null : json["original"],
        large2X: json["large2x"] == null ? null : json["large2x"],
        large: json["large"] == null ? null : json["large"],
        medium: json["medium"] == null ? null : json["medium"],
        small: json["small"] == null ? null : json["small"],
        portrait: json["portrait"] == null ? null : json["portrait"],
        landscape: json["landscape"] == null ? null : json["landscape"],
        tiny: json["tiny"] == null ? null : json["tiny"],
      );

  Map<String, dynamic> toJson() => {
        "original": original == null ? null : original,
        "large2x": large2X == null ? null : large2X,
        "large": large == null ? null : large,
        "medium": medium == null ? null : medium,
        "small": small == null ? null : small,
        "portrait": portrait == null ? null : portrait,
        "landscape": landscape == null ? null : landscape,
        "tiny": tiny == null ? null : tiny,
      };
}

*/





















/*
class PhotoModel {
  late int page;
  late int perPage;
  late List<Photos> photos;
  late int totalResults;
  late String? nextPage;
  late String? prevPage;

  PhotoModel(
      {required this.page,
      required this.perPage,
      required this.photos,
      required this.totalResults,
      this.nextPage,
      this.prevPage});

  PhotoModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    perPage = json['per_page'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos.add(Photos.fromJson(v));
      });
    }
    totalResults = json['total_results'];
    nextPage = json['next_page'];
    prevPage = json['prev_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['page'] = page;
    data['per_page'] = perPage;
    if (photos != null) {
      data['photos'] = photos.map((v) => v.toJson()).toList();
    }
    data['total_results'] = totalResults;
    data['next_page'] = nextPage;
    data['prev_page'] = prevPage;
    return data;
  }
}

class Photos {
  late int id;
  late int width;
  late int height;
  late String url;
  late String photographer;
  late String photographerUrl;
  late int photographerId;
  late String avgColor;
  late Src src;

  Photos(
      {required this.id,
      required this.width,
      required this.height,
      required this.url,
      required this.photographer,
      required this.photographerUrl,
      required this.photographerId,
      required this.avgColor,
      required this.src});

  Photos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    width = json['width'];
    height = json['height'];
    url = json['url'];
    photographer = json['photographer'];
    photographerUrl = json['photographer_url'];
    photographerId = json['photographer_id'];
    avgColor = json['avg_color'];
    src = (json['src'] != null ? Src.fromJson(json['src']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['width'] = width;
    data['height'] = height;
    data['url'] = url;
    data['photographer'] = photographer;
    data['photographer_url'] = photographerUrl;
    data['photographer_id'] = photographerId;
    data['avg_color'] = avgColor;
    if (src != null) {
      data['src'] = src.toJson();
    }
    return data;
  }
}

class Src {
  late String original;
  late String large2x;
  late String large;
  late String medium;
  late String small;
  late String portrait;
  late String landscape;
  late String tiny;

  Src(
      {required this.original,
      required this.large2x,
      required this.large,
      required this.medium,
      required this.small,
      required this.portrait,
      required this.landscape,
      required this.tiny});

  Src.fromJson(Map<String, dynamic> json) {
    original = json['original'];
    large2x = json['large2x'];
    large = json['large'];
    medium = json['medium'];
    small = json['small'];
    portrait = json['portrait'];
    landscape = json['landscape'];
    tiny = json['tiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['original'] = original;
    data['large2x'] = large2x;
    data['large'] = large;
    data['medium'] = medium;
    data['small'] = small;
    data['portrait'] = portrait;
    data['landscape'] = landscape;
    data['tiny'] = tiny;
    return data;
  }
}
*/
