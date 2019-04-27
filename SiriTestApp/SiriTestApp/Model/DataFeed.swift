//
//  DataFeed.swift
//  SiriTestApp
//
//  Created by Matt Ward on 4/27/19.
//  Copyright © 2019 mattrobertward. All rights reserved.
//

import Foundation

struct Game: Decodable
{
    let homeTeam:String
    let awayTeam:String
    let time:String
    let date:String
}

public class DataFeed
{
    public func getGameTime(team:String, date:String)
    {
        //date = getDate("hi")
        //awayTeam = getTeamName("hi") || homeTeam = getTeamName("hi")
        //return(time)
        getFullSchedule()
    }
    
    private func getTeamName(team:String) -> String
    {
        return "Red Sox"
    }
    
    private func getDate(date:String) -> String
    {
        return "2019-03-28"
    }
    
    private func getGameList(){
        /*if let data = data
        {
        do {
            let games = try JSONDecoder().decode([Game].self, from: data)

            for game in games {
                print(game.time)
            }
        } catch {
            print(error)
        }*/
        
        return
    }
    
    private func getFullSchedule()
    {
        guard let url = URL(string: "https://cc4ff7f2-8529-43f3-b382-384994:password@api.mysportsfeeds.com/v1.0/pull/mlb/2019/full_game_schedule.JSON") else { return }
        
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
        
            if let response = response
            {
                print(response)
            }
            
            if let data = data
            {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
