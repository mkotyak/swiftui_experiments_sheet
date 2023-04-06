import SwiftUI

struct SelectArticleCategoryView: View {
    let sheetCoordinator: SheetCoordinator<ArticleSheet>

    var body: some View {
        Text("Edit article view")

        Button {
            sheetCoordinator.presentSheet(.addArticle)
        } label: {
            Text("Change sheet")
        }
    }
}
