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
    private static float thrust = 0;
    private static float grav = 13f;
    public static float rollrights;
    public static float rolllefts;
    public static float currentSpeed;
    public static float gravTotal;
    public static float gravAngle;
    public static float rotAngle;

    private static int boostMode;
    private static int currentBoost;
    
    public static bool bonusGrav;
    private bool isPlaying;
    
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
        controls.gamePlay.booster.performed += ctx => Boost();
        controls.gamePlay.booster.canceled += ctx => BoostOff();
        controls.gamePlay.brake.performed += ctx => Airbrake();
        controls.gamePlay.brake.canceled += ctx => AirbrakeOff();
        // sets up game pad buttons
        
        gliderBody = GetComponent<Rigidbody>();
        //used to add force
        
        GetComponent<Rigidbody>().drag = .5f;
        GetComponent<Rigidbody>().angularDrag = 1;
        currentBoost = 0;
        isPlaying = true;
    }

    private void Start()
    {
        StartCoroutine(FindVelocity());
        
        vertSensor.SetActive(true);
        horoSensor.SetActive(true);
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
    void FixedUpdate()
    {
        transform.Translate(Vector3.forward * power * Time.deltaTime);// rail like movement
        gliderBody.AddForce(transform.forward * thrust *Time.deltaTime); // vector type movement
        
        //gliderBody.AddForce(transform.up * liftTotal * Time.deltaTime);
        //gliderBody.AddForce(transform.up * -liftTotal * Time.deltaTime);
        //gliderBody.AddForce(gliderBody.transform.TransformDirection(Vector3.down)*power);
        
        transform.Rotate(Vector3.right*100*Time.deltaTime); //constant dive

        transform.Rotate(Vector3.left*rollrights*100*Time.deltaTime);// pitch right
        transform.Rotate(Vector3.forward*rollrights*50*Time.deltaTime); // lift
        
        transform.Rotate(Vector3.left*rolllefts*100*Time.deltaTime); //pitch left
        transform.Rotate(Vector3.back * rolllefts * 50 * Time.deltaTime); //lift

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
            case 0 :
                power = 13;
                gear = "primed";
                break;
            case 1 :
                thrust = 300;
                gear = "booster on";
                
                break;
            case 2 :
                thrust = 0;
                currentBoost-=2;
                gear = "booster off";
                break;
        }
    }
    // switches between motor functions.
    void BoostOff()
    {
        currentBoost ++;
    }
    // switches modes in the boost method.

    void Airbrake()
    {
        GetComponent<Rigidbody>().angularDrag = 4f;
        power = 0;
    }
    void AirbrakeOff()
    {
        GetComponent<Rigidbody>().angularDrag = .5f;
        power = 13;
    }
    //needs work. allows the player to slow down and regain control.

    private void OnEnable()
    {
        controls.gamePlay.Enable();
    }
    private void OnDisable()
    {
        controls.gamePlay.Disable();
    }
    //to enable and disable gamepad;
    
    private void Update()
    {
        gravAngle = Math.Abs(vQuatFinder.verticalGoldenAngle * .08f);
        rotAngle = hQuatFinder.horozontalGoldenAngle * .2f;
        
        //adds gravity to the craft at high angles.
        currentAngle = transform.eulerAngles;
        craftPos = transform.position;
        craftRot = transform.rotation;
        // used as reference in other scripts that need the orientation of the player.
    }
}
