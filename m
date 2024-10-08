Return-Path: <devicetree+bounces-109120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CDBF49953D6
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:55:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2420DB246C8
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B421E04AD;
	Tue,  8 Oct 2024 15:54:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="OEDTsckZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58CA13BBDE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402896; cv=none; b=Em1zYoIzrGEdba44Qsth1xSLn4X9vN6XgIEJSyVGY5IMLtszo2K6sAqO3N82VlOlMg/cD552z5mrnWh76x0YTvIcq+fiYKfHuzWWPo8nMF3kIuvJUZM8VUZ7lhyvjYcNkOf5Z4FPkIR+514X8xt54S4fGHJPMYrsNJaBFBunXG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402896; c=relaxed/simple;
	bh=YnrqoI+cMBALjqM4wbKq8IJdlpOW54/ugszAlKM4nwQ=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ltsXumJPiM0212lU8iM4sBHhOVE1TspgnvyRZzWgve7erCwGmH47pCKfo9hdSaZbaKpus5q8xK3GtHCa2G7MxbyBHmc/txuC3fpYWR8Rx/a5BRkvM5JRfEGRLonQZVyX3xTFSBdygFEtbqTdOYrTySefg0qdUFgx5XzcRQdK9cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=OEDTsckZ; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402892;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SodGbj7qdgzorw118gA2CyJVzKvbzQzxJsBU9zICqiI=;
	b=OEDTsckZP0Gqyri5nki7w2K3lhZituU+rXPvuYIf5ym8V0BxSlXD0qWIFaJzrbrlCugOwk
	hLMwzWB8s8kkjaHtxcaOgbLoAmCYJR2M2KUVfAx0zDvxhGouM8peFq0FM1MfPDcFAxSKio
	ucpdStxod99ICj57Ml2Bxg+h0ED5/jBhCEG0w+FjUtCvOdzPIzi9ig0RV7vYSFLuZSibV/
	Rp6TEXdsMrJoItyvH0X6rIXAauyUGh9ILJpcWoXq0gXR2DtTcEPHuXBB/qxiizDXpWVd2s
	5awMt6WUtTD7aQwyq+yQSPwVvZvTuce+cy+7b+mic4AoxSfvraSFQyzdhgt3dA==
Date: Tue, 08 Oct 2024 17:54:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 4/5] arm64: dts: rockchip: rk3399: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-5-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-5-didi.debian@cknow.org>
Message-ID: <fc6c1ab0b116a236de394391859c6226@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Diederik,

On 2024-10-08 12:48, Diederik de Haas wrote:
> Property 'rockchip,system-power-controller' was deprecated in commit
> 961748bb1555 ("dt-bindings: mfd: rk8xx: Deprecate
> rockchip,system-power-controller")
> 
> in the "rockchip,rk{805,808,809,817,818}.yaml" mtd bindings and its
> replacement is (just) 'system-power-controller'.
> 
> Update the rk3399 DT files which still used the deprecated variant.
> 
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

This patch is looking good to me, all changes introduced to the
board dts files are fine and pretty much straightforward.  Thanks
for this patch, and please feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

See also a related rk8xx MFD patch that I just submitted. [1]
It builds upon the changes you introduced and helps with saving
a few CPU cycles while probing.

[1] 
https://lore.kernel.org/linux-rockchip/08d4e88974c205eba124086ce156622e2e4cdc20.1728397516.git.dsimic@manjaro.org/T/#u

> ---
> changes in v2:
> - rephrased commit message a bit
> 
>  arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-evb.dts            | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-firefly.dts        | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts  | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi          | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi        | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts   | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi     | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi      | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi  | 2 +-
>  19 files changed, 19 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> index 1489eb32e266..040845570a6d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-eaidk-610.dts
> @@ -309,7 +309,7 @@ rk808: pmic@1b {
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "xin32k", "rk808-clkout2";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> index 54e67d2dac09..ef29dc0c3caf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-evb.dts
> @@ -178,7 +178,7 @@ rk808: pmic@1b {
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> index f4491317a1b0..e7d6c8e34210 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-firefly.dts
> @@ -326,7 +326,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> index 5a02502d21cd..ed0301ff642c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> @@ -252,7 +252,7 @@ rk808: pmic@1b {
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "xin32k", "rtc_clko_wifi";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> index c772985ae4e5..00e399d6dabd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-khadas-edge.dtsi
> @@ -315,7 +315,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vsys_3v3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> index b0c1fb0b704e..6086b9782f29 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-kobol-helios64.dts
> @@ -309,7 +309,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		vcc1-supply = <&vcc5v0_sys>;
>  		vcc2-supply = <&vcc5v0_sys>;
>  		vcc3-supply = <&vcc5v0_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> index f12b1eb00575..d2ffa5fdbff7 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
> @@ -187,7 +187,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> index 7debc4a1b5fa..65ea8dff0476 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
> @@ -269,7 +269,7 @@ rk808: pmic@1b {
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&ap_pwroff>, <&clk_32k>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> index 07ec33f3f55f..2a354a3a281b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
> @@ -262,7 +262,7 @@ rk808: pmic@1b {
>  		clock-output-names = "rtc_clko_soc", "rtc_clko_wifi";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index a5a7e374bc59..d02aea19b329 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -447,7 +447,7 @@ rk808: pmic@1b {
>  		interrupts = <10 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l_pin>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sysin>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 1a44582a49fb..33c128bff6fa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -243,7 +243,7 @@ rk818: pmic@1c {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> index 650b1ba9c192..80768b6d3bdf 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi
> @@ -205,7 +205,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index d95b1cde1fc3..9b0b3e5ccbe6 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -298,7 +298,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc3v3_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> index 475d57f64d58..f8c3454435ab 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -220,7 +220,7 @@ rk809: pmic@20 {
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>, <&i2s_8ch_mclk>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		#sound-dai-cells = <0>;
>  		wakeup-source;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 9666504cd1c1..9814f5772002 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -245,7 +245,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> index 8146f870d2bd..335aa3cc1e88 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dtsi
> @@ -186,7 +186,7 @@ rk808: pmic@1b {
>  		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "xin32k", "rk808-clkout2";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> index 11d99d8b34a2..ddba1841e187 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> @@ -342,7 +342,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> index 31832aae9ab6..cd891bc199d9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> @@ -233,7 +233,7 @@ rk808: pmic@1b {
>  		clock-output-names = "xin32k", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> index 8823c924dc1d..86cf2f27ac13 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
> @@ -78,7 +78,7 @@ rk809: pmic@20 {
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;

