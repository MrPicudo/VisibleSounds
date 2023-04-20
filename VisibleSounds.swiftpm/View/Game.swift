/* Game.swift --> VisibleSounds. Created by Miguel Torres on 20/04/23. */

import SwiftUI

struct Game: View {

    @EnvironmentObject var audioPlayer: AudioPlayer
    @State var questionIndex: Int = 0
    @State var showing: Bool = false
    @State var times: Double = 0.0
    @State var question: Question?
    @State var result: Int = 0
    let form: Form
    
    var body: some View {
        ZStack {
            Image("Back01")
                .resizable()
                .ignoresSafeArea(.all)
            VStack {
                Text("What sound frequency does this image correspond to?")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .padding(50)
                HStack {
                    ZStack {
                        Image(form.questions[questionIndex].name)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Image("Background")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }.padding(100)
                    VStack {
                        ForEach(form[questionIndex].choices, id: \Choice.hertz) { choice in
                            Button {
                                print(showing)
                                print(questionIndex)
                                if choice.result {
                                    audioPlayer.playS(resourceName: "Correct", resourceExtension: "mp3")
                                    result += 1
                                }
                                else {
                                    audioPlayer.playS(resourceName: "Wrong", resourceExtension: "mp3")
                                }
                                for i in 1...2 {
                                    Timer.scheduledTimer(withTimeInterval: 0.5 * times, repeats: false) { timer in
                                        if (i == 2 && questionIndex <= 15) {
                                            questionIndex += 1
                                        }
                                    }
                                    times += 1
                                }
                                times = 0.0
                                if questionIndex == 16 {
                                    showing.toggle()
                                }
                            } label: {
                                ZStack {
                                    RoundedRectangle(cornerRadius: 20.0)
                                        .foregroundColor(Color.blue)
                                        .frame(width: 170, height: 80)
                                    Text(choice.hertz)
                                        .font(.title2)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                }
                            }.disabled(showing)
                        }
                    }.padding(100)
                    
                }
                Text(showing ? "Your score is: \(result) / 17": "\(result) / \(questionIndex)")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .padding(.top, 30)
                Text(showing ? "Thanks for playing! 😊 " : "")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .padding(.bottom, 50)
            }
        }
    }
}

struct Game_Previews: PreviewProvider {
    static let audioPlayer = AudioPlayer()
    static var previews: some View {
        Game(form: form)
            .environmentObject(audioPlayer)
    }
}
