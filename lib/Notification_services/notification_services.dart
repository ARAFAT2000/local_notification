import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices{
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  final AndroidInitializationSettings _androidInitializationSettings =
  AndroidInitializationSettings('@mipmap/ic_launcher');

  void initializationSettings()async{
    InitializationSettings  _initializationSettings=InitializationSettings(
       android: _androidInitializationSettings
    );
    await _flutterLocalNotificationsPlugin.initialize(_initializationSettings);
  }

  // Button Click kre notification send hbe,,thats means notification asbe
  void SendNotifications(String title,String body)async{
   AndroidNotificationDetails _androidNotificationDetails=AndroidNotificationDetails(
       'channelId', 'channelName',
     importance: Importance.max,
     priority: Priority.high,

   );

    NotificationDetails notificationDetails=NotificationDetails(
      android: _androidNotificationDetails
    );
   await _flutterLocalNotificationsPlugin.show(
        0,
        title,
        body,
        notificationDetails);
  }
  
  
  // /// Shedule kre kre notification dekhabe
  // void SheduleNotifications(String title,String body)async{
  //   AndroidNotificationDetails _androidNotificationDetails=AndroidNotificationDetails(
  //       'channelId', 'channelName',
  //       importance: Importance.max,
  //       priority: Priority.high
  //   );
  //
  //   NotificationDetails notificationDetails=NotificationDetails(
  //       android: _androidNotificationDetails
  //   );
  //   await _flutterLocalNotificationsPlugin.periodicallyShow(
  //       1,
  //       title,
  //       body,
  //       RepeatInterval.everyMinute,
  //       notificationDetails);
  // }
/// notification stop krbe
  void StopNotification()async{
    _flutterLocalNotificationsPlugin.cancel(0);
  }
}