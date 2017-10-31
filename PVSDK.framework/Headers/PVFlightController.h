/**
 * @file PVFlightController.h
 * @author Layne
 * Created by Layne on 17/8/22.
 * Copyright © 2017年 Layne. All rights reserved.
 *
 * @brief flight interface  file
 *
 */

/**
 * @defgroup PVSDK_CORE_API_FLIGHTCONTROL Core interfaces related to SDK flight
 * @{
 */

/**
 * @page flight-page aircraft interface
 */

#import <Foundation/Foundation.h>
#import "PVBaseComponent.h"
#import "PVFlightControllerState.h"

////////////////////////////////////////
/// @brief aircraft state type
///
/// define aircraft state type
////////////////////////////////////////
typedef enum _PVStateUpdate{
    PVFlightConnectStateUpdate, ///< Update the connection state.
    PVAttitudeStateUpdate, ///< Update the aircraft attitude state.
    PVAircraftPositionStateUpdate, ///<Update the aircraft position.
    PVHomePositionStateUpdate, ///<Update the home position of aircraft.
    PVGPSCountStateUpdate, ///< Update the satellite number of aircraft.
    PVBatteryStateUpdate, ///<Update the battery power of aircraft.
    PVModeStateUpdate, ///< Update the mode of aircraft.
    PVFlighParamSetStateUpdate, ///<Update the return point of aircraft.
    PVFlightLandPositionStateUpdate, ///<Update the return point of aircraft.
    PVAlarmMessageUpdate, ///<Update the alarm information of aircraft.
    PVAutoMissionStateUpdate, ///<Update the task status.
    PVFlightLocatingTypeUpdate, ///<Update the location mode.
}PVStateUpdate;

@class PVFlightController;
@protocol PVFlightControllerDelegate <NSObject>

@optional

/**
 * Callback when the information of aircraft changes
 *
 *  @param fc    flightController
 *  @param state       Aircraft information
 */
- (void)flightController:(PVFlightController *)fc didUpdateFlightState:(PVFlightControllerState *)state stateType:(PVStateUpdate)stateUpdate;

@end

@interface PVFlightController : PVBaseComponent

/**
 Current state of equipment
 */
@property (nonatomic,strong) PVFlightControllerState *flightControllerState;

/**
 Current connection status of device
 */
@property (nonatomic,assign)PVFlightConnectState flightConnectState;

@property (nonatomic,weak)id <PVFlightControllerDelegate>delegate;

/**
 * Now start to connect the aircraft.
 *
 *  @return  Success and failure are related to calls about connection method,not the connection of the aircraft.The connection state of aircraft needs to be obtained from the agent method.
            (didUpdateFlightState）
 */
- (void)startConnectFlightBlockWithSuccess:(void (^)(PVFlightController *fc))success failure:(void (^)(PVFlightController *fc))failure;

/**
 * Disconnect the aircraft
 *
 *  @return   The screen will show "YES"when aircraft return successfully.otherwise the screen will show "NO"
 */
- (BOOL)stopConnectFlight;

/**
 *  Reconnect the aircraft
 *
*/
- (void)reConnectTCPAndAircraft;

@end

/**  @} */
