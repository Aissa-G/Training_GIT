Scenario_decl = {
	name = "LightCC_Frontal2",
    author = "author",
    period = 500,
    phase = 0,
    force_db = false,
	--library = "./simulation/liblightcc2_1.10.1.1a.1e.so",
-- library = "./simulation/liblightcc2_1.10.2.so",
library = "./simulation/liblightcc2_1.5.4.3.so",
   config_file = "./simulation/lightcc_config.xml",
	parameter = {


       ["TRAIN_5.antenna.antenna"] = { alias = "light_cc_antenna_5", },
        ["TRAIN_5.antenna2.antenna2"] = { alias = "light_cc_antenna2_5", },
        ["TRAIN_5.block_abscissa.block_abscissa"] = { alias = "light_cc_block_abscissa_5", },
        ["TRAIN_5.block_id.block_id"] = { alias = "light_cc_block_id_5", },
        ["TRAIN_5.rstrain_acceleration.rstrain_acceleration"] = { alias = "light_cc_train_acceleration_5", },
        ["TRAIN_5.train_cab_orientation.train_cab_orientation"] = { alias = "light_cc_train_cab_orientation_5", },
        ["TRAIN_5.train_direction.train_direction"] = { alias = "light_cc_train_direction_5", },
        ["TRAIN_5.rstrain_movement.rstrain_movement"] = { alias = "light_cc_train_movement_5", },
        ["TRAIN_5.rstrain_speed.rstrain_speed"] = { alias = "light_cc_train_speed_5", },
        ["TRAIN_5.rsemergency_brake.rsemergency_brake"] = { alias = "light_cc_emergency_brake_5", },
        ["TRAIN_5.position_update.position_update"] = { alias = "light_cc_position_update_5", },
        ["TRAIN_5.external_braking_order.external_braking_order"] = { alias = "light_cc_external_braking_order_5", },
        ["TRAIN_5.external_movement_order.external_movement_order"] = { alias = "light_cc_external_movement_order_5", },
        ["TRAIN_5.external_verbosity.external_verbosity"] = { alias = "light_cc_external_verbosity_5", },
        ["TRAIN_5.train_load.train_load"] = { alias = "light_cc_train_load_5", },
        ["TRAIN_5.ato_start_reset.ato_start_reset"] = { alias = "light_cc_ato_start_reset_5", },
        ["TRAIN_5.ato_start_trigger.ato_start_trigger"] = { alias = "light_cc_ato_start_trigger_5", },
        ["TRAIN_5.cbtc_mode.cbtc_mode"] = { alias = "light_cc_cbtc_mode_5", },
        ["TRAIN_5.change_of_ends_order.change_of_ends_order"] = { alias = "light_cc_change_of_ends_order_5", },
        ["TRAIN_5.dwell_delay_countdown.dwell_delay_countdown"] = { alias = "light_cc_dwell_delay_countdown_5", },
        ["TRAIN_5.without_driver.without_driver"] = { alias = "light_cc_without_driver_5", },
        ["TRAIN_5.supervisor_answer.supervisor_answer"] = { alias = "light_cc_supervisor_answer_5", },
        ["TRAIN_5.supervisor_command.supervisor_command"] = { alias = "light_cc_supervisor_command_5", },
        ["TRAIN_5.supervisor_enable.supervisor_enable"] = { alias = "light_cc_supervisor_enable_5", },
-- ajout 2 ICD SACEM : ICD inutilises reaffectes pour besoin SACEM --- debut
        ["TRAIN_5.nbsbeaconCpt.nbsbeaconCpt"] = { alias = "light_cc_external_train_hold_5", },
        ["TRAIN_5.nbsbeaconId.nbsbeaconId"] = { alias = "light_cc_external_train_psr_rate_5", },
-- ajout 2 ICD SACEM : ICD inutilises reaffectes pour besoin SACEM --- fin
        ["TRAIN_5.nbsbeaconStart.nbsbeaconStart"] = { alias = "light_cc_stop_communication_5", },

        ["TRAIN_5.nbsbeaconNth.nbsbeaconNth"] = { alias = "light_cc_cbtc_started_5", },
        ["TRAIN_5.rsgradiantAcceleration.rsgradiantAcceleration"] = { alias = "light_cc_gradient_acceleration_5", },
        ["TRAIN_5.nbsbeaconDistance.nbsbeaconDistance"] = { alias = "light_cc_delay_for_lc_msg_5", },

--~   ["TRAIN_6.antenna.antenna"] = { alias = "light_cc_antenna_6", },
--~         ["TRAIN_6.antenna2.antenna2"] = { alias = "light_cc_antenna2_6", },
--~         ["TRAIN_6.block_abscissa.block_abscissa"] = { alias = "light_cc_block_abscissa_6", },
--~         ["TRAIN_6.block_id.block_id"] = { alias = "light_cc_block_id_6", },
--~         ["TRAIN_6.rstrain_acceleration.rstrain_acceleration"] = { alias = "light_cc_train_acceleration_6", },
--~         ["TRAIN_6.train_cab_orientation.train_cab_orientation"] = { alias = "light_cc_train_cab_orientation_6", },
--~         ["TRAIN_6.train_direction.train_direction"] = { alias = "light_cc_train_direction_6", },
--~         ["TRAIN_6.rstrain_movement.rstrain_movement"] = { alias = "light_cc_train_movement_6", },
--~         ["TRAIN_6.rstrain_speed.rstrain_speed"] = { alias = "light_cc_train_speed_6", },
--~         ["TRAIN_6.rsemergency_brake.rsemergency_brake"] = { alias = "light_cc_emergency_brake_6", },
--~         ["TRAIN_6.position_update.position_update"] = { alias = "light_cc_position_update_6", },
--~         ["TRAIN_6.external_braking_order.external_braking_order"] = { alias = "light_cc_external_braking_order_6", },
--~         ["TRAIN_6.external_movement_order.external_movement_order"] = { alias = "light_cc_external_movement_order_6", },
--~         ["TRAIN_6.external_verbosity.external_verbosity"] = { alias = "light_cc_external_verbosity_6", },
--~         ["TRAIN_6.train_load.train_load"] = { alias = "light_cc_train_load_6", },
--~         ["TRAIN_6.ato_start_reset.ato_start_reset"] = { alias = "light_cc_ato_start_reset_6", },
--~         ["TRAIN_6.ato_start_trigger.ato_start_trigger"] = { alias = "light_cc_ato_start_trigger_6", },
--~         ["TRAIN_6.cbtc_mode.cbtc_mode"] = { alias = "light_cc_cbtc_mode_6", },
--~         ["TRAIN_6.change_of_ends_order.change_of_ends_order"] = { alias = "light_cc_change_of_ends_order_6", },
--~         ["TRAIN_6.dwell_delay_countdown.dwell_delay_countdown"] = { alias = "light_cc_dwell_delay_countdown_6", },
--~         ["TRAIN_6.without_driver.without_driver"] = { alias = "light_cc_without_driver_6", },
--~         ["TRAIN_6.supervisor_answer.supervisor_answer"] = { alias = "light_cc_supervisor_answer_6", },
--~         ["TRAIN_6.supervisor_command.supervisor_command"] = { alias = "light_cc_supervisor_command_6", },
--~         ["TRAIN_6.supervisor_enable.supervisor_enable"] = { alias = "light_cc_supervisor_enable_6", },
--~ -- ajout 2 ICD SACEM : ICD inutilises reaffectes pour besoin SACEM --- debut
--~         ["TRAIN_6.nbsbeaconCpt.nbsbeaconCpt"] = { alias = "light_cc_external_train_hold_6", },
--~         ["TRAIN_6.nbsbeaconId.nbsbeaconId"] = { alias = "light_cc_external_train_psr_rate_6", },
--~ -- ajout 2 ICD SACEM : ICD inutilises reaffectes pour besoin SACEM --- fin
--~         ["TRAIN_6.nbsbeaconStart.nbsbeaconStart"] = { alias = "light_cc_stop_communication_6", },

--~         ["TRAIN_6.nbsbeaconNth.nbsbeaconNth"] = { alias = "light_cc_cbtc_started_6", },
--~         ["TRAIN_6.rsgradiantAcceleration.rsgradiantAcceleration"] = { alias = "light_cc_gradient_acceleration_6", },
--~         ["TRAIN_6.nbsbeaconDistance.nbsbeaconDistance"] = { alias = "light_cc_delay_for_lc_msg_6", },



        
      ["VAR6.VARIn6.VARIn6"] = { alias = "user", },
      ["VAR6.VARIn7.VARIn7"] = { alias = "light_cc_ats_automatic_activated", },
       
	},
 
    model_constants = {
		project_name="RIYADH",
		baseline = "2.12",			
		coupling_activated = "yes", --~ OG COUPLING
      train_driving = "USUAL_TRAIN_DRIVING" -- USUAL_TRAIN_DRIVING or LIGHT_TRAIN_DRIVING
	},

    message = {



["CC_5.ATS_HNL3.HILC_2_safety_related_hour__CC_ATS"] =  { alias = "light_cc_HILC_2_safety_related_hour_1_5", sending = 1, },
        ["CC_5.ATS_HNL3.CC_Status_Report__CC_ATS"] =  { alias = "light_cc_cc_status_report_1_5", sending = 1, },
      ["CC_5.ATS_HNL3.Rolling_Stock_Status_Report__CC_ATS"] =  { alias = "light_cc_rolling_stock_status_report_1_5", sending = 1, },
        ["CC_5.ATS_HNL3.HILC_2_request_return_code__CC_ATS"] =  { alias = "light_cc_HILC_2_request_return_code_1_5", sending = 1, },
        ["CC_5.ATS_HNL3.HILC_1_request_return_code__CC_ATS"] =  { alias = "light_cc_HILC_1_request_return_code_1_5", sending = 1, },
        ["CC_5.ATS_HNL3.HILC_1_safety_related_hour__CC_ATS"] =  { alias = "light_cc_HILC_1_safety_related_hour_1_5", sending = 1, },

        ["CC_5.LC_1.CC_To_LC_Message__CC_LC"] =  { alias = "light_cc_cc_to_lc_message_1_5", sending = 1, },

        ["CC_5.ZC_1.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_1_5", sending = 1, },
     --   ["CC_5.ZC_2.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_2_5", sending = 1, },
       -- ["CC_5.ZC_3.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_3_5", sending = 1, },

        ["LC_1.CC_5.LC_To_CC_Message__LC_CC"] =  { alias = "light_cc_lc_to_cc_message_1_5", sending = 0, },

        ["ATS_HNL3.CC_5.CC_Reset_Request__ATS_CC"] =  { alias = "light_cc_cc_reset_request_1_5", sending = 0, },
        ["ATS_HNL3.CC_5.HILC_1_modification_request__ATS_CC"] =  { alias = "light_cc_HILC_1_modification_request_1_5", sending = 0, },
        ["ATS_HNL3.CC_5.Train_Status_Request__ATS_CC"] =  { alias = "light_cc_train_status_request_1_5", sending = 0, },
        ["ATS_HNL3.CC_5.HILC_1_request_confirmation__ATS_CC"] =  { alias = "light_cc_HILC_1_request_confirmation_1_5", sending = 0, },
        ["ATS_HNL3.CC_5.HILC_2_modification_request__ATS_CC"] =  { alias = "light_cc_HILC_2_modification_request_1_5", sending = 0, },
       ["ATS_HNL3.CC_5.CC_Setting_Request__ATS_CC"] =  { alias = "light_cc_cc_setting_request_1_5", sending = 0, },
       ["ATS_HNL3.CC_5.Rolling_Stock_Setting_Request__ATS_CC"] =  { alias = "light_cc_rolling_stock_setting_request_1_5", sending = 0, },
        ["ATS_HNL3.CC_5.HILC_2_request_confirmation__ATS_CC"] =  { alias = "light_cc_HILC_2_request_confirmation_1_5", sending = 0, },

        ["ZC_1.CC_5.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_1_5", sending = 0, },
      --  ["ZC_2.CC_5.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_2_5", sending = 0, },
	--	  ["ZC_3.CC_5.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_3_5", sending = 0, },


--~ ["CC_6.ATS_01.HILC_2_safety_related_hour__CC_ATS"] =  { alias = "light_cc_HILC_2_safety_related_hour_6", sending = 1, },
--~         ["CC_6.ATS_01.CC_Status_Report__CC_ATS"] =  { alias = "light_cc_cc_status_report_6", sending = 1, },
--~       ["CC_6.ATS_01.Rolling_Stock_Status_Report__CC_ATS"] =  { alias = "light_cc_rolling_stock_status_report_6", sending = 1, },
--~         ["CC_6.ATS_01.HILC_2_request_return_code__CC_ATS"] =  { alias = "light_cc_HILC_2_request_return_code_6", sending = 1, },
--~         ["CC_6.ATS_01.HILC_1_request_return_code__CC_ATS"] =  { alias = "light_cc_HILC_1_request_return_code_6", sending = 1, },
--~         ["CC_6.ATS_01.HILC_1_safety_related_hour__CC_ATS"] =  { alias = "light_cc_HILC_1_safety_related_hour_6", sending = 1, },

--~         ["CC_6.LC_1.CC_To_LC_Message__CC_LC"] =  { alias = "light_cc_cc_to_lc_message_6", sending = 1, },

--~         ["CC_6.ZC_1.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_1_6", sending = 1, },
--~         ["CC_6.ZC_2.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_2_6", sending = 1, },
--~         ["CC_6.ZC_3.Location_Report__CC_ZC"] =  { alias = "light_cc_location_report_3_6", sending = 1, },

--~         ["LC_1.CC_6.LC_To_CC_Message__LC_CC"] =  { alias = "light_cc_lc_to_cc_message_6", sending = 0, },

--~         ["ATS_01.CC_6.CC_Reset_Request__ATS_CC"] =  { alias = "light_cc_cc_reset_request_6", sending = 0, },
--~         ["ATS_01.CC_6.HILC_1_modification_request__ATS_CC"] =  { alias = "light_cc_HILC_1_modification_request_6", sending = 0, },
--~         ["ATS_01.CC_6.Train_Status_Request__ATS_CC"] =  { alias = "light_cc_train_status_request_6", sending = 0, },
--~         ["ATS_01.CC_6.HILC_1_request_confirmation__ATS_CC"] =  { alias = "light_cc_HILC_1_request_confirmation_6", sending = 0, },
--~         ["ATS_01.CC_6.HILC_2_modification_request__ATS_CC"] =  { alias = "light_cc_HILC_2_modification_request_6", sending = 0, },
--~         ["ATS_01.CC_6.CC_Setting_Request__ATS_CC"] =  { alias = "light_cc_cc_setting_request_6", sending = 0, },
--~         ["ATS_01.CC_6.Rolling_Stock_Setting_Request__ATS_CC"] =  { alias = "light_cc_rolling_stock_setting_request_6", sending = 0, },
--~         ["ATS_01.CC_6.HILC_2_request_confirmation__ATS_CC"] =  { alias = "light_cc_HILC_2_request_confirmation_6", sending = 0, },

--~         ["ZC_1.CC_6.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_1_6", sending = 0, },
--~         ["ZC_2.CC_6.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_2_6", sending = 0, },
--~ 		  ["ZC_3.CC_6.EOA_and_Variants_and_Train_Situation_Report__ZC_CC"] =  { alias = "light_cc_eoa_and_variants_and_train_situation_report_3_6", sending = 0, },



   },
}


  
--~ } 

