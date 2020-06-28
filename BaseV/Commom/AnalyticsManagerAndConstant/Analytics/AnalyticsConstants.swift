//
//  AnalyticsConstants.swift
//  BaseV
//
//  Created by Varun Kumar on 13/06/20.
//  Copyright © 2020 Varun Kumar. All rights reserved.
//

import Foundation

struct AnalyticsConstants {
    
    struct UserAttributes {
        static let DEVICE_PLATFORM = "DEVICE_PLATFORM"
        static let TYPE_OF_USER = "TYPE_OF_USER"
        static let DEVICE_MODEL = "DEVICE_MODEL"
        static let OS_VERSION   = "OS_VERSION"
        static let DEVICE_MANUFACTURER = "DEVICE_MANUFACTURER"
        static let ACCOUNT_STATUS = "ACCOUNT_STATUS"
        static let SID = "SID"
    }
    
    struct UserConstants {
        static let IOS   = "iOS"
        static let GUEST = "GUEST"
        static let KPLUS_OTT_SUBSCRIBER = "KPLUS_OTT_SUBSCRIBER"
        static let APPLE = "APPLE"
    }
    
    struct EventKey {
        static let WATCH_DURATION_LIVETV = "WATCH_DURATION_LIVETV"
        static let STARTUP_BUFFER_DURATION = "STARTUP_BUFFER_DURATION"
        static let PAUSE_PROGRAM = "PAUSE_PROGRAM"
        static let RESUME_PROGRAM = "RESUME_PROGRAM"
        static let PLAY_LIVETV_HEARTBEAT = "PLAY_LIVETV_HEARTBEAT"
        static let PLAY_LIVETV_WITH_ERROR = "PLAY_LIVETV_WITH_ERROR"
        static let PLAY_BITRATE_CHANGE_LIVE = "PLAY_BITRATE_CHANGE_LIVE" //changeName
        
        static let WATCH_DURATION_VOD = "WATCH_DURATION_VOD"
        static let PLAY_VOD_HEARTBEAT = "PLAY_VOD_HEARTBEAT"
        static let PAUSE_CONTENT = "PAUSE_CONTENT"
        static let RESUME_CONTENT = "RESUME_CONTENT"
        static let PLAY_VOD_WITH_ERROR = "PLAY_VOD_WITH_ERROR"
        static let PLAY_BITRATE_CHANGE_VOD = "PLAY_BITRATE_CHANGE_VOD" // changeName
        
