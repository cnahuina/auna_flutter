import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:search_widget/search_widget.dart';
import 'search_view.dart';
import 'package:auna_app/model/post_model.dart';
import 'package:auna_app/services/posts.dart';



final List<String> imgList = [
  'https://www.iperu.org/wp-content/uploads/2018/10/clinica-delgado.jpg',
  'https://www.iperu.org/wp-content/uploads/2018/11/clinica-bellavista-auna.jpg',
  'https://www.iperu.org/wp-content/uploads/2018/10/clinica-delgado.jpg'

];
List<T> map<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  List<LeaderBoard> list = <LeaderBoard>[
    LeaderBoard("Flutter", 54.0),
    LeaderBoard("React", 22.5),
    LeaderBoard("Ionic", 24.7),
    LeaderBoard("Xamarin", 22.1),
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
 
        return ListView(
          children: <Widget>[
            SearchWidget<LeaderBoard>(
                    dataList: list,
                    hideSearchBoxWhenItemSelected: false,
                    listContainerHeight: MediaQuery.of(context).size.height / 4,
                    queryBuilder: (String query, List<LeaderBoard> list) {
                      return list.where((LeaderBoard item) => item.username.toLowerCase().contains(query.toLowerCase())).toList();
                    },
                    popupListItemBuilder: (LeaderBoard item) {
                      return PopupListItemWidget(item);
                    },
                    selectedItemBuilder: (LeaderBoard selectedItem, VoidCallback deleteSelectedItem) {
                      return SelectedItemWidget(selectedItem, deleteSelectedItem);
                    },
                    // widget customization
                    noItemsFoundWidget: NoItemsFound(),
                    textFieldBuilder: (TextEditingController controller, FocusNode focusNode) {
                      return MyTextField(controller, focusNode);
                    },
                  ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CarouselSlider(
                    height: 150.0,
                    items: imgList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 10.0),
                            decoration: BoxDecoration(
                              color: Colors.green,
                            ),
                            child: Image.network(
                              imgUrl,
                              fit: BoxFit.fill,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
    
                Positioned(
                    top: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: map<Widget>(imgList, (index, url) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == index ? Color.fromRGBO(0, 0, 0, 0.9) : Color.fromRGBO(0, 0, 0, 0.4)
                          ),
                        );
                      }),
                    ))
              ],
            ),
    
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        print('Card tapped.');
                      },
                      child: Container(
                        width: 300,
                        child: FutureBuilder<Post>(
                              future: getPost(),
                          builder: (context, snapshot) {
                            
                              if(snapshot.connectionState == ConnectionState.done) {
                                if(snapshot.hasError){
                                  return Text("Error");
                                }
                                return Column(
                                  children: <Widget>[
                                    ListTile(
                                      leading: Icon(Icons.add_location),
                                      title: Text("${snapshot.data.title}"),
                                    ),
                                    ListTile(
                                      leading: Icon(Icons.assignment_ind),
                                      title: Text("${snapshot.data.body}"),
                                    )
                                  ],
                                );
                              }else
                              return Padding(
                                padding: const EdgeInsets.only(left: 135,right: 135),
                                child: SizedBox(
                                  
                                  child: CircularProgressIndicator(
                                      valueColor: new AlwaysStoppedAnimation(Colors.blue),
                                      strokeWidth: 5.0),
                                  height: 100.0,
                                  width: 100.0,),
                              );
                            }
                        )
                  ),
                ),
              )
          ),
        ),
      ],
    );
  }
}

