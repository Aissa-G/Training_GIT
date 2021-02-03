-- ********************
-- Global variables
-- ********************
s_first_train_number_id = 3
s_last_train_number_id = s_first_train_number_id + 2
s_sectors = {
   [1] = "HNL3"
}
LightCC_Mode = {
    Stop = 1,
    Init = 2,
    Run = 3
}
LightCC_Config = {
    Mode = LightCC_Mode.Stop,
    Target = {},
    Formation = {},
    Trains = {},
    Description = "",
    Constants = {
        delay_for_lc_msg = -100,
        without_driver = 0,
        cbtc_mode = 1,
        external_braking_order = 1
    }
} 

------Scenario Declaration-------------
Scenario_decl = {
	name = "LightCC_Frontal2",
    author = "author",
    period = 500,
    phase = 0,
    force_db = false,
    library = "./simulation/liblightcc2_1.5.4.3.so",
    config_file = "./simulation/lightcc_config.xml",
	parameter = {
        ["VAR6.VARIn6.VARIn6"] = { alias = "user", },
        ["VAR6.VARIn7.VARIn7"] = { alias = "light_cc_ats_automatic_activated", }
	},
 
    model_constants = {
		project_name="RIYADH",
		baseline = "2.12",			
		coupling_activated = "no", --~ OG COUPLING
        train_driving = "USUAL_TRAIN_DRIVING" -- USUAL_Train_DRIVING or LIGHT_Train_DRIVING
	},

    message = {

    }
}