        static let HOME_PAGE_LIVETV = "HOME_PAGE_LIVETV"
        static let PROG_LIST_LIVETV = "PROG_LIST_LIVETV"
        static let HOME_PAGE_VOD = "HOME_PAGE_VOD"
        static let THEMATIC_GROUP_VOD = "THEMATIC_GROUP_VOD"
        static let HOME_PAGE_VOD_TOP_CONTENTS = "HOME_PAGE_VOD_TOP_CONTENTS"
        static let VOD_SUBGROUP = "VOD_SUBGROUP"
        static let VOD_SERIES = "VOD_SERIES"
        static let HOME_PAGE_BROADCAST_SCHEDULE = "HOME_PAGE_BROADCAST_SCHEDULE"
        static let HOME_PAGE_MORE = "HOME_PAGE_MORE"
        static let HOME_PAGE_OTHER_APPS = "HOME_PAGE_OTHER_APPS"
        static let WATCH_DURATION_OTHER_APPS = "WATCH_DURATION_OTHER_APPS"
        static let HOME_PAGE_SETTINGS = "HOME_PAGE_SETTINGS"
        static let SEARCH_EVENT = "SEARCH_EVENT"
        static let SEARCH_NO_RESULT = "SEARCH_NO_RESULT"
        static let SEARCH_EVENT_FAILURE = "SEARCH_EVENT_FAILURE"
        static let APP_ERROR = "APP_ERROR"
        static let LOGIN_SUCCESS = "LOGIN_SUCCESS"
        static let LOGIN_FAILURE = "LOGIN_FAILURE"
        static let LOGOUT = "LOGOUT"
        static let LOGOUT_FAILURE = "LOGOUT_FAILURE"
        static let FORCE_LOGOUT = "FORCE_LOGOUT"
        static let MESSAGE_SET_REMIND_ME = "MESSAGE_SET_REMIND_ME"
        static let ACTION_BUTTON = "ACTION_BUTTON"
        static let MESSAGE_READ_MORE = "MESSAGE_READ_MORE"
        static let MESSAGE_LESS = "MESSAGE_LESS"
        static let PARENTAL_CONTROL = "PARENTAL_CONTROL"
        static let PARENTAL_CONTROL_SET = "PARENTAL_CONTROL_SET"
        static let PARENTAL_CONTROL_CHANGE = "PARENTAL_CONTROL_CHANGE"
        static let PARENTAL_CONTROL_LOCKED = "PARENTAL_CONTROL_LOCKED"
        static let ACCOUNT = "ACCOUNT"
        static let DEEPLINK_ERROR = "DEEPLINK_ERROR"
        static let HOME_PAGE_NOTIFICATION = "HOME_PAGE_NOTIFICATION"
        static let HOME_BANNER = "HOME_BANNER"
        static let VOD_SEASON = "VOD_SEASON"
        static let REGISTER_SUCCESS = "REGISTER_SUCCESS"
        static let REGISTER_ENTER_PHONENUMBER_SUCCESS = "REGISTER_ENTER_PHONENUMBER_SUCCESS"
        static let REGISTER_PHONENUMBER_VALID = "REGISTER_PHONENUMBER_VALID"
        static let REGISTER_OTP_RESEND = "REGISTER_OTP_RESEND"
        static let HOME_PAGE_MAIN = "HOME_PAGE_MAIN"
        static let HOME_PAGE_SEARCH = "HOME_PAGE_SEARCH"
        static let HOME_PAGE_MAIN_CLICK = "HOME_PAGE_MAIN_CLICK"
        static let HOME_PAGE_LIVE_CLICK = "HOME_PAGE_LIVE_CLICK"
        static let HOME_PAGE_VOD_CLICK = "HOME_PAGE_VOD_CLICK"
        static let BROADCAST_SCHEDULE = "BROADCAST_SCHEDULE"
        static let LIVETV_PLAYER = "LIVETV_PLAYER"
        static let VOD_DETAIL = "VOD_DETAIL"
        static let VOD_PLAYER = "VOD_PLAYER"
        static let FAVORITE_PAGE = "FAVORITE_PAGE"
        static let ADD_FAVORITE_SUCCESS = "ADD_FAVORITE_SUCCESS"
        static let REMOVE_FAVORITE_SUCCESS = "REMOVE_FAVORITE_SUCCESS"
        
        static let CHANGE_EMAIL_SUCCESS = "CHANGE_EMAIL_SUCCESS"
        static let CHANGE_MOBILE_SUCCESS = "CHANGE_MOBILE_SUCCESS"
        static let CHANGE_PASSWORD_SUCCESS = "CHANGE_PASSWORD_SUCCESS"
        static let RESET_PASSWORD_SUCCESS = "RESET_PASSWORD_SUCCESS"
        
    }
    
    struct EventAttributes {
        static let CHANNEL_NAME = "CHANNEL_NAME"
        static let CHANNEL_ID = "CHANNEL_ID"
        static let PROG_NAME = "PROG_NAME"
        static let PROG_TYPE = "PROG_TYPE"
        static let EVENT_SENT_TIME = "EVENT_SENT_TIME"
        static let PROG_ID = "PROG_ID"
        static let PROG_GENRE = "PROG_GENRE"
        
        static let SOURCE = "SOURCE"
        static let PROG_START_TIME = "PROG_START_TIME"
        static let PROG_START_DATE_TIME = "PROG_START_DATE_TIME"
        static let PROG_END_TIME = "PROG_END_TIME"
        static let PROG_END_DATE_TIME = "PROG_END_DATE_TIME"
        static let PROG_WATCH_DURATION = "PROG_WATCH_DURATION"
        static let SEEK_BAR_POSITION = "SEEK_BAR_POSITION"
        
        static let STARTUP_BUFFER_DURATION = "STARTUP_BUFFER_DURATION"
        static let CDN = "CDN"
        
        static let ACTOR = "ACTOR"
        static let DIRECTOR = "DIRECTOR"
        static let LANGUAGE = "LANGUAGE"
        
        static let NUMBER_OF_BUFFER = "NUMBER_OF_BUFFER"
        static let NUMBER_OF_REBUFFER = "NUMBER_OF_REBUFFER"
        static let TOTAL_BUFFER_DURATION = "TOTAL_BUFFER_DURATION"
        
