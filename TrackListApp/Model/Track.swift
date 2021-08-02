//
//  Track.swift
//  TrackListApp
//
//  Created by Sergey on 01.08.2021.
//

struct Track {
    let artist: String
    let song: String
    
    
    var track: String {
        "\(artist) - \(song)"
    }
    
}

extension Track {
    
    static func getTrackList() -> [Track] {
        [
            Track(artist: "Боб Дилан", song: "Like a Rolling Stone" ),
            Track(artist: "The Rolling Stones", song: "(I Can’t Get No) Satisfaction"),
            Track(artist: "Джон Леннон", song: "Imagine"),
            Track(artist: "Марвин Гэй", song: "What’s Going On"),
            Track(artist: "Арета Франклин", song: "Respect"),
            Track(artist: "The Beach Boys", song: "Good Vibrations"),
            Track(artist: "The Beatles", song: "Hey Jude"),
            Track(artist: "Рэй Чарльз", song: "What’d I Say")
        ]
        
    }
}






























