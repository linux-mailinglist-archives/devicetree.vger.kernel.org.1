Return-Path: <devicetree+bounces-109116-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BBE9953D0
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:52:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF60FB218F8
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 487BB1DFE2A;
	Tue,  8 Oct 2024 15:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="kwDM4QeJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 022133BBDE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402738; cv=none; b=ffcQDbw6vNVC/7gDowdBmYj83xV5cn5W+CnSFjmsKLpPE8OuTc03pXd1C0RvtPeaMNwMMHLmY51V0YfoTL2qGXX1r6jFfaiDgIUmcdI58rpgLAFsBnOTUV4wGF+oWhABvsSa2qXJC3rvgh8xWyD+sqc6JMlqJ20VTgy6YWwCwZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402738; c=relaxed/simple;
	bh=b9UZ/bR4t8iJIkFgpVRh+5um8FvxiqdpoMDz9u+cTiY=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=o8MxpRa9++8r4yedTq7DVqoOFv4APK27XeDpcqh+7AGsynhbL5z0u+swNEUVuyQKZhr36HahcxbEtWZsVx0P7ctJdNQ2p35ekzPhrQCqQDARrKfj1MGwGj091QlkwdmpDsPVEHJaSYuO9y/5mj58prXd4MrZpNJZb2MPPqHVwjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=kwDM4QeJ; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402728;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Kk3o5thn4xjWxw8Xf2BHBrZcVBGNJ5pXmV6wOPKlixI=;
	b=kwDM4QeJiTro08ueSlnQwif1yLByb2XotiWQx0n6LCdOeAwBoYhf/YTGIH43gDVGmqA4Ho
	zE2w+QHGJhKK7G9M6CzXVXjO/NWHxobKJAglV//pOCvSXtBiIKQsPIbQk2ufasjF43e0MC
	NilzDzyYM/qYevmVOGbO8sip0zTFcjyMWPK2XbDx29myi63w/PQSfh5k+xdOx5Zhvrg5Qd
	PnjwlDm0m/WSW50rpO5yo3PbEZemFeWwTuLp+2j44PRCRvZT6nkp2s1WK50Gyz+h98MWTE
	DiuCTAI5wDFqisoN4SO8w+/6xx082cIhSWI4sTMbGMKZlq1Cx0pLSzTSqXE45g==
Date: Tue, 08 Oct 2024 17:52:08 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/5] arm64: dts: rockchip: px30: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-2-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-2-didi.debian@cknow.org>
Message-ID: <449771bdf7a652e716b4cf3ad64e6ec5@manjaro.org>
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
> Update the px30 DT files which still used the deprecated variant.
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
>  arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-evb.dts                | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi  | 2 +-
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi          | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> index 5eecbefa8a33..dd715d22d4d2 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-engicam-px30-core.dtsi
> @@ -50,7 +50,7 @@ rk809: pmic@20 {
>  		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> index 0a90a88fc664..c9d7b32da997 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
> @@ -189,7 +189,7 @@ rk809: pmic@20 {
>  		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> index f18d7eb9a9c7..d22ea65b364c 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-firefly-jd4-core.dtsi
> @@ -70,7 +70,7 @@ rk809: pmic@20 {
>  		interrupts = <7 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> index bb1aea82e666..eb0bb78cff7d 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> @@ -127,7 +127,7 @@ rk809: pmic@20 {
>  		pinctrl-names = "default";
>  		#clock-cells = <0>;
>  		clock-output-names = "xin32k";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc5v0_sys>;

