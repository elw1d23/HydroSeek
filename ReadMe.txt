HydroSeek ReadMe / FAQs:

Enclosed in this zip file are all necessary dependencies to run HydroSeek in Matlab. To ensure a seamless installation please check:

You are using MATLAB 2023 or later
You have installed the Audio Processing, Digital Signal Processing and Statistics ToolBox
You have available RAM of 8Gb or more.
On first use follow the installation guide for seamless running of the HydroSeek tool

Note: Users pre 2025b should install via the mlappinstall file, Users with 2025b and beyond should use the mltbox file for installation


HydroSeek is designed to be a flexible multi-labelling tool for any input audio file. To achieve this you will open on a configuration screen where you a) load in audio file and b) set up your labelling parameters. To do this you can either:

1. Load an existing configuration file which will autofill all of the settings for you, very useful if you are labelling many files with the same parameters

2. Manually enter the parameters for each input window yourself.
	If using this option you now have the functionality to export your settings using the ‘Export’ button at the bottom of the page. 	Configuration settings will be saved to a directory of your choice and you can custom name the file. This can then be used to 	populate the input settings of future files

Configuration Settings:
Chunk Number: Audio Files require large amounts of RAM, to avoid system issues you can split the full file into smaller chunks for processing, meaning only a portion of data is held in memory at one time. Use the duration of your audio file (printed after loading audio data) to decide on a sensible value e.g. 20 minute audio file sampled at 96 kHz can be split into 4 chunks: 5 mins per chunk.

Labelling Frame Length: The length of window you want your labels to span i.e. 1, 3, 5 seconds. The app will divide each active chunk into n windows to label. e.g. for a 20 minute file divided into 4 chunks of 5 mins with a 3 second labelling window, you will 100 frames to label per chunk, totalling 400 frames for the 20 minute file.

* You must input sensible values to the configuration file. The app is designed to handle data over variable sampling rates and lengths however I have seen issues where the user has split the data into windows that means the context plot doesn’t have enough data. You must have at least 3 windows in your chunk length in order for the app to function.
If you are having errors with the app crashing, and red text on the command screen indicating signal length issues please check your acoustic settings in the configuration file. 

	e.g. for a 60 second file, splitting into 5 chunks (5 12 second chunks) with 5 second frames will cause errors as the app is 	designed to not process windows which are too short (within reason) to handle cases where hydrophones have recorded 	additional milliseconds making the division by frame size with remainders. The app would have 2 5 second frames and a 2 	second frame which will pass the catch (designed to throw away around 500 milliseconds of data) but throw an error as there 	is not enough data for the context plot.

	If you are confident your settings are appropriate (including window sizes and overlaps) and still facing a signal length issue 	then please contact the developer at e.l.white@soton.ac.uk, or ellen_white95@hotmail.com.

Spectrogram Settings:
Dynamic Range: e.g. -80 - 0 negative number should be placed first.

Downsample: There is an option to display the Spectrogram C as downsampled data, particularly useful for lower frequency signals. If you don’t wish to downsample any data simply set this to zero. 

Context Plot and Specs A - C:
All spectrograms can be configured with your own parameters. Please note that in newer versions of HydroSeek the overlap parameter is a percentage value, not a raw samples number. You should input sensible window sizes, overlaps and frequency bounds for the data task you are tackling. The demo configuration file supplied should be tailored to your own task.

Label Text:
HydroSeek is a labelling tool - You have complete flexibility of how to label by simply inputting your own label text. This can be names of sound sources, or numerical values - there is no necessary criteria. To avoid processing issues I recommend you place underscores between words and keep label names short. Each label has a small area of use in the app, if your names are too lengthy there will be overwritten names. 

Once the app is running labelling is a straight forward process.

Keep track of your progress using the frame/chunk number counters in the top left corner and the vertical marker on the top progress plot.
Change the visual clarity by applying different colormaps to the data. The colormap can be changed at any time, as frequently as you want.

IMPORTANT: If leaving a comment on the data do not press the return key. For no explainable reason this causes problems with data processing. If you press enter your labelling loop will end and you will have to start again. For now just avoid this.

*Note for those on older machines, please don’t have many tabs / apps running in the background. HydroSeek is a multi-labelling tool for processing high resolution broadband acoustic data. While splitting your audio data into chunks will help to resolve the overhead of the app, audio data is large. Please consider your RAM availability before reporting bugs.


The apps infrastructure will be continuously updated via Github. When using the app after a break please ensure you are working with the most up to date version.

Report any bugs observed at ellwhit@noc.ac.uk, or ellen_white95@hotmail.com.
