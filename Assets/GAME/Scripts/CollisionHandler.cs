using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CollisionHandler : MonoBehaviour {

    [Tooltip("Delay in Seconds")] [SerializeField] float levelLoadDelay = 1f;
    [Tooltip("Explosion FX prefab")] [SerializeField] GameObject DeathFx;
    [Tooltip("Makes Player invincible")] public bool bGodMode = false;

    private void OnTriggerEnter(Collider other)
    {
        if (!bGodMode)
        {
            StartDeathSequence();
            DeathFx.SetActive(true);
            Invoke("ReloadScene", levelLoadDelay); 
        }
    }

    private void ReloadScene ()
    {
        SceneManager.LoadScene(1);
    }


    private void StartDeathSequence()
    {
        SendMessage("OnPlayerDeath");
    }
}
