{
  users.users.baptiste = {
    isNormalUser = true;
    description = "baptiste";
    extraGroups = [ "networkmanager" "wheel" ];
    openssh.authorizedKeys.keys = [
	    "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIA5I0KN8fgRcmW8pnEWFnfw2UdZZ0+3UJLzunPDvqKpX baptiste@hardy.sh"    
    ];
  };
}
