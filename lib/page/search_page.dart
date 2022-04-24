import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/Constants.dart';
import 'package:project2/Widget/search_bar.dart';
import 'package:project2/model/seach_model.dart';
import 'package:project2/model/shop_model.dart';

const TYPES = ['Water', 'Pocky', 'Bread'];

class SearchPage extends StatefulWidget {
  final bool? hideLeft;
  final String? keyword;
  final String? hint;

  const SearchPage({
    Key? key,
    this.hideLeft,
    this.keyword,
    this.hint,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  SearchModel? searchModel;
  String? keyword;
  List<ShopModel> shopModels = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Column(
        children: <Widget>[
          _appBar(),
          MediaQuery.removePadding(
              removeTop: true,
              context: context,
              child: Expanded(
                flex: 1,
                child: ListView.builder(
                    itemCount: shopModels.length,
                    itemBuilder: (BuildContext context, int position) {
                      return _item(position);
                    }),
              ))
        ],
      ),
    );
  }

  _appBar() {
    return Column(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0x66000000), Colors.transparent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.only(top: 10, left: 15, right: 10),
            height: 80,
            decoration: BoxDecoration(color: Colors.white),
            child: SearchBar(
              hideLeft: widget.hideLeft,
              defaultText: widget.keyword,
              hint: widget.hint,
              rightButtonClick: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              leftButtonClick: () {
                FocusScope.of(context).requestFocus(FocusNode());
                Navigator.pop(context);
              },
              onChanged: (value) {
                _seach(value);
              },
            ),
          ),
        ),
      ],
    );
  }

  void _seach(String searchKey) {
    List<ShopModel> shopModels = [];
    String sk = searchKey.toLowerCase();
    Constants.alls.forEach((key, value) {
      String name = key.toLowerCase();
      if (name.contains(sk)) {
        shopModels.add(value);
      }
    });
    setState(() {
      this.shopModels = shopModels;
    });
  }

  _item(int position) {
    ShopModel item = shopModels[position];
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.3, color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text("${item.name}"),
          ),
          Text("${item.price}",
              style: const TextStyle(fontSize: 16, color: Colors.orange))
        ],
      ),
    );
  }

  _subTitle(SearchItem item) {
    return RichText(
      text: TextSpan(children: <TextSpan>[
        TextSpan(
          text: item.price ?? '',
          style: TextStyle(fontSize: 16, color: Colors.orange),
        ),
        TextSpan(
          text: ' ' + (item.star ?? ''),
          style: TextStyle(fontSize: 12, color: Colors.grey),
        )
      ]),
    );
  }

  _keywordTextSpans(String? word, String keyword) {
    List<TextSpan> spans = [];
    if (word == null || word.length == 0) return spans;
    String wordL = word.toLowerCase(), keywordL = keyword.toLowerCase();
    List<String> arr = wordL.split(keywordL);
    TextStyle normalStyle = TextStyle(fontSize: 16, color: Colors.black87);
    TextStyle keywordStyle = TextStyle(fontSize: 16, color: Colors.orange);
    int preIndex = 0;
    for (int i = 0; i < arr.length; i++) {
      if (i != 0) {
        preIndex = wordL.indexOf(keywordL, preIndex);
        spans.add(TextSpan(
            text: word.substring(preIndex, preIndex + keyword.length),
            style: keywordStyle));
      }
      String val = arr[i];
      if (val != null && val.length > 0) {
        spans.add(TextSpan(text: val, style: normalStyle));
      }
    }
    return spans;
  }
}
