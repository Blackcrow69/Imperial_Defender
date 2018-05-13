using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {

    [Tooltip("Explosion FX prefab")] [SerializeField] GameObject DeathFx;
    [SerializeField] Transform parent;
    [SerializeField] int scorePerHit = 15;
    [SerializeField] int MaxHits = 15;

    ScoreBoard scoreBoard;

    // Use this for initialization
    void Start () {
        scoreBoard = FindObjectOfType<ScoreBoard>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnParticleCollision(GameObject other)
    {
        scoreBoard.ScoreHit(scorePerHit);
        MaxHits--;
        if (MaxHits <= 0 || MaxHits < 1)
        {
            KillEnemy(); 
        }
    }

    private void KillEnemy()
    {
        GameObject fx = Instantiate(DeathFx, transform.position, Quaternion.identity);
        fx.transform.parent = parent;
        Destroy(gameObject);
    }
}
