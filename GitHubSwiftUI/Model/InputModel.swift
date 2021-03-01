//
//  InputModel.swift
//  GitHubSwiftUI
//
//  Created by Takuya Ando on 2021/02/28.
//

import Foundation
import UIKit

struct Input: Identifiable {
    
    let id: UUID = UUID()
    let iconImage: UIImage
    let title: String
    let language: String?
    let star: Int
    let description: String?
    let url: String
    
}
