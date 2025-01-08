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
            if questionNumber % 2 == 0 { player2RightAnswers += 1 } else { player1RightAnswers += 1 }
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
            question: "What is the capital city of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Beijing", "Seoul", "Tokyo", "Kyoto"]
        ),
        QuestionCasuzquiz(
            question: "Which element has the chemical symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Ozone", "Opium"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["William Shakespeare", "Charles Dickens", "Jane Austen", "Mark Twain"]
        ),
        QuestionCasuzquiz(
            question: "What is the boiling point of water at sea level in Celsius?",
            correctAnswer: "100°C",
            answerOptions: ["90°C", "100°C", "110°C", "120°C"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for gold?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Fe", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Venus", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionCasuzquiz(
            question: "What is the freezing point of water in Fahrenheit?",
            correctAnswer: "32°F",
            answerOptions: ["0°F", "32°F", "50°F", "100°F"]
        ),
        QuestionCasuzquiz(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Leonardo da Vinci", "Claude Monet"]
        ),
        QuestionCasuzquiz(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Platinum"]
        ),
        QuestionCasuzquiz(
            question: "What is the square root of 64?",
            correctAnswer: "8",
            answerOptions: ["6", "7", "8", "9"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "Japan", "South Korea", "Thailand"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["Berlin", "Madrid", "Paris", "Rome"]
        ),
        QuestionCasuzquiz(
            question: "What is the primary ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Lettuce", "Avocado", "Onion"]
        ),
        QuestionCasuzquiz(
            question: "Which gas do plants absorb from the atmosphere?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Hydrogen"]
        ),
        QuestionCasuzquiz(
            question: "Who invented the light bulb?",
            correctAnswer: "Thomas Edison",
            answerOptions: ["Nikola Tesla", "Albert Einstein", "Thomas Edison", "Alexander Graham Bell"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Australia?",
            correctAnswer: "Canberra",
            answerOptions: ["Sydney", "Melbourne", "Canberra", "Perth"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for iron?",
            correctAnswer: "Fe",
            answerOptions: ["Fe", "Ir", "I", "In"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest mammal on Earth?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Blue whale", "Giraffe", "Shark"]
        ),
        QuestionCasuzquiz(
            question: "Which element is most abundant in the Earth's crust?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Silicon", "Iron", "Calcium"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "George Washington", "Abraham Lincoln", "John Adams"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the largest by land area?",
            correctAnswer: "Russia",
            answerOptions: ["Canada", "Russia", "China", "United States"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is closest to the Sun?",
            correctAnswer: "Mercury",
            answerOptions: ["Venus", "Earth", "Mars", "Mercury"]
        ),
        QuestionCasuzquiz(
            question: "How many continents are there on Earth?",
            correctAnswer: "7",
            answerOptions: ["5", "6", "7", "8"]
        ),
        QuestionCasuzquiz(
            question: "What is the main ingredient in sushi?",
            correctAnswer: "Rice",
            answerOptions: ["Fish", "Rice", "Seaweed", "Vegetables"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest bone in the human body?",
            correctAnswer: "Femur",
            answerOptions: ["Femur", "Humerus", "Tibia", "Radius"]
        ),
        QuestionCasuzquiz(
            question: "Who developed the theory of relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Nikola Tesla", "Albert Einstein", "Galileo Galilei"]
        ),
        QuestionCasuzquiz(
            question: "Which is the largest desert in the world?",
            correctAnswer: "Sahara",
            answerOptions: ["Sahara", "Gobi", "Kalahari", "Arctic"]
        ),
        QuestionCasuzquiz(
            question: "Which of the following is a type of tree?",
            correctAnswer: "Oak",
            answerOptions: ["Rose", "Tulip", "Oak", "Cactus"]
        ),
        QuestionCasuzquiz(
            question: "What is the smallest country in the world by population?",
            correctAnswer: "Vatican City",
            answerOptions: ["San Marino", "Monaco", "Vatican City", "Nauru"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first person to walk on the moon?",
            correctAnswer: "Neil Armstrong",
            answerOptions: ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Vancouver", "Ottawa", "Montreal"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for silver?",
            correctAnswer: "Ag",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest island in the world?",
            correctAnswer: "Greenland",
            answerOptions: ["Australia", "Greenland", "New Guinea", "Borneo"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known for having a trunk?",
            correctAnswer: "Elephant",
            answerOptions: ["Elephant", "Rhino", "Giraffe", "Hippo"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for sodium?",
            correctAnswer: "Na",
            answerOptions: ["Na", "N", "S", "So"]
        ),
        QuestionCasuzquiz(
            question: "Which gas makes up most of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Argon"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest species of shark?",
            correctAnswer: "Whale shark",
            answerOptions: ["Great white shark", "Tiger shark", "Whale shark", "Hammerhead shark"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for potassium?",
            correctAnswer: "K",
            answerOptions: ["P", "K", "Po", "Pe"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known for its rings?",
            correctAnswer: "Saturn",
            answerOptions: ["Earth", "Jupiter", "Saturn", "Mars"]
        ),
        QuestionCasuzquiz(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O",
            answerOptions: ["A", "B", "AB", "O"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote 'The Odyssey'?",
            correctAnswer: "Homer",
            answerOptions: ["Homer", "Virgil", "Shakespeare", "Dante"]
        ),
        QuestionCasuzquiz(
            question: "Which continent is known as the 'Dark Continent'?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "South America", "Antarctica"]
        ),
        QuestionCasuzquiz(
            question: "Which famous scientist developed the laws of motion?",
            correctAnswer: "Isaac Newton",
            answerOptions: ["Galileo Galilei", "Albert Einstein", "Isaac Newton", "Michael Faraday"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest city in the United States by population?",
            correctAnswer: "New York City",
            answerOptions: ["Los Angeles", "Chicago", "New York City", "Houston"]
        ),
        QuestionCasuzquiz(
            question: "What is the most populous country in the world?",
            correctAnswer: "China",
            answerOptions: ["India", "China", "United States", "Indonesia"]
        ),
        QuestionCasuzquiz(
            question: "Which famous composer wrote 'The Magic Flute'?",
            correctAnswer: "Wolfgang Amadeus Mozart",
            answerOptions: ["Ludwig van Beethoven", "Johann Sebastian Bach", "Wolfgang Amadeus Mozart", "Johannes Brahms"]
        ),
        QuestionCasuzquiz(
            question: "What is the primary function of the human heart?",
            correctAnswer: "Pumping blood",
            answerOptions: ["Filtering toxins", "Pumping blood", "Digestion", "Respiration"]
        ),
        QuestionCasuzquiz(
            question: "Which color is a combination of blue and yellow?",
            correctAnswer: "Green",
            answerOptions: ["Purple", "Orange", "Green", "Red"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "N2"]
        ),
        QuestionCasuzquiz(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Diamond", "Iron", "Platinum"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest volcano on Earth?",
            correctAnswer: "Mauna Loa",
            answerOptions: ["Mount Vesuvius", "Mount Fuji", "Mauna Loa", "Mount Everest"]
        ),
        QuestionCasuzquiz(
            question: "Which country is famous for its kangaroos?",
            correctAnswer: "Australia",
            answerOptions: ["United States", "Canada", "Australia", "Brazil"]
        ),
        QuestionCasuzquiz(
            question: "What is the most famous large scale clock tower in London?",
            correctAnswer: "Big Ben",
            answerOptions: ["London Eye", "Tower of London", "Big Ben", "Buckingham Palace"]
        ),
        QuestionCasuzquiz(
            question: "Which bird is known for its colorful tail feathers?",
            correctAnswer: "Peacock",
            answerOptions: ["Sparrow", "Eagle", "Peacock", "Crow"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Italy?",
            correctAnswer: "Rome",
            answerOptions: ["Venice", "Florence", "Rome", "Milan"]
        ),
        QuestionCasuzquiz(
            question: "Who painted the famous 'Starry Night'?",
            correctAnswer: "Vincent van Gogh",
            answerOptions: ["Pablo Picasso", "Vincent van Gogh", "Claude Monet", "Leonardo da Vinci"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of the United Kingdom?",
            correctAnswer: "London",
            answerOptions: ["London", "Manchester", "Liverpool", "Birmingham"]
        ),
        QuestionCasuzquiz(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Gold", "Copper", "Iron"]
        ),
        QuestionCasuzquiz(
            question: "Which continent is the Sahara Desert located in?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Africa", "Australia", "North America"]
        ),
        QuestionCasuzquiz(
            question: "What is the smallest planet in our solar system?",
            correctAnswer: "Mercury",
            answerOptions: ["Earth", "Mars", "Mercury", "Venus"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for carbon?",
            correctAnswer: "C",
            answerOptions: ["C", "Co", "Ca", "Cu"]
        ),
        QuestionCasuzquiz(
            question: "Which of these is the most famous wizard?",
            correctAnswer: "Harry Potter",
            answerOptions: ["Gandalf", "Merlin", "Harry Potter", "Dumbledore"]
        ),
        QuestionCasuzquiz(
            question: "What is the primary language spoken in Brazil?",
            correctAnswer: "Portuguese",
            answerOptions: ["Spanish", "Portuguese", "English", "French"]
        ),
        QuestionCasuzquiz(
            question: "Which country is famous for its pyramids?",
            correctAnswer: "Egypt",
            answerOptions: ["Greece", "Egypt", "Mexico", "China"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical formula for methane?",
            correctAnswer: "CH4",
            answerOptions: ["CO2", "O2", "CH4", "H2O"]
        ),
        QuestionCasuzquiz(
            question: "What is the national flower of Japan?",
            correctAnswer: "Cherry Blossom",
            answerOptions: ["Rose", "Tulip", "Cherry Blossom", "Lotus"]
        ),
        QuestionCasuzquiz(
            question: "Which sea is known for its high salinity?",
            correctAnswer: "Dead Sea",
            answerOptions: ["Red Sea", "Black Sea", "Dead Sea", "Baltic Sea"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first woman to win a Nobel Prize?",
            correctAnswer: "Marie Curie",
            answerOptions: ["Marie Curie", "Rosalind Franklin", "Ada Lovelace", "Florence Nightingale"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Spain?",
            correctAnswer: "Madrid",
            answerOptions: ["Madrid", "Barcelona", "Seville", "Valencia"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known as the king of the jungle?",
            correctAnswer: "Lion",
            answerOptions: ["Tiger", "Elephant", "Lion", "Bear"]
        ),
        QuestionCasuzquiz(
            question: "Which country is home to the Great Barrier Reef?",
            correctAnswer: "Australia",
            answerOptions: ["Australia", "United States", "Mexico", "Thailand"]
        ),
        QuestionCasuzquiz(
            question: "What element does 'He' represent on the periodic table?",
            correctAnswer: "Helium",
            answerOptions: ["Hydrogen", "Helium", "Hafnium", "Hassium"]
        ),
        QuestionCasuzquiz(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest animal on Earth?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Shark", "Blue whale", "Giraffe"]
        ),
        QuestionCasuzquiz(
            question: "What color is the gemstone emerald?",
            correctAnswer: "Green",
            answerOptions: ["Red", "Blue", "Green", "Yellow"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first man to travel into space?",
            correctAnswer: "Yuri Gagarin",
            answerOptions: ["Neil Armstrong", "Yuri Gagarin", "Buzz Aldrin", "Michael Collins"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Germany?",
            correctAnswer: "Berlin",
            answerOptions: ["Berlin", "Munich", "Frankfurt", "Hamburg"]
        ),
        QuestionCasuzquiz(
            question: "What is the most commonly used programming language for web development?",
            correctAnswer: "JavaScript",
            answerOptions: ["Java", "Python", "JavaScript", "Ruby"]
        ),
        QuestionCasuzquiz(
            question: "What is the main component of the Sun?",
            correctAnswer: "Hydrogen",
            answerOptions: ["Helium", "Hydrogen", "Oxygen", "Carbon"]
        ),
        QuestionCasuzquiz(
            question: "Which instrument is known as the 'king of instruments'?",
            correctAnswer: "Pipe organ",
            answerOptions: ["Piano", "Guitar", "Pipe organ", "Violin"]
        ),
        QuestionCasuzquiz(
            question: "What is the smallest bone in the human body?",
            correctAnswer: "Stapes",
            answerOptions: ["Stapes", "Femur", "Tibia", "Humerus"]
        ),
        QuestionCasuzquiz(
            question: "Which country is famous for sushi?",
            correctAnswer: "Japan",
            answerOptions: ["China", "South Korea", "Japan", "Vietnam"]
        ),
        QuestionCasuzquiz(
            question: "What is the hottest planet in our solar system?",
            correctAnswer: "Venus",
            answerOptions: ["Earth", "Mercury", "Venus", "Mars"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest country in Africa by area?",
            correctAnswer: "Algeria",
            answerOptions: ["Egypt", "Sudan", "Algeria", "Democratic Republic of the Congo"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known for its ability to change colors?",
            correctAnswer: "Chameleon",
            answerOptions: ["Cheetah", "Octopus", "Chameleon", "Tiger"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the novel '1984'?",
            correctAnswer: "George Orwell",
            answerOptions: ["Aldous Huxley", "George Orwell", "J.K. Rowling", "Ernest Hemingway"]
        ),
        QuestionCasuzquiz(
            question: "Which is the largest planet in our solar system?",
            correctAnswer: "Jupiter",
            answerOptions: ["Mars", "Jupiter", "Saturn", "Neptune"]
        ),
        QuestionCasuzquiz(
            question: "What is the highest mountain in the world?",
            correctAnswer: "Mount Everest",
            answerOptions: ["K2", "Mount Everest", "Mount Kilimanjaro", "Mount Fuji"]
        ),
        QuestionCasuzquiz(
            question: "Which vitamin is known as the sunshine vitamin?",
            correctAnswer: "Vitamin D",
            answerOptions: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"]
        ),
        QuestionCasuzquiz(
            question: "What is the process by which plants make their food?",
            correctAnswer: "Photosynthesis",
            answerOptions: ["Respiration", "Photosynthesis", "Evaporation", "Transpiration"]
        ),
        QuestionCasuzquiz(
            question: "Who developed the first successful polio vaccine?",
            correctAnswer: "Jonas Salk",
            answerOptions: ["Louis Pasteur", "Edward Jenner", "Jonas Salk", "Alexander Fleming"]
        ),
        QuestionCasuzquiz(
            question: "Which is the most populous city in the world?",
            correctAnswer: "Tokyo",
            answerOptions: ["Beijing", "Tokyo", "New York", "London"]
        ),
        QuestionCasuzquiz(
            question: "What is the hardest known material in the world?",
            correctAnswer: "Diamond",
            answerOptions: ["Graphene", "Diamond", "Gold", "Iron"]
        ),
        QuestionCasuzquiz(
            question: "Which gas do humans exhale during respiration?",
            correctAnswer: "Carbon dioxide",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Methane"]
        ),
        QuestionCasuzquiz(
            question: "What is the most common blood type in humans?",
            correctAnswer: "O positive",
            answerOptions: ["O negative", "A positive", "O positive", "B positive"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is the largest land mammal?",
            correctAnswer: "African elephant",
            answerOptions: ["Asian elephant", "African elephant", "Rhinoceros", "Giraffe"]
        ),
        QuestionCasuzquiz(
            question: "Which country invented the concept of democracy?",
            correctAnswer: "Greece",
            answerOptions: ["Greece", "Rome", "Egypt", "India"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of Canada?",
            correctAnswer: "Ottawa",
            answerOptions: ["Toronto", "Ottawa", "Vancouver", "Montreal"]
        ),
        QuestionCasuzquiz(
            question: "Who was the first president of the United States?",
            correctAnswer: "George Washington",
            answerOptions: ["Thomas Jefferson", "Abraham Lincoln", "George Washington", "James Madison"]
        ),
        QuestionCasuzquiz(
            question: "Which fruit is known for having its seeds on the outside?",
            correctAnswer: "Strawberry",
            answerOptions: ["Blueberry", "Strawberry", "Raspberry", "Grape"]
        ),
        QuestionCasuzquiz(
            question: "What type of animal is a Komodo dragon?",
            correctAnswer: "Lizard",
            answerOptions: ["Snake", "Lizard", "Crocodile", "Alligator"]
        ),
        QuestionCasuzquiz(
            question: "Which famous scientist developed the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Nikola Tesla", "Galileo Galilei", "Albert Einstein"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest river in the world?",
            correctAnswer: "Nile",
            answerOptions: ["Amazon", "Nile", "Yangtze", "Mississippi"]
        ),
        QuestionCasuzquiz(
            question: "What is the smallest country in the world by land area?",
            correctAnswer: "Vatican City",
            answerOptions: ["Monaco", "Vatican City", "San Marino", "Nauru"]
        ),
        QuestionCasuzquiz(
            question: "Which animal is known for its ability to fly?",
            correctAnswer: "Bat",
            answerOptions: ["Bird", "Bat", "Insect", "Flying fish"]
        ),
        QuestionCasuzquiz(
            question: "What is the most common gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Argon"]
        ),
        QuestionCasuzquiz(
            question: "Who wrote the play 'Romeo and Juliet'?",
            correctAnswer: "William Shakespeare",
            answerOptions: ["Charles Dickens", "Jane Austen", "William Shakespeare", "Homer"]
        ),
        QuestionCasuzquiz(
            question: "What is the capital of France?",
            correctAnswer: "Paris",
            answerOptions: ["London", "Berlin", "Paris", "Madrid"]
        ),
        QuestionCasuzquiz(
            question: "Which gas makes up most of Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionCasuzquiz(
            question: "Which country is the largest producer of coffee?",
            correctAnswer: "Brazil",
            answerOptions: ["Brazil", "Vietnam", "Colombia", "Ethiopia"]
        ),
        QuestionCasuzquiz(
            question: "What is the chemical symbol for oxygen?",
            correctAnswer: "O",
            answerOptions: ["O", "O2", "O3", "Ox"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["South Korea", "China", "Japan", "India"]
        ),
        QuestionCasuzquiz(
            question: "What element has the chemical symbol 'Na'?",
            correctAnswer: "Sodium",
            answerOptions: ["Sodium", "Nitrogen", "Neon", "Nickel"]
        ),
        QuestionCasuzquiz(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Earth", "Mars", "Venus", "Saturn"]
        ),
        QuestionCasuzquiz(
            question: "What is the largest desert in the world?",
            correctAnswer: "Sahara Desert",
            answerOptions: ["Gobi Desert", "Kalahari Desert", "Sahara Desert", "Atacama Desert"]
        ),
        QuestionCasuzquiz(
            question: "What is the name of the first manned mission to land on the Moon?",
            correctAnswer: "Apollo 11",
            answerOptions: ["Apollo 11", "Gemini 4", "Mercury 7", "Luna 2"]
        ),
        QuestionCasuzquiz(
            question: "Who invented the telephone?",
            correctAnswer: "Alexander Graham Bell",
            answerOptions: ["Thomas Edison", "Nikola Tesla", "Alexander Graham Bell", "Samuel Morse"]
        ),
        QuestionCasuzquiz(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Copper", "Gold", "Lead"]
        ),
        QuestionCasuzquiz(
            question: "What is the national currency of Japan?",
            correctAnswer: "Yen",
            answerOptions: ["Yuan", "Yen", "Won", "Ringgit"]
        ),
        QuestionCasuzquiz(
            question: "Which type of tree produces acorns?",
            correctAnswer: "Oak",
            answerOptions: ["Pine", "Maple", "Oak", "Birch"]
        ),
        QuestionCasuzquiz(
            question: "What is the longest human bone?",
            correctAnswer: "Femur",
            answerOptions: ["Humerus", "Femur", "Tibia", "Radius"]
        ),
        QuestionCasuzquiz(
            question: "Which country is home to the Great Wall?",
            correctAnswer: "China",
            answerOptions: ["China", "India", "Japan", "Korea"]
        ),
        QuestionCasuzquiz(
            question: "Which bird is famous for its ability to mimic human speech?",
            correctAnswer: "Parrot",
            answerOptions: ["Eagle", "Crow", "Parrot", "Pigeon"]
        ),
        QuestionCasuzquiz(
            question: "What is the main ingredient in guacamole?",
            correctAnswer: "Avocado",
            answerOptions: ["Tomato", "Avocado", "Cucumber", "Onion"]
        ),
        QuestionCasuzquiz(
            question: "What is the symbol for gold on the periodic table?",
            correctAnswer: "Au",
            answerOptions: ["Ag", "Au", "Cu", "Pb"]
        ),
        QuestionCasuzquiz(
            question: "Which country is known for its kangaroos?",
            correctAnswer: "Australia",
            answerOptions: ["New Zealand", "South Africa", "Australia", "India"]
        ),
        QuestionCasuzquiz(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["300,000 km/s", "299,792 km/s", "299,792,458 m/s", "150,000 km/s"]
        )
    ]
}
