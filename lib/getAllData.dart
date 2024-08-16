import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qalb/providers/DataProvider.dart';

class  GetAllData{


  static getData(BuildContext context){
          Provider.of<DataProvider>(context, listen: false).getShajraNasbiyaImageUrl("shajra_nasbiya/");
          Provider.of<DataProvider>(context, listen: false).getShajraHasbiyaImageUrl("shajra_hasbiya/");
          Provider.of<DataProvider>(context, listen: false).getMajlisImagesUrl();
          Provider.of<DataProvider>(context, listen: false).getPngs();
          Provider.of<DataProvider>(context, listen: false).getMajlisThumbUrl();
  }
}