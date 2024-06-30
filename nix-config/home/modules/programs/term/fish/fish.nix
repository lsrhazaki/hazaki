{ config, pkgs, ... }:

{
	home.packages = with pkgs; [
		fish
	];

programs.fish = {
  
	enable = true;
        interactiveShellInit = ''
        set fish_greeting # Disable greeting
        '';
        shellInit = '' fastfetch '';       
	shellAliases = {
		".." = "cd ..";
		"..." = "cd ../..";
		"...." = "cd ../../../";
		"....." = "cd ../../../../";
		
                "c" = "clear";
                "f" = "fastfetch";

                "dls" = "cd ~/Downloads/";
		"dot" = "cd ~/.dotfiles";
                "dcs" = "cd ~/Documents/";
                "local" = "cd ~/.local";
                "music" = "cd ~/Music";
                "conf" = "cd ~/.config/";
                "nixconf" = "cd ~/nixconf";
     
		"cp" = "cp -v";
		"ddf" = "df -h";
		"etc" = "erd -H";
		"mkdir" = "mkdir -p";
		"mv" = "mv -v";
		"rm" = "rm -v";
		"rr" = "rm -rf";

		"ld" = "eza -ld */ --no-quotes --time-style long-iso";
		"lla" = "eza -lah --no-quotes --time-style long-iso";
		"ll" = "eza -lh --no-quotes --time-style long-iso";
		"llr" = "eza -lhr --no-quotes --time-style long-iso";
		"lls" = "eza -lh -s size --no-quotes --time-style long-iso";
		"llt" = "eza -lh -s time --no-quotes --time-style long-iso";
		"lltr" = "eza -lhr -s time --no-quotes --time-style long-iso";


		"p" = "feh -Z pics/";
		"v" = "mpv vids/";
		"avi" = "mpv *.avi";
		"jpeg" = "feh -Z *.jpeg";
		"jpg" = "feh -Z *.jpg";
		"mkv" = "mpv *.mkv";
		"mov" = "mpv *.mov";
		"mp3" = "mpv *.mp3";
		"mp4" = "vlc *.mp4";
		"png" = "feh -Z *.png";
		"webm" = "mpv *.webm";
		
	};
	
	shellAbbrs = {
		# cargo abbreviations
		cb = "cargo build";
		cc = "cargo check";
		cdo = "cargo doc --open";
		cr = "cargo run";

		# git abbreviations
		gaa  = "git add -A";
		ga   = "git add";
		gbd  = "git branch --delete";
		gb   = "git branch";
		gc   = "git commit";
		gcm  = "git commit -m";
		gcob = "git checkout -b";
		gco  = "git checkout";
		gce  = "git glone";
		gcl  = "git clone git@github.com:lsrhazaki/";
		gd   = "git diff";
		gl   = "git log";
		gp   = "git push";
		gpom = "git push origin main";
		gs   = "git status";
		gst  = "git stash";
		gstp =  "git stash pop";

		# nix abbreviations
		ncg = "nix-collect-garbage";
		ncgd = "nix-collect-garbage -d";

		hmsf = "home-manager switch --flake .#hazaki@nixsaiga";

		snrf = "sudo nixos-rebuild switch --flake .#nixsaiga";
	};

	functions = {

		extract = '' 
		function extract
	    switch $argv[1]
	        case "*.tar.bz2"
	            tar xjf $argv[1]

	        case "*.tar.gz"
	            tar xzf $argv[1]

	        case "*.bz2"
	            bunzip2 $argv[1]

	        case "*.rar"
	            unrar e $argv[1]

	        case "*.gz"
	            gunzip $argv[1]

	        case "*.tar"
	            tar xf $argv[1]

	        case "*.tbz2"
	            tar xjf $argv[1]

	        case "*.tgz"
	            tar xzf $argv[1]

	        case "*.zip"
	            unzip $argv[1]

	        case "*.Z"
	            uncompress $argv[1]

	        case "*.7z"
	            7z x $argv[1]

	        case "*"
	            echo "unknown extension: $argv[1]"
	    end
		end
		'';


		extracttodir = '' 
		function extracttodir
		    switch $argv[1]
		        case "*.tar.bz2"
		            tar -xjf $argv[1] -C "$argv[2]"

		        case "*.tar.gz"
		            tar -xzf $argv[1] -C "$argv[2]"

		        case "*.rar"
		            unrar x $argv[1] "$argv[2]/"

		        case "*.tar"
		            tar -xf $argv[1] -C "$argv[2]"

		        case "*.tbz2"
		            tar -xjf $argv[1] -C "$argv[2]"

		        case "*.tgz"
		            tar -xzf $argv[1] -C "$argv[2]"

		        case "*.zip"
		            unzip $argv[1] -d $argv[2]

		        case "*.7z"
		            7za e -y $argv[1] -o"$argv[2]"

		        case "*"
		            echo "unknown extension: $argv[1]"
		    end
		end
		'';
		
		lsr = ''
		function lsr
    	ls | rg -i $argv[1]
		end
		 '';

		mkcd = '' 
		function mkcd --argument name
			mkdir -p $name
			cd $name
		end
		'';

		num = '' 
		function num 
			ls -1 $argv | wc -l;
		end
		'';

		wg = '' 
		function wg
	    set -l num_args (count $argv)

	    if test $num_args -eq 1
	        wget -c $argv[1]

	    else if test $num_args -eq 2
	        # arg1 = name, arg2 = url
	        wget -c -O $argv[1] $argv[2]

	    else
	        echo "Incorrect number of arguments"
	    end
		end
		'';
	};
};
}
