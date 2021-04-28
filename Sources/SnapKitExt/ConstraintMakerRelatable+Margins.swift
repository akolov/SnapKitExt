//
//  ConstraintMaker+AspectRatio.swift
//  SnapKit
//
//  Created by Alexander Kolov on 2021-04-28.
//  Copyright © 2021 Wineapp Ltd. All rights reserved.
//

import SnapKit
#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

extension ConstraintMakerRelatable {

  @discardableResult
  public func equalToSuperview(margins: Bool, _ file: String = #file, _ line: UInt = #line) -> ConstraintMakerEditable {
    guard let other = self.description.item.superview else {
      fatalError("Expected superview but found nil when attempting make constraint `equalToSuperview`.")
    }
    return self.relatedTo(margins ? other.snp.margins : other, relation: .equal, file: file, line: line)
  }

  @discardableResult
  public func lessThanOrEqualToSuperview(margins: Bool, _ file: String = #file, _ line: UInt = #line) -> ConstraintMakerEditable {
    guard let other = self.description.item.superview else {
      fatalError("Expected superview but found nil when attempting make constraint `lessThanOrEqualToSuperview`.")
    }
    return self.relatedTo(margins ? other.snp.margins : other, relation: .lessThanOrEqual, file: file, line: line)
  }

  @discardableResult
  public func greaterThanOrEqualToSuperview(margins: Bool, _ file: String = #file, line: UInt = #line) -> ConstraintMakerEditable {
    guard let other = self.description.item.superview else {
      fatalError("Expected superview but found nil when attempting make constraint `greaterThanOrEqualToSuperview`.")
    }
    return self.relatedTo(margins ? other.snp.margins : other, relation: .greaterThanOrEqual, file: file, line: line)
  }

}
