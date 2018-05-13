using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.CrossPlatformInput;

public class PlayerController : MonoBehaviour {

    [Tooltip("In m/s")][SerializeField] float xSpeed = 25f;
    [Tooltip("In m")] [SerializeField] float xRange = 5f;
    [Tooltip("In m/s")] [SerializeField] float ySpeed = 25f;
    [Tooltip("In m")] [SerializeField] float yRange = 3f;

    [SerializeField] float positionPitchFactor = -5f;
    [SerializeField] float controlPitchFactor = -20f;
    [SerializeField] float positionYawFactor = 5f;
    [SerializeField] float controlRollFactor = -20f;

    [SerializeField] GameObject[] guns;

    float xThrow, yThrow;

    bool bIsControlEnabled = true;


    void OnPlayerDeath ()  //called from collisionhandler by string
    {
        bIsControlEnabled = false;
    }

    // Update is called once per frame
    void Update ()
    {
        if (bIsControlEnabled)
        {
            XYInput();
            RotationInput();
            ProcessFiring();
        }
    }

    private void ProcessFiring()
    {
        if (CrossPlatformInputManager.GetButton("Fire1"))
        {
            ActiveateGuns();
        }
        else
        {
            DeactiveateGuns();
        }
    }

    private void ActiveateGuns()
    {
        foreach (GameObject gun in guns)
        {
            gun.SetActive(true);
        }
    }

    private void DeactiveateGuns()
    {
        foreach (GameObject gun in guns)
        {
            gun.SetActive(false);
        }
    }



    private void RotationInput()
    {
        float pitchDueToPosition = transform.localPosition.y * positionPitchFactor;
        float pitchDueToControlThrow = yThrow * controlPitchFactor;
        float pitch = pitchDueToPosition + pitchDueToControlThrow;

        float yaw = transform.localPosition.x * positionYawFactor;

        float roll = xThrow * controlRollFactor;

        transform.localRotation = Quaternion.Euler(pitch, yaw, roll);
    }

    private void XYInput()
    {
        xThrow = CrossPlatformInputManager.GetAxis("Horizontal");
        float xOffset = xThrow * xSpeed * Time.deltaTime;
        float rawXPos = transform.localPosition.x + xOffset;
        float clampedXPos = Mathf.Clamp(rawXPos, -xRange, xRange);

        yThrow = CrossPlatformInputManager.GetAxis("Vertical");
        float yOffset = yThrow * ySpeed * Time.deltaTime;
        float rawYPos = transform.localPosition.y + yOffset;
        float clampedYPos = Mathf.Clamp(rawYPos, -yRange, yRange);

        transform.localPosition = new Vector3(
            clampedXPos,
            clampedYPos,
            transform.localPosition.z);
    }

    
}
