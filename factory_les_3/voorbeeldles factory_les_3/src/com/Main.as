﻿package com
{
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			// de factory wordt aangemaakt
			var enemyShipFactory : EnemyShipFactory = new EnemyShipFactory();
			
			// we vragen de ruimteschepen fabriek om een ruimteschip te maken
			var enemy : EnemyShip = enemyShipFactory.makeEnemyShip(EnemyShipFactory.DOMINATING_SHIP);
			var enemy2: EnemyShip = enemyShipFactory.makeEnemyShip(EnemyShipFactory.UFO_ENEMY_SHIP);
			var enemy3: EnemyShip = enemyShipFactory.makeEnemyShip(EnemyShipFactory.BIGBOSS_ENEMY_SHIP);
			
			// het nieuwe ruimteschip mag gelijk acties ondernemen
			doEnemyStuff(enemy);	
			doEnemyStuff(enemy2);
			doEnemyStuff(enemy3);	
		}
		
		private function doEnemyStuff( enemy : EnemyShip ) : void
		{
			enemy.followHeroShip();
			enemy.shoot();
		}
	}
}