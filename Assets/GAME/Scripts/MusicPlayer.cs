using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MusicPlayer : MonoBehaviour {

    public AudioClip[] levelMusicChangeArray;
    public float volume;

    private AudioSource audioSource;

    private void Awake()
    {
        int numMusicPlayer = FindObjectsOfType<MusicPlayer>().Length;
        if (numMusicPlayer > 1)
        {
            Destroy(gameObject);
        }
        else
        {
            DontDestroyOnLoad(gameObject);
        }
        
    }

    // Use this for initialization
    void Start () {
        audioSource = GetComponent<AudioSource>();
    }
	

    //New Scene Management way
    void OnEnable()
    {
        //Tell our 'OnLevelFinishedLoading' function to start listening for a scene change as soon as this script is enabled.
        SceneManager.sceneLoaded += OnLevelFinishedLoading;
    }

    void OnDisable()
    {
        //Tell our 'OnLevelFinishedLoading' function to stop listening for a scene change as soon as this script is disabled. Remember to always have an unsubscription for every delegate you subscribe to!
        SceneManager.sceneLoaded -= OnLevelFinishedLoading;
    }

    void OnLevelFinishedLoading(Scene scene, LoadSceneMode mode)
    {
        int levelIndex = scene.buildIndex;
        AudioClip thisLvlMusic = levelMusicChangeArray[levelIndex];
        if (thisLvlMusic) //if music is attached to this level
        {
            audioSource.Stop();
            audioSource.clip = thisLvlMusic;
            audioSource.volume = volume;
            audioSource.loop = true;
            audioSource.Play();
        }

    }
}
