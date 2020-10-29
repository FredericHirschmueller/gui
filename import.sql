delete from projects_assettype where 1=1;
delete from projects_valuetype where 1=1;


insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('dso','electricity', 'energy_provider', 'source', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,energy_price,feedin_tariff,peak_demand_pricing,peak_demand_pricing_period,renewable_share]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('electricity_excess','electricity', 'energy_consumption', 'sink', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('dso_feedin','electricity', 'energy_consumption', 'sink', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('demand','electricity', 'energy_consumption', 'sink', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,input_timeseries]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('transformer_station_in','electricity', 'energy_conversion', 'transformer', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('transformer_station_out','electricity', 'energy_conversion', 'transformer', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('storage_charge_controller_in','electricity', 'energy_conversion', 'transformer', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('storage_charge_controller_out','electricity', 'energy_conversion', 'transformer', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('solar_inverter','electricity', 'energy_conversion', 'transformer', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('dso_consumption','electricity', 'energy_production', 'source', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,dispatchable,input_timeseries]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('pv_plant','electricity', 'energy_production', 'source', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,input_timeseries]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('wind_plant','electricity', 'energy_production', 'source', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,input_timeseries]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('charging_power','electricity', 'energy_storage', 'storage', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,crate,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('discharging_power','electricity', 'energy_storage', 'storage', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,crate,efficiency]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('capacity','electricity', 'energy_storage', 'storage', '[name,age_installed,installed_capacity,capex_fix,capex_var,opex_fix,opex_var,lifetime,optimize_cap,efficiency,soc_initial,soc_max,soc_min]' );
insert into projects_assettype(asset_type, energy_vector, asset_category, mvs_type, asset_fields) values
('ess','electricity', 'energy_storage', 'storage', '[name, optimize_cap]' );

insert into projects_valuetype( unit, type) values ('year', 'duration' );
insert into projects_valuetype( unit, type) values ('', 'annuity_factor' );
insert into projects_valuetype( unit, type) values ('factor', 'discount' );
insert into projects_valuetype( unit, type) values ('factor', 'tax' );
insert into projects_valuetype( unit, type) values ('', 'crf' );
insert into projects_valuetype( unit, type) values ('factor of total capacity (kWh)', 'crate' );
insert into projects_valuetype( unit, type) values ('year', 'age_installed' );
insert into projects_valuetype( unit, type) values ('None or factor', 'soc_initial' );
insert into projects_valuetype( unit, type) values ('factor', 'soc_max' );
insert into projects_valuetype( unit, type) values ('factor', 'soc_min' );
insert into projects_valuetype( unit, type) values ('currency', 'capex_fix' );
insert into projects_valuetype( unit, type) values ('currency/unit/year', 'opex_var' );
insert into projects_valuetype( unit, type) values ('factor', 'efficiency' );
insert into projects_valuetype( unit, type) values ('unit', 'installed_capacity' );
insert into projects_valuetype( unit, type) values ('year', 'lifetime' );
insert into projects_valuetype( unit, type) values ('kW', 'maximum_capacity' );
insert into projects_valuetype( unit, type) values ('currency/kWh', 'energy_price' );
insert into projects_valuetype( unit, type) values ('currency/kWh', 'feedin_tariff' );
insert into projects_valuetype( unit, type) values ('bool', 'optimize_cap' );
insert into projects_valuetype( unit, type) values ('currency/kW', 'peak_demand_pricing' );
insert into projects_valuetype( unit, type) values ('times per year (1,2,3,4,6,12)', 'peak_demand_pricing_period' );
insert into projects_valuetype( unit, type) values ('factor', 'renewable_share' );
insert into projects_valuetype( unit, type) values ('currency/unit', 'capex_var' );
insert into projects_valuetype( unit, type) values ('currency/year', 'opex_fix' );
insert into projects_valuetype( unit, type) values ('currency/year', 'specific_costs_om' );
insert into projects_valuetype( unit, type) values ('kWh', 'input_timeseries' );