--~ PROCEDURE UNSTABLING
init_trains = {
[5] = {train_formation_id = 1, train_formation = { [1] = {id = 5}}, 
                  block=160 ,abs=1000,dir=1,orient=1,cbtc=1,wdriver=0,EB=1,  delay_for_lc_msg = -100 }, 
--~ [6] = {train_formation_id = 1, train_formation = { [1] = {id = 6}}, 
--~                   block=71 ,abs=5825,dir=1,orient=0,cbtc=1,wdriver=0,EB=1,  delay_for_lc_msg = -100 }, 

   
} 

function insertion_train(id)
    print("Manage lightcc :"..id.." on the track");

    local block_id        = init_trains[id].block;
    local block_abscissa  = init_trains[id].abs;
    local cab_orientation = init_trains[id].orient;
    local train_direction = init_trains[id].dir;
    local delay_for_lc_msg = init_trains[id].delay_for_lc_msg;
    
    v["light_cc_block_id_"..id] = block_id;
    v["light_cc_block_abscissa_"..id] = block_abscissa;
    v["light_cc_train_cab_orientation_"..id] = cab_orientation;
    v["light_cc_train_direction_"..id] = train_direction;
    v["light_cc_delay_for_lc_msg_"..id] = delay_for_lc_msg;
    
    print("   block_id:"..block_id..",block_abscissa:"..block_abscissa..",cab_orientation:"..cab_orientation..",train_direction:"..train_direction);
    print("   delay_for_lc_msg:"..delay_for_lc_msg);
    
