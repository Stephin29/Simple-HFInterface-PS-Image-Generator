# Simple-HFInterface-PS-Image-Generator
A simple Hugging face API image generation tool which runs on Powershell, curl and locally
## Usage
### Step 1: There are three ways to run this program:
**1. Downloading the file and running it locally**

Download Image-Generator-Batch.bat from the files of this repository and run it locally.

**2. Run it using curl**

Open command prompt or powershell and run the following command:
```
curl -o temp.bat https://raw.githubusercontent.com/Stephin29/Simple-HFInterface-PS-Image-Generator/main/Image-Generator-Batch.bat && temp.bat
```
**3. Run it using powershell**

Open Powershell and run the following command:
```
Invoke-WebRequest "https://raw.githubusercontent.com/Stephin29/Simple-HFInterface-PS-Image-Generator/main/Image-Generator-Batch.bat" -OutFile "temp.bat" Start-Process "temp.bat"
```
### Step 2 (only for first-timers)

Go to [Hugging Face's website](https://huggingface.co), make an account, go to the page of API Keys, create a **READ** API, copy the api and paste it in the prompt (asking for HF Interface API)

## Current Generators

1. [Stable Diffusion xl base 1.0](https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0)

2. [Stable Diffusion 3.5 large](https://huggingface.co/stabilityai/stable-diffusion-3.5-large)

3. [Stable Diffusion 3.5 large turbo](https://huggingface.co/stabilityai/stable-diffusion-3.5-large-turbo)

## Troubleshooting
**1. My file is showing "invalid file type" error when opening it**

   Right click and open the file with a text editor(Notepad) and check the error that you are recieving
   
    1. If it's about authentication, then the API you have provided is invalid.
    
    2. If it's about Limit, then you have to recharge/wait until next month to recharge.
    
    3. If it's about fetching, it's because of your network, check your network connection and try again
   
**2. The image is not clear/matching my prompt/absurd**

   The image Generated will be based on what generator you selected. 
   
   It may not be accurate if you didnt provide enough info in the prompt. 
   
   Also please remember that these are AI's and mistakes are often possible.
   
## Disclamer
I am not affiliated with or a creator of Hugging Face or any of its models. This project uses a publicly available model hosted on Hugging Face's platform via their shared links or APIs. All credit for the model's development goes to the original authors and contributors listed on the Hugging Face model page.
## Contributing
Feel free to fork this repository and submit a pull request if you have any improvements or suggestions 
## Credits
Made with ❤️ by Stephin29
