# Starcraft2_MoveToBeacon

<p align="center" >
   <a href="">
    <img alt="react-native-gifted-chat" src="https://media.giphy.com/media/PkirsH2XFiLrZ3iofH/giphy.gif" width="900" height="510" />
 </a>

</p>

<h3 align="center">
  :trollface: Une unité de SCII avant entrainement
</h3>
<p align="center">
  Une unité sur Starcraft II (Marine) doit se deplacer sur la balise <br/>
  <small></small>
</p>

<p align="center" >
   <a href="">
    <img alt="react-native-gifted-chat" src="https://media.giphy.com/media/PkirsH2XFiLrZ3iofH/giphy.gif" width="900" height="510" />
 </a>

</p>

<h3 align="center">
  :collision: Une unité de SCII après entrainement
</h3>
<p align="center">
  Une unité sur Starcraft II (Marine) doit se deplacer sur la balise <br/>
  <small></small>
</p>


Reinforcement learning on starcraft using pysc2.

## First level: Move to Beacon

I used vanissa policy gradient to solve this environments/

### Train the model

```
python beacon.py --training 1
```

The model will be saved every 100 epochs into the "logger" folder. The model name is "simple_save".

### Load the trained model

```
python beacon.py --model simple_save --replay 1
```

--replay 1 is used to save a replay of the game every 10 run.

### Load and train the agent

```
python beacon.py --model simple_save --training 1
```

### Watch a replay

python -m pysc2.bin.play --replay \<absolute-path\>