--~     wait(1);
    
    v["light_cc_position_update_"..id] = 1;
    wait(3);
    unforce("light_cc_block_id_"..id);
    unforce("light_cc_block_abscissa_"..id);
    unforce("light_cc_train_cab_orientation_"..id);
    unforce("light_cc_train_direction_"..id);
    unforce("light_cc_position_update_"..id);
    unforce("light_cc_delay_for_lc_msg_"..id);
--~     wait(1);

    print("Set basic configuration for lightcc :"..id);
    local cbtc_mode      = init_trains[id].cbtc;
    local without_driver = init_trains[id].wdriver;
    local eb             = init_trains[id].EB;
    v["light_cc_cbtc_mode_"..id]              = cbtc_mode;
    v["light_cc_without_driver_"..id]         = without_driver;
    v["light_cc_external_braking_order_"..id] = eb;    
    print("   cbtc_mode:"..cbtc_mode..",without_driver:"..without_driver..",EB:"..eb);
    unforce("light_cc_external_braking_order_"..id);
end

function insertion_train_unit_active(id, train_unit_active_id)
    print("Manage lightcc :"..id.." on the track");

    local block_id        = init_trains[id].block;
    local block_abscissa  = init_trains[id].abs;
    local cab_orientation = init_trains[id].orient;
    local train_direction = init_trains[id].dir;
    local delay_for_lc_msg = init_trains[id].delay_for_lc_msg;
    
    v["light_cc_block_id_"..train_unit_active_id] = block_id;
    v["light_cc_block_abscissa_"..train_unit_active_id] = block_abscissa;
    v["light_cc_train_cab_orientation_"..train_unit_active_id] = cab_orientation;
    v["light_cc_train_direction_"..train_unit_active_id] = train_direction;
    v["light_cc_delay_for_lc_msg_"..train_unit_active_id] = delay_for_lc_msg;
    
    print("   block_id:"..block_id..",block_abscissa:"..block_abscissa..",cab_orientation:"..cab_orientation..",train_direction:"..train_direction);
    print("   delay_for_lc_msg:"..delay_for_lc_msg);
    