        static let PAUSE_TIME = "PAUSE_TIME"
        static let RESUME_TIME = "RESUME_TIME"
        
        static let CHANNEL_PACKAGE = "CHANNEL_PACKAGE"
        static let VOD_PACKAGE = "VOD_PACKAGE"
        static let WATCH_DURATION = "WATCH_DURATION"
        static let KEEP_PLAYING = "KEEP_PLAYING"
        static let CURRENT_BITRATE = "CURRENT_BITRATE"
        static let NUMBER_OF_BITRATE_CHANGE = "NUMBER_OF_BITRATE_CHANGE"
        
        static let ERROR_CODE = "ERROR_CODE"
        static let ERROR_MESSAGE = "ERROR_MESSAGE"
        static let ERROR_DATE_TIME = "ERROR_DATE_TIME"
        
        static let PLAYBACK_TIME_FROM_START = "PLAYBACK_TIME_FROM_START"
        static let BITRATE_CHANGE_TIME = "BITRATE_CHANGE_TIME"
        
        
        static let CONTENT_NAME = "CONTENT_NAME"
        static let CONTENT_TYPE = "CONTENT_TYPE"
        static let CONTENT_ID = "CONTENT_ID"
        static let CONTENT_GENRE = "CONTENT_GENRE"
        static let CONTENT_LENGTH = "CONTENT_LENGTH"
        static let WATCH_START_TIME = "WATCH_START_TIME"
        static let WATCH_END_TIME = "WATCH_END_TIME"
        static let WATCHED_PERCENTAGE = "WATCHED_PERCENTAGE"
        static let CONTENT_START_TIME = "CONTENT_START_TIME"
        static let CONTENT_END_TIME = "CONTENT_END_TIME"
        static let GROUP_NAME = "GROUP_NAME"
        static let KEYWORDS = "KEYWORDS"
        static let API_NAME = "API_NAME"
        static let ERROR_DESCRIPTION = "ERROR_DESCRIPTION"
        static let SID = "SID"
        static let MSG_TITLE = "MSG_TITLE"
        static let MSG_DATE = "MSG_DATE"
        static let MSG_CONTENT_NAME = "MSG_CONTENT_NAME"
        static let SUBGROUP_NAME = "SUBGROUP_NAME"
        static let SUBGROUP_ID = "SUBGROUP_ID"
        static let LOGOUT_DATE_TIME = "LOGOUT_DATE_TIME"
        static let LOGIN_DATE_TIME = "LOGIN_DATE_TIME"
        static let SETTING_RESULT = "SETTING_RESULT"
        static let SETTING_DATE_TIME = "SETTING_DATE_TIME"
        static let CHANGING_RESULT = "CHANGING_RESULT"
        static let CHANGING_DATE_TIME = "CHANGING_DATE_TIME"
        static let LOCK_RESULT = "LOCK_RESULT"
        static let LOCKING_DATE_TIME = "LOCKING_DATE_TIME"
        static let SEARCH_DATE_TIME = "SEARCH_DATE_TIME"
        static let SEARCH_TYPE = "SEARCH_TYPE"
        static let SERIES_NAME = "SERIES_NAME"
        static let SERIES_ID = "SERIES_ID"
        static let PARENTAL_CODE = "PARENTAL_CODE"
        static let CAMPAIGN_NAME = "CAMPAIGN_NAME"
        static let CAMPAIGN_ID = "CAMPAIGN_ID"
        static let BANNER_POSITION = "BANNER_POSITION"
        static let MSG_DATE_TIME = "MSG_DATE_TIME"
        static let REMIND_RESULT = "REMIND_RESULT"
        static let BANNER_TYPE = "BANNER_TYPE"
        static let BANNER_NAME = "BANNER_NAME"
        static let WATCH_DURATION_SECONDS = "WATCH_DURATION_SECONDS"
        static let PROG_WATCH_DURATION_SECONDS = "PROG_WATCH_DURATION_SECONDS"
        static let WATCH_DURATION_WITHOUT_BUFFER = "WATCH_DURATION_WITHOUT_BUFFER"
        static let SEASON_ID = "SEASON_ID"
        static let SEASON_NAME = "SEASON_NAME"
        
