//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.framework.api
{
	import org.hamcrest.Matcher;
	import org.swiftsuspenders.Injector;
	import robotlegs.bender.framework.api.ILifecycle;
	import robotlegs.bender.framework.api.ILogTarget;
	import robotlegs.bender.framework.api.ILogger;

	/**
	 * The Robotlegs context contract
	 */
	public interface IContext
	{
		// todo: move
		function get initialized():Boolean;

		// todo: move
		function get destroyed():Boolean;

		function get injector():Injector;

		function get lifecycle():ILifecycle;

		function get logLevel():uint;

		function set logLevel(value:uint):void;

		function initialize():void;

		function destroy():void;

		function extend(... extensions):IContext;
		
		function configure(... configs):IContext;

		function addConfigHandler(matcher:Matcher, handler:Function):IContext;

		function getLogger(source:Object):ILogger;

		function addLogTarget(target:ILogTarget):IContext;
	}
}