--~     wait(1);
    
    v["light_cc_position_update_"..train_unit_active_id] = 1;
    wait(3);
    unforce("light_cc_block_id_"..train_unit_active_id);
    unforce("light_cc_block_abscissa_"..train_unit_active_id);
    unforce("light_cc_train_cab_orientation_"..train_unit_active_id);
    unforce("light_cc_train_direction_"..train_unit_active_id);
    unforce("light_cc_position_update_"..train_unit_active_id);
    unforce("light_cc_delay_for_lc_msg_"..train_unit_active_id);
--~     wait(1);

    print("Set basic configuration for lightcc :"..train_unit_active_id);
    local cbtc_mode      = init_trains[id].cbtc;
    local without_driver = init_trains[id].wdriver;
    local eb             = init_trains[id].EB;
    v["light_cc_cbtc_mode_"..train_unit_active_id]              = cbtc_mode;
    v["light_cc_without_driver_"..train_unit_active_id]         = without_driver;
    v["light_cc_external_braking_order_"..train_unit_active_id] = eb;    
    print("   cbtc_mode:"..cbtc_mode..",without_driver:"..without_driver..",EB:"..eb);
    unforce("light_cc_external_braking_order_"..train_unit_active_id);

end

function delete_train(id)
    print("Delete lightcc :"..id);
    v["light_cc_block_id_"..id] = 0
    v["light_cc_block_abscissa_"..id] = 0
    v["light_cc_train_cab_orientation_"..id] = 0
    v["light_cc_train_direction_"..id] = 0
    v["light_cc_delay_for_lc_msg_"..id] = 0
    wait(1);
    v["light_cc_position_update_"..id] = 1;
    wait(3);
    unforce("light_cc_block_id_"..id);
    unforce("light_cc_block_abscissa_"..id);
    unforce("light_cc_train_cab_orientation_"..id);
    unforce("light_cc_train_direction_"..id);
    unforce("light_cc_position_update_"..id);
    unforce("light_cc_delay_for_lc_msg_"..id);
    wait(1);
    v["light_cc_cbtc_mode_"..id] = 0;
    v["light_cc_without_driver_"..id] = 0;
    v["light_cc_external_braking_order_"..id] = 0;   
