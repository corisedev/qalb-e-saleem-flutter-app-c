

import 'dart:developer';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class DataProvider with ChangeNotifier{
    List<String> _shajraHasbiyaImageUrls = [];
    List<int> _shajraHasbiyaImageIndex = [];
    List<String> _shajraNasbiyaImageUrls = [];
    List<int> _shajraNasbiyaImageIndex = [];

    List<String?>  get shajraHasbiyaImageUrls  => _shajraHasbiyaImageUrls;
    List<int>  get shajraHasbiyaImageIndex  => _shajraHasbiyaImageIndex;
    List<String?>  get shajraNasbiyaImageUrls  => _shajraNasbiyaImageUrls;
    List<int>  get shajraNasbiyaImageIndex  => _shajraNasbiyaImageIndex;
    List<String> _majlisImages = [];
    List<String> _majlisThumb = [];

    List<String>  get majlisImages => _majlisImages;
    List<String>  get majlisThumb => _majlisThumb;
    Map<String, String> _pngUrls = {};

  Map<String, String> get pngUrls => _pngUrls;





void getShajraNasbiyaImageUrl(String path)async{

 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("shajra_nasbiya/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();
      shajraNasbiyaImageIndex.add(extractIndexFromFileName(ref.toString()));


      shajraNasbiyaImageUrls.add(url);
    }





  notifyListeners();
}

void getShajraHasbiyaImageUrl(String path)async{

 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("shajra_hasbiya/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();
      shajraHasbiyaImageIndex.add(extractIndexFromFileName(ref.toString()));


      shajraHasbiyaImageUrls.add(url);
    }
  


  notifyListeners();
}


void getMajlisThumbUrl()async{
 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("majlisThumb/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();


      majlisThumb.add(url);
    }





  notifyListeners();
}

void getMajlisImagesUrl()async{
  majlisImages.clear();
 final ListResult result = await FirebaseStorage.instance
        .ref()
        .child("majlisImages/")
        .listAll();


    for (final Reference ref in result.items) {
      final String url = await ref.getDownloadURL();
      majlisImages.add(url);
    }

    

  
  




  notifyListeners();
}

 Future<void> getPngs() async {
  pngUrls.clear();
    final ListResult result = await FirebaseStorage.instance.ref('pngs/').listAll();

    for (Reference ref in result.items) {
      String fileName = ref.name.split('.').first;
      
      String url = await ref.getDownloadURL();
      
      _pngUrls[fileName] = url;
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