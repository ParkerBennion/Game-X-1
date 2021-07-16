﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using UnityEditor;
using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.UI;

public class Glide : MonoBehaviour
{
    
    PlayerControlls controls;
    SecondaryControls secondary;
    
    private Rigidbody gliderBody;
    
    public static Vector3 currentAngle;
    public static Vector3 craftPos;

    public static Quaternion craftRot;

    public GameObject spriteMainBoost;
    public GameObject takeoffSprite;

    public GameObject vertSensor;
    public GameObject horoSensor;

    
    public static float power = 13;
    public static float rollrights;
    public static float rolllefts;
    public static float currentSpeed;
    public static float gravTotal;
    public static float gravAngle;
    public static float rotAngle;
    private static float grav = 13f;
    private static int boostMode;
    // do not toutch
    
    public static float enginePower;
    public static float thrust = 0;
    public static float momentum;
    public static float engineDelta =2;
    private static float engineTarget =15;
    public static float momentumApplied;
    public static int currentBoost;
    private static int rotToggle = 0;  // this is old way of turning on and off this function
    // variables

    
    public static bool isPlaying;
    private bool isFindingMomentum;
    private bool stage2 = false;
    private static bool brakeActive = false;
    public static bool engineOn;
    private static bool activeAirplane;
    
    // bool variables
    
    public static string gear = "none";
    
    
    private void Awake()
    {
        controls = new PlayerControlls();
        secondary = new SecondaryControls();
        //controls.GamePlay.roll.performed += ctx => Grow();
        
        controls.gamePlay.rollRight.performed += ctx => rollrights = ctx.ReadValue<float>();
        controls.gamePlay.rollLeft.performed += ctx => rolllefts = ctx.ReadValue<float>();
        controls.gamePlay.booster.performed += ctx => BoostUp();
        controls.gamePlay.booster.canceled += ctx => BoostActivate();
        controls.gamePlay.brake.performed += ctx => BoostDown();
        controls.gamePlay.brake.canceled += ctx => BoostDownActivate();
        // sets up triggers and bumpers

        secondary.faceButtons.BHold.performed += ctx => VerticalTakeoff();
        secondary.faceButtons.BHold.canceled += ctx => VerticalTakeoffCancel();
        secondary.faceButtons.Ddown.performed += ctx => AirBrake();
        secondary.faceButtons.Ddown.canceled += ctx => AirBrakeOff();
        //secondary.faceButtons.Bbutton.performed += ctx => ;
        //secondary.faceButtons.Bbutton.canceled += ctx =>;
        // sets up D-Pad and face buttons.

        gliderBody = GetComponent<Rigidbody>();
        //used to add force
        
        GetComponent<Rigidbody>().drag = .7f;
        GetComponent<Rigidbody>().angularDrag = 1;
        currentBoost = -1;
        
        isPlaying = true;
        engineOn = false;
        activeAirplane = false;
        isFindingMomentum = true;
        
        enginePower = 0;
        momentum = 0;
    }
    
    
    private void Start()
    {
        StartCoroutine(FindVelocity());
        StartCoroutine(FindMomentum());
        //StartCoroutine(StartAccelerating());
        vertSensor.SetActive(true);
        horoSensor.SetActive(true);
        Boost();
        //sets the angle finding objects in the scene.
    }
    
    
    void FixedUpdate()
    {
        gravTotal = grav - currentSpeed + gravAngle;
        if (gravTotal < 1)
        {
            gravTotal = 0;
        }
        Physics.gravity = new Vector3(0, -gravTotal, 0);
        // adds gravity dependant on the speed of craft.
    }
    
    
    private void Update()
    {
        gravAngle = Math.Abs(vQuatFinder.verticalGoldenAngle * .08f);
        rotAngle = hQuatFinder.horozontalGoldenAngle * .2f;
        
        //adds gravity to the craft at high angles.
        currentAngle = transform.eulerAngles;
        
        craftPos = transform.position;
        craftRot = transform.rotation;
        // used as reference in other scripts that need the orientation of the player.
        
        momentum = AccelTester.currStrength*-1;
        /*if (momentum > 9)
        {
            momentum = 9;
        }
        else if (momentum < -9)
        {
            momentum = -9;
        }*/
        //adds extra speed dependant on accel test numbers.
    }
    
    
    private static void Boost()
    {
        boostMode = currentBoost;
        switch (boostMode)
        {
            case -1 :
                thrust = 0;
                rotToggle = 1;
                engineTarget = 15;
                engineOn = false;
                if (!brakeActive)
                {
                    engineDelta = -.2f;
                }
                gear = "OFF";
                break;
            
            case 0 :
                thrust = 0;
                rotToggle = 1;
                if (!brakeActive)
                {
                    engineDelta = 2f;
                }
                engineTarget = 15;
                activeAirplane = true;
                engineOn = true;
                gear = "ON";
                break;
            
            case 1 :
                thrust = 600;
                engineTarget = 15;
                rotToggle = 1;
                if (!brakeActive)
                {
                    engineDelta = 2f;
                }
                engineTarget = 15;
                gear = "BOOST";
                break;
            
        }
    }
    //  rotToggle needs rework. gear needs renaming and revisit the modes. general cleaning........................................