        static let FROM_RECENT_SEARCH = "FROM_RECENT_SEARCH"
        static let PHONE_NUMBER = "PHONE_NUMBER"
        static let WITH_SMC = "WITH_SMC"
        static let SMC_SN_NUMBER = "SMC_SN_NUMBER"
        static let RAIL_TYPE = "RAIL_TYPE"
        static let RAIL_NAME = "RAIL_NAME"
        static let GENRE = "GENRE"
        static let TAB = "TAB"
        static let TYPE = "TYPE"
        static let IS_HIGHLIGHT = "IS_HIGHLIGHT"
        
    }
    
    struct ProgramType  {
        static let LIVE = "LIVE"
        static let START_OVER = "START_OVER"
        static let LIVE_START_OVER = "LIVE_START_OVER"
    }
    
    struct Source {
        static let LIVE_TV = "LIVE_TV"
        static let BROADCAST_SCHEDULE = "BROADCAST_SCHEDULE"
        static let PUSH_MSG = "PUSH_MSG"
        static let SEARCH_RESULT = "SEARCH_RESULT"
        static let HOME_BANNER = "HOME_BANNER"
        static let TOP_CONTENTS = "TOP_CONTENTS"
        static let THEMATIC_GROUPS = "THEMATIC_GROUPS"
        static let VOD = "VOD"
        static let ACCOUNT = "ACCOUNT"
        static let PARENTAL_CONTROL = "PARENTAL_CONTROL"
        static let PARENTAL_CODE = "PARENTAL_CODE"
        static let CHANGE_ACCOUNT_INFO = "CHANGE_ACCOUNT_INFO"
        static let MAIN_HOME_PAGE = "MAIN_HOME_PAGE"
        static let LIVE_HOME_PAGE = "LIVE_HOME_PAGE"
        static let CHANNEL_SCHEDULE = "CHANNEL_SCHEDULE"
        static let BANNER = "BANNER"
        static let VOD_HOME_PAGE = "VOD_HOME_PAGE"
        static let SUBSCRIPTION = "SUBSCRIPTION"
        static let RELATED_CONTENT = "RELATED_CONTENT"
        static let MORE = "MORE"
    }
    
    struct Package {
        static let SUBSCRIBTION_PACKAGE = "SUBSCRIBTION_PACKAGE"
        static let FREE_PACKAGE = "FREE_PACKAGE"
        static let FREEMIUM_PACKAGE = "FREEMIUM_PACKAGE"
    }
}


public class AnalyticsPackage: NSObject {
    
    class func subscriptionPackage() -> String { return AnalyticsConstants.Package.SUBSCRIBTION_PACKAGE }
    class func freePackage() -> String { return AnalyticsConstants.Package.FREE_PACKAGE }
    class func freemiumPackage() -> String { return AnalyticsConstants.Package.FREEMIUM_PACKAGE }
    
}
public class AnalyticsProgramType: NSObject {
    
    class func live() -> String { return AnalyticsConstants.ProgramType.LIVE }
    class func startOver() -> String { return AnalyticsConstants.ProgramType.START_OVER }
    class func liveStartOver() -> String { return AnalyticsConstants.ProgramType.LIVE_START_OVER }
    
}

public class AnalyticsEventAttribute : NSObject {
    
    class func channelName() -> String { return AnalyticsConstants.EventAttributes.CHANNEL_NAME }
    class func channelID() -> String { return AnalyticsConstants.EventAttributes.CHANNEL_ID}
    class func progName() -> String { return AnalyticsConstants.EventAttributes.PROG_NAME }
    class func progType() -> String { return AnalyticsConstants.EventAttributes.PROG_TYPE }
    class func eventSentTime() -> String {
        return AnalyticsConstants.EventAttributes.EVENT_SENT_TIME}
    class func progId() -> String { return AnalyticsConstants.EventAttributes.PROG_ID }
    class func progGenere() -> String { return AnalyticsConstants.EventAttributes.PROG_GENRE }
    class func source() -> String { return AnalyticsConstants.EventAttributes.SOURCE }
    class func progStartTime() -> String { return AnalyticsConstants.EventAttributes.PROG_START_TIME }
    class func progStartDateTime() -> String { return AnalyticsConstants.EventAttributes.PROG_START_DATE_TIME}
    class func progEndTime() -> String { return AnalyticsConstants.EventAttributes.PROG_END_TIME }
    class func progEndDateTime() -> String { return AnalyticsConstants.EventAttributes.PROG_END_DATE_TIME}
    
