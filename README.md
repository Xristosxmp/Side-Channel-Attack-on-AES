Side Channel Attack on AES.
=====
Correlation Power Analysis Attack on Octave.

Available Leakage Models:
  1. Hamming Weight
  2. Most Significant Bit
  3. Least Significant Bit
  4. No League Model

--------------------------------------------------------------------------------
1. Instructions 
--------------------------------------------------------------------------------

* Download Octave: https://octave.org/
* Open Octave and Load constants.mat & attack_data_1 || attack_data_2
* Execute Code cpa_HW.m || cpa_LSB.m || cpa_MSB.m || cpa_identity.m
* Choose which model you prefer to use in the CPA Attack.
* Run the Code. (e.x cpa_HW)
* Execute Command on Octave plot(R) to view or plot(transpose(R)) to view leaked key for the attack data.
--------------------------------------------------------------------------------

Examples:
=====
| plot(R) | plot(transpose(R)) |
 ---------------------- | ---------------------- |
| ![KEYBYTE_01](https://github.com/Xristosxmp/Side-Channel-Attack-on-AES/assets/72732882/e64d2b6f-a234-41fa-98ba-7386abf7fa1b) | ![KEYBYTE_01](https://github.com/Xristosxmp/Side-Channel-Attack-on-AES/assets/72732882/b536aa25-078b-4bfa-bec6-151c862376a5) |


