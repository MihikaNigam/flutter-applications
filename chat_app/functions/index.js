const functions = require('firebase-functions'); //importing
const admin = require('firebase-admin');//gives admin privileges

admin.initializeApp();

exports.myFunction = functions.firestore //exporting
    .document('chat/{message}')//path to document
    .onCreate((snapshot, context) => {
        admin.messaging().sendToTopic('chat', {
            notification: {
                title: snapshot.data().username,
                body: snapshot.data().text,
                clickAction: 'FLUTTER_NOTIFICATION_CLICK'
            },
        });
        console.log(snapshot.data());  //console==print

        return;
    });