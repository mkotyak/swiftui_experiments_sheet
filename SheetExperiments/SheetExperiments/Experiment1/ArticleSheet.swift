import Foundation
import SwiftUI

enum ArticleSheet: String, Identifiable, SheetEnum {
    case addArticle, editArticle, selectArticleCategory

    var id: String { rawValue }

    @ViewBuilder
    func view(coordinator: SheetCoordinator<ArticleSheet>) -> some View {
        switch self {
        case .addArticle:
            AddArticleView()
        case .editArticle:
            EditArticleView()
        case .selectArticleCategory:
            SelectArticleCategoryView(sheetCoordinator: coordinator)
        }
    }
}
