import 'package:flutter/material.dart';
import 'package:news_app/data/data.dart';
import 'package:news_app/data/news.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:news_app/widgets/widgets.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _loading = false;
  var newsList;

  List<CategoryModel> categories = List<CategoryModel>();

  void getNews() async {
    setState(() {
      _loading = true;
    });
    News news = News();
    await news.getNews();
    newsList = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    categories = getCategory();
    getNews();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: SafeArea(
          child: RefreshIndicator(
        onRefresh: () => refresh(),
        child: _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 70,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return CategoryCard(
                                imageAssetUrl: categories[index].imageAssetUrl,
                                categoryName: categories[index].categoryName,
                              );
                            }),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
                        child: ListView.builder(
                            itemCount: newsList.length,
                            shrinkWrap: true,
                            physics: ClampingScrollPhysics(),
                            itemBuilder: (context, index) {
                              return NewsTile(
                                imgUrl: newsList[index].urlToImage ?? "",
                                title: newsList[index].title ?? "",
                                desc: newsList[index].description ?? "",
                                content: newsList[index].content ?? "",
                                postUrl: newsList[index].articleUrl ?? "",
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
      )),
    );
  }

  refresh() {
    return getNews();
  }
}
