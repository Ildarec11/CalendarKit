import Foundation
import UIKit

public protocol EventDescriptor: AnyObject {
  var startDate: Date {get set} //added
  var endDate: Date {get set} //added
  var description: String? {get set} //added
  var dateInterval: DateInterval {get set}
  var isAllDay: Bool {get}
  var text: String {get}
  var attributedText: NSAttributedString? {get}
  var lineBreakMode: NSLineBreakMode? {get}
  var font : UIFont {get}
  var color: UIColor {get}
  var textColor: UIColor {get}
  var backgroundColor: UIColor {get}
  var editedEvent: EventDescriptor? {get set}
  func makeEditable() -> Self
  func commitEditing()
}
