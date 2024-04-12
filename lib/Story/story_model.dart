import 'package:flutter/material.dart';

class StoryModel extends ChangeNotifier {
  bool male = true;
  String genderType = 'male';
  var selectEventDate = DateTime.now();
  var currDt = DateTime.now();

  bool female = false;
  final TextEditingController storyUsernameController = TextEditingController();
  final TextEditingController storyChildrenController = TextEditingController();
  final TextEditingController storyAddressController = TextEditingController();
  final TextEditingController storyQualificationController =
      TextEditingController();
  final TextEditingController storyOccupationController =
      TextEditingController();
  final TextEditingController storyBiographyController =
      TextEditingController();
  gender(String type) {
    if (type == "male") {
      male = true;
      female = false;
      genderType = 'male';
      notifyListeners();
    } else {
      male = false;
      female = true;
      genderType = 'female';
      notifyListeners();
    }
  }

  void initTask(context) async {
    male = true;
    female = false;
    notifyListeners();
  }

  Future pickEventDate(context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: new DateTime(1900),
      lastDate: DateTime(currDt.year + 1),
    );
    selectEventDate = picked!;
    notifyListeners();
  }
}
