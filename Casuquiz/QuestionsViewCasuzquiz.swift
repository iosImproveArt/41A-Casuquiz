//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewCasuzquiz: View {
    @State var selectedQuestion: Tab4QuestionCasuzquiz = Tab4QuestionCasuzquiz.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var wtgv = 14143514514
    var wtgwvtgv = "wtgvwtgv"
    func wtgcetghvbtwvwtg() -> Float { return 14514.1454 }
    func wrfcete() { print("wrcfrfccr") }
    private struct wrfccwrRFC {}
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: isSE ? 20: 22, weight: .medium, color: .black)
                            .padding(.horizontal, 60)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .white: .white)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.horizontal, isSE ? -20: 0)
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .white: .white)
                                   
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, 30)
                    .disabled(!showHint1)
                    .padding(.horizontal, isSE ? -20: 0)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4QuestionCasuzquiz.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewCasuzquiz(showLoading: false, selectedTab: .questions)
}

struct Tab4QuestionCasuzquiz {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4QuestionCasuzquiz] = [
        Tab4QuestionCasuzquiz(
            question: "What is the capital city of France?",
            hint1: "It’s known as the 'City of Light'.",
            hint2: "Its name starts with 'P'.",
            answer: "Paris"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which element has the chemical symbol 'O'?",
            hint1: "It is essential for breathing.",
            hint2: "It makes up about 21% of the Earth's atmosphere.",
            answer: "Oxygen"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the process plants use to make their food?",
            hint1: "It involves sunlight.",
            hint2: "The process starts with 'P'.",
            answer: "Photosynthesis"
        ),
        Tab4QuestionCasuzquiz(
            question: "Who painted the Mona Lisa?",
            hint1: "He was a famous Italian artist and inventor.",
            hint2: "His name is Leonardo.",
            answer: "Leonardo da Vinci"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the fastest land animal?",
            hint1: "It can run at speeds over 70 mph.",
            hint2: "It starts with 'C'.",
            answer: "Cheetah"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which planet is known as the Red Planet?",
            hint1: "It’s the fourth planet from the Sun.",
            hint2: "Its name starts with 'M'.",
            answer: "Mars"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest desert in the world?",
            hint1: "It is not hot; it is cold.",
            hint2: "It covers Antarctica.",
            answer: "Antarctic Desert"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the boiling point of water at sea level in Celsius?",
            hint1: "It’s a two-digit number.",
            hint2: "It’s 100 degrees.",
            answer: "100°C"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the main language spoken in Brazil?",
            hint1: "It’s not Spanish.",
            hint2: "It’s Portuguese.",
            answer: "Portuguese"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the longest river in the world?",
            hint1: "It’s located in South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Amazon River"
        ),
        Tab4QuestionCasuzquiz(
            question: "Who wrote the play 'Romeo and Juliet'?",
            hint1: "He is a famous English playwright.",
            hint2: "His last name starts with 'S'.",
            answer: "William Shakespeare"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the hardest natural substance on Earth?",
            hint1: "It’s often used in jewelry.",
            hint2: "It starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which animal is known for building dams?",
            hint1: "It’s a rodent.",
            hint2: "Its name starts with 'B'.",
            answer: "Beaver"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the currency used in Japan?",
            hint1: "It starts with 'Y'.",
            hint2: "It’s the Yen.",
            answer: "Yen"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which country gifted the Statue of Liberty to the USA?",
            hint1: "It’s in Europe.",
            hint2: "Its name starts with 'F'.",
            answer: "France"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the first man to walk on the moon?",
            hint1: "His first name is Neil.",
            hint2: "His last name is Armstrong.",
            answer: "Neil Armstrong"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest bone in the human body?",
            hint1: "It’s located in the leg.",
            hint2: "Its name is the femur.",
            answer: "Femur"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the term for animals that eat only plants?",
            hint1: "It starts with 'H'.",
            hint2: "It’s herbivore.",
            answer: "Herbivore"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the primary gas in Earth's atmosphere?",
            hint1: "It makes up 78% of the atmosphere.",
            hint2: "Its chemical symbol is 'N'.",
            answer: "Nitrogen"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which ancient civilization built the pyramids?",
            hint1: "It’s located in Africa.",
            hint2: "The civilization is Egyptian.",
            answer: "Egyptians"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the longest river in Africa?",
            hint1: "Its name starts with 'N'.",
            hint2: "It flows through multiple countries.",
            answer: "Nile River"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the main ingredient in guacamole?",
            hint1: "It’s a type of fruit.",
            hint2: "Its name starts with 'A'.",
            answer: "Avocado"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which animal is known as the king of the jungle?",
            hint1: "It has a mane.",
            hint2: "Its name starts with 'L'.",
            answer: "Lion"
        ),
        Tab4QuestionCasuzquiz(
            question: "Who invented the telephone?",
            hint1: "His first name is Alexander.",
            hint2: "His last name starts with 'G'.",
            answer: "Alexander Graham Bell"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest island in the world?",
            hint1: "Its name starts with 'G'.",
            hint2: "It’s located near the Arctic Circle.",
            answer: "Greenland"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the first artificial Earth satellite?",
            hint1: "It was launched by the Soviet Union.",
            hint2: "Its name starts with 'S'.",
            answer: "Sputnik"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the smallest country in the world?",
            hint1: "It is located in Europe.",
            hint2: "Its name starts with 'V'.",
            answer: "Vatican City"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which ocean is the largest in the world?",
            hint1: "Its name starts with 'P'.",
            hint2: "It covers more area than all landmasses combined.",
            answer: "Pacific Ocean"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which planet is known for its rings?",
            hint1: "It’s the sixth planet from the Sun.",
            hint2: "Its name starts with 'S'.",
            answer: "Saturn"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the capital city of Canada?",
            hint1: "It’s not Toronto.",
            hint2: "Its name starts with 'O'.",
            answer: "Ottawa"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the most populous country in the world?",
            hint1: "Its name starts with 'C'.",
            hint2: "Its population exceeds 1.4 billion.",
            answer: "China"
        ),
        Tab4QuestionCasuzquiz(
            question: "Who discovered the theory of relativity?",
            hint1: "His first name is Albert.",
            hint2: "His last name starts with 'E'.",
            answer: "Albert Einstein"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest continent?",
            hint1: "Its name starts with 'A'.",
            hint2: "It is home to more than half of the world's population.",
            answer: "Asia"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the longest mountain range in the world?",
            hint1: "It is located in South America.",
            hint2: "Its name starts with 'A'.",
            answer: "Andes"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which sea creature has three hearts?",
            hint1: "It’s a type of mollusk.",
            hint2: "Its name starts with 'O'.",
            answer: "Octopus"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest volcano on Earth?",
            hint1: "It’s located in Hawaii.",
            hint2: "Its name starts with 'M'.",
            answer: "Mauna Loa"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which country has the most islands in the world?",
            hint1: "Its name starts with 'S'.",
            hint2: "It has over 267,000 islands.",
            answer: "Sweden"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the most famous pyramid in Egypt?",
            hint1: "It’s located near Cairo.",
            hint2: "Its name starts with 'G'.",
            answer: "Great Pyramid of Giza"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the hardest material known to man?",
            hint1: "It’s used in cutting tools.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest planet in our solar system?",
            hint1: "Its name starts with 'J'.",
            hint2: "It has a large storm called the Great Red Spot.",
            answer: "Jupiter"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the currency used in the United Kingdom?",
            hint1: "It starts with 'P'.",
            hint2: "It’s a type of pound.",
            answer: "Pound Sterling"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the capital city of Japan?",
            hint1: "It’s one of the largest cities in the world.",
            hint2: "Its name starts with 'T'.",
            answer: "Tokyo"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which famous scientist developed the laws of motion and universal gravitation?",
            hint1: "His first name is Isaac.",
            hint2: "His last name starts with 'N'.",
            answer: "Isaac Newton"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the smallest mammal in the world?",
            hint1: "It weighs less than a penny.",
            hint2: "Its name starts with 'B'.",
            answer: "Bumblebee Bat"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which instrument is used to measure temperature?",
            hint1: "Its name starts with 'T'.",
            hint2: "It has a scale marked in Celsius or Fahrenheit.",
            answer: "Thermometer"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the capital city of Australia?",
            hint1: "It’s not Sydney or Melbourne.",
            hint2: "Its name starts with 'C'.",
            answer: "Canberra"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which bird is known for its ability to mimic human speech?",
            hint1: "It’s often kept as a pet.",
            hint2: "Its name starts with 'P'.",
            answer: "Parrot"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the chemical symbol for gold?",
            hint1: "It’s a noble metal.",
            hint2: "Its symbol starts with 'A'.",
            answer: "Au"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the longest river in the United States?",
            hint1: "Its name starts with 'M'.",
            hint2: "It flows through 10 states.",
            answer: "Missouri River"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which famous artist is known for cutting off his ear?",
            hint1: "He is a Dutch painter.",
            hint2: "His name starts with 'V'.",
            answer: "Vincent van Gogh"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the tallest mountain in the world?",
            hint1: "It’s located in the Himalayas.",
            hint2: "Its name starts with 'E'.",
            answer: "Mount Everest"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest species of shark?",
            hint1: "It’s the largest fish in the world.",
            hint2: "Its name starts with 'W'.",
            answer: "Whale Shark"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the longest-running animated TV show?",
            hint1: "It’s about an American family.",
            hint2: "Its name starts with 'T'.",
            answer: "The Simpsons"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the chemical element with the atomic number 79?",
            hint1: "It’s used in jewelry.",
            hint2: "Its name starts with 'G'.",
            answer: "Gold"
        ),
        Tab4QuestionCasuzquiz(
            question: "Which ocean lies to the east of the United States?",
            hint1: "It’s known for hurricanes.",
            hint2: "Its name starts with 'A'.",
            answer: "Atlantic Ocean"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the fastest bird in the world?",
            hint1: "It can reach speeds of over 200 mph.",
            hint2: "Its name starts with 'P'.",
            answer: "Peregrine Falcon"
        ),
        Tab4QuestionCasuzquiz(
            question: "Who wrote the novel '1984'?",
            hint1: "He is a famous British author.",
            hint2: "His last name starts with 'O'.",
            answer: "George Orwell"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the name of the famous clock tower in London?",
            hint1: "It’s located near the Houses of Parliament.",
            hint2: "Its name starts with 'B'.",
            answer: "Big Ben"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the largest country by area?",
            hint1: "It spans across Europe and Asia.",
            hint2: "Its name starts with 'R'.",
            answer: "Russia"
        ),
        Tab4QuestionCasuzquiz(
            question: "What is the hardest substance known to man?",
            hint1: "It is commonly used for cutting tools.",
            hint2: "Its name starts with 'D'.",
            answer: "Diamond"
        ),
        Tab4QuestionCasuzquiz(
                question: "What is the largest desert in the world?",
                hint1: "It is not cold.",
                hint2: "Its name starts with 'S'.",
                answer: "Sahara Desert"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which country is known as the Land of the Rising Sun?",
                hint1: "Its name starts with 'J'.",
                hint2: "It is an island nation in Asia.",
                answer: "Japan"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the tallest waterfall in the world?",
                hint1: "It is located in Venezuela.",
                hint2: "Its name starts with 'A'.",
                answer: "Angel Falls"
            ),
            Tab4QuestionCasuzquiz(
                question: "Who painted the 'Mona Lisa'?",
                hint1: "He was an Italian Renaissance artist.",
                hint2: "His name starts with 'L'.",
                answer: "Leonardo da Vinci"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the main ingredient in sushi?",
                hint1: "It’s a type of rice.",
                hint2: "Its name starts with 'S'.",
                answer: "Sushi Rice"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the capital city of France?",
                hint1: "It’s known for the Eiffel Tower.",
                hint2: "Its name starts with 'P'.",
                answer: "Paris"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which planet is known as the Red Planet?",
                hint1: "Its name starts with 'M'.",
                hint2: "It’s the fourth planet from the Sun.",
                answer: "Mars"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the most famous painting by Vincent van Gogh?",
                hint1: "It depicts a night sky.",
                hint2: "Its name starts with 'S'.",
                answer: "Starry Night"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the longest-running Broadway show?",
                hint1: "It’s a musical.",
                hint2: "Its name starts with 'C'.",
                answer: "The Phantom of the Opera"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which sea is the saltiest?",
                hint1: "It’s located between Jordan and Israel.",
                hint2: "Its name starts with 'D'.",
                answer: "Dead Sea"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the largest organ in the human body?",
                hint1: "It protects internal organs.",
                hint2: "Its name starts with 'S'.",
                answer: "Skin"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the capital city of Italy?",
                hint1: "It’s known for its ancient history.",
                hint2: "Its name starts with 'R'.",
                answer: "Rome"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which fruit is known as the king of fruits?",
                hint1: "It has a strong odor.",
                hint2: "Its name starts with 'D'.",
                answer: "Durian"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the name of the first human to walk on the Moon?",
                hint1: "His first name is Neil.",
                hint2: "His last name starts with 'A'.",
                answer: "Neil Armstrong"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which country is home to the Great Barrier Reef?",
                hint1: "Its name starts with 'A'.",
                hint2: "It’s a large island continent.",
                answer: "Australia"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the name of the famous wizarding school in the 'Harry Potter' series?",
                hint1: "Its name starts with 'H'.",
                hint2: "It’s located in Scotland.",
                answer: "Hogwarts"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the fastest land animal?",
                hint1: "It’s a type of big cat.",
                hint2: "Its name starts with 'C'.",
                answer: "Cheetah"
            ),
            Tab4QuestionCasuzquiz(
                question: "Which element has the chemical symbol 'O'?",
                hint1: "It is essential for respiration.",
                hint2: "Its name starts with 'O'.",
                answer: "Oxygen"
            ),
            Tab4QuestionCasuzquiz(
                question: "What is the main ingredient in hummus?",
                hint1: "It’s made from legumes.",
                hint2: "Its name starts with 'C'.",
                answer: "Chickpeas"
            )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
