//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.robotlegs.v2.extensions.hooks.support
{

	public class NonHook
	{

		/*============================================================================*/
		/* Public Properties                                                          */
		/*============================================================================*/

		[Inject]
		public var hookTracker:HookTracker;


		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		public function noHooksHere():void
		{
			hookTracker.confirm("NonHook");
		}
	}

}

