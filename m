Return-Path: <devicetree+bounces-200575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 376B7B1534C
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 21:14:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 880B618A5DAC
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 19:14:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8429C24290D;
	Tue, 29 Jul 2025 19:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="uJKVPu3R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92E3123D2A8
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 19:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753816439; cv=none; b=tB9pV0ryKn6bwqhf5zYeIWqFUAgyna9S3mgsw6cIckkWfYngxDkrA6WLWoUgGFomj3VNNF03AJ6+dZjqLQSeGOxbbyjF3q4lLRvaAIQTvg7t//v1j96dI4GOvlHTnVG3XMgzyXNiB+qwwaLUJvt7Drnnh9YP2o5+bQQYEkQxJ9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753816439; c=relaxed/simple;
	bh=wPR0IqaBhpXds76ahohpha15fraXBnavs0jx2bxg4Do=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=mCyPegW0lJltibNkyll/2BiecYSRvyCL6+9G9D1TXnGzF3Imm4tPq5Wdynq0opPERN4vfTYrFN+/5Joq0CVGpoFLoJtk+mCwVHBM4LXGj+05jnjUbr1rCWVdhMg8C7Ex0T2PKbJ+rXApYuCfLU9JPgQFnIlomsFu0erTpB2tOcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=uJKVPu3R; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753816435;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KKWyy9AysMqp+foLRIk/frdK0mBNoA6TGv7vzHMpIoo=;
	b=uJKVPu3R1sIM5+48xB8nDMZO4mC4PkFIyss6I7l6EZuQiAz+M+Ix2y+XAz2yt8oe5SyYK8
	3kgR0b3QGbCieJHK3ACSDl0TmIURCM7yzLl3WgZQ7zmHlvbetnFcU631ZtzePaf1Fa1Wjs
	P23xZX9+p4ZlUp7tHbH/MXDsH4toLTMqHVxqCL3SMzauCyaqyX1Vy1ChM1F4uibD1ORLy1
	E4toMslBj6UaIAEacWaPTCEk/OFyWV4FLOnTS/+YnWIsl9KZ+5/SRdElBcBoA895WcB8ME
	eQWKyN51kOL4bgs9hXwjz69y9L2CSJgGrhb3J0x3XArCv9ny+ZfRhXwjqyv59A==
Date: Tue, 29 Jul 2025 21:13:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert
 Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Pinephone Pro: Update WiFi
In-Reply-To: <20250729190712.145817-1-pbrobinson@gmail.com>
References: <20250729190712.145817-1-pbrobinson@gmail.com>
Message-ID: <a2f4e97dd56549b920f23168a9d42b87@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-07-29 21:06, Peter Robinson wrote:
> Update the WiFi configuration to include the wake-up
> pin and add an ethernet alias to allow assignment of
> a mac-address from the firmware.
> 
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  .../dts/rockchip/rk3399-pinephone-pro.dts     | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 585ef0fd88ef0..05f7b506f3594 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -21,6 +21,7 @@ / {
>  	chassis-type = "handset";
> 
>  	aliases {
> +		ethernet0 = &brcmf;

The same comments I made on your Pinebook Pro DT patch [1] apply
here as well.  To sum it up, I'm sorry, but an alias like this one
isn't acceptable.

[1] 
https://lore.kernel.org/linux-rockchip/20250729185827.144547-1-pbrobinson@gmail.com/T/#u

>  		mmc0 = &sdio0;
>  		mmc1 = &sdmmc;
>  		mmc2 = &sdhci;
> @@ -689,6 +690,12 @@ vcc1v8_codec_en: vcc1v8-codec-en {
>  		};
>  	};
> 
> +	wifi {
> +		wifi_host_wake_l: wifi-host-wake-l {
> +			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	wireless-bluetooth {
>  		bt_wake_pin: bt-wake-pin {
>  			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> @@ -715,7 +722,19 @@ &sdio0 {
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
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "host-wake";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_host_wake_l>;
> +	};
>  };
> 
>  &pwm0 {