    class func progWatchDuration() -> String { return AnalyticsConstants.EventAttributes.PROG_WATCH_DURATION }
    class func seekBarPosition() -> String { return AnalyticsConstants.EventAttributes.SEEK_BAR_POSITION }
    class func startupBufferDuration() -> String { return AnalyticsConstants.EventAttributes.STARTUP_BUFFER_DURATION }
    class func cdn() -> String { return AnalyticsConstants.EventAttributes.CDN }
    class func actor() -> String { return AnalyticsConstants.EventAttributes.ACTOR }
    class func director() -> String { return AnalyticsConstants.EventAttributes.DIRECTOR }
    class func language() -> String { return AnalyticsConstants.EventAttributes.LANGUAGE }
    class func numberOfBuffer() -> String { return AnalyticsConstants.EventAttributes.NUMBER_OF_BUFFER }
    class func numberOfRebuffer() -> String { return AnalyticsConstants.EventAttributes.NUMBER_OF_REBUFFER }
    class func totalBufferDuration() -> String { return AnalyticsConstants.EventAttributes.TOTAL_BUFFER_DURATION }
    class func pausetime() -> String { return AnalyticsConstants.EventAttributes.PAUSE_TIME }
    class func resumetime() -> String { return AnalyticsConstants.EventAttributes.RESUME_TIME }
    class func channelPackage() -> String { return AnalyticsConstants.EventAttributes.CHANNEL_PACKAGE }
    class func vodPackage() -> String { return AnalyticsConstants.EventAttributes.VOD_PACKAGE}
    class func watchDuration() -> String { return AnalyticsConstants.EventAttributes.WATCH_DURATION }
    
    class func keepPlaying() -> String { return AnalyticsConstants.EventAttributes.KEEP_PLAYING }
    class func currentBitrate() -> String { return AnalyticsConstants.EventAttributes.CURRENT_BITRATE }
    class func numberOfBitrateChange() -> String { return AnalyticsConstants.EventAttributes.NUMBER_OF_BITRATE_CHANGE }
    class func errorCode() -> String { return AnalyticsConstants.EventAttributes.ERROR_CODE }
    class func errorMessage() -> String { return AnalyticsConstants.EventAttributes.ERROR_MESSAGE }
    class func errorDateTime() -> String { return AnalyticsConstants.EventAttributes.ERROR_DATE_TIME }
    class func playbackTimeFromStart() -> String { return AnalyticsConstants.EventAttributes.PLAYBACK_TIME_FROM_START }
    class func bitrateChangeTime() -> String { return AnalyticsConstants.EventAttributes.BITRATE_CHANGE_TIME }
    class func contentName() -> String { return AnalyticsConstants.EventAttributes.CONTENT_NAME }
    class func contentType() -> String { return AnalyticsConstants.EventAttributes.CONTENT_TYPE }
    class func contentId() -> String { return AnalyticsConstants.EventAttributes.CONTENT_ID }
    class func contentGenre() -> String { return AnalyticsConstants.EventAttributes.CONTENT_GENRE }
    class func contentLength() -> String { return AnalyticsConstants.EventAttributes.CONTENT_LENGTH }
    
