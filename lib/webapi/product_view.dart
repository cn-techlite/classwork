
import 'dart:async';
import 'dart:convert';
import 'package:classwork/webapi/constants.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class ProductViewPage extends StatefulWidget {
  const ProductViewPage({super.key, required this.title});

  final String title;

  @override
  State<ProductViewPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ProductViewPage> {
  StreamController? _postsController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int count = 1;

  Future fetchPost([howMany = 5]) async {
    var url = Uri.parse(ApiConstants.productBaseUrl);
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load post');
    }
  }

  loadPosts() async {
    fetchPost().then((res) async {
      _postsController!.add(res);
      return res;
    });
  }

  showSnack() {
    return
      ScaffoldMessenger.of(context).
      showSnackBar(const SnackBar(content: Text("New Data")));
  }

  Future<void> _handleRefresh() async {
    count++;
    debugPrint(count.toString());
    fetchPost(count * 5).then((res) async {
      _postsController!.add(res);
      showSnack();
      return null;
    });
  }

  @override
  void initState() {
    _postsController = StreamController();
    loadPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Locale locale = Localizations.localeOf(context);
    var format =
    NumberFormat.simpleCurrency(locale: locale.toString(), name: "NGN");
    var name = format.currencySymbol;
    return  Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('StreamBuilder'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Refresh',
            icon: const Icon(Icons.refresh),
            onPressed: _handleRefresh,
          )
        ],
      ),
      body: StreamBuilder(
        stream: _postsController!.stream,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          debugPrint('Has error: ${snapshot.hasError}');
          debugPrint('Has data: ${snapshot.hasData}');
          debugPrint('Snapshot Data ${snapshot.data}');

          if (snapshot.hasError) {
            return const Text("error");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          return Column(
            children: <Widget>[
              Expanded(
                child: Scrollbar(
                  child: RefreshIndicator(
                    onRefresh: _handleRefresh,
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        var post = snapshot.data[index];
                        return Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(child: Image.network(post['image'],height: 150,)),
                                  const SizedBox(height: 10,),
                                  Text(post['title'],
                                  style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  Text("$name${post['price']}",
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  const SizedBox(height: 10,),
                                  Text(post['description'],
                                    style: const TextStyle(
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black,),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
