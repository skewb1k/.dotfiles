{
  programs.wofi = {
    enable = true;

    style = 
      ''
/*
* wofi style. Colors are from authors below.
* Base16 Gruvbox dark, medium
* Author: Dawid Kurek (dawikur@gmail.com), morhetz (https://github.com/morhetz/gruvbox)
*
*/
window {
	opacity: 0.9;
	border: 0px;
	border-radius: 10px;
	font-family: monospace;
	font-size: 18px;
}

#input {
	border-radius: 10px 10px 0px 0px;
	border: 0px;
	padding: 10px;
	margin: 0px;
	font-size: 28px;
	color: #8ec07c;
	background-color: #282c34;
}

#inner-box {
	margin: 0px;
	color: white;
	background-color: #21252b; /* @base00 */
}

#outer-box {
	margin: 0px;
	background-color: #21252b; /* @base00 */
	border-radius: 10px;
}

#selected {
	background-color: #282c34;
}

#entry {
	padding: 0px;
	margin: 0px;
	background-color: #21252b; /* @base00 */
}

#scroll {
	margin: 5px;
	background-color: #21252b; /* @base00 */
}

#text {
	margin: 0px;
	padding: 2px 2px 2px 10px;
}
      '';
  };
}