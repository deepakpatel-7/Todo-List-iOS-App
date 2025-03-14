import SwiftUI

struct NoItemView: View { // ✅ Fixed struct name
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are no items")
                    .font(.title) // ✅ Fixed extra space issue
                    .fontWeight(.semibold)
                
                Text("Are you a productive person? I think you should click the add button and add a bunch of items to your todo list!")
                    .padding(.bottom,0)
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Something 🥳")
                            .foregroundStyle(Color.white)
                            .font(.headline)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity)
                            .background(animate ? secondaryAccentColor : Color.accentColor)
                            .background(Color.accentColor)
                            .cornerRadius(10)
                    })
                .padding(.horizontal,animate ? 30:50)
                .shadow(
                    color: animate ? secondaryAccentColor.opacity(0.7):
                        Color.accentColor.opacity(0.7)
                    ,radius: animate ? 30:10,
                    x:0,
                    y: animate ? 50 : 30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y:animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear { addAnimation() }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
    func addAnimation() {
        guard !animate else {return}
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                withAnimation(
                    Animation
                        .easeInOut(duration: 2.0)
                        .repeatForever()
                ) {
                    animate.toggle()
                }
            }
        }
}

#Preview {
    NavigationView {
        NoItemView() // ✅ Corrected struct name
            .navigationTitle("Title")
    }
}
