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
    
    private static float power = 13;
    private static float enginePower;
    private static float thrust = 0;
    private static float grav = 13f;
    public static float rollrights;
    public static float rolllefts;
    public static float currentSpeed;
    public static float gravTotal;
    public static float gravAngle;
    public static float rotAngle;
    public static float momentum;

    private static int boostMode;
    public static int currentBoost;
    private static int rotToggle = 0;
    public static bool engineOn;
    
    public static bool bonusGrav;
    private bool isPlaying;
    private bool isFindingMomentum;
    
    public static string gear = "none";

    private Rigidbody gliderBody;
    
    public static Vector3 currentAngle;
    public static Vector3 craftPos;
    
    public static Quaternion craftRot;

    public GameObject vertSensor;
    public GameObject horoSensor;
    



    private void Awake()
    {
        controls = new PlayerControlls();
        //controls.GamePlay.roll.performed += ctx => Grow();
        
        controls.gamePlay.rollRight.performed += ctx => rollrights = ctx.ReadValue<float>();
        controls.gamePlay.rollLeft.performed += ctx => rolllefts = ctx.ReadValue<float>();
        controls.gamePlay.booster.performed += ctx => BoostUp();
        controls.gamePlay.booster.canceled += ctx => BoostActivate();
        controls.gamePlay.brake.performed += ctx => BoostDown();
        controls.gamePlay.brake.canceled += ctx => BoostDownActivate();
        // sets up game pad buttons
        
        gliderBody = GetComponent<Rigidbody>();
        //used to add force
        
        GetComponent<Rigidbody>().drag = .5f;
        GetComponent<Rigidbody>().angularDrag = 1;
        currentBoost = -1;
        isPlaying = true;
        engineOn = false;
        enginePower = 0;
        momentum = 0;
    }

    private void Start()
    {
        isFindingMomentum = true;
        StartCoroutine(FindVelocity());
        StartCoroutine(FindMomentum());


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

    IEnumerator FindMomentum()
    {
        while (isFindingMomentum)
        {
            power = enginePower + momentum;
            yield return power;
        }
    }
    //finds the velocity of the player
    void FixedUpdate()
    {
        /*if (engineOn)
        {
            transform.Translate(Vector3.forward * power * Time.deltaTime); // this doesnt work. add another one of these scripts and give it some momentum " change power to deped on the angle of attack so that it appears as if the glider is gliding. this could replace this script entirely." 
        }*/
        transform.Translate(Vector3.forward * power * Time.deltaTime);// rail like movement
        gliderBody.AddForce(transform.forward * thrust * Time.deltaTime); // vector type movement
        
        //gliderBody.AddForce(transform.up * liftTotal * Time.deltaTime);
        //gliderBody.AddForce(transform.up * -liftTotal * Time.deltaTime);
        //gliderBody.AddForce(gliderBody.transform.TransformDirection(Vector3.down)*power);
        
        transform.Rotate(Vector3.right*100*rotToggle*Time.deltaTime); //constant dive

        transform.Rotate(Vector3.left*rollrights*100*Time.deltaTime);// pitch right
        transform.Rotate(Vector3.back*rollrights*50*Time.deltaTime); // lift
        
        transform.Rotate(Vector3.left*rolllefts*100*Time.deltaTime); //pitch left
        transform.Rotate(Vector3.forward * rolllefts * 50 * Time.deltaTime); //lift

        transform.Rotate(Vector3.up * rotAngle * Time.deltaTime); //rotate
        //transform.Rotate(Vector3.down * rotAngle * Time.deltaTime);// rotate

        gravTotal = grav - currentSpeed + gravAngle;
        if (gravTotal < 1)
        {
            gravTotal = 0;
        }
        Physics.gravity = new Vector3(0, -gravTotal, 0);
        
    }

    /*void Grow()
    {
        transform.localScale *= 1.1f;
    }*/
    // code to make an object grow.

    private static void Boost()
    {
        boostMode = currentBoost;
        switch (boostMode)
        {
            case -1 :
                enginePower = 0;
                thrust = 0;
                rotToggle = 0;
                engineOn = false;
                gear = "Neutral";
                break;
            case 0 :
                enginePower = 13;
                thrust = 0;
                rotToggle = 1;
                engineOn = true;
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
    // chang dignasticts to display the amout of power coming out of enging. rotToggle needs rework. gear needs renaming and revisit the modes. general cleaning.

    void BoostUp()
    {
        if (currentBoost<2)
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
        momentum = AccelTester.currStrength*-1;
        if (momentum > 8)
        {
            momentum = 8;
        }
        else if (momentum < 0)
        {
            momentum = 0;
        }
        
        // used as reference in other scripts that need the orientation of the player.
    }
    
    private void OnEnable()
    {
        controls.gamePlay.Enable();
    }
    private void OnDisable()
    {
        controls.gamePlay.Disable();
    }
    //to enable and disable gamepad;
}