end

function unforce_parameter(id)
    unforce("light_cc_block_id_"..id);
    unforce("light_cc_block_abscissa_"..id);
    unforce("light_cc_position_update_"..id);
end

function waitOn(alias)
   local  on = v[alias];
   while(v[alias] == on) do
      wait(1);
   end
end

-- TSL -f-

-- Light_CC_Init() from the lightcc library.
init_lightcc = nil;

-- identified trains { [<number(id)>] = { enable = <boolean>, last = <number(lastreadcommand)>, }, }.
trains = {};

-- current ligthcc target, trains ids <array>.
lightcc_target = {};
lightcc_formation = {}; --~ OG COUPLING

-- train formation in case of coupling activated --~ OG COUPLING
train_formation = {}; --~ OG COUPLING

-- current lightcc_target content (trains ids) description string.
lightcc_description = "";

-- current lightccs mode (stopped:1,initialized:2,running:3).
lightcc_mode = 1;

function lightcc_init_action()
	for k,m in pairs(lightcc_formation) do
		print("formation : "..lightcc_formation[k]);
	end

	init_lightcc(lightcc_target,lightcc_formation, Scenario_decl.config_file);--~ OG COUPLING
    print("^lightcc_init_action() - wait until the simulation initialization was done [5s]");
	wait(5);
end

function lightcc_run_action()
	Light_CC_Run(lightcc_target, lightcc_formation);--~ OG COUPLING
    print("^lightcc_run_action() - wait until the simulation launch was done [10s]");
    wait(10);
end

function lightcc_stop_action()
    Light_CC_End(lightcc_target, lightcc_formation);--~ OG COUPLING
    print("^lightcc_stop_action() - wait until the simulation stop was done [5s]");
    wait(5);
end

