Return-Path: <devicetree+bounces-128893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D229E9B78
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 17:22:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E5C72165677
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 16:22:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2DA13B58F;
	Mon,  9 Dec 2024 16:22:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="tea2egOu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7773D13C695
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 16:22:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733761324; cv=none; b=OYPHzo3LCUqC4PEElvvM4/t8AO3gnDgyO9s9ygChcuhWQRe9hfTzV8aIO2V1BAs4hDQHQ3alE8ll7PMA557JpUjiHAM4qksg2BTMw+caKxzg+f/Bd4YypOnz973/Zo4cHAPOhCEDH6ackrRedjrj+qmL36KH2A9VRSpgNSZ7XYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733761324; c=relaxed/simple;
	bh=X8ey/UIjvzOxRvMp37JXKaQx6i87QRQFmAF77F9r58A=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=OFfrAKQqnYnCDvOR20nUAp744CXiwrxYQmQAOwet19/ZWZiSaxCtUoUb/v9GLP62DIEtr4MX8ef7k8U5D/4WSIAdafyhN/ptGpR8dQ0M5YYMpMvj42yuYx+tXSFBM5efWbcAXLhPp1OuHqVfEV+pY/QVcMZroOpPWYn+F/Sxm04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=tea2egOu; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733761319;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TNu30NMcXpHXQeKZCe45rgGouT76yWzLuEVZhUqrCBo=;
	b=tea2egOuca8a6xvcOAiUvV8A/iJyDV/OGrvxPVqHctBTofq6XbX9haevYAls6D4Vsz9xse
	C33EeQCckkYu+Iex1tmslZDnxgU3aDRxv7EaFvO2GPkv2iYywvIatrdU9gjUnjl4CK2e3M
	lnjCO7Tr67t2npurOlYuvzrDARI2OQ1/blU9qGwlNnPipXtnWy1n1lankdY5JY4gpczby7
	6+F3q5majfHjZvvyOFmDZIeoslNYSFtdumi9ZWkBDvGHLhzHfWy3FJjaZ/d5ke3hJ+trHY
	TojDmmVd8y7oCfQ6/2iVFPOTIz4b9pxtN5gFkb+cbp5Gh6z/UJQQBWQOFm3Nyw==
Date: Mon, 09 Dec 2024 17:21:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: convert blue LED to "pwd-leds" for
 Radxa ROCK 5A/5C
In-Reply-To: <20241209134158.4811-1-naoki@radxa.com>
References: <20241209134158.4811-1-naoki@radxa.com>
Message-ID: <aa66361152338edcf6bc2709f5120684@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-09 14:41, FUKAUMI Naoki wrote:
> convert blue(heartbeat) LED from "gpio-leds" to "pwm-leds". user can
> change brightness.

Please, start all sentences with uppercase letters, because when
there are periods (i.e. the '.' characters), there should also be
matching starting uppercase letters.  As we know, that basically
defines the primary syntax of a sentence in English.

I'm sorry if I'm stating the obvious, but this patch description
simply doesn't read well.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

I haven't checked the entire patch in detail, but as the blue LED
(a.k.a. the IO_LED) on the ROCK 5A and 5C is powered by a SoC pin
capable of generating PWM output, according to the board schematics
that I checked, making it possible to adjust the LED brightness
makes sense to me, and describes the hardware a bit better.

Thus, please feel free to include my:

Acked-by: Dragan Simic <dsimic@manjaro.org>

... and please send a v2 with the patch description improved as
already suggested above.  That suggestion also applies to pretty
much all other patches that you sent recently.

> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
>  1 file changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index d0b9513d56a7..d72314d917da 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -46,7 +46,7 @@ hdmi0_con_in: endpoint {
>  	leds {
>  		compatible = "gpio-leds";
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&led_pins>;
> +		pinctrl-0 = <&led_pin>;
> 
>  		led-0 {
>  			color = <LED_COLOR_ID_GREEN>;
> @@ -54,14 +54,6 @@ led-0 {
>  			function = LED_FUNCTION_POWER;
>  			gpios = <&gpio3 RK_PC4 GPIO_ACTIVE_HIGH>;
>  		};
> -
> -		led-1 {
> -			color = <LED_COLOR_ID_BLUE>;
> -			default-state = "on";
> -			function = LED_FUNCTION_STATUS;
> -			gpios = <&gpio3 RK_PD5 GPIO_ACTIVE_HIGH>;
> -			linux,default-trigger = "heartbeat";
> -		};
>  	};
> 
>  	fan: pwm-fan {
> @@ -72,6 +64,19 @@ fan: pwm-fan {
>  		pwms = <&pwm3 0 60000 0>;
>  	};
> 
> +	pwm-leds {
> +		compatible = "pwm-leds";
> +
> +		led-1 {
> +			color = <LED_COLOR_ID_BLUE>;
> +			default-state = "on";
> +			function = LED_FUNCTION_STATUS;
> +			linux,default-trigger = "heartbeat";
> +			pwms = <&pwm11 0 1000000 0>;
> +			max-brightness = <255>;
> +		};
> +	};
> +
>  	vbus_typec: regulator-vbus-typec {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vbus_typec";
> @@ -422,9 +427,8 @@ &pcie2x1l2 {
> 
>  &pinctrl {
>  	leds {
> -		led_pins: led-pins {
> -			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,
> -					<3 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		led_pin: led-pin {
> +			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> 
> @@ -467,6 +471,12 @@ &pwm3 {
>  	status = "okay";
>  };
> 
> +&pwm11 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pwm11m3_pins>;
> +	status = "okay";
> +};
> +
>  &saradc {
>  	vref-supply = <&vcca_1v8_s0>;
>  	status = "okay";

