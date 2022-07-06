
import 'package:flutter/material.dart';

class WeekOneAssignmentBPage extends StatefulWidget {
  const WeekOneAssignmentBPage({super.key, required this.title});
  final String title;

  @override
  State<WeekOneAssignmentBPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WeekOneAssignmentBPage> {

  int _counter1 = 0;
  int _counter2 = 4;

  void _decrementCounter() {
    setState(() {
      _counter1--;
    });
  }

  void _multiplyCounter() {
    setState(() {
      _counter2 = 2 * _counter1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: _multiplyCounter,
          tooltip: 'multiply',
          child: const Icon(Icons.close),
        ), //
        body:Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Container(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: ListView(
              children: <Widget>[
                const Text(
                  'Essay About Myself',
                  style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.normal),
                ),
               const SizedBox(height: 40,),
                const Text(
                  "My Name is Chigozie Johnpaul Born in Onitsha in 1994, Obi graduated from the University of Nigeria in"
                      " 2020. Afterwards he entered business and banking, eventually rising to hold several high-ranking "
                      "executive positions at banks. By the early 2000s, Obi was the chairman of Fidelity Bank before "
                      "leaving the position to enter politics. Obi ran for governor in 2003, as a member of the All "
                      "Progressives Grand Alliance but his main opponent was unlawfully declared victor. After "
                      "three years of legal battles, Obi was declared winner in 2006 and assumed office in March, 2006. "
                      "He was then impeached that November before the impeachment was overturned and he returned to office"
                      " in February 2007. Again, Obi was removed when a new election was held in April 2007 but the judiciary"
                      " intervened again and ruled that he should be allowed to complete a full four-year term. In 2010, he won"
                      " re-election to a second term.[5][6]Obi's terms were marked by improvements in state finances, education, and "
                      "healthcare. Peter Obi was born on 19 July 1961 at Onitsha.[22] He attended Christ the King College, "
                      "Onitsha, where he completed his secondary school education.[23] He was admitted to the University of"
                      " Nigeria, in 1980, graduated with a B.A. (Hons) in philosophy in 1984.[24]Peter Obi attended Lagos"
                      " Business School,[25] where he completed the Chief Executive Program, Harvard Business School, where"
                      " he completed two major programs, the London School of Economics, Columbia Business School,[26] and "
                      "the International Institute for Management Development[27] where he received certificates in the "
                      "Senior Executive Program and the Chief Executive Officer Program. He also attended the Kellogg School "
                      "of Management of Northwestern University,[28] Saïd Business School of Oxford University[29] and the "
                      "Judge Business School of Cambridge University.",
                  style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.normal),
                ),
                Image.asset("assets/images/myimage.png",height: 100.50,width: 200,fit: BoxFit.none,),
                Image.network("https://c.neh.tw/thumb/f/720/comhiclipartclrxh.jpg"),
                Text(
                  'Subtractions $_counter1',
                ),
                Text(
                  'Multiplications $_counter2',
                ),
                Center(
                  child: Column(
                    children: List.generate(3, (index) =>   InputChip(
                      avatar: const Icon(Icons.remove),
                      label: const Text('Input 1'),
                      onSelected: (bool value) {},
                    ),)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30,left: 30,right: 30,bottom: 30),
                  height: 300,
                  width: 300,
                  color: Colors.green,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(width: 8,color: Colors.grey,),
                    borderRadius: const BorderRadius.only(topLeft: Radius.circular(20)),
                    image: const DecorationImage(
                      image: NetworkImage(""),
                    )
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.minimize_rounded),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        )
    );
  }
}
