//DANIEL PIUS - 991675608



import SwiftUI

struct StatisticsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Overall Statistics")
                .font(.largeTitle)
                .bold()
                .padding(.bottom, 10)
            
            HStack {
                Text("Kills:")
                Spacer()
                Text("45,678")
                    .bold()
            }
            HStack {
                Text("Deaths:")
                Spacer()
                Text("12,345")
                    .bold()
            }
            HStack {
                Text("KD Ratio:")
                Spacer()
                Text("3.7")
                    .bold()
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Stats")
    }
}

#Preview {
    StatisticsView()
}
