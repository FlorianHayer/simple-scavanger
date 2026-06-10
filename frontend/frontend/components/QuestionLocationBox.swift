import SwiftUI

struct QuestionLocationBox: View {
    var location: String

    var body: some View {
        HStack(spacing: 10) {
            Image(systemName: "mappin.circle.fill")
                .foregroundStyle(.red)
                .font(.title2)

            VStack(alignment: .leading, spacing: 2) {
                Text("Location")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Text(location)
                    .font(.headline)
                    .foregroundStyle(.primary)
            }

            Spacer()
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.08), radius: 8, x: 0, y: 4)
        .padding(.horizontal)
    }
}
