import 'package:flutter/material.dart';
import 'package:flutterlearn/week2/post_json_place_holder/model/post_model.dart';
import 'package:flutterlearn/week2/post_json_place_holder/service/place_holder_service.dart';
import './post_json_place_holder.dart';

abstract class PostJsonPlaceHolderViewModel extends State<PostJsonPlaceHolder> {
  bool isLoading = true;
  final PlaceHolderService placeHolderService = PlaceHolderService();
  List<PostModel?>? postItems;

//sayfa ilk acildiginda
  @override
  void initState() {
    super.initState();
    fetchAllDatas();
  }

  Future<void> fetchAllDatas() async {
    try {
      final response = await placeHolderService.fetchPostItem();
      postItems = response;
    } catch (e) {}
    _changeLoading();
  }

  void _changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}