    class func watchStartTime() -> String { return AnalyticsConstants.EventAttributes.WATCH_START_TIME }
    class func watchEndTime() -> String { return AnalyticsConstants.EventAttributes.WATCH_END_TIME }
    class func watchedPercentage() -> String { return AnalyticsConstants.EventAttributes.WATCHED_PERCENTAGE }
    class func contentStartTime() -> String { return AnalyticsConstants.EventAttributes.CONTENT_START_TIME }
    class func contentEndTime() -> String { return AnalyticsConstants.EventAttributes.CONTENT_END_TIME }
    class func groupName() -> String { return AnalyticsConstants.EventAttributes.GROUP_NAME }
    class func keywords() -> String { return AnalyticsConstants.EventAttributes.KEYWORDS }
    class func apiName() -> String { return AnalyticsConstants.EventAttributes.API_NAME }
    class func errorDescription() -> String { return AnalyticsConstants.EventAttributes.ERROR_DESCRIPTION }
    class func sid() -> String { return AnalyticsConstants.EventAttributes.SID }
    class func msgTitle() -> String { return AnalyticsConstants.EventAttributes.MSG_TITLE }
    class func msgDate() -> String { return AnalyticsConstants.EventAttributes.MSG_DATE }
    class func msgContentName() -> String { return AnalyticsConstants.EventAttributes.MSG_CONTENT_NAME }
    class func subgroupName() -> String { return AnalyticsConstants.EventAttributes.SUBGROUP_NAME }
    class func subgroupId() -> String { return AnalyticsConstants.EventAttributes.SUBGROUP_ID }
    class func logoutDateTime() -> String { return AnalyticsConstants.EventAttributes.LOGOUT_DATE_TIME}
    class func loginDateTime() -> String { return AnalyticsConstants.EventAttributes.LOGIN_DATE_TIME}
    class func settingResult() -> String { return AnalyticsConstants.EventAttributes.SETTING_RESULT}
    class func settingDateTime() -> String { return AnalyticsConstants.EventAttributes.SETTING_DATE_TIME}
    class func changingResult() -> String { return AnalyticsConstants.EventAttributes.CHANGING_RESULT}
    class func changingDateTime() -> String { return AnalyticsConstants.EventAttributes.CHANGING_DATE_TIME}
    class func lockResult() -> String {return AnalyticsConstants.EventAttributes.LOCK_RESULT}
    class func lockingDateTime() -> String {return AnalyticsConstants.EventAttributes.LOCKING_DATE_TIME}
    class func searchDateTime() -> String {return AnalyticsConstants.EventAttributes.SEARCH_DATE_TIME}
    class func searchType() -> String {return AnalyticsConstants.EventAttributes.SEARCH_TYPE}
    class func seriesName() -> String {return AnalyticsConstants.EventAttributes.SERIES_NAME}
    class func seriesId() -> String {return AnalyticsConstants.EventAttributes.SERIES_ID}
    class func seasonName() -> String {return AnalyticsConstants.EventAttributes.SEASON_NAME}
    class func seasonId() -> String {return AnalyticsConstants.EventAttributes.SEASON_ID}
    
    class func fromRecentSearch() -> String {return AnalyticsConstants.EventAttributes.FROM_RECENT_SEARCH}
    class func phoneNumber() -> String {return AnalyticsConstants.EventAttributes.PHONE_NUMBER}
    class func withSMC() -> String {return AnalyticsConstants.EventAttributes.WITH_SMC}
    class func smcSnNumber() -> String {return AnalyticsConstants.EventAttributes.SMC_SN_NUMBER}
    class func railName() -> String {return AnalyticsConstants.EventAttributes.RAIL_NAME}
    class func railType() -> String {return AnalyticsConstants.EventAttributes.RAIL_TYPE}
    class func type() -> String {return AnalyticsConstants.EventAttributes.TYPE}
    class func isHighlight() -> String {return AnalyticsConstants.EventAttributes.IS_HIGHLIGHT}
    class func tabName() -> String {return AnalyticsConstants.EventAttributes.TAB}
    class func genre() -> String {return AnalyticsConstants.EventAttributes.GENRE}
    
    
    class func campaignName() -> String {return
        AnalyticsConstants.EventAttributes.CAMPAIGN_NAME}
    class func campaignId() -> String {return
        AnalyticsConstants.EventAttributes.CAMPAIGN_ID}
    class func bannerPosition() -> String {return
        AnalyticsConstants.EventAttributes.BANNER_POSITION}
    class func msgDateTime() -> String {return
        AnalyticsConstants.EventAttributes.MSG_DATE_TIME}
    class func remindResult() -> String {return
        AnalyticsConstants.EventAttributes.REMIND_RESULT}
    class func bannerType() -> String {return
        AnalyticsConstants.EventAttributes.BANNER_TYPE}
    class func bannerName() -> String {return AnalyticsConstants.EventAttributes.BANNER_NAME}
    class func watchDurationSeconds() -> String {return AnalyticsConstants.EventAttributes.WATCH_DURATION_SECONDS}
    class func progWatchDurationSeconds() -> String {return
        AnalyticsConstants.EventAttributes.PROG_WATCH_DURATION_SECONDS}
    class func watchDurationWithoutBuffer()-> String {return
        AnalyticsConstants.EventAttributes.WATCH_DURATION_WITHOUT_BUFFER}
}


public class AnalyticsEventKey : NSObject {
    
