//
//  stru.swift
//  Fantasy
//
//  Created by Frank Nardone on 8/30/18.
//  Copyright © 2018 FrankNardone. All rights reserved.
//

import Foundation
import UIKit

public struct Player: Codable {
    let playerID, seasonType, season: Double?
    let team: String?
    let number: Double?
    let name, position, positionCategory: String?
//    let activated, played, started: Double?
//    let passingAttempts, passingCompletions, passingYards: Double?
//    let passingCompletionPercentage, passingYardsPerAttempt: Double?
//    let passingYardsPerCompletion, passingTouchdowns, passingInterceptions, passingRating: Double?
//    let passingLong, passingSacks, passingSackYards: Double?
//    let rushingAttempts, rushingYards, rushingYardsPerAttempt, rushingTouchdowns: Double?
//    let rushingLong: Double?
//    let receivingTargets, receptions, receivingYards, receivingYardsPerReception: Double?
//    let receivingTouchdowns: Double?
//    let receivingLong: Double?
//    let fumbles, fumblesLost: Double?
//    let puntReturns, puntReturnYards, puntReturnYardsPerAttempt, puntReturnTouchdowns: Double?
//    let puntReturnLong, kickReturns, kickReturnYards, kickReturnYardsPerAttempt: Double?
//    let kickReturnTouchdowns, kickReturnLong, soloTackles, assistedTackles: Double?
//    let tacklesForLoss, sacks, sackYards, quarterbackHits: Double?
//    let passesDefended, fumblesForced, fumblesRecovered, fumbleReturnYards: Double?
//    let fumbleReturnTouchdowns, interceptions, interceptionReturnYards, interceptionReturnTouchdowns: Double?
//    let blockedKicks, specialTeamsSoloTackles, specialTeamsAssistedTackles, miscSoloTackles: Double?
//    let miscAssistedTackles, punts, puntYards, puntAverage: Double?
//    let fieldGoalsAttempted, fieldGoalsMade, fieldGoalsLongestMade, extraPointsMade: Double?
//    let twoPointConversionPasses, twoPointConversionRuns, twoPointConversionReceptions: Double?
//    let fantasyPoints, fantasyPointsPPR, receptionPercentage, receivingYardsPerTarget: Double?
//    //let tackles: Double?
//    let offensiveTouchdowns: Double?
//    //let defensiveTouchdowns, specialTeamsTouchdowns: Double?
//    let touchdowns: Double?
//    let fantasyPosition: String?
//    let fieldGoalPercentage, playerSeasonID, fumblesOwnRecoveries, fumblesOutOfBounds: Double?
//    let kickReturnFairCatches, puntReturnFairCatches, puntTouchbacks, puntInside20: Double?
//    let puntNetAverage, extraPointsAttempted, blockedKickReturnTouchdowns, fieldGoalReturnTouchdowns: Double?
//    let safeties, fieldGoalsHadBlocked, puntsHadBlocked, extraPointsHadBlocked: Double?
//    let puntLong, blockedKickReturnYards, fieldGoalReturnYards, puntNetYards: Double?
//    let specialTeamsFumblesForced, specialTeamsFumblesRecovered, miscFumblesForced, miscFumblesRecovered: Double?
//    let shortName: String?
//    let safetiesAllowed: Double?
//    let temperature, humidity, windSpeed, offensiveSnapsPlayed: JSONNull?
//    let defensiveSnapsPlayed: Int?
//    let specialTeamsSnapsPlayed, offensiveTeamSnaps, defensiveTeamSnaps: JSONNull?
//    let specialTeamsTeamSnaps: JSONNull?
//    let auctionValue, auctionValuePPR: Double?
//    let twoPointConversionReturns: Double?
//    let fantasyPointsFanDuel: Double?
//    let fieldGoalsMade0To19, fieldGoalsMade20To29, fieldGoalsMade30To39, fieldGoalsMade40To49: Double?
//    let fieldGoalsMade50Plus: Double?
//    let fantasyPointsDraftKings, fantasyPointsYahoo, averageDraftPosition, averageDraftPositionPPR: Double?
//    let teamID, globalTeamID: Double?
//    let fantasyPointsFantasyDraft: Double?
//    let averageDraftPositionRookie: Double?
//    let averageDraftPositionDynasty, averageDraftPosition2QB: Double?
//    let scoringDetails: [JSONAny]
//
    enum CodingKeys: String, CodingKey {
        case playerID = "PlayerID"
        case seasonType = "SeasonType"
        case season = "Season"
        case team = "Team"
        case number = "Number"
        case name = "Name"
        case position = "Position"
        case positionCategory = "PositionCategory"
//        case activated = "Activated"
//        case played = "Played"
//        case started = "Started"
//        case passingAttempts = "PassingAttempts"
//        case passingCompletions = "PassingCompletions"
//        case passingYards = "PassingYards"
//        case passingCompletionPercentage = "PassingCompletionPercentage"
//        case passingYardsPerAttempt = "PassingYardsPerAttempt"
//        case passingYardsPerCompletion = "PassingYardsPerCompletion"
//        case passingTouchdowns = "PassingTouchdowns"
//        case passingInterceptions = "PassingInterceptions"
//        case passingRating = "PassingRating"
//        case passingLong = "PassingLong"
//        case passingSacks = "PassingSacks"
//        case passingSackYards = "PassingSackYards"
//        case rushingAttempts = "RushingAttempts"
//        case rushingYards = "RushingYards"
//        case rushingYardsPerAttempt = "RushingYardsPerAttempt"
//        case rushingTouchdowns = "RushingTouchdowns"
//        case rushingLong = "RushingLong"
//        case receivingTargets = "ReceivingTargets"
//        case receptions = "Receptions"
//        case receivingYards = "ReceivingYards"
//        case receivingYardsPerReception = "ReceivingYardsPerReception"
//        case receivingTouchdowns = "ReceivingTouchdowns"
//        case receivingLong = "ReceivingLong"
//        case fumbles = "Fumbles"
//        case fumblesLost = "FumblesLost"
//        case puntReturns = "PuntReturns"
//        case puntReturnYards = "PuntReturnYards"
//        case puntReturnYardsPerAttempt = "PuntReturnYardsPerAttempt"
//        case puntReturnTouchdowns = "PuntReturnTouchdowns"
//        case puntReturnLong = "PuntReturnLong"
//        case kickReturns = "KickReturns"
//        case kickReturnYards = "KickReturnYards"
//        case kickReturnYardsPerAttempt = "KickReturnYardsPerAttempt"
//        case kickReturnTouchdowns = "KickReturnTouchdowns"
//        case kickReturnLong = "KickReturnLong"
//        case soloTackles = "SoloTackles"
//        case assistedTackles = "AssistedTackles"
//        case tacklesForLoss = "TacklesForLoss"
//        case sacks = "Sacks"
//        case sackYards = "SackYards"
//        case quarterbackHits = "QuarterbackHits"
//        case passesDefended = "PassesDefended"
//        case fumblesForced = "FumblesForced"
//        case fumblesRecovered = "FumblesRecovered"
//        case fumbleReturnYards = "FumbleReturnYards"
//        case fumbleReturnTouchdowns = "FumbleReturnTouchdowns"
//        case interceptions = "Interceptions"
//        case interceptionReturnYards = "InterceptionReturnYards"
//        case interceptionReturnTouchdowns = "InterceptionReturnTouchdowns"
//        case blockedKicks = "BlockedKicks"
//        case specialTeamsSoloTackles = "SpecialTeamsSoloTackles"
//        case specialTeamsAssistedTackles = "SpecialTeamsAssistedTackles"
//        case miscSoloTackles = "MiscSoloTackles"
//        case miscAssistedTackles = "MiscAssistedTackles"
//        case punts = "Punts"
//        case puntYards = "PuntYards"
//        case puntAverage = "PuntAverage"
//        case fieldGoalsAttempted = "FieldGoalsAttempted"
//        case fieldGoalsMade = "FieldGoalsMade"
//        case fieldGoalsLongestMade = "FieldGoalsLongestMade"
//        case extraPointsMade = "ExtraPointsMade"
//        case twoPointConversionPasses = "TwoPointConversionPasses"
//        case twoPointConversionRuns = "TwoPointConversionRuns"
//        case twoPointConversionReceptions = "TwoPointConversionReceptions"
//        case fantasyPoints = "FantasyPoints"
//        case fantasyPointsPPR = "FantasyPointsPPR"
//        case receptionPercentage = "ReceptionPercentage"
//        case receivingYardsPerTarget = "ReceivingYardsPerTarget"
//        case tackles = "Tackles"
//        case offensiveTouchdowns = "OffensiveTouchdowns"
//        case defensiveTouchdowns = "DefensiveTouchdowns"
//        case specialTeamsTouchdowns = "SpecialTeamsTouchdowns"
//        case touchdowns = "Touchdowns"
//        case fantasyPosition = "FantasyPosition"
//        case fieldGoalPercentage = "FieldGoalPercentage"
//        case playerSeasonID = "PlayerSeasonID"
//        case fumblesOwnRecoveries = "FumblesOwnRecoveries"
//        case fumblesOutOfBounds = "FumblesOutOfBounds"
//        case kickReturnFairCatches = "KickReturnFairCatches"
//        case puntReturnFairCatches = "PuntReturnFairCatches"
//        case puntTouchbacks = "PuntTouchbacks"
//        case puntInside20 = "PuntInside20"
//        case puntNetAverage = "PuntNetAverage"
//        case extraPointsAttempted = "ExtraPointsAttempted"
//        case blockedKickReturnTouchdowns = "BlockedKickReturnTouchdowns"
//        case fieldGoalReturnTouchdowns = "FieldGoalReturnTouchdowns"
//        case safeties = "Safeties"
//        case fieldGoalsHadBlocked = "FieldGoalsHadBlocked"
//        case puntsHadBlocked = "PuntsHadBlocked"
//        case extraPointsHadBlocked = "ExtraPointsHadBlocked"
//        case puntLong = "PuntLong"
//        case blockedKickReturnYards = "BlockedKickReturnYards"
//        case fieldGoalReturnYards = "FieldGoalReturnYards"
//        case puntNetYards = "PuntNetYards"
//        case specialTeamsFumblesForced = "SpecialTeamsFumblesForced"
//        case specialTeamsFumblesRecovered = "SpecialTeamsFumblesRecovered"
//        case miscFumblesForced = "MiscFumblesForced"
//        case miscFumblesRecovered = "MiscFumblesRecovered"
//        case shortName = "ShortName"
//        case safetiesAllowed = "SafetiesAllowed"
//        case temperature = "Temperature"
//        case humidity = "Humidity"
//        case windSpeed = "WindSpeed"
//        case offensiveSnapsPlayed = "OffensiveSnapsPlayed"
//        case defensiveSnapsPlayed = "DefensiveSnapsPlayed"
//        case specialTeamsSnapsPlayed = "SpecialTeamsSnapsPlayed"
//        case offensiveTeamSnaps = "OffensiveTeamSnaps"
//        case defensiveTeamSnaps = "DefensiveTeamSnaps"
//        case specialTeamsTeamSnaps = "SpecialTeamsTeamSnaps"
//        case auctionValue = "AuctionValue"
//        case auctionValuePPR = "AuctionValuePPR"
//        case twoPointConversionReturns = "TwoPointConversionReturns"
//        case fantasyPointsFanDuel = "FantasyPointsFanDuel"
//        case fieldGoalsMade0To19 = "FieldGoalsMade0to19"
//        case fieldGoalsMade20To29 = "FieldGoalsMade20to29"
//        case fieldGoalsMade30To39 = "FieldGoalsMade30to39"
//        case fieldGoalsMade40To49 = "FieldGoalsMade40to49"
//        case fieldGoalsMade50Plus = "FieldGoalsMade50Plus"
//        case fantasyPointsDraftKings = "FantasyPointsDraftKings"
//        case fantasyPointsYahoo = "FantasyPointsYahoo"
//        case averageDraftPosition = "AverageDraftPosition"
//        case averageDraftPositionPPR = "AverageDraftPositionPPR"
//        case teamID = "TeamID"
//        case globalTeamID = "GlobalTeamID"
//        case fantasyPointsFantasyDraft = "FantasyPointsFantasyDraft"
//        //case averageDraftPositionRookie = "AverageDraftPositionRookie"
//        case averageDraftPositionDynasty = "AverageDraftPositionDynasty"
//        case averageDraftPosition2QB = "AverageDraftPosition2QB"
//        case scoringDetails = "ScoringDetails"
    }
}
