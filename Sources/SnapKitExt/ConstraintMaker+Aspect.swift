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

extension ConstraintMaker {

  public func aspectRatio(_ ratio: CGSize) {
    let view = item as! ConstraintView
    self.width.equalTo(view.snp.height).multipliedBy(ratio.width / ratio.height)
  }

  public func aspectRatioSquare() {
    aspectRatio(CGSize(width: 1, height: 1))
  }

}
