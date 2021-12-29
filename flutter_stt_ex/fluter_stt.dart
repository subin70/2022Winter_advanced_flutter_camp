import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:translator/translator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  String _lastWords = '';
  //var transWords;
  var transWords ;
 GoogleTranslator translator = new GoogleTranslator();
  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  /// This has to happen only once per app
  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  /// Each time to start a speech recognition session
  void _startListening() async {
    await _speechToText.listen(onResult: _onSpeechResult);
    setState(() {});
  }

  /// Manually stop the active speech recognition session
  /// Note that there are also timeouts that each platform enforces
  /// and the SpeechToText plugin supports setting timeouts on the
  /// listen method.
  void _stopListening() async {
    await _speechToText.stop();
    setState(() {
    });
  }

  void trans() async{
    await translator.translate(_lastWords,to:'en')
   .then((output){
     setState((){
      transWords = output;
      print(transWords);
     });

     print('$transWords');
   });
  }

  /// This is the callback that the SpeechToText plugin calls when
  /// the platform returns recognized words.
  void _onSpeechResult(SpeechRecognitionResult result) {
    setState(()  {
      _lastWords = result.recognizedWords;
      //transWords = await ( GoogleTranslator().translate(_lastWords,to:'en'));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
      // title: Text('Speech Demo'),
      //),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 500,
            ),
            // Container(
            //   padding: EdgeInsets.all(16),
            //   child: Text(
            //     'Recognized words:',
            //     style: TextStyle(fontSize: 20.0),
            //   ),
            //),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child:   Column(
                    children :[
                //   Text(
                //   // If listening is active show the recognized words
                //   _speechToText.isListening
                //       ? '$_lastWords'
                //   // If listening isn't active but could be tell the user
                //   // how to start it, otherwise indicate that speech
                //   // recognition is not yet ready or not supported on
                //   // the target device
                //       : _speechEnabled
                //       ? 'Tap the microphone to start listening...'
                //       : 'Speech not available',
                // ),
                  Text('origin: $_lastWords'),
                  Text('transf : $transWords')
                 ]
                )
                
              ),
            ),
          ],
        ),
      ),
      floatingActionButton:
          Row(
            children:[
              SizedBox(
                width: 200,
              ),
            FloatingActionButton(
              onPressed:
              _speechToText.isNotListening ? _startListening : _stopListening,
              tooltip: 'Listen',
              child: Icon(_speechToText.isNotListening ? Icons.mic_off : Icons.mic),
            ),
              SizedBox(
                width: 30,
              ),
            FloatingActionButton(
              onPressed: //trans
              trans,
              tooltip: 'Listen',
              child: Icon(Icons.done),
            ),
          ]
          )
    );
  }
}
