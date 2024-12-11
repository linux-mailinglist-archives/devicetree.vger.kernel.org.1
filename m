Return-Path: <devicetree+bounces-129625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B1AB39EC5E5
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ACF4616358F
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 07:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC9081C5F22;
	Wed, 11 Dec 2024 07:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b="Qyosz5DP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.thorsis.com (mail.thorsis.com [217.92.40.78])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116602451CE
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 07:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.92.40.78
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733903258; cv=none; b=uM335gts8uQGPlXSzGbNeIyDveyvilymSQb9NW51yH7CZ96iYCKL2IMjn28j1scvdPd+W81OaugnC5WtTXNCa80bE/HXJui15MJkqXUUKF74caOq+3g/bfx4U00kTBgSiee5+oDT8P1RwRkjB0zfmUMANkobbEBskPA/cygzdmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733903258; c=relaxed/simple;
	bh=eOKv4q1DqRUQ/CffyXReyT9UkeAnA9NNZrMXprtueLo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TvRxl5x06dPK2uogG+4Y6k1oAQDGBtADJzx0LbiO/Te8XYJ9+Vzxor5U9EhqgBqLAhDdagzL4Cfgxe41SQ/6DiY+XOaiYhHPc580ttWS00/OMLfyhqwJB0u7way2FI8gviKKSWZFTow+RMXQM7eRttR+5QZP6GmXQv7IzXkHiHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com; spf=pass smtp.mailfrom=thorsis.com; dkim=pass (2048-bit key) header.d=thorsis.com header.i=@thorsis.com header.b=Qyosz5DP; arc=none smtp.client-ip=217.92.40.78
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=thorsis.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=thorsis.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id B69011480185;
	Wed, 11 Dec 2024 08:36:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=thorsis.com; s=dkim;
	t=1733902642;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=JzEjIb+euENLOHwyb6X4snepElctm6Kijf58Y6wPvCc=;
	b=Qyosz5DPV86SlxwlUVgxHLPW/CVsMqwZin4slvzIWyyYiGin0KOaxoDE1ycLePOYwyXjYS
	ew6W/ypqAaTg5ZZ73NMwg9UeyiMEByYRNUj91oVdg2sozO/IXPxD6TeC38hZ+69BKsbIPO
	VOlA41qvwaZYXWrfUtJKwsoUUTe5KoLH1tq3xm9qj+meGXWlN1QMsNdLP0zEaQHmdCUqMh
	EkyASZ3HI0y28f9PNCft8sm1ZNLVxI8jtgI2UybcJ1itd7x4l8TfQkdQuXQS5PyvzGFF0i
	HO0QtSu7Gh375hO+3c5EBVagnSbvnPLedjb+YTPjfCTopfDSNkUWIQj3Dykrpg==
Date: Wed, 11 Dec 2024 08:36:49 +0100
From: Alexander Dahl <ada@thorsis.com>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dsimic@manjaro.org,
	sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Convert blue LED to "pwd-leds"
 for Radxa ROCK 5A/5C
Message-ID: <20241211-maturity-recess-33c8c3e1a771@thorsis.com>
Mail-Followup-To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	dsimic@manjaro.org, sebastian.reichel@collabora.com,
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241211063222.57904-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241211063222.57904-1-naoki@radxa.com>
User-Agent: Mutt/2.2.12 (2023-09-09)
X-Last-TLS-Session-Version: TLSv1.3

Hello,

there's still a typo in the subject.  It should probably also read
"pwm", right?

Greets
Alex

Am Wed, Dec 11, 2024 at 06:32:22AM +0000 schrieb FUKAUMI Naoki:
> The pin connected to the blue LED, GPIO3_D5, is not only a GPIO but
> also has a PWM function. Using PWM, the user can change the brightness
> of the LED.
> 
> Convert blue LED from "gpio-leds" to "pwm-leds" and enable related PWM.
> 
> Acked-by: Dragan Simic <dsimic@manjaro.org>
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209132406.4232-1-naoki@radxa.com/
> [2] https://patchwork.kernel.org/project/linux-rockchip/cover/20241209125131.4101-1-naoki@radxa.com/
> ---
> Changes in v2:
> - Reword commit message
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 34 ++++++++++++-------
>  1 file changed, 22 insertions(+), 12 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
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
> -- 
> 2.43.0
> 
> 

