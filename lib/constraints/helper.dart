import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/cupertino.dart';

double getWidth(BuildContext context){
  return MediaQuery.sizeOf(context).width;
}
double getHeight(BuildContext context){
  return MediaQuery.sizeOf(context).height;
}

int convertNumber(num){
  try{
    if(num is int){
      return num;
    }
    if(num != null){
      int? a = int.tryParse(num);
      return a == null ? 0 : a;
    } else {
      return 0;
    }
  } catch (e){
    debugPrint('$e');
    return 0;
  }
}

bool empty(String? data){
  try{
    if(data == null){
      return true;
    } else if(data == 'null' || data.length < 1 || data == ''){
      return true;
    }
    return false;
  }catch (e){
    debugPrint('$e');
    return true;
  }
}