function Scenario_init()
    local err = nil;
	v.light_cc_ats_automatic_activated = 1; -- DEBUG: ATS AUTOMATIC SET TO 1!

    init_lightcc,err = loadlib(Scenario_decl.library,"Light_CC_Init");
    if(init_lightcc) then
        print("^init() - <"..Scenario_decl.library.."> library loading Ok");
    else
        if(err) then
			print("^init() - <"..Scenario_decl.library.."> library loading Error: "..err);
        else
            print("^init() - <"..Scenario_decl.library.."> library loading Error");
        end
        abort();
    end
    local i = 1;
    local ids = {};

    local coupling_activated_l = Scenario_decl.model_constants.coupling_activated;--~ OG COUPLING
	
    if (coupling_activated_l == "no") then --~ OG COUPLING
        for k,m in pairs(Scenario_decl.parameter) do
            if(m.alias) then
                local find,_,sid,nid;
                find,_,sid = string.find(m.alias,"^light_cc_[_%-%w]+_(%d+)$");
                nid = tonumber(sid);
                if(find and not trains[nid]) then
                    trains[nid] = {};
                    ids[i] = nid;
                    i = i + 1;
                end
            end
        end		
	else--~ OG COUPLING
		for k,m in pairs(init_trains) do--~ OG COUPLING
			local train_unit_active_id = init_trains[k].train_formation[1].id;--~ OG COUPLING
			local train_formation_id = init_trains[k].train_formation_id;--~ OG COUPLING
			if(not trains[train_unit_active_id]) then--~ OG COUPLING
				trains[train_unit_active_id] = {};--~ OG COUPLING
				ids[i] = train_unit_active_id;--~ OG COUPLING
				i = i + 1;--~ OG COUPLING
				print("=> train_unit_active_id "..train_unit_active_id)
			end--~ OG COUPLING
		end --~ OG COUPLING
    end--~ OG COUPLING

    table.sort(ids);
    local description = "";
    for k,m in ipairs(ids) do
        description = description.." :"..m;
        v["light_cc_supervisor_answer_"..m] = 0;
    end
    print("^init() - supervise lightccs"..description);
end

