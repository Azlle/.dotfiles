# powers.nix
{ config, lib, pkgs, ... }:

{
  services.power-profiles-daemon.enable = false; # asusctl need true

  services.tlp = {
    enable = true;
    settings = {
      CPU_SCALING_GOVERNOR_ON_AC = "schedutil";
      CPU_SCALING_GOVERNOR_ON_BAT = "schedutil";

      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "balance_power";

      CPU_MIN_PERF_ON_AC = 0;
      CPU_MAX_PERF_ON_AC = 100;
      CPU_MIN_PERF_ON_BAT = 0;
      CPU_MAX_PERF_ON_BAT = 70;

      CPU_BOOST_ON_AC = 1;
      CPU_BOOST_ON_BAT = 0;

      RUNTIME_PM_ON_AC = "on";
      RUNTIME_PM_ON_BAT = "on";

      #Optional helps save long term battery health
      START_CHARGE_THRESH_BAT0 = 20; # 40 and below it starts to charge
      STOP_CHARGE_THRESH_BAT0 = 60; # 80 and above it stops charging
    };
  };

  services.asusd = {
    enable = false;
    enableUserService = false;
  };
}
