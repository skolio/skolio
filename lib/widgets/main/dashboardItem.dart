import 'package:flutter/material.dart';

class DashboardItem extends StatefulWidget {
  final String imageURL;
  final String title;
  final String bodyText;
  final Function onTap;
  final Widget buttonWidget;

  DashboardItem({
    this.bodyText,
    this.buttonWidget,
    this.imageURL,
    this.onTap,
    this.title,
  });

  @override
  _DashboardItemState createState() => _DashboardItemState();
}

class _DashboardItemState extends State<DashboardItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).primaryColor.withOpacity(0.3),
          // image: DecorationImage(
          //   image: NetworkImage(widget.imageURL),
          // ),
        ),
        height: 150,
        padding: EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width * 0.9,
        alignment: Alignment.bottomCenter,
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: EdgeInsets.all(5),
              child: widget.buttonWidget,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  Text(widget.bodyText),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}