function Scenario_run()
    -- boucle inutile pour l'instant, a voir si evolution pour red魡rrer cycle d'insertion ?
        while (true) do

                      -- si la table init_trains{} est definie
         
             local coupling_activated_l = Scenario_decl.model_constants.coupling_activated;--~ OG COUPLING
            
             if (init_trains) then
                 -- insertion de tous les trains via le TLPM
                 local iTarget = 1;
               local jFormation = 1;
                 lightcc_description = "";
                 lightcc_target = {};
               lightcc_formation = {};--~ OG COUPLING
         
                 if (coupling_activated_l == "no") then --~ OG COUPLING 
                     for k,m in pairs(init_trains) do
                     -- controle que train est aussi defini (via des ICD) ds la zone parameters du scenario
                         if (trains[k]) then
                        lightcc_description = lightcc_description.." :"..k;
                        -- maj de la table passee en argument au model lightCC
                        lightcc_target[iTarget] = k;
                        -- insertion effective
                        insertion_train(k)
                        iTarget = iTarget + 1;
                        wait(2)
                     end
                     end			
                   wait(5)       
               else--~ OG COUPLING		
                    for k,m in pairs(init_trains) do--~ OG COUPLING
                     
                     for kTrainFormation,mTrainFormation in pairs(init_trains[k].train_formation) do--~ OG COUPLING
                        lightcc_formation[jFormation] = init_trains[k].train_formation[kTrainFormation].id--~ OG COUPLING
                        unforce_parameter(init_trains[k].train_formation[kTrainFormation].id) --~ OG COUPLING
                        jFormation = jFormation + 1 --~ OG COUPLING
                     end--~ OG COUPLING
                     lightcc_formation[jFormation] = 0;--~ OG COUPLING
                     jFormation = jFormation + 1 --~ OG COUPLING
                     
                     -- controle que train est aussi defini (via des ICD) ds la zone parameters du scenario--~ OG COUPLING
                     if (init_trains[k].train_formation[1].id and trains[init_trains[k].train_formation[1].id]) then--~ OG COUPLING
                        local train_unit_active_id = init_trains[k].train_formation[1].id;--~ OG COUPLING
                        lightcc_description = lightcc_description.." :"..train_unit_active_id;--~ OG COUPLING
                        -- maj de la table passee en argument au model lightCC--~ OG COUPLING
                        lightcc_target[iTarget] = train_unit_active_id;--~ OG COUPLING
            
                        -- insertion effective--~ OG COUPLING
                        insertion_train_unit_active(k, train_unit_active_id);--~ OG COUPLING
                        iTarget = iTarget + 1;--~ OG COUPLING
                             wait(2)--~ OG COUPLING
                     end--~ OG COUPLING
                  end--~ OG COUPLING			
               end--~ OG COUPLING
         
                 lightcc_mode = 1; -- stopped
		

            print("initialize lightccs"..lightcc_description);
            exec_asynch(lightcc_init_action);
            lightcc_mode = 2; -- init
            print ("lightcc mode:",lightcc_mode);

            print("Restart the ZC and when ready enter a key to run the lightcc :");   
            waitOn("user");
      
            print("run initialized lightccs"..lightcc_description);
            exec_asynch(lightcc_run_action);
            lightcc_mode = 3; -- run 

            print("Enter a key to stop and remove all lightcc :");    
            waitOn("user");
                      
            print("stop initialized/running lightccs"..lightcc_description);
            exec_asynch(lightcc_stop_action);
            -- lightcc_stop_action();
            lightcc_mode = 1; -- stop

            -- remove trains in TLPM
			if (coupling_activated_l == "no") then --~ OG COUPLING 
				for k,m in pairs(init_trains) do
					if (trains[k]) then
						delete_train(k)
						wait(2)
					end
				end   
	            wait(2)
			else--~ OG COUPLING
				for k,m in pairs(init_trains) do--~ OG COUPLING
               for kTrainFormation,mTrainFormation in pairs(init_trains[k].train_formation) do--~ OG COUPLING
                  delete_train(init_trains[k].train_formation[kTrainFormation].id)
                  jFormation = jFormation + 1 --~ OG COUPLING
               end--~ OG COUPLING
				end--~ OG COUPLING
	            wait(2)--~ OG COUPLING
			end--~ OG COUPLING
			print("Enter a key restart LCC sequence :");    
            waitOn("user");
            -- print("Leave the simulation")
            -- terminate()         
        end
		print("****************out of while********************************"); 
    end
      
    -- current lightccs command (no:-1,stop:1,initialize:2,run:3).
    local lightcc_command = -1;
	
	if (coupling_activated_l == "no") then --~ OG COUPLING 
		for k,m in pairs(trains) do
			local answer_alias = "light_cc_supervisor_answer_"..k;
			local enable = v["light_cc_supervisor_enable_"..k];
			if(enable == 1) then
				local command = v["light_cc_supervisor_command_"..k];
				if(not m.enable) then
					m.enable = true;
					m.last = command;
					v[answer_alias] = lightcc_mode;
				else
					if(command ~= m.last) then
						m.last = command;
						if(lightcc_mode == 1) then
							-- is stopped.
							if(command == 2) then
								-- to initialize.
								lightcc_command = 2;
								break;
							end
						elseif(lightcc_mode == 2) then
							-- is initialized.
							if(command == 3) then
								-- to run.
								lightcc_command = 3;
								break;
							elseif(command == 1) then
								-- to stop.
								lightcc_command = 1;
								break;
							end
						elseif(lightcc_mode == 3) then
							-- is running.
							if(command == 1) then
								-- to stop.
								lightcc_command = 1;
								break;
							end
						end
					end
				end
			else
				if((m.enable == nil) or m.enable) then
					m.enable = false;
					v[answer_alias] = -lightcc_mode;
				end
			end
		end
	else--~ OG COUPLING
		for k,m in pairs(trains) do--~ OG COUPLING
			local train_unit_active_id = 0;--~ OG COUPLING
			
			if (init_trains[k].train_formation[1].id and trains[init_trains[k].train_formation[1].id]) then--~ OG COUPLING
				train_unit_active_id = init_trains[k].train_formation[1].id--~ OG COUPLING
			end--~ OG COUPLING
			
			local answer_alias = "light_cc_supervisor_answer_"..train_unit_active_id;--~ OG COUPLING
			local enable = v["light_cc_supervisor_enable_"..train_unit_active_id];--~ OG COUPLING
			if(enable == 1) then--~ OG COUPLING
				local command = v["light_cc_supervisor_command_"..train_unit_active_id];--~ OG COUPLING
				if(not m.enable) then--~ OG COUPLING
					m.enable = true;--~ OG COUPLING
					m.last = command;--~ OG COUPLING
					v[answer_alias] = lightcc_mode;--~ OG COUPLING
				else--~ OG COUPLING
					if(command ~= m.last) then--~ OG COUPLING
						m.last = command;--~ OG COUPLING
						if(lightcc_mode == 1) then--~ OG COUPLING
							-- is stopped.--~ OG COUPLING
							if(command == 2) then--~ OG COUPLING
								-- to initialize.--~ OG COUPLING
								lightcc_command = 2;--~ OG COUPLING
								break;--~ OG COUPLING
							end--~ OG COUPLING
						elseif(lightcc_mode == 2) then--~ OG COUPLING
							-- is initialized.--~ OG COUPLING
							if(command == 3) then--~ OG COUPLING
								-- to run.--~ OG COUPLING
								lightcc_command = 3;--~ OG COUPLING
								break;--~ OG COUPLING
							elseif(command == 1) then--~ OG COUPLING
								-- to stop.--~ OG COUPLING
								lightcc_command = 1;--~ OG COUPLING
								break;--~ OG COUPLING
							end--~ OG COUPLING
						elseif(lightcc_mode == 3) then--~ OG COUPLING
							-- is running.--~ OG COUPLING
							if(command == 1) then--~ OG COUPLING
								-- to stop.--~ OG COUPLING
								lightcc_command = 1;--~ OG COUPLING
								break;--~ OG COUPLING
							end--~ OG COUPLING
						end--~ OG COUPLING
					end--~ OG COUPLING
				end--~ OG COUPLING
			else--~ OG COUPLING
				if((m.enable == nil) or m.enable) then--~ OG COUPLING
					m.enable = false;--~ OG COUPLING
					v[answer_alias] = -lightcc_mode;--~ OG COUPLING
				end--~ OG COUPLING
			end--~ OG COUPLING
		end--~ OG COUPLING
	end--~ OG COUPLING
	
	if(lightcc_command > 0) then
        if(lightcc_command == 1) then
            -- to stop.
            print("^run() - stop initialized/running lightccs"..lightcc_description);
            exec_asynch(lightcc_stop_action);
            lightcc_mode = 1;
        elseif(lightcc_command == 2) then
            -- to initialize.
            lightcc_target = {};
			lightcc_formation = {};  --~ OG COUPLING
            lightcc_description = "";
            local iTarget = 1;
            local jFormation = 1;--~ OG COUPLING
            local ids = {};
			
			if (coupling_activated_l == "no") then --~ OG COUPLING 
				for k,m in pairs(trains) do
					if(m.enable) then
						lightcc_target[iTarget] = k;
						ids[iTarget] = k;
						iTarget = iTarget + 1;
					end
				end
			else --~ OG COUPLING 
				for k,m in pairs(trains) do --~ OG COUPLING 
					if(m.enable) then --~ OG COUPLING
						
						for kTrainFormation,mTrainFormation in pairs(init_trains[k].train_formation) do--~ OG COUPLING
							lightcc_formation[jFormation] = init_trains[k].train_formation[kTrainFormation].id--~ OG COUPLING
                     unforce_parameter(init_trains[k].train_formation[kTrainFormation].id) --~ OG COUPLING
							jFormation = jFormation + 1 --~ OG COUPLING
						end--~ OG COUPLING
						lightcc_formation[jFormation] = 0;--~ OG COUPLING
						jFormation = jFormation + 1 --~ OG COUPLING
						 
						local train_unit_active_id = 0;
						if (init_trains[k].train_formation[1].id and trains[init_trains[k].train_formation[1].id]) then--~ OG COUPLING
							train_unit_active_id = init_trains[k].train_formation[1].id--~ OG COUPLING
						end--~ OG COUPLING

						lightcc_target[iTarget] = train_unit_active_id; --~ OG COUPLING 
						ids[iTarget] = train_unit_active_id; --~ OG COUPLING 
						iTarget = iTarget + 1; --~ OG COUPLING 
					end --~ OG COUPLING 
				end--~ OG COUPLING 
			end --~ OG COUPLING 
			
            table.sort(ids);
			
            for k,m in ipairs(ids) do
                lightcc_description = lightcc_description.." :"..m;
            end
			
            print("^run() - initialize lightccs"..lightcc_description);
			
            exec_asynch(lightcc_init_action);
            lightcc_mode = 2;
        elseif(lightcc_command == 3) then
            -- to run.
            print("^run() - run initialized lightccs"..lightcc_description);
            exec_asynch(lightcc_run_action);
            lightcc_mode = 3;
        end
        for k,m in pairs(lightcc_target) do
            local answer_alias = "light_cc_supervisor_answer_"..m;
            if(trains[m] and trains[m].enable) then
                v[answer_alias] = lightcc_mode;
            else
                v[answer_alias] = -lightcc_mode;
            end
        end
    end
end
function Scenario_end()
    print("^end() - stop initialized/running lightccs"..lightcc_description);
    if ((lightcc_mode == 2) or (lightcc_mode == 3) ) then
        lightcc_stop_action();
    else
         print("lightcc_stop_action not needed")
    end
end

function Scenario_abort()
    print("^abort() - stop initialized/running lightccs"..lightcc_description);
    if ((lightcc_mode == 2) or (lightcc_mode == 3) ) then
        lightcc_stop_action();
    else
         print("lightcc_stop_action not needed")
    end
end
