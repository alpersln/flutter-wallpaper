import 'package:dio/dio.dart';

class PhotosApi {
  late Response response;
  Dio dio = new Dio();

  getPhotos(int page, String search) async {
    response = await dio.get(
      "https://wallhaven.cc/api/v1/search?q=$search&page=$page",

      //    "https://api.pexels.com/v1/search?query=$search&per_page=10&page=$page",
      // "https://wallhaven.cc/api/v1/search?q=$search&categories=111&purity=110&sorting=relevance&order=desc&page=$page",
      /*
        options: Options(headers: {
          'Authorization':
              'Bearer 563492ad6f91700001000001d890418544f24a6b9b1a3bf0f9f5b9fa'
        })
        */
    );

    print(response.data);
    return response.data;
  }
}
