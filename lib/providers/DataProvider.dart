

import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier{
    List<String> _shajraImageUrls = [];
    List<int> _shajraImageIndex = [];

    List<String?>  get shajraImageUrls  => _shajraImageUrls;
    List<int>  get shajraImageIndex  => _shajraImageIndex;
    List<String> _majlishImages = [];

    List<String>  get majlishImages => _majlishImages;





void getShajraImageUrl(String path)async{
 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("shajra_hasbiya/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();
      shajraImageIndex.add(extractIndexFromFileName(ref.toString()));


      shajraImageUrls.add(url);
      log(url);
    }
    for(var v in shajraImageIndex){
      log(v.toString());
    }

    log(shajraImageUrls.length.toString());



  notifyListeners();
}

void getMajlisImagesUrl()async{
 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("majlisImages/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();
      majlishImages.add(url);
    }
  




  notifyListeners();
}

int extractIndexFromFileName(String filePath) {
  final fileName = filePath.split('/').last;
  final nameWithoutExtension = fileName.split('.').first;
  final index = int.tryParse(nameWithoutExtension);
  return index!;
}
}