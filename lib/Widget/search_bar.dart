import 'package:flutter/cupertino.dart';


class SearchBar extends StatefulWidget {
  final bool enabled;
  final bool hideLeft;
  final String hint;
  final String defaultText;
  final void Function() leftButtonClick;
  final void Function() rightButtonClick;
  final void Function() inputBoxClick;
  final ValueChanged<String> OnChanged;

  const SearchBar({Key key, this.enable,this.hideLeft,this.})

  @override
  State<StatefulWidget> createState(){
    return null;
  }
}
class _SearchBar extends State<SearchBar>{
  bool ShowClear = false;
  final TextEditingController _controller = TextEditingController();
  @override
  void initState(){
    if(widget.defaultText != null){
      setState(() {
        _controller.text = widget.defaultText;
      });
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return _getNormalSearch();
  }

  _getNormalSearch(){
    return Container(
      child: Row(
          children: <Widget>[
              Expanded(flex: 1,
              child: _inputBox(),)
          ]
      ),
    );

  }
}