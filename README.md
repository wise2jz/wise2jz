
<div align="center">
<img src="https://img.shields.io/badge/assembly%20script-%23000000.svg?style=for-the-badge&logo=assemblyscript&logoColor=white">
<img src="https://img.shields.io/badge/c-%2300599C.svg?style=for-the-badge&logo=c&logoColor=white">
<img src="https://img.shields.io/badge/c++-%2300599C.svg?style=for-the-badge&logo=c%2B%2B&logoColor=white">
<img src="https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54">
<img src="https://img.shields.io/badge/Systems%20Engineering-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/Embedded%20Systems-blue?style=for-the-badge">
<img src="https://img.shields.io/badge/ros-%230A0FF9.svg?style=for-the-badge&logo=ros&logoColor=white">
  
</div>
</p>

```asm
# Apollo 11 LM AGC — Final Descent and Touchdown
# Luminary 1A build 099 (Public Domain)
# Purpose: Initialize descent engine burns and confirm landing
# Assembler: yaYUL | Source: www.ibiblio.org/apollo
# -----------------------------
# IGNITION & BURN SETUP (P63)
# -----------------------------
P63LM   TC      PHASCHNG
        OCT     04024
        TC      BANKCALL        # IMU status check
        CADR    R02BOTH
        CAF     P63ADRES        # Initialize for BURNBABY
        TS      WHICH
        CAF     DPSTHRSH        # Setup Delta-V monitor
        TS      DVTHRUSH
        CAF     FOUR
        TS      DVCNTR
        CS      ONE             # Init phase tracking
        TS      WCHPHASE
        CA      ZERO
        TS      FLPASS0
        TC      POSTJUMP        # Off to the burn sequence
        CADR    BURNBABY
# -----------------------------
# LANDING CONFIRMATION (P68)
# -----------------------------
LANDJUNK TC     PHASCHNG
         OCT    04024
         INHINT
         TC     BANKCALL        # Zero out attitude errors
         CADR   ZATTEROR
         TC     BANKCALL        # Set 5-degree deadband
         CADR   SETMAXDB
         TC     INTPRET
         SET    CLEAR
             SURFFLAG
             LETABORT
         SET    VLOAD
             APSFLAG
             RN
         SET    CALL            # Mark lunar touchdown
             LUNAFLAG
             LAT-LONG
         CAF    V06N43*         # Astronaut: "Now look where you ended up"
         TC     BANKCALL
         CADR   GOFLASH
         TCF    GOTOPOOH        # Terminate (Touchdown complete)
# -----------------------------
# End of Touchdown Sequence
# -----------------------------

```

