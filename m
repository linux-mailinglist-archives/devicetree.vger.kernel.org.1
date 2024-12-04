Return-Path: <devicetree+bounces-126796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D39E3316
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 06:32:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E154A284E27
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 05:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05BC184527;
	Wed,  4 Dec 2024 05:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Bvvj9Ls2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD572F22
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 05:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733290336; cv=none; b=j3LScGGwn23CBRicFFbQpNReCSpn0n0QZ85ieU+hxvw5NpUWe9CgVRwjRzS+25JaurKb+gqV3ChpNyWWDPphexFgH4ke23CwxfqpEfra8w/anRSRpaYzF0Vu3oR7UoACcm0fCjnP+owY7b9KTr5OAnfmC3jEEEUBAE7uI0TdE8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733290336; c=relaxed/simple;
	bh=l9IzWt+vT6V6XRfj0p1LOJ4GbGEQ77NKKt2ugO5kTZ4=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=VX2ET9P6JEHtK9s9M+kQUW1KeuyznflOU3JC7xy6vvZpbH9WQ2dSB+v7ABV/ZDAOJs1jsJQV/EjZLChvvAAD9wMIHHABW0yW4s7YFWubnIDYGsBWU4OiZ8c3YJ0Fvr5d5Fl7jYYkJJNCWLZ4Cv+3EuQrBMlWGNft1uNsrQ32lPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Bvvj9Ls2; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733290325;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Az5A+rRdCT+65dWELbjmGzucu2S59JBdQaqLrwEHadw=;
	b=Bvvj9Ls2Cr3DuxHyKHd72SdJVenXMbAFJ+W6dI22xe4NOZOqVRsMrUdJ7Tu5tywLZGXTRe
	swL2E2QZ5muv5SZ9v0FOu1FbnHJAmPFrWWjeuwga2fjByZUdWAjqLhXjSsZt0U9V332iAl
	UWC/Tx6NBp1Vkz2gs/5TUEtvo2jVtZL+kGvpaaO39rbl0Pq00LGo/F3g5ge+MwyyyiSy6p
	zFj+iU/MKxVVNbxgnHCC9mxAgNIT/rJcYEZ2vGwk5AVvPOBiLpeiZ7LRZ2V+EeT8qAm+0S
	+6feBGlcm8OPgILU5uBFZ/oLtYWPyjMdcJIl0uaRCkMwF/TLnp0BY4t3xkJAQg==
Date: Wed, 04 Dec 2024 06:32:04 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add package_thermal for Radxa
 ROCK 5A/5C
In-Reply-To: <20241204045447.1036-1-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
Message-ID: <71aa84af7a030e66487076e0976c8cad@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

Please, see a few comments below.

On 2024-12-04 05:54, FUKAUMI Naoki wrote:
> add and enable package temperature based active cooling.

I'd suggest that you rewrite the patch summary to read like this:

   arm64: dts: rockchip: Enable automatic fan control on Rock 5A/5C

and to rewrite the patch description like this, which is a recycled
and a bit improved description of the commit 4a152231b050 ("arm64:
dts: rockchip: enable automatic fan control on Rock 5B"):

   Link the PWM fan on Radxa ROCK 5A/5C as an active cooling device
   managed automatically by the thermal subsystem, with a target SoC
   temperature of 65 oC and a minimum-spin interval from 55 oC to
   65 oC, to ensure airflow when the system gets warm.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
> ---
>  .../boot/dts/rockchip/rk3588s-rock-5.dtsi     | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index a8f40f43c838..a1cac40d439e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -33,7 +33,7 @@ analog-sound {
>  			  "Headphone", "Headphones";
>  	};
> 
> -	fan {
> +	fan: fan {

It would be better to use "fan: pwm-fan { ... }", to ensure some kind
of consistency with the other similar portions of board dts files.

>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
> @@ -379,6 +379,36 @@ rgmii_phy1: ethernet-phy@1 {
>  	};
>  };
> 
> +&package_thermal {
> +	polling-delay = <1000>;
> +
> +	trips {
> +		package_fan0: package-fan0 {
> +			hysteresis = <2000>;
> +			temperature = <55000>;
> +			type = "active";
> +		};
> +
> +		package_fan1: package-fan1 {
> +			hysteresis = <2000>;
> +			temperature = <65000>;
> +			type = "active";
> +		};
> +	};
> +
> +	cooling-maps {
> +		map0 {
> +			cooling-device = <&fan THERMAL_NO_LIMIT 1>;
> +			trip = <&package_fan0>;
> +		};
> +
> +		map1 {
> +			cooling-device = <&fan 2 THERMAL_NO_LIMIT>;
> +			trip = <&package_fan1>;
> +		};
> +	};
> +};
> +
>  &pcie2x1l2 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie20x1_2_perstn_m0>,

The rest of the patch is looking good to me.  Thanks for the patch!

