import 'package:flutter/material.dart';
import 'package:local_notification/Notification_services/notification_services.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  NotificationServices notificationServices =NotificationServices();
 @override
  void initState() {
    super.initState();
    notificationServices.initializationSettings();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Local Notification '),
      ),
      body: SafeArea(
          child: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            ElevatedButton(

                onPressed: (){
                  notificationServices.SendNotifications('This is title','This is body');
                },
                child: Text('Send Notification')),



          ElevatedButton(onPressed: (){
            notificationServices.StopNotification();
          },
              child: Text('Stop  Notification'))
        ],
      ),
          )),
    );
  }
}