    IEnumerator FindVelocity()
    {
        
        while (isPlaying)
        {
            Vector3 prevPos = transform.position;
            yield return new WaitForFixedUpdate();
            currentSpeed = Mathf.RoundToInt(Vector3.Distance(transform.position, prevPos) / Time.fixedDeltaTime);

            if (currentSpeed <=0)
            {
                StartCoroutine(FullReset());
                yield return new WaitForSecondsRealtime(3);
            }
        }
    }
    //finds the velocity of the player
    //DO NOT TURN OFF IS PLAYING WHILE BEING USED

    IEnumerator FindMomentum()
    {
        while (isFindingMomentum)
        {
            enginePower = Mathf.MoveTowards(enginePower, engineTarget, engineDelta * Time.deltaTime);

            momentumApplied = Mathf.MoveTowards(momentumApplied, AccelTester.maxStrength*-1,
                Mathf.Abs(momentum/2) * Time.deltaTime);
            
            
            /*enginePower = (engineOn) ? Mathf.MoveTowards(enginePower, 15, engineDelta * Time.deltaTime) 
                : enginePower = Mathf.MoveTowards(enginePower, 15, -.2f * Time.deltaTime);*/
            
            if (enginePower<0)
            {
                enginePower = 0;
            }

            power = enginePower + momentumApplied;

            if (power < 0)
            {
                power = 0;
            }
            spriteMainBoost.SetActive(engineOn);
            // is this ^^^ inefficient
            yield return power;
        }
        //ENGINE POWER, ENGINE TARGET, ENGINE DELTA, MOMENTUM APPLIED, IS FINDING MOMENTUM
    }

    private IEnumerator AirplaneActive()
    {
        while (activeAirplane)
        {
            transform.Translate(Vector3.forward * (power * Time.deltaTime));// rail like movement
            gliderBody.AddForce(transform.forward * (thrust * Time.deltaTime)); // vector type movement

            transform.Rotate(Time.deltaTime * 100 * rotToggle * Vector3.right);//constant dive

            transform.Rotate(Vector3.left * (rollrights * 100 * Time.deltaTime));// pitch right
            transform.Rotate(Vector3.back * (rollrights * 70 * Time.deltaTime)); // lift
        
            transform.Rotate(Vector3.left * (rolllefts * 100 * Time.deltaTime)); //pitch left
            transform.Rotate(Vector3.forward * (rolllefts * 70 * Time.deltaTime)); //lift

            transform.Rotate(Vector3.up * (rotAngle * Time.deltaTime)); //rotate

            yield return new WaitForFixedUpdate();
        }
        //ACTIVE AIRPLANE
        
    }


    IEnumerator FullReset()
    {
        yield return new WaitForFixedUpdate();
        activeAirplane = false;
        engineOn = false;
        engineTarget = 0;
        engineDelta = 2;
        currentBoost = -1;
        StopCoroutine(AirplaneActive());
    }
    
    
    
    void BoostUp()
    {
        if (!activeAirplane && rollrights  >= .4f)
        {
            activeAirplane = true;
            engineOn = true;
            currentBoost = 0;
            StartCoroutine(AirplaneActive());
            Boost();
            
        }
        else if (currentBoost<1 && activeAirplane)
        {
            currentBoost++;
        }
        else
        {
            return; // play audio here
        }
    }
    // switches between motor functions.
    
    
    void BoostActivate()
    {
        Boost();
    }
    // switches modes in the boost method.
    
    
    void BoostDown()
    {
        if (currentBoost>-1)
        {
            currentBoost--; 
        }
    }
    void BoostDownActivate()
    {
        Boost(); 
    }


    void VerticalTakeoff()
    {
        if (rollrights  >= .4f && !activeAirplane)
        {
            gliderBody.velocity = Time.deltaTime * 2500 * transform.up;
            stage2 = true;
            takeoffSprite.SetActive(true);
        }
        // vertical takeoff needs to compare to rolllefts..... also make the colorbars change for vertical takeoff...... go over the profiler again to see whats up.
    }
    void VerticalTakeoffCancel()
    {
        if (stage2 == true && !activeAirplane)
        {
            activeAirplane = true;
            engineOn = true;
            engineTarget = 15;
            enginePower = 15;
            currentBoost = 1;
            StartCoroutine(AirplaneActive());
            Boost();
            StartCoroutine(ReturnEngineDelta());
            stage2 = false;
        }
    }
    
    
    IEnumerator ReturnEngineDelta()
    {
        
        yield return new WaitForSeconds(2);
        takeoffSprite.SetActive(false);
        
    }
   
    
    void AirBrake()
    {
        brakeActive = true;
        gliderBody.angularDrag = 2f;
        gliderBody.drag = 2f;
        engineDelta = -2;
    }
    void AirBrakeOff()
    {
        brakeActive = false;
        gliderBody.angularDrag = .5f;
        gliderBody.drag = .7f;
        Boost();
    }
    // this ignores the fact that you may have boosters off and should be returning to an enging delta of =.2f.. I need to save current settings in a cache so they can be toggled easier. // could i just use the boostmode switch?

    
    private void OnEnable()
    {
        secondary.faceButtons.Enable();
        controls.gamePlay.Enable();
    }
    private void OnDisable()
    {
        secondary.faceButtons.Disable();
        controls.gamePlay.Disable();
    }
    //to enable and disable gamepad;
}