-- *********************
-- LCC parameters
-- *********************
for w_id = s_first_train_number_id,s_last_train_number_id do
    -- *********************
    -- Train parameters
    -- *********************
    Scenario_decl.parameter["TRAIN_"..w_id..".antenna.antenna"] = { alias = "light_cc_antenna_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".antenna2.antenna2"] = { alias = "light_cc_antenna2_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".block_abscissa.block_abscissa"] = { alias = "light_cc_block_abscissa_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".block_id.block_id"] = { alias = "light_cc_block_id_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".rstrain_acceleration.rstrain_acceleration"] = { alias = "light_cc_train_acceleration_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".train_cab_orientation.train_cab_orientation"] = { alias = "light_cc_train_cab_orientation_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".train_direction.train_direction"] = { alias = "light_cc_train_direction_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".rstrain_movement.rstrain_movement"] = { alias = "light_cc_train_movement_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".rstrain_speed.rstrain_speed"] = { alias = "light_cc_train_speed_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".rsemergency_brake.rsemergency_brake"] = { alias = "light_cc_emergency_brake_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".position_update.position_update"] = { alias = "light_cc_position_update_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".external_braking_order.external_braking_order"] = { alias = "light_cc_external_braking_order_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".external_movement_order.external_movement_order"] = { alias = "light_cc_external_movement_order_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".external_verbosity.external_verbosity"] = { alias = "light_cc_external_verbosity_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".train_load.train_load"] = { alias = "light_cc_train_load_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".ato_start_reset.ato_start_reset"] = { alias = "light_cc_ato_start_reset_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".ato_start_trigger.ato_start_trigger"] = { alias = "light_cc_ato_start_trigger_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".cbtc_mode.cbtc_mode"] = { alias = "light_cc_cbtc_mode_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".change_of_ends_order.change_of_ends_order"] = { alias = "light_cc_change_of_ends_order_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".dwell_delay_countdown.dwell_delay_countdown"] = { alias = "light_cc_dwell_delay_countdown_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".without_driver.without_driver"] = { alias = "light_cc_without_driver_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".supervisor_answer.supervisor_answer"] = { alias = "light_cc_supervisor_answer_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".supervisor_command.supervisor_command"] = { alias = "light_cc_supervisor_command_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".supervisor_enable.supervisor_enable"] = { alias = "light_cc_supervisor_enable_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".nbsbeaconCpt.nbsbeaconCpt"] = { alias = "light_cc_external_train_hold_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".nbsbeaconId.nbsbeaconId"] = { alias = "light_cc_external_train_psr_rate_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".nbsbeaconStart.nbsbeaconStart"] = { alias = "light_cc_stop_communication_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".nbsbeaconNth.nbsbeaconNth"] = { alias = "light_cc_cbtc_started_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".rsgradiantAcceleration.rsgradiantAcceleration"] = { alias = "light_cc_gradient_acceleration_"..w_id }
    Scenario_decl.parameter["TRAIN_"..w_id..".nbsbeaconDistance.nbsbeaconDistance"] = { alias = "light_cc_delay_for_lc_msg_"..w_id }

    -- *********************
    --  Message parameters
    -- *********************
    
    for w_key,w_sector in pairs(s_sectors) do
        -- CC -> LC,ZC,ATS
        -- *******************
        Scenario_decl.message["CC_"..w_id..".LC_"..w_key..".CC_To_LC_Message__CC_LC"] =  { alias = "light_cc_cc_to_lc_message_"..w_key.."_"..w_id, sending = 1 }  
        Scenario_decl.message["CC_"..w_id..".ZC_"..w_key..".Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".HILC_2_safety_related_hour__CC_ATS"] =  { alias = "light_cc_hilc_2_safety_related_hour_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".HILC_2_request_return_code__CC_ATS"] =  { alias = "light_cc_hilc_2_request_return_code_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".HILC_1_request_return_code__CC_ATS"] =  { alias = "light_cc_hilc_1_request_return_code_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".CC_Status_Report__CC_ATS"] =  { alias = "light_cc_cc_status_report_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".HILC_1_safety_related_hour__CC_ATS"] =  { alias = "light_cc_hilc_1_safety_related_hour_"..w_key.."_"..w_id, sending = 1 }
        Scenario_decl.message["CC_"..w_id..".ATS_"..w_sector..".Rolling_Stock_Status_Report__CC_ATS"] =  { alias = "light_cc_rolling_stock_status_report_"..w_key.."_"..w_id, sending = 1 }

        -- ZC <-> CC
        -- ***************
        Scenario_decl.message["ZC_"..w_key..".CC_"..w_id..".EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_"..w_key.."_"..w_id, sending = 0 }

        -- ATS -> CC
        -- ******************************
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".Rolling_Stock_Setting_Request__ATS_CC"] =  { alias = "light_cc_rolling_stock_setting_request_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".HILC_1_modification_request__ATS_CC"] =  { alias = "light_cc_hilc_1_modification_request_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".HILC_2_request_confirmation__ATS_CC"] =  { alias = "light_cc_hilc_2_request_confirmation_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".CC_Reset_Request__ATS_CC"] =  { alias = "light_cc_cc_reset_request_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".CC_Setting_Request__ATS_CC"] =  { alias = "light_cc_cc_setting_request_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".HILC_2_modification_request__ATS_CC"] =  { alias = "light_cc_hilc_2_modification_request_"..w_key.."_"..w_id, sending = 0, }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".HILC_1_request_confirmation__ATS_CC"] =  { alias = "light_cc_hilc_1_request_confirmation_"..w_key.."_"..w_id, sending = 0 }
        Scenario_decl.message["ATS_"..w_sector..".CC_"..w_id..".Train_Status_Request__ATS_CC"] =  { alias = "light_cc_train_status_request_"..w_key.."_"..w_id, sending = 0 }

        -- LC <-> CC
        -- ***************
        Scenario_decl.message["LC_"..w_key..".CC_"..w_id..".LC_To_CC_Message__LC_CC"] =  { alias = "light_cc_lc_to_cc_message_"..w_key.."_"..w_id, sending = 0 }
    end
end

-- All sectors
-- ****************
init_trains = {
   [s_first_train_number_id] = { train_formation = { [1] = { id = s_first_train_number_id } }, 
            block_id = 101, block_abscissa = 1000, train_direction = 1, train_cab_orientation = 1 }, 				  
   [s_first_train_number_id + 1] = { train_formation = { [1] = { id = s_first_train_number_id + 1 } }, 
            block_id = 160 , block_abscissa = 1000, train_direction = 1, train_cab_orientation = 1 },
   [s_first_train_number_id + 2] = { train_formation = { [1] = { id = s_first_train_number_id + 2 } }, 
            block_id = 152 , block_abscissa = 100, train_direction = 1 , train_cab_orientation = 1 },
}

-- ****************************************************************************
-- Set Trains -> Insert or delete trains declared on "init_trains" variable
-- ****************************************************************************
-- Args : insertOrDelete -> boolean indicate if the function will insert or delete trains (true for insert)
function SetTrains(insertOrDelete) 
    -- Local variables 
    -- ****************
    local w_unforceParameterList = {}

    if init_trains ~= nil then
        if type(insertOrDelete) == "boolean" then
            -- Positioning all trains on track
            -- ********************************
            for w_idTrain,w_val in pairs(init_trains) do
                -- Train position
                -- ***************
                print("Set train position for LCC train "..w_idTrain)
                for w_keyConfig, w_valConfig in pairs(w_val) do
                    if w_keyConfig ~= "train_formation" then
                        v["light_cc_"..w_keyConfig.."_"..w_idTrain] = ((insertOrDelete == true) and w_valConfig or 0)
                        table.insert(w_unforceParameterList,"light_cc_"..w_keyConfig.."_"..w_idTrain)
                    end
                end
                v["light_cc_position_update_"..w_idTrain] = 1
                
                -- Basic configuration
                -- *********************
                print("Set basic configuration for LCC train "..w_idTrain)
                for w_keyConfigLCC, w_valConfigLCC in pairs(LightCC_Config.Constants) do
                    if w_keyConfigLCC == "external_braking_order" and insertOrDelete then
                        table.insert(w_unforceParameterList,"light_cc_"..w_keyConfigLCC.."_"..w_idTrain)
                    end
                    v["light_cc_"..w_keyConfigLCC.."_"..w_idTrain] = ((insertOrDelete == true) and w_valConfigLCC or 0)
                end
            end
            wait(3)
            
            -- Unforce parameter
            -- ********************
            for w_keyParameter,w_unforcedParameter in pairs(w_unforceParameterList) do
                unforce(w_unforcedParameter)
            end
        else
            print("Error -> bad argument for \"insertOrDelete\" parameter")
            abort()
        end
    else
        print("Error -> No \"init_trains\" available here. Please fix the scenario")
        abort()
    end
end

function waitOn(alias)
    local  on = v[alias]
    while(v[alias] == on) do
        wait(1)
    end
end

-- ********************
--  LightCC function
-- ********************
init_lightcc = nil -- Light_CC_Init() from the lightcc library.
LightCC_Function = {
    Init = function()
        for w_key,w_val in pairs(LightCC_Config.Formation) do
		    print("Formation : "..w_val)
	    end
	
        init_lightcc(LightCC_Config.Target, LightCC_Config.Formation, Scenario_decl.config_file) 
        print("Init() - wait until the simulation initialization was done [5s]")
        wait(5)
        LightCC_Config.Mode = LightCC_Mode.Init
    end,
    Run = function()
        Light_CC_Run(LightCC_Config.Target, LightCC_Config.Formation) 
        print("Run() - wait until the simulation launch was done [10s]")
        wait(10)
        LightCC_Config.Mode = LightCC_Mode.Run 
    end,
    Stop = function()
        Light_CC_End(LightCC_Config.Target, LightCC_Config.Formation) 
        print("Stop() - wait until the simulation stop was done [5s]")
		
		-- Remove trains by TLPM
		-- ***********************
		SetTrains(false) 
        wait(5)
		print("Leave the simulation")
		
        LightCC_Config.Mode = LightCC_Mode.Stop 
    end
}

-- *********************
--  Scenario Init
-- *********************
function Scenario_init()
    -- Local variables
    -- *******************
    local err = nil
    --local coupling_activated_l = Scenario_decl.model_constants.coupling_activated;--~ OG COUPLING
    LightCC_Config.Description = ""
    LightCC_Config.Trains = {}
    LightCC_Config.Formation = {}
    LightCC_Config.Target = {}
    
    -- Patch for new version of Lib LCC -> version > 20
    -- ***************************************************
    v.light_cc_ats_automatic_activated = 1
    
    -- Loading library for LCC
    -- **********************************
    init_lightcc,err = loadlib(Scenario_decl.library,"Light_CC_Init")
    if(init_lightcc) then
        print("^init() - <"..Scenario_decl.library.."> library loading Ok")
    else
        if(err) then
			print("^init() - <"..Scenario_decl.library.."> library loading Error: "..err)
        else
            print("^init() - <"..Scenario_decl.library.."> library loading Error")
        end
        abort()
    end

    -- Adding trains for LCC Lib
    -- **********************************************
    for w_id = s_first_train_number_id,s_last_train_number_id do 
        -- Update Config
        -- *******************
        LightCC_Config.Trains[w_id] = {}
        --table.insert(LightCC_Config.Formation,w_id)- - With no coupling -> Formation = {}
        table.insert(LightCC_Config.Target,w_id) 
        
        LightCC_Config.Description = LightCC_Config.Description.." :"..w_id
        v["light_cc_supervisor_answer_"..w_id] = 0
    end		
    print("^init() - supervise lightccs -> "..LightCC_Config.Description)
    LightCC_Config.Mode = LightCC_Mode.Stop
end

-- *********************
--  Scenario Run
-- *********************
function Scenario_run()
    -- local coupling_activated_l = Scenario_decl.model_constants.coupling_activated;--~ OG COUPLING
    if (init_trains) then
        -- Insert trains by TLPM
        -- ***********************        
        SetTrains(true)
		
        -- boucle inutile pour l'instant, a voir si evolution pour redémarrer cycle d'insertion ?
        while (true) do
            -- Init
            -- *******
            exec_asynch(LightCC_Function.Init)
            print("Restart the ZC and when ready enter a key to run the lightcc : ") 
            waitOn("user")
      
            -- Run
            -- *******
            print("run initialized lightccs -> "..LightCC_Config.Description)
            exec_asynch(LightCC_Function.Run)
            
            -- Stop
            -- *******
            print("Enter a key to stop and remove all lightcc : ") 
            waitOn("user")        
            print("stop initialized/running lightccs -> "..LightCC_Config.Description)
            exec_asynch(LightCC_Function.Stop)
            terminate()         
        end
    else
        print("Error -> No \"init_trains\" available here. Please fix the scenario")
        abort()
    end
end

-- *********************
--  Scenario End
-- *********************
function Scenario_end()
    print("^end() - stop initialized/running lightccs -> "..LightCC_Config.Description)
    if LightCC_Config.Mode ~= LightCC_Mode.Stop then
        LightCC_Function.Stop()
    else
        print("lightcc_stop_action not needed")
    end
end

-- *********************
--  Scenario Abort
-- *********************
function Scenario_abort()
    print("^abort() - stop initialized/running lightccs -> "..LightCC_Config.Description)
    if LightCC_Config.Mode ~= LightCC_Mode.Stop then
        LightCC_Function.Stop()
    else
        print("lightcc_stop_action not needed")
    end
end
