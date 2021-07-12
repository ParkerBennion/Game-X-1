using System;
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
    
    public static float power = 13;
    public static float enginePower;
    public static float thrust = 0;
    public static float rollrights;
    public static float rolllefts;
    public static float currentSpeed;
    public static float gravTotal;
    public static float gravAngle;
    public static float rotAngle;
    public static float momentum;
    public static float engineDelta =2;
    private static float grav = 13f;

    private static int boostMode;
    public static int currentBoost;
    private static int rotToggle = 0;
    
    private bool isPlaying;
    private bool isFindingMomentum;
    private bool stage2 = false;
    public static bool engineOn;
    private static bool activeAirplane;
    
    public static string gear = "none";

    private Rigidbody gliderBody;
    
    public static Vector3 currentAngle;
    public static Vector3 craftPos;

    public static Quaternion craftRot;

    public GameObject spriteMainBoost;

    public GameObject vertSensor;
    public GameObject horoSensor;
    
    
    
    
    
    
    
    
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
        //secondary.faceButtons.Bbutton.performed += ctx => ;
        //secondary.faceButtons.Bbutton.canceled += ctx =>;
        // sets up D-Pad and face buttons.

        gliderBody = GetComponent<Rigidbody>();
        //used to add force
        
        GetComponent<Rigidbody>().drag = .5f;
        GetComponent<Rigidbody>().angularDrag = 1;
        currentBoost = -1;
        
        isPlaying = true;
        engineOn = false;
        activeAirplane = false;
        
        enginePower = 0;
        momentum = 0;
    }

    
    
    
    private void Start()
    {
        isFindingMomentum = true;
        StartCoroutine(FindVelocity());
        StartCoroutine(FindMomentum());
        StartCoroutine(AirplaneActive());
        //StartCoroutine(StartAccelerating());
        
        vertSensor.SetActive(true);
        horoSensor.SetActive(true);
        Boost();
        //sets the angle finding objects in the scene.
    }
    
    
    

    IEnumerator FindVelocity()
    {
        
        while (isPlaying)
        {
            Vector3 prevPos = transform.position;
            yield return new WaitForFixedUpdate();
            currentSpeed = Mathf.RoundToInt(Vector3.Distance(transform.position, prevPos) / Time.fixedDeltaTime);
        }
    }
    //finds the velocity of the player

    IEnumerator FindMomentum()
    {
        while (isFindingMomentum)
        {
            enginePower = Mathf.MoveTowards(enginePower, 15, engineDelta * Time.deltaTime);
            
            /*enginePower = (engineOn) ? Mathf.MoveTowards(enginePower, 15, engineDelta * Time.deltaTime) 
                : enginePower = Mathf.MoveTowards(enginePower, 15, -.2f * Time.deltaTime);*/
            
            if (enginePower<0)
            {
                enginePower = 0;
            }

            power = enginePower + momentum;
            spriteMainBoost.SetActive(engineOn);
            yield return power;
        }
    }

    private IEnumerator AirplaneActive()
    {
        while (activeAirplane)
        {
            transform.Translate(Vector3.forward * (power * Time.deltaTime));// rail like movement
            gliderBody.AddForce(transform.forward * (thrust * Time.deltaTime)); // vector type movement
        
            //gliderBody.AddForce(transform.up * liftTotal * Time.deltaTime);
            //gliderBody.AddForce(transform.up * -liftTotal * Time.deltaTime);
            //gliderBody.AddForce(gliderBody.transform.TransformDirection(Vector3.down)*power);
        
            //transform.Rotate(Vector3.right*100*rotToggle*Time.deltaTime);
            transform.Rotate(Time.deltaTime * 100 * rotToggle * Vector3.right);//constant dive

            transform.Rotate(Vector3.left * (rollrights * 100 * Time.deltaTime));// pitch right
            transform.Rotate(Vector3.back * (rollrights * 50 * Time.deltaTime)); // lift
        
            transform.Rotate(Vector3.left * (rolllefts * 100 * Time.deltaTime)); //pitch left
            transform.Rotate(Vector3.forward * (rolllefts * 50 * Time.deltaTime)); //lift

            transform.Rotate(Vector3.up * (rotAngle * Time.deltaTime)); //rotate
            //transform.Rotate(Vector3.down * rotAngle * Time.deltaTime);// rotate
        
            yield return new WaitForFixedUpdate();
        }
        
    }
    
    
    
    
    // gives a total number to power "the speed of craft dependant on other variables.
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
    
    
    
    

    private static void Boost()
    {
        boostMode = currentBoost;
        switch (boostMode)
        {
            case -1 :
                thrust = 0;
                rotToggle = 1;
                engineOn = false;
                engineDelta = -.2f;
                gear = "Neutral";
                break;
            case 0 :
                activeAirplane = true;
                thrust = 0;
                rotToggle = 1;
                engineOn = true;
                engineDelta = 2f;
                gear = "primed";
                break;
            case 1 :
                thrust = 300;
                gear = "booster on";
                break;
            case 2 :
                thrust = 0;
                
                gear = "booster off";
                break;
        }
    }
    //  rotToggle needs rework. gear needs renaming and revisit the modes. general cleaning........................................

    
    
    
    void BoostUp()
    {
        if (!activeAirplane)
        {
            activeAirplane = true;
            engineOn = true;
            currentBoost = 0;
            StartCoroutine(AirplaneActive());
            Boost();
            
        }
        else if (currentBoost<2)
        {
            currentBoost++;
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
            gliderBody.velocity = Time.deltaTime * 1500 * transform.up;
            stage2 = true;
        }
        // vertical takeoff needs to compare to rolllefts..... also make the colorbars change for vertical takeoff...... go over the profiler again to see whats up.
    }
    void VerticalTakeoffCancel()
    {
        if (stage2 == true && !activeAirplane)
        {
            activeAirplane = true;
            engineOn = true;
            engineDelta = 15;
            currentBoost = 1;
            StartCoroutine(AirplaneActive());
            Boost();
            stage2 = false;
            StartCoroutine(ReturnEngineDelta());
        }
        
    }
    IEnumerator ReturnEngineDelta()
    {
        yield return new WaitForSeconds(2);
        engineDelta = 2;
    }
   /*
    
    void BoostDown()
    {
        GetComponent<Rigidbody>().angularDrag = 2f;
        power = 0;
    }
    void BoostDownActivate()
    {
        GetComponent<Rigidbody>().angularDrag = .5f;
        power = 13;
    }
    
    */
    //needs work. allows the player to slow down and regain control.

    
    
    
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
        if (momentum > 8)
        {
            momentum = 8;
        }
        else if (momentum < -2)
        {
            momentum = -2;
        }
        //adds extra speed dependant on accel test numbers.
    }
    
    
    
    
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
