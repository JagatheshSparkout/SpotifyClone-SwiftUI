//
//  AuthContentView.swift
//  Spotify
//
//  Created by Jack on 16/08/20.
//  Copyright © 2020 xyz. All rights reserved.
//

import SwiftUI

struct AuthContentView: View {
    var body: some View {
        VStack() {
            Spacer()
            Image("primary_logo")
                .resizable().scaledToFit()
                .frame(width: 80.0, height: 80.0)
            Text("Millions of songs.")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundColor(.white)
            Text("Free on Spotify.")
                .font(.largeTitle).fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            
            VStack(alignment: .center, spacing: 15) {
                Button(action: {}) {
                    Text("SIGN UP FREE")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .padding(20)
                        .font(.headline)
                        .foregroundColor(.white)
                        .background(Color("app_green_color"))
                        .cornerRadius(.infinity)
                }
                .padding([.leading, .trailing], 30)
                
                Button(action: {}) {
                    Image("icon_phone")
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 0))
                    Text("CONTINUE WITH\nPHONE NUMBER")
                        .multilineTextAlignment(.center)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 10))
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                .padding([.leading, .trailing], 30)
                
                Button(action: {}) {
                    Image("logo_fb")
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 0))
                    Text("CONTINUE WITH FACEBOOK")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(20)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                .padding([.leading, .trailing], 30)
                
                Button(action: {}) {
                    Image("logo_apple")
                        .padding(EdgeInsets(top: 10, leading: 25, bottom: 10, trailing: 0))
                    Text("CONTINUE WITH APPLE")
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
                        .padding(20)
                        .font(.headline)
                        .foregroundColor(.white)
                        .animation(.spring())
                }
                .background(RoundedRectangle(cornerRadius: .infinity).stroke(Color.gray, lineWidth: 0.5))
                .padding([.leading, .trailing], 30)
                
                Button(action: {}) {
                    Text("LOG IN")
                        .padding(10)
                        .font(.headline)
                        .foregroundColor(.white)
                }
            }
            Spacer()
        }
        .background(Color("app_black_color"))
        .edgesIgnoringSafeArea(.all)
    }
}

struct AuthContentView_preview: PreviewProvider {
    static var previews: some View {
        AuthContentView()
    }
}
