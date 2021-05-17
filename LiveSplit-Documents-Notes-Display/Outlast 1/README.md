# LiveSplit Documents and Notes Display
## Setup
### AutoSplitter Components
This tutorial presumes you already have LiveSplit installed and have a basic understanding of how to use it. If you don't you should [Download LiveSplit](https://livesplit.org/downloads/ "https://livesplit.org/downloads/").
1. Download the `LiveSplit.ASLVarViewer.UI.dll` file from the parent directory. Once downloaded, place it in the Components folder of your LiveSplit installation (`<LiveSplit Installation>\Components\`). There should be a lot of DLL files in this folder already.
   * If you don't know where LiveSplit is installed, look in `C:\Program Files\` or `C:\Program Files (x86)\` for the LiveSplit folder.
2. Download the `Outlast with Docs and Notes.asl` file from this folder. This is a modified version of the existing AutoSplitter for Outlast that allows it to keep track of how many notes and documents you have collected. 
   * You can save this file anywhere, but by default LiveSplit saves AutoSplitter files to the same `Components` folder where you saved ASLVarViewer, so I suggest putting it there.
3. Set your AutoSplitter file in LiveSplit to the new file. To do this, right click your LiveSplit window and click `Edit Splits`. From there, click on the Settings button for the `Autosplitter/Load Remover` (Make sure it is also activated!)
In the `Component Settings` window for the AutoSplitter, set the `Script Path` to the ASL file you have just downloaded.
![AutoSplitter Component Settings](https://upload.rileythefox.co.uk/cagA5/joRapUPa47.png/raw)
### LiveSplit Layout
1. Open the Layout Editor by right clicking your LiveSplit window and clicking `Edit Layout`.
2. Add a new Component by clicking the **+** button and add the `ASL Var Viewer` Component under the `Information` category.
3. Double click the newly added Component to open its Settings window.
4. Fill in the label text box, in this case I will be writing "Documents". 
5. Go down to the Value section and make sure `Value Container` is set to **Current State**. Beneath, in the drop down box next to Value, select the `documents` variable (or `notes` if you are setting up notes).
   * For this step, you must have Outlast running and the AutoSplitter must be activated. Otherwise these options will be greyed out.

![ASLVarViewer Settings](https://upload.rileythefox.co.uk/cagA5/juXaLaFi64.png/raw)  
6. Repeat **Step 2 - Step 5** for Documents/Notes (whichever you have not yet added)

If done correctly, your LiveSplit layout should now be showing this (It will just display zero unless you load a save in Outlast where you have collected something)

![LiveSplit with Documents and Notes display](https://upload.rileythefox.co.uk/cagA5/NaVEtOli84.png/raw)

## Q&A
**Q**: Is this allowed in speedruns?  
**A**: Yes! The moderators decided that this does not provide any advantage or that it is cheating as it just simply displays how many you have collected.

If you encounter any trouble setting it up, be sure to join the [Outlast Speedrunning Discord](https://discord.gg/vyMZQSrtMA) and ask in the #questions channel.

Enjoy!
