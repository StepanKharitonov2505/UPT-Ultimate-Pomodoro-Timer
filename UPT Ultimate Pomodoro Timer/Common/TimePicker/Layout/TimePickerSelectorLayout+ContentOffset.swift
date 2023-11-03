import UIKit

extension TimePickerSelectorLayout {
    
    func contentOffset(for timeElementIndex: Int) -> CGPoint {
        let cellWidth = itemSize.width
        let screenHalf = collectionView!.bounds.width / 2
        
        let midX = cellWidth * CGFloat(timeElementIndex) + cellWidth / 2
        let newX = midX - screenHalf
        return CGPoint(x: newX, y: 0)
    }
    
    func timeElementIndex(offset: CGPoint) -> CGFloat {
        let cellWidth = itemSize.width
        let proposedCenterX = collectionView!.screenCenterXOffset(for: offset)
        let timeElementIndex = proposedCenterX / cellWidth

        return timeElementIndex
    }
}
