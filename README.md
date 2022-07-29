## **Cytosim Nuclear Centering**

This is the data set we used for the analysis detailed in this paper : LINK TO PAPER

You will also find the scripts we used to generate and analyse it.

![](https://github.com/AurelienJuille/cytosim-nuclear-centering/blob/main/image0001.png?raw=true)

If you only want to take a look at our data and the scripts we used to analyse and generate it, you will find everything in the DATA, Scripts and Python folders.
If you want to reproduce our experiments or use our scripts to do your own, here is how you should get started :

## **Getting Started**
### Installing Cytosim
First of all, you will need to install Cytosim. If you are using Linux or MacOS, this shouldn't be a problem. 
If you are on Windows, we recommand installing Ubuntu from the Microsoft Store.

You can then execute these commands in your shell to install cytosim:
```
git clone https://gitlab.com/f-nedelec/cytosim
```
Before compiling Cytosim, if you want your simulations to be 3D, go to src/math/dim.h and set your desired simulation dimensionality in it. Then :
```
cd cytosim
make
```
If you get a permission error, use this command :
```
chmod 701 <your inaccessible file/directory>
```

Is this doesn't work, please look at Cytosim's more detailed documentation [here](https://gitlab.com/f-nedelec/cytosim)

### Installing our nuclear centering helper
Now you have installed Cytosim, you can now go back to Cytosim's parent directory (or anywhere outside Cytosim's root folder) and download our scripts with this :
```
cd ../
git clone https://github.com/AurelienJuille/cytosim-nuclear-centering
```
Then you can start our GUI with this command :
```
cd cytosim-nuclear-centering
python3.8 GUI.py
```

### Using the GUI
