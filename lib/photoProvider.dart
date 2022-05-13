import 'package:flutter/material.dart';
import 'package:wpapp/model.dart';
import 'package:wpapp/services.dart';

class PhotoProvider extends ChangeNotifier {
  int _page = 1;
  String _search = 'nature';

  String get search => _search;

  set search(String value) {
    _search = value;
    notifyListeners();
  }

  int get page => _page;

  set page(int value) {
    _page = value;
    notifyListeners();
  }

  List<Datum> _photos = <Datum>[];

  List<Datum> get photos => _photos;

  set photos(List<Datum> value) {
    _photos = value;
  }

  Future<void> callPhotoApi() async {
    await PhotosApi().getPhotos(_page, _search).then((response) {
      _page = _page + 1;

      addPhotosToList(PhotoModel.fromJson(response).data!);
    });
    notifyListeners();
  }

  void addPhotosToList(List<Datum> photoData) {
    _photos.addAll(photoData);
    notifyListeners();
  }
}
