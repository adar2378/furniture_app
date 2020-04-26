import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furnitureapp/item_model.dart';
import 'package:furnitureapp/state_model.dart';

class ItemDetails extends StatefulWidget {
  final Item item;

  const ItemDetails({Key key, this.item}) : super(key: key);
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  List<SelectorState> states;

  @override
  void initState() {
    states = [
      SelectorState(
        selected: true,
        color: Color(0xFFD9DCF7),
      ),
      SelectorState(
        selected: false,
        color: Color(0xFFFC9090),
      ),
      SelectorState(
        selected: false,
        color: Color(0xFF8ED7A6),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.item.color,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: Hero(
              tag: widget.item.name,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(
                    widget.item.imagePath,
                    width: double.infinity,
                  ),
                  Positioned(
                      left: ScreenUtil().setWidth(24),
                      top: ScreenUtil().setHeight(56),
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back),
                            color: widget.item.priceColor,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(24)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(30),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                widget.item.name,
                                style: TextStyle(
                                    fontSize: ScreenUtil().setSp(24),
                                    height: 1.1,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF3C3D3D)),
                              ),
                              Text(
                                "\$${widget.item.price}",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(24),
                                  height: 1.1,
                                  fontWeight: FontWeight.w700,
                                  color: widget.item.priceColor,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(10),
                          ),
                          Text(
                            "Chairs",
                            style: TextStyle(
                                fontSize: ScreenUtil().setSp(16),
                                color: Color(0xFF9E9E9E),
                                fontWeight: FontWeight.w600,
                                height: 1.2),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(25),
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis non tristique velit. Fusce laoreet dictum velit, eget tempus nibh malesuada in. Maecenas pretium, nisi et imperdiet hendrerit, erat sapien molestie eros, sagittis ultricies felis purus et leo. Proin dapibus accumsan nibh et vestibulum. Nulla facilisi. Integer a elementum augue. Quisque tempor augue ut ante blandit, nec posuere sem fermentum. Curabitur mauris nibh, iaculis at pharetra a, convallis id nibh. Nulla a ultrices purus, vel dapibus nisl.",
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: ScreenUtil().setSp(16),
                              height: 1.2,
                              color: Color(0xFF646363),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            height: ScreenUtil().setHeight(42),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              selectorGen(states),
                              Row(
                                children: <Widget>[
                                  Container(
                                    height: ScreenUtil().setHeight(28),
                                    width: ScreenUtil().setHeight(28),
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: widget.item.color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.remove,
                                        size: ScreenUtil().setSp(20),
                                        color: widget.item.priceColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(12),
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: ScreenUtil().setSp(22),
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF3C3D3D),
                                        height: 1.2),
                                  ),
                                  SizedBox(
                                    width: ScreenUtil().setWidth(12),
                                  ),
                                  Container(
                                    height: ScreenUtil().setHeight(28),
                                    width: ScreenUtil().setHeight(28),
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: widget.item.color,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: ScreenUtil().setSp(20),
                                        color: widget.item.priceColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        bottom: ScreenUtil().setHeight(18) + 16,
                        top: ScreenUtil().setHeight(18),
                      ),
                      decoration: BoxDecoration(color: Color(0xFFE2E5FD)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.shopping_cart,
                            color: Color(0xFF748AD5),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(14),
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                                color: Color(0xFF748AD5),
                                fontSize: ScreenUtil().setHeight(18),
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }

  Widget selectorGen(List<SelectorState> states) {
    List<Widget> widgets = List<Widget>();
    states.forEach((state) {
      widgets.add(Padding(
        padding: EdgeInsets.only(right: ScreenUtil().setWidth(16)),
        child: CircleAvatar(
          radius: ScreenUtil().setSp(20),
          backgroundColor: state.color,
          child: CircleAvatar(
            radius: ScreenUtil().setSp(14),
            backgroundColor: state.selected ? Colors.black : state.color,
          ),
        ),
      ));
    });
    return Row(
      children: widgets,
    );
  }
}
