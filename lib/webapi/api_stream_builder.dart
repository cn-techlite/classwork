// ignore_for_file: library_private_types_in_public_api

import 'package:classwork/webapi/model_class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class StreamBuildPage extends StatefulWidget {
  const StreamBuildPage({super.key});

  @override
  _MyHomePageState createState() =>  _MyHomePageState();
}

class _MyHomePageState extends State<StreamBuildPage> {
   StreamController? _postsController;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  int count = 1;

  Future fetchPost([howMany = 5]) async {
    var url = Uri.parse(ApiConstants.baseUrl+ApiConstants.postUrl);
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
                          return ListTile(
                            title: Text(post['title']),
                            subtitle: Text(post['body']),
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