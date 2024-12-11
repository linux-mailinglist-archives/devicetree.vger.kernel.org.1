Return-Path: <devicetree+bounces-129624-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A58029EC5D2
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9D969188195E
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A072C1C5F3A;
	Wed, 11 Dec 2024 07:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Xo2Ud858"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A1AE1C5F12
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733903109; cv=none; b=pEoRUPfpRCNjpGhkOOgyjfxJ/O07Oj8xytBLQpblnfUCK3otdok2U0mHJ1SF8VACrUlLRDYacTnOUaZwDSBAfZ92P8EBW6IAZvFfmfjBfXqYFl8/i7W5foZ+8JCB1baQjampUmhpE7r58qH7hBdXWp6MT96fs4BxtPx7Swy1omM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733903109; c=relaxed/simple;
	bh=dhEqN16MtChyL0X6cb5FFjJD6Az8+ObK4ex4AqscYnY=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Exe/Zmlx7EhYu97YlWgJl3ilj3/4QOd15HnoC8sESSlksc0yA671sDhfzV6iJYGVb7jFIH/V4Pc7mea+kuzM0qqgIgWL49XUiAFpoUkfQkoIMG8OqP8wRoyfeE2FBehb8t4Jh1VSmh4zn+bDaKni+r8T9zJRU6XO3oWWYCw2oaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Xo2Ud858; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733903104;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vBj2qtH/NYARhotlO94z1olIPhWEieBQqvU3HWc4T9s=;
	b=Xo2Ud858UlSi2vZaLVC44yeLQ7oVE7PQffx7eK0bxcBkUFUuQZx3Gtm0QfiYpX14zTlZ1V
	OMJF7Wvckc1AQGcWvOexi4NLXfTC2ye3IANDY1zulyqPV0EraWmhJRyQ5AVz7OZBrB7c04
	epzs8WP5l7/TpckOSmFLrBiITJ0wtOZ+PEMpnpRPGevQgNZWI+NQkSaH6Jp5QkMTLhnCio
	h4NEuo0yzHZu5DSUiqMDJhhCy0hQx31XCDt/wl703G1PTEQLa1v73B9j3QcbEfSTTWnuqu
	Gid0Ax1zlb7podMW3XYgXatZ3jTgxEQ+mur/6JIyPFlozzGQtbHJcPwApLQk8w==
Date: Wed, 11 Dec 2024 08:45:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds"
 for Radxa ROCK 5A/5C
In-Reply-To: <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
References: <20241211063222.57904-1-naoki@radxa.com>
 <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
Message-ID: <b65002617b40c434821f5fac41d8e1b9@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Alexander and Fukaumi,

On 2024-12-11 08:36, Alexander Dahl wrote:
> there's still a typo in the subject.  It should probably also read
> "pwm", right?

Indeed.  Here's how the patch summary could be worded instead:

   arm64: dts: rockchip: Use PWM to drive blue LED on ROCK 5A/5C

Simplified and less wordy, but still descriptive enough. :)

> Am Wed, Dec 11, 2024 at 06:32:22AM +0000 schrieb FUKAUMI Naoki:
>> The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
>> also has a PWM function. Using PWM, the user can change the brightness
>> of the LED.
>> 
>> Convert blue LED from "gpio-leds" to "pwm-leds" and enable related 
>> PWM.
>> 
>> Acked-by: Dragan Simic <dsimic@manjaro.org>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> this patch depends on [1] which depends on [2].
>> 
>> [1] 
>> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
>> [2] 
>> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
>> ---
>> Changes in v2:
>> - Reword commit message
>> ---
>>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 
>> ++++++++++++-------
>>  1 file changed, 22 insertions(+), 12 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> index d0b9513d56a7..d72314d917da 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
>> @@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
>>  	leds {
>>  		compatible = "gpio-leds";
>>  		pinctrl-names = "default";
>> -		pinctrl-0 = <&led_pins>;
>> +		pinctrl-0 = <&led_pin>;
>> 
>>  		led-0 {
>>  			color = <LED_COLOR_ID_GREEN>;
>> @@ -54,14 +54,6 @@ led-0 {
>>  			function = LED_FUNCTION_POWER;
>>  			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>>  		};
>> -
>> -		led-1 {
>> -			color = <LED_COLOR_ID_BLUE>;
>> -			default-state = "on";
>> -			function = LED_FUNCTION_STATUS;
>> -			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
>> -			linux,default-trigger = "heartbeat";
>> -		};
>>  	};
>> 
>>  	fan: pwm-fan {
>> @@ -72,6 +64,19 @@ fan: pwm-fan {
>>  		pwms = <&pwm3 0 60000 0>;
>>  	};
>> 
>> +	pwm-leds {
>> +		compatible = "pwm-leds";
>> +
>> +		led-1 {
>> +			color = <LED_COLOR_ID_BLUE>;
>> +			default-state = "on";
>> +			function = LED_FUNCTION_STATUS;
>> +			linux,default-trigger = "heartbeat";
>> +			pwms = <&pwm11 0 1000000 0>;
>> +			max-brightness = <255>;
>> +		};
>> +	};
>> +
>>  	vbus_typec: regulator-vbus-typec {
>>  		compatible = "regulator-fixed";
>>  		regulator-name = "vbus_typec";
>> @@ -422,9 +427,8 @@ &pcie2x1l2 {
>> 
>>  &pinctrl {
>>  	leds {
>> -		led_pins: led-pins {
>> -			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
>> -					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
>> +		led_pin: led-pin {
>> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>>  		};
>>  	};
>> 
>> @@ -467,6 +471,12 @@ &pwm3 {
>>  	status = "okay";
>>  };
>> 
>> +&pwm11 {
>> +	pinctrl-names = "default";
>> +	pinctrl-0 = <&pwm11m3_pins>;
>> +	status = "okay";
>> +};
>> +
>>  &saradc {
>>  	vref-supply = <&vcca_1v8_s0>;
>>  	status = "okay";
>> --
>> 2.43.0

