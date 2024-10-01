import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){

    return const MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home : QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{

  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State{


  List<Map> allQuestions = [    // list of questions
    {
      "question":"Who is the founder of Apple?",
      "options" : ["Steve Jobs" , "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer" : 0,
    },
    {
      "question":"Who is the founder of Microsoft?",
      "options" : ["Steve Jobs" , "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer" : 1,
    },
    {
      "question":"Who is the founder of Google?",
      "options" : ["Steve Jobs" , "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer" : 2,
    },
    {
      "question":"Who is the founder of SpaceX?",
      "options" : ["Steve Jobs" , "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer" : 3,
    },
    {
      "question":"Who is the founder of FaceBook?",
      "options" : ["Steve Jobs" , "Mark Zukerberg", "Larry Page", "Elon Musk"],
      "correctAnswer" : 1,
    }
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int correctAnswerCount = 0;

  WidgetStateProperty<Color?> checkAnswer(int answerIndex){
    
    if(selectedAnswerIndex != -1){

      if(answerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){ //if the selected option and correct option is matched then color changes to green
        
        correctAnswerCount++;
        return const WidgetStatePropertyAll(Colors.green);

      }else if(selectedAnswerIndex == answerIndex){//if the selected option and correct option does not matched then color changes to red

        correctAnswerCount--;
        return const WidgetStatePropertyAll(Colors.red);

      }else{// option color remain as it is(i.e.white) 
        
        return const WidgetStatePropertyAll(null);
      }

    }else{
      //if the any option is not selected then the color remains as it is(i.e.white)
      return const WidgetStatePropertyAll(null);
    }
  }

  bool questionPage = true;

  @override
  Widget build(BuildContext context){

    return isQuestionScreen();
  }

  Scaffold isQuestionScreen(){

    if(questionPage == true){
      
      return Scaffold(

      appBar: AppBar(
        title : const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color : Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent
      ),

      body : Column(
        children: [
          
          const SizedBox(   // given spacing from above
            height : 40,
          ),

          Row(
            children: [
              
              const SizedBox(   // spacing from left
                width: 100,
              ),

              Text(
                "Questions : ${currentQuestionIndex+1} / ${allQuestions.length}",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),

          const SizedBox(   // given spacing after Questions Text
            height : 40,
          ),

          SizedBox(   // actual question
            width : 380,
            height : 70,

            child : Text(
              allQuestions[currentQuestionIndex]["question"],
              style : const TextStyle(
                fontSize : 26,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(   // spacing after question
            height : 35,
          ),

          SizedBox(   // 1st option
            height : 50,
            width : 350,

            child : ElevatedButton(

              style : ButtonStyle(
                backgroundColor: checkAnswer(0),
              ),

              onPressed : () {    // when button is clicked => selectedAnswerIndex changes from -1 to 0
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 0;
                  setState(() {});  // calls build method again
                }
              },

              child : Text(
                "A. ${allQuestions[currentQuestionIndex]["options"][0]}",
                style : const TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(   // spacing
            height : 25,
          ),

          SizedBox(   // 2nd option
            height : 50,
            width : 350,

            child : ElevatedButton(

              style : ButtonStyle(
                backgroundColor: checkAnswer(1),
              ),

              onPressed : () {    // when button is clicked => selectedAnswerIndex changes from -1 to 1
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 1;
                  setState(() {});
                }
              },

              child : Text(
                "B. ${allQuestions[currentQuestionIndex]["options"][1]}",
                style : const TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(   // spacing
            height : 25,
          ),


          SizedBox(   // 3rd option
            height : 50,
            width : 350,

            child : ElevatedButton(

              style : ButtonStyle(
                backgroundColor: checkAnswer(2),
              ),

              onPressed : () {    // when button is clicked => selectedAnswerIndex changes from -1 to 2
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 2;
                  setState(() {});
                }
              },

              child : Text(
                "C. ${allQuestions[currentQuestionIndex]["options"][2]}",
                style : const TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          const SizedBox(   // spacing
            height : 25,
          ),


          SizedBox(   // 4th option
            height : 50,
            width : 350,

            child : ElevatedButton(

              style : ButtonStyle(
                backgroundColor: checkAnswer(3),
              ),

              onPressed : () {    // when button is clicked => selectedAnswerIndex changes from -1 to 3
                if(selectedAnswerIndex == -1){
                  selectedAnswerIndex = 3;
                  setState(() {});
                }
              },

              child : Text(
                "D. ${allQuestions[currentQuestionIndex]["options"][3]}",
                style : const TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){

          if(selectedAnswerIndex != -1){

            if(currentQuestionIndex < allQuestions.length-1){
              currentQuestionIndex++;
            }else{
              questionPage = false;
            }

            selectedAnswerIndex = -1; // becoz when we go to next que, the options should be unchecked
            setState(() {});
          }
        },

        backgroundColor: Colors.lightBlueAccent,
        child :const Icon(
          Icons.forward,
          color : Colors.black,
          ),
      ),
    );

    }else{

      return Scaffold(

        appBar: AppBar(
        title : const Text(
          "Result",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color : Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent
      ),

        body : Center(
          child : Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              
              SizedBox(
                width : 300,
                height : 300,
                child : Image.network("https://as1.ftcdn.net/v2/jpg/03/16/70/40/1000_F_316704092_BztJkREhVxYsVSEWIduHJwNhyDSGmQuo.jpg"),
              ),
              const SizedBox(height: 30), // spacing

              const Text(
                "Congratulations!",
                style:TextStyle(
                  fontSize : 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.orange,
                ),
              ),

              const SizedBox(height: 30), // spacing

              Text( // test score
                "Score: $correctAnswerCount / ${allQuestions.length}",
                style:const TextStyle(
                  fontSize : 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 30), // spacing

              SizedBox(
                height : 40,
                width : 200,

                child : ElevatedButton(

                  onPressed: (){
                    currentQuestionIndex = 0;
                    selectedAnswerIndex = -1;
                    correctAnswerCount = 0;
                    questionPage = true;

                    setState(() {});
                  },

                  child : const Text (
                    "Restart",
                    style:TextStyle(
                      fontSize : 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      );
    }
  }


}