    class func watchDurationLiveTV() -> String { return AnalyticsConstants.EventKey.WATCH_DURATION_LIVETV }
    class func startupBufferDuration() -> String { return AnalyticsConstants.EventKey.STARTUP_BUFFER_DURATION }
    class func pauseProgram() -> String { return AnalyticsConstants.EventKey.PAUSE_PROGRAM }
    class func resumeProgram() -> String { return AnalyticsConstants.EventKey.RESUME_PROGRAM }
    class func playLivetvHeartbeat() -> String { return AnalyticsConstants.EventKey.PLAY_LIVETV_HEARTBEAT }
    class func playLivetvWithError() -> String { return AnalyticsConstants.EventKey.PLAY_LIVETV_WITH_ERROR }
    class func playBitrateChangeLive() -> String { return AnalyticsConstants.EventKey.PLAY_BITRATE_CHANGE_LIVE }
    class func watchDurationVod() -> String { return AnalyticsConstants.EventKey.WATCH_DURATION_VOD }
    class func playVodHeartbeat() -> String { return AnalyticsConstants.EventKey.PLAY_VOD_HEARTBEAT }
    class func pauseContent() -> String { return AnalyticsConstants.EventKey.PAUSE_CONTENT }
    class func resumeContent() -> String { return AnalyticsConstants.EventKey.RESUME_CONTENT }
    class func playVodWithError() -> String { return AnalyticsConstants.EventKey.PLAY_VOD_WITH_ERROR }
    class func playBitrateChangeVod() -> String { return AnalyticsConstants.EventKey.PLAY_BITRATE_CHANGE_VOD }
    class func homePageLivetv() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_LIVETV }
    class func progListLivetv() -> String { return AnalyticsConstants.EventKey.PROG_LIST_LIVETV }
    class func homePageVod() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_VOD }
    class func thematicGroupVod() -> String { return AnalyticsConstants.EventKey.THEMATIC_GROUP_VOD }
    class func homePageVodTopContents() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_VOD_TOP_CONTENTS }
    class func vodSubgroup() -> String { return AnalyticsConstants.EventKey.VOD_SUBGROUP }
    class func vodSeries() -> String { return AnalyticsConstants.EventKey.VOD_SERIES }
    class func homePageBroadcastSchedule() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_BROADCAST_SCHEDULE }
    class func homePageMore() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_MORE }
    class func homePageOtherApps() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_OTHER_APPS }
    class func watchDurationOtherApps() -> String { return AnalyticsConstants.EventKey.WATCH_DURATION_OTHER_APPS }
    class func homePageSettings() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_SETTINGS }
    class func searchEvent() -> String { return AnalyticsConstants.EventKey.SEARCH_EVENT }
    class func searchNoResult() -> String { return AnalyticsConstants.EventKey.SEARCH_NO_RESULT }
    class func searchEventFailure() -> String { return AnalyticsConstants.EventKey.SEARCH_EVENT_FAILURE }
    class func appError() -> String { return AnalyticsConstants.EventKey.APP_ERROR }
    class func loginSuccess() -> String { return AnalyticsConstants.EventKey.LOGIN_SUCCESS }
    class func loginFailure() -> String { return AnalyticsConstants.EventKey.LOGIN_FAILURE }
    class func logout() -> String { return AnalyticsConstants.EventKey.LOGOUT }
    class func logoutFailure() -> String { return AnalyticsConstants.EventKey.LOGOUT_FAILURE }
    class func forceLogout() -> String { return AnalyticsConstants.EventKey.FORCE_LOGOUT }
    class func messageSetRemindMe() -> String { return AnalyticsConstants.EventKey.MESSAGE_SET_REMIND_ME }
    class func actionButton() -> String { return AnalyticsConstants.EventKey.ACTION_BUTTON }
    class func messageReadMore() -> String { return AnalyticsConstants.EventKey.MESSAGE_READ_MORE }
    class func messageLess() -> String { return AnalyticsConstants.EventKey.MESSAGE_LESS}
    class func parentalControl() -> String { return AnalyticsConstants.EventKey.PARENTAL_CONTROL}
    class func parentalControlSet() -> String { return AnalyticsConstants.EventKey.PARENTAL_CONTROL_SET}
    class func parentalControlChange() -> String { return AnalyticsConstants.EventKey.PARENTAL_CONTROL_CHANGE}
    class func parentalControlLocked() -> String { return AnalyticsConstants.EventKey.PARENTAL_CONTROL_LOCKED}
    class func account() -> String { return AnalyticsConstants.EventKey.ACCOUNT}
    class func deeplinkError() -> String { return AnalyticsConstants.EventKey.DEEPLINK_ERROR}
    class func homePageNotification() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_NOTIFICATION}
    class func homeBanner() -> String { return AnalyticsConstants.EventKey.HOME_BANNER}
    class func vodSeason() -> String { return AnalyticsConstants.EventKey.VOD_SEASON }
    
    class func register() -> String { return AnalyticsConstants.EventKey.REGISTER_SUCCESS }
    class func registerEnterPhonenumSuccess() -> String { return AnalyticsConstants.EventKey.REGISTER_ENTER_PHONENUMBER_SUCCESS }
    class func registerEnterPhonenumValid() -> String { return AnalyticsConstants.EventKey.REGISTER_PHONENUMBER_VALID }
    class func registerOtpResend() -> String { return AnalyticsConstants.EventKey.REGISTER_OTP_RESEND }
    class func homepageMain() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_MAIN }
    class func homepageSearch() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_SEARCH }
    class func homepageMainClick() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_MAIN_CLICK }
    class func homepageLiveClick() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_LIVE_CLICK }
    class func homepageVODClick() -> String { return AnalyticsConstants.EventKey.HOME_PAGE_VOD_CLICK }
    class func broadcastSchedule() -> String { return AnalyticsConstants.EventKey.BROADCAST_SCHEDULE }
    class func liveTVPlayer() -> String { return AnalyticsConstants.EventKey.LIVETV_PLAYER }
    class func vodDetail() -> String { return AnalyticsConstants.EventKey.VOD_DETAIL }
    class func vodPlayer() -> String { return AnalyticsConstants.EventKey.VOD_PLAYER }
    class func favoritePage() -> String { return AnalyticsConstants.EventKey.FAVORITE_PAGE }
    class func addtoFavoriteSuccess() -> String { return AnalyticsConstants.EventKey.ADD_FAVORITE_SUCCESS }
    class func removeFavoriteSuccess() -> String { return AnalyticsConstants.EventKey.REMOVE_FAVORITE_SUCCESS }
    class func changeEmailSuccess() -> String { return AnalyticsConstants.EventKey.CHANGE_EMAIL_SUCCESS }
    class func changeMobileSuccess() -> String { return AnalyticsConstants.EventKey.CHANGE_MOBILE_SUCCESS }
    class func changePasswordSuccess() -> String { return AnalyticsConstants.EventKey.CHANGE_PASSWORD_SUCCESS }
    class func resetPasswordSuccess() -> String { return AnalyticsConstants.EventKey.RESET_PASSWORD_SUCCESS }
}


