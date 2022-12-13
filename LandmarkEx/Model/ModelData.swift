//
//  ModelData.swift
//  LandmarkEx
//
//  Created by yuri on 2022/11/10.
//

import Foundation
var landmarks: [Landmark] = loadFile("landmarkData.json")

func loadFile<T:Decodable>(_ filename:String) -> T {
    let data: Data
    guard let fileURL = Bundle.main.url(forResource: filename, withExtension: nil) else { fatalError("번들에서 파일 경로를 읽어오지 못했습니다.") }
    do {
        data = try Data(contentsOf: fileURL)
    }catch{
        fatalError("파일을 읽어오지 못했습니다. \n\(error.localizedDescription)")
    }
    
    do{
        let result = try JSONDecoder().decode(T.self, from: data)
        return result
    }catch{
        fatalError("파싱에 실패했습니다. \n\(error.localizedDescription)")

    }
}
