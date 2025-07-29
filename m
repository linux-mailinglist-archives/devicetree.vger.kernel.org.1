Return-Path: <devicetree+bounces-200576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D00B1534D
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 21:15:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 983F53B5546
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 19:15:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D107101F2;
	Tue, 29 Jul 2025 19:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="LCQ0Lvu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3568290F
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 19:15:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753816537; cv=none; b=eVjV7OtsgL3FcWQlKYT8PvhEY9sJuHSLBvYHCGyb/uT4x1lhU1MX+2YOO8Hifi1B8IZZJx3Lxyl3Zm2MR69p2BbzP7ZapOoMR3hDbfJ5S0VgsUpT1m/gpgyfHNY8TGV+3lQrKQ8cpyalo5x2xTmuEe33VxcDDnqMQirwbUk7IYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753816537; c=relaxed/simple;
	bh=j1si0bnDNWnGdsphG8TBsrvfTtvEDda8oZ9GumHSaiw=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=lw4NL3Zb8TVac9kQwUx1+o0lWv6N+PkeZJ5neZF7bxRcn5z+SURuRdDEGF0fqRCEIR+v40AJJaAksAowaj1vRxdh26Vxb2c34yZS/KmUyP7nGjf5ja1ovlFlgTEgB8RQ6Gmw/WTA/HF4KtSTk78n7IMJenTyrAzV9E1EciHASoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=LCQ0Lvu1; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753816216;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7BddgZihFUFAjsrCi2y4RE93LpDykX88yB4HjnBosqY=;
	b=LCQ0Lvu1ttFZ5yJFAlgeHXqd0KrgYOWBtaoOltBY1vy8HCJa4TsO26JiMfZzcpfYRefy5J
	pGlnvO1Jt6RftJdu/6AMaj+7lx/5GImaZvTRZs2jBzDSSfJVUjYSfR5L5ChK3J8JtsSRZc
	6RH+3/QTM3v+EI+NJkZSKxUl1y7giKPxVoZw05mI/BRu0MY0k+FjqkPPZWROlirfX4BF7M
	XzfYD3VHjO3+thnRy1YyHXXNAHTbp9hA8aNoC3ZY3ZevWVsD+y0yEgJ2ZMrcsY8SWECWpF
	KvE74JpfHpG03XcijKMhJWy0G5Wub+LWlMY1ewwLFvqhW39rL37whxJsy6iLbQ==
Date: Tue, 29 Jul 2025 21:10:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert
 Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Pinebook Pro: Update WiFi
In-Reply-To: <20250729185827.144547-1-pbrobinson@gmail.com>
References: <20250729185827.144547-1-pbrobinson@gmail.com>
Message-ID: <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-07-29 20:58, Peter Robinson wrote:
> Update the WiFi configuration to include the wake-up
> pin and add an ethernet alias to allow assignment of
> a mac-address from the firmware.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index 5a8551d9ffe47..05c48cb09df6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -19,6 +19,7 @@ / {
>  	chassis-type = "laptop";
> 
>  	aliases {
> +		ethernet0 = &brcmf;

I'm sorry, but this alias isn't acceptable.  In a few words, this
simply isn't an Ethernet interface.

We're already stretching a bit the dynamic nature of, well, everything
with the aliases in the Rockchip DT files, and an alias like this one
would be stretching the whole thing beyond the breaking point.

>  		mmc0 = &sdio0;
>  		mmc1 = &sdmmc;
>  		mmc2 = &sdhci;
> @@ -883,6 +884,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
>  		};
>  	};
> 
> +	wifi {
> +		wifi_host_wake_l: wifi-host-wake-l {
> +			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	wireless-bluetooth {
>  		bt_wake_pin: bt-wake-pin {
>  			rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -940,7 +947,19 @@ &sdio0 {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>  	sd-uhs-sdr104;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
>  	status = "okay";
> +
> +	brcmf: wifi@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake_l>;
> +	};
>  };
> 
>  &sdhci {

