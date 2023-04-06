import SwiftUI

struct CoordinatedArticlesView: View {
    @StateObject var sheetCoordinator = SheetCoordinator<ArticleSheet>()

    var body: some View {
        VStack {
            Button("Add Article") {
                sheetCoordinator.presentSheet(.addArticle)
            }
            Button("Edit Article") {
                sheetCoordinator.presentSheet(.editArticle)
            }
            Button("Article Category") {
                sheetCoordinator.presentSheet(.selectArticleCategory)
            }
        }
        .sheetCoordinating(coordinator: sheetCoordinator)
        .padding()
        .frame(width: 400, height: 300)
    }
}
