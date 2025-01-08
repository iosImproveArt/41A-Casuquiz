//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelCasuzquiz: ObservableObject {
    let typeOfGame: GameTypeCasuzquiz
    
    var vwrfv = "wfvrwv"
    var wrfvwr = 2452
    func vwrfvw() -> String {
        return "wrfvwrfvw"
    }
    func wrfvwrfvwrfvw() {
        print("wvrfvwrf")
    }
    
    
    func cwrcfrc() -> Double {
        print(245245 / 2452452)
        return 245245245 * 2452452
    }
    var qecefcqef = [245245245.245245245: "wrfvwrfvrw"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionCasuzquiz]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionCasuzquiz {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeCasuzquiz) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionCasuzquiz.advancedQuestions.shuffled().prefix(21))
    }
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 {
                player2RightAnswers += 1
            } else {
                player1RightAnswers += 1
            }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                } else {
                    questionNumber += 1
                }
            }
        }
    }
}


enum GameTypeCasuzquiz {
    case oneP
    case withC
    case withF
}

struct QuestionCasuzquiz {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    static let advancedQuestions: [QuestionCasuzquiz] = [
        QuestionCasuzquiz(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which organ in the human body is responsible for filtering blood?",
            correctAnswer: "Kidneys",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionCasuzquiz(
            question: "Who developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Nikola Tesla"]
        ),
        QuestionCasuzquiz(
            question: "Which element has the atomic number 1?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Oxygen", "Helium", "Hydrogen", "Carbon"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Earth", "Mars", "Jupiter", "Venus"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["Charles Dickens", "Mark Twain", "William Shakespeare", "Jane Austen"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital city of France?",
            correctAnswer: "Paris",
            answerOptions: ["Berlin", "Madrid", "Paris", "Rome"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known as the king of the jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Elephant", "Lion", "Bear"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCasuzquiz(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "Michael Faraday"]
        ),
        QuestionCasuzquiz(
            question: "What is the tallest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["Mount Kilimanjaro", "Mount Everest", "K2", "Mount Fuji"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known for the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["Japan", "China", "India", "South Korea"]
        ),
        QuestionCasuzquiz(
            question: "Which continent is the Sahara Desert located on?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "Australia", "North America"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "NaCl"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Saturn", "Earth", "Jupiter", "Mars"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "Abraham Lincoln", "George Washington", "John Adams"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Lion", "Cheetah", "Horse", "Elephant"]
        ),
        QuestionCasuzquiz(
            question: "In which year did World War II end?",
            correctAnswer: "1945",
            answerOptions: ["1939", "1940", "1945", "1950"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile River",
            answerOptions: ["Amazon River", "Yangtze River", "Nile River", "Mississippi River"]
        ),
        QuestionCasuzquiz(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Claude Monet"]
        ),
        QuestionCasuzquiz(
            question: "What is the freezing point of water in Celsius?",
            correctAnswer: "0°C",
            answerOptions: ["0°C", "32°F", "100°C", "-10°C"]
        ),
        QuestionCasuzquiz(
            question: "What is the primary gas found in the air we breathe?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Argon"]
        ),
        QuestionCasuzquiz(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Lime", "Garlic"]
        ),
        QuestionCasuzquiz(
            question: "Which city is known as 'The Big Apple'?",
            correctAnswer: "New York City",
            answerOptions: ["Los Angeles", "Chicago", "New York City", "San Francisco"]
        ),
        QuestionCasuzquiz(
            question: "In what year did the Titanic sink?",
            correctAnswer: "1912",
            answerOptions: ["1900", "1910", "1912", "1920"]
        ),
        QuestionCasuzquiz(
            question: "Who discovered penicillin?",
            correctAnswer: "Alexander Fleming",
            answerOptions: ["Marie Curie", "Isaac Newton", "Alexander Fleming", "Albert Einstein"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the birthplace of pizza?",
            correctAnswer: "Italy",
            answerOptions: ["France", "Italy", "Greece", "United States"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Seoul", "Beijing", "Tokyo", "Bangkok"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Pb", "Cu"]
        ),
        QuestionCasuzquiz(
            question: "Which element has the atomic number 8?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon", "Hydrogen"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which organ in the human body is responsible for filtering blood?",
            correctAnswer: "Kidneys",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionCasuzquiz(
            question: "What is the main ingredient in sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Rice", "Fish", "Seaweed", "Vegetables"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Vietnam", "Colombia", "Brazil", "Ethiopia"]
        ),
        QuestionCasuzquiz(
            question: "Who invented the light bulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Nikola Tesla", "Alexander Graham Bell", "Thomas Edison", "Benjamin Franklin"]
        ),
        QuestionCasuzquiz(
            question: "Which is the smallest continent by land area?",
            correctAnswer: "Australia",
            answerOptions: ["Europe", "Australia", "Antarctica", "Africa"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the Morning Star?",
            correctAnswer: "Venus",
            answerOptions: ["Mars", "Venus", "Mercury", "Jupiter"]
        ),
        QuestionCasuzquiz(
            question: "What is the freezing point of water in Fahrenheit?",
            correctAnswer: "32°F",
            answerOptions: ["32°F", "0°F", "100°F", "212°F"]
        ),
        QuestionCasuzquiz(
            question: "Which famous scientist formulated the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Albert Einstein", "Galileo Galilei", "Isaac Newton", "Nikola Tesla"]
        ),
        QuestionCasuzquiz(
            question: "In which country was the first modern Olympic Games held?",
            correctAnswer: "Greece",
            answerOptions: ["France", "United States", "Greece", "Italy"]
        ),
        QuestionCasuzquiz(
            question: "Who is the author of the 'Harry Potter' series?",
            correctAnswer: "J.K. Rowling",
            answerOptions: ["J.R.R. Tolkien", "George R.R. Martin", "J.K. Rowling", "Suzanne Collins"]
        ),
        QuestionCasuzquiz(
            question: "What is the primary gas found in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon Dioxide", "Hydrogen"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the Eiffel Tower located in?",
            correctAnswer: "France",
            answerOptions: ["Italy", "Spain", "France", "Germany"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest river in the United States?",
            correctAnswer: "Missouri River",
            answerOptions: ["Mississippi River", "Missouri River", "Colorado River", "Ohio River"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest desert in the world?",
            correctAnswer: "Antarctic Desert",
            answerOptions: ["Sahara Desert", "Arabian Desert", "Gobi Desert", "Antarctic Desert"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first woman to fly solo across the Atlantic Ocean?",
            correctAnswer: "Amelia Earhart",
            answerOptions: ["Amelia Earhart", "Bessie Coleman", "Harriet Quimby", "Jacqueline Cochran"]
        ),
        QuestionCasuzquiz(
            question: "Which instrument is used to measure atmospheric pressure?",
            correctAnswer: "Barometer",
            answerOptions: ["Thermometer", "Barometer", "Anemometer", "Altimeter"]
        ),
        QuestionCasuzquiz(
            question: "Which is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "United States", "Russia"]
        ),
        QuestionCasuzquiz(
            question: "Which vitamin is primarily obtained from sunlight?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin A", "Vitamin C", "Vitamin D", "Vitamin E"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first man to walk on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"]
        ),
        QuestionCasuzquiz(
            question: "Which element is most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Iron", "Aluminum"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionCasuzquiz(
            question: "Which scientist is known for his work on electromagnetism?",
            correctAnswer: "James Clerk Maxwell",
            answerOptions: ["Albert Einstein", "James Clerk Maxwell", "Michael Faraday", "Nikola Tesla"]
        ),
        QuestionCasuzquiz(
            question: "What is the national flower of Japan?",
            correctAnswer: "Cherry Blossom",
            answerOptions: ["Rose", "Cherry Blossom", "Tulip", "Lily"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Florence", "Venice", "Rome", "Milan"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for oxygen?",
            correctAnswer: "O",
            answerOptions: ["O", "O2", "H2", "O3"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "Japan", "South Korea", "Vietnam"]
        ),
        QuestionCasuzquiz(
            question: "Who discovered the circulation of blood?",
            correctAnswer: "William Harvey",
            answerOptions: ["Andreas Vesalius", "Hippocrates", "William Harvey", "Galen"]
        ),
        QuestionCasuzquiz(
            question: "Which continent is known for the Amazon Rainforest?",
            correctAnswer: "South America",
            answerOptions: ["Africa", "Asia", "South America", "Australia"]
        ),
        QuestionCasuzquiz(
            question: "Which ocean is the largest by surface area?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Southern Ocean", "Pacific Ocean"]
        ),
        QuestionCasuzquiz(
            question: "Which metal is used in the making of the Statue of Liberty?",
            correctAnswer: "Copper",
            answerOptions: ["Iron", "Copper", "Bronze", "Aluminum"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical formula for methane?",
            correctAnswer: "CH4",
            answerOptions: ["C2H6", "CH4", "C6H12O6", "CO2"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which organ in the human body is responsible for filtering blood?",
            correctAnswer: "Kidneys",
            answerOptions: ["Heart", "Lungs", "Liver", "Kidneys"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first man in space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Neil Armstrong", "Buzz Aldrin", "Yuri Gagarin", "Alan Shepard"]
        ),
        QuestionCasuzquiz(
            question: "Which ocean is the smallest?",
            correctAnswer: "Arctic Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCasuzquiz(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O+",
            answerOptions: ["A+", "B+", "O+", "AB+"]
        ),
        QuestionCasuzquiz(
            question: "Who is known as the father of modern physics?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Galileo Galilei", "Albert Einstein", "Niels Bohr"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Canberra", "Brisbane"]
        ),
        QuestionCasuzquiz(
            question: "Which animal can live the longest?",
            correctAnswer: "Tortoise",
            answerOptions: ["Elephant", "Whale", "Tortoise", "Lion"]
        ),
        QuestionCasuzquiz(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Diamond", "Iron", "Platinum"]
        ),
        QuestionCasuzquiz(
            question: "Who painted the famous work 'The Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Pablo Picasso", "Claude Monet", "Vincent van Gogh", "Leonardo da Vinci"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known for the pyramids?",
            correctAnswer: "Egypt",
            answerOptions: ["Mexico", "China", "Egypt", "Greece"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest country in the world by land area?",
            correctAnswer: "Russia",
            answerOptions: ["Canada", "United States", "China", "Russia"]
        ),
        QuestionCasuzquiz(
            question: "What is the name of the longest river in South America?",
            correctAnswer: "Amazon River",
            answerOptions: ["Amazon River", "Mississippi River", "Yangtze River", "Nile River"]
        ),
        QuestionCasuzquiz(
            question: "Which type of animal is the largest living creature on Earth?",
            correctAnswer: "Blue Whale",
            answerOptions: ["Elephant", "Giraffe", "Blue Whale", "Shark"]
        ),
        QuestionCasuzquiz(
            question: "What is the tallest building in the world?",
            correctAnswer: "Burj Khalifa",
            answerOptions: ["Eiffel Tower", "Empire State Building", "Burj Khalifa", "Petronas Towers"]
        ),
        QuestionCasuzquiz(
            question: "What is the currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yuan", "Won", "Yen", "Ringgit"]
        ),
        QuestionCasuzquiz(
            question: "Which element has the atomic number 6?",
            correctAnswer: "Carbon",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon", "Hydrogen"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first woman to win a Nobel Prize?",
            correctAnswer: "Marie Curie",
            answerOptions: ["Marie Curie", "Rosalind Franklin", "Ada Lovelace", "Madame Curie"]
        ),
        QuestionCasuzquiz(
            question: "Which is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "San Marino", "Vatican City", "Liechtenstein"]
        ),
        QuestionCasuzquiz(
            question: "What is the official language of Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Spanish", "Portuguese", "English", "French"]
        ),
        QuestionCasuzquiz(
            question: "Who developed the first successful polio vaccine?",
            correctAnswer: "Jonas Salk",
            answerOptions: ["Louis Pasteur", "Jonas Salk", "Albert Calmette", "Edward Jenner"]
        ),
        QuestionCasuzquiz(
            question: "Which city is known as the 'Eternal City'?",
            correctAnswer: "Rome",
            answerOptions: ["Athens", "Paris", "Rome", "Jerusalem"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "N", "S", "Sa"]
        ),
        QuestionCasuzquiz(
            question: "Which country is famous for the 'Great Barrier Reef'?",
            correctAnswer: "Australia",
            answerOptions: ["United States", "Australia", "South Africa", "Mexico"]
        ),
        QuestionCasuzquiz(
            question: "What is the name of the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Australia", "Greenland", "New Guinea", "Borneo"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the 'Giant Red Spot' planet?",
            correctAnswer: "Jupiter",
            answerOptions: ["Saturn", "Jupiter", "Mars", "Neptune"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Barcelona", "Madrid", "Seville", "Valencia"]
        ),
        QuestionCasuzquiz(
            question: "Which organ in the human body produces insulin?",
            correctAnswer: "Pancreas",
            answerOptions: ["Liver", "Heart", "Pancreas", "Kidneys"]
        ),
        QuestionCasuzquiz(
            question: "Which bird is the symbol of peace?",
            correctAnswer: "Dove",
            answerOptions: ["Eagle", "Pigeon", "Owl", "Dove"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of India?",
            correctAnswer: "New Delhi",
            answerOptions: ["Mumbai", "New Delhi", "Kolkata", "Bangalore"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest island country in the world?",
            correctAnswer: "Indonesia",
            answerOptions: ["Philippines", "Indonesia", "Japan", "New Zealand"]
        ),
        QuestionCasuzquiz(
            question: "Which scientist is known for developing the theory of evolution?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Isaac Newton", "Charles Darwin", "Louis Pasteur", "Gregor Mendel"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the novel '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["Aldous Huxley", "J.K. Rowling", "George Orwell", "Ray Bradbury"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile River",
            answerOptions: ["Amazon River", "Yangtze River", "Nile River", "Mississippi River"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Gobi Desert", "Kalahari Desert", "Sahara Desert", "Atacama Desert"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is the closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Earth", "Mercury", "Mars"]
        ),
        QuestionCasuzquiz(
            question: "What is the most spoken language in the world?",
            correctAnswer: "Mandarin Chinese",
            answerOptions: ["English", "Spanish", "Mandarin Chinese", "Hindi"]
        ),
        QuestionCasuzquiz(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Thomas Edison", "Alexander Graham Bell", "Nikola Tesla", "Guglielmo Marconi"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known as the King of the Jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Elephant", "Tiger", "Lion", "Cheetah"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first President of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "George Washington", "Abraham Lincoln", "John Adams"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Saturn", "Jupiter", "Neptune"]
        ),
        QuestionCasuzquiz(
            question: "Which country is home to the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "Japan", "South Korea"]
        ),
        QuestionCasuzquiz(
            question: "What is the currency of the United Kingdom?",
            correctAnswer: "Pound Sterling",
            answerOptions: ["Euro", "Pound Sterling", "Dollar", "Yen"]
        ),
        QuestionCasuzquiz(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Ozone", "Oganesson"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest land animal?",
            correctAnswer: "African Elephant",
            answerOptions: ["Blue Whale", "Giraffe", "African Elephant", "Rhino"]
        ),
        QuestionCasuzquiz(
            question: "Which continent is known as the 'Dark Continent'?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "South America", "Australia"]
        ),
        QuestionCasuzquiz(
            question: "What is the official language of Argentina?",
            correctAnswer: "Spanish",
            answerOptions: ["Portuguese", "Spanish", "Italian", "French"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first woman in space?",
            correctAnswer: "Valentina Tereshkova",
            answerOptions: ["Valentina Tereshkova", "Sally Ride", "Mae Jemison", "Yuri Gagarin"]
        ),
        QuestionCasuzquiz(
            question: "What is the name of the longest mountain range in the world?",
            correctAnswer: "Andes",
            answerOptions: ["Himalayas", "Rocky Mountains", "Andes", "Alps"]
        ),
        QuestionCasuzquiz(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Vincent van Gogh", "Claude Monet", "Leonardo da Vinci", "Pablo Picasso"]
        ),
        QuestionCasuzquiz(
            question: "Which chemical element has the symbol 'Fe'?",
            correctAnswer: "Iron",
            answerOptions: ["Ferrum", "Iron", "Francium", "Fluorine"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Jane Austen", "Homer"]
        ),
        QuestionCasuzquiz(
            question: "Which bird is known for its ability to mimic sounds?",
            correctAnswer: "Parrot",
            answerOptions: ["Eagle", "Parrot", "Penguin", "Owl"]
        ),
        QuestionCasuzquiz(
            question: "What is the tallest waterfall in the world?",
            correctAnswer: "Angel Falls",
            answerOptions: ["Niagara Falls", "Victoria Falls", "Angel Falls", "Iguazu Falls"]
        ),
        QuestionCasuzquiz(
            question: "Which city is known as the City of Love?",
            correctAnswer: "Paris",
            answerOptions: ["Rome", "Paris", "Venice", "New York"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the 'Red Planet'?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Saturn", "Jupiter"]
        ),
        QuestionCasuzquiz(
            question: "Who discovered penicillin?",
            correctAnswer: "Alexander Fleming",
            answerOptions: ["Louis Pasteur", "Alexander Fleming", "Marie Curie", "Albert Einstein"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known as the 'Land of the Rising Sun'?",
            correctAnswer: "Japan",
            answerOptions: ["China", "South Korea", "Japan", "Thailand"]
        ),
        QuestionCasuzquiz(
            question: "What is the most famous ancient wonder of the world?",
            correctAnswer: "Great Pyramid of Giza",
            answerOptions: ["Hanging Gardens of Babylon", "Statue of Zeus", "Great Pyramid of Giza", "Colossus of Rhodes"]
        ),
        QuestionCasuzquiz(
            question: "Which city is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Venice", "Rome", "Milan", "Florence"]
        ),
        QuestionCasuzquiz(
            question: "Who is credited with inventing the light bulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Nikola Tesla", "Thomas Edison", "Benjamin Franklin", "James Watt"]
        ),
        QuestionCasuzquiz(
            question: "Which element is the most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Aluminum", "Iron"]
        ),
        QuestionCasuzquiz(
            question: "What is the fastest land animal?",
            correctAnswer: "Cheetah",
            answerOptions: ["Cheetah", "Lion", "Elephant", "Horse"]
        ),
        QuestionCasuzquiz(
            question: "Which country has the most pyramids in the world?",
            correctAnswer: "Sudan",
            answerOptions: ["Egypt", "Sudan", "Mexico", "Peru"]
        ),
        QuestionCasuzquiz(
            question: "Who discovered America in 1492?",
            correctAnswer: "Christopher Columbus",
            answerOptions: ["Christopher Columbus", "Ferdinand Magellan", "Marco Polo", "Leif Erikson"]
        ),
        QuestionCasuzquiz(
            question: "What is the name of the first artificial satellite launched into space?",
            correctAnswer: "Sputnik 1",
            answerOptions: ["Apollo 11", "Sputnik 1", "Vostok 1", "Explorer 1"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Vietnam", "Brazil", "Colombia", "Ethiopia"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first man to step on the Moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"]
        ),
        QuestionCasuzquiz(
            question: "Which country invented pizza?",
            correctAnswer: "Italy",
            answerOptions: ["Greece", "Italy", "France", "United States"]
        ),
        QuestionCasuzquiz(
            question: "Which scientist is known for developing the theory of evolution?",
            correctAnswer: "Charles Darwin",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Charles Darwin"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Humerus", "Tibia", "Fibula"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the 'Gas Giant'?",
            correctAnswer: "Jupiter",
            answerOptions: ["Mars", "Jupiter", "Saturn", "Venus"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital city of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Barcelona", "Madrid", "Seville", "Valencia"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first female Prime Minister of the United Kingdom?",
            correctAnswer: "Margaret Thatcher",
            answerOptions: ["Theresa May", "Margaret Thatcher", "Queen Elizabeth II", "Victoria Beckham"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which city is famous for its Eiffel Tower?",
            correctAnswer: "Paris",
            answerOptions: ["Rome", "London", "Paris", "New York"]
        ),
        QuestionCasuzquiz(
            question: "Which ocean is the largest?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the famous novel '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["George Orwell", "Aldous Huxley", "J.K. Rowling", "Mark Twain"]
        ),
        QuestionCasuzquiz(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Platinum", "Diamond", "Iron"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known for having a black and white striped pattern?",
            correctAnswer: "Zebra",
            answerOptions: ["Tiger", "Zebra", "Panda", "Giraffe"]
        ),
        QuestionCasuzquiz(
            question: "Which famous scientist developed the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Albert Einstein", "Isaac Newton", "Galileo Galilei", "Marie Curie"]
        ),
        QuestionCasuzquiz(
            question: "In which year did World War II end?",
            correctAnswer: "1945",
            answerOptions: ["1945", "1939", "1918", "1963"]
        ),
        QuestionCasuzquiz(
            question: "What is the smallest country in the world?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "Vatican City", "San Marino", "Liechtenstein"]
        ),
        QuestionCasuzquiz(
            question: "Which is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "United States", "Indonesia"]
        ),
        QuestionCasuzquiz(
            question: "Which musical instrument has 88 keys?",
            correctAnswer: "Piano",
            answerOptions: ["Guitar", "Violin", "Piano", "Flute"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Australia", "Greenland", "New Guinea", "Borneo"]
        ),
        QuestionCasuzquiz(
            question: "Which sea is the saltiest?",
            correctAnswer: "Dead Sea",
            answerOptions: ["Red Sea", "Dead Sea", "Baltic Sea", "Caspian Sea"]
        ),
        QuestionCasuzquiz(
            question: "Who is the author of the Harry Potter series?",
            correctAnswer: "J.K. Rowling",
            answerOptions: ["J.K. Rowling", "George R.R. Martin", "J.R.R. Tolkien", "Suzanne Collins"]
        )
    ]
}
