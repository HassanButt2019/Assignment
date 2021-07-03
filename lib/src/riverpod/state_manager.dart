


import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hodomojo/src/model/main_component.dart';
import 'package:hodomojo/src/network/network_request.dart';

NetworkRequest networkRequest =  NetworkRequest();

final DataStateFuture = FutureProvider<Data>((ref){
return networkRequest.fetchData();
});