public class AnalyticsSourceKey : NSObject {
    
    class func liveTv() -> String { return AnalyticsConstants.Source.LIVE_TV }
    class func broadcastShedule() -> String { return AnalyticsConstants.Source.BROADCAST_SCHEDULE }
    class func pushMsg() -> String { return AnalyticsConstants.Source.PUSH_MSG }
    class func searchResult() -> String { return AnalyticsConstants.Source.SEARCH_RESULT }
    class func homeBanner() -> String { return AnalyticsConstants.Source.HOME_BANNER }
    class func topContents() -> String { return AnalyticsConstants.Source.TOP_CONTENTS }
    class func thematicGroup() -> String { return AnalyticsConstants.Source.THEMATIC_GROUPS }
    class func vod() -> String { return AnalyticsConstants.Source.VOD }
    class func account() -> String { return AnalyticsConstants.Source.ACCOUNT }
    class func parentalControl() -> String { return AnalyticsConstants.Source.PARENTAL_CONTROL }
    class func parentalCode() -> String { return AnalyticsConstants.Source.PARENTAL_CODE }
    class func changeAccountInfo() -> String { return AnalyticsConstants.Source.CHANGE_ACCOUNT_INFO }
    
    class func mainHomePage() -> String { return AnalyticsConstants.Source.MAIN_HOME_PAGE }
    class func liveHomePage() -> String { return AnalyticsConstants.Source.LIVE_HOME_PAGE }
    class func channelSchedule() -> String { return AnalyticsConstants.Source.CHANNEL_SCHEDULE }
    class func banner() -> String { return AnalyticsConstants.Source.BANNER }
    class func vodHomePage() -> String { return AnalyticsConstants.Source.VOD_HOME_PAGE }
    class func subscription() -> String { return AnalyticsConstants.Source.SUBSCRIPTION }
    class func relatedContent() -> String { return AnalyticsConstants.Source.RELATED_CONTENT }
    class func more() -> String { return AnalyticsConstants.Source.MORE }
}
