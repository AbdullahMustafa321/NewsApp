import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/views/widgets/error_wid.dart';
import 'package:news_app/views/widgets/news_list_view.dart';
import '../../services/news_services.dart';
import 'loading_widget.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key,required this.category});
final String category;
  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService(Dio()).getGeneralNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesMosdel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData)
          {
            return NewsListView(articales: snapshot.data!);
          }
          else if (snapshot.hasError)
          {
            return const ErrorWid(text: 'Oops! There was an Error.\nTry again later /:');
          }
          else
          {
            return const LoadingWidget();
          }
        });
  }
}
