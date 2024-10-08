Return-Path: <devicetree+bounces-109117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81E3C9953D2
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 17:53:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2FF01F257B9
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 15:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D1451E0493;
	Tue,  8 Oct 2024 15:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ifoFRf64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ADE3BBDE
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 15:53:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728402786; cv=none; b=mGvgTXq+bcUXeYYLPAagXb0mC+HMOpWMX2w5ZE2j+gadCsHszguv6fIN4gXy8w7UX53VPTyDzmZUDlkpf94B8rGeRCHjXwAnqUNC+Uhfj4kDlacp/U7hCxgozmrkt7ZmwwzM+TB9SPr6EORhNqBf+X+2xOLI20A30Knu31bcd0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728402786; c=relaxed/simple;
	bh=SVOO3o6gkSSliFrzknXAyArTL17nHzoZiHcyazR2sMg=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=eI8vIuCBLISpq36FMOSCw6yRuHuo7ld7X1VB+KuDAda2zglOSZtNFmeFO5GHRm9Gbq/YLFIK3snozIGP5jwwNe/uyBqY0CnfDKhvOs4Qt5Uvtv2H4tgWRyYyk/rGfAwxgPda8V1rnhswuz3a92Szz0tz9G9UU8D27iNXW/eO0n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=ifoFRf64; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728402782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wpnOgqM2xj0mohBFrUsNXZXPfmrigdujlR8Hwib/2xA=;
	b=ifoFRf64+5I5blWMZQHBdUTLkXEfVjxXjEb9CYECIUlZVTAXKQaNjm61lqlTj54W5ju+t6
	2SdvZL5RpbmrPuqPvOAvoow6GpvC0g+QIyggaTD6HYtWe3lw+AcphXyLa0zzisE2WbuZc5
	RQX8tH8fzjYm80i5IJdLQ0SoolWqG0sKiPBNZQcULjboVCqaeY9sDX0nfO7vlnUsOgJe/t
	AN+2Bo2ZdcKsw4GpgEcSYCSmYYK/7hODF5foU8SAIAcm1FOB6TfCFDZNGb3SKchbrvn639
	vKmqp/bqfmoEmvymVgpUcEQ6mgaJN/cw+s2wvQitvMelPfLmAOhhP3qfbI/vNA==
Date: Tue, 08 Oct 2024 17:53:02 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: rk3328: Drop rockchip prefix
 from s-p-c PMIC property
In-Reply-To: <20241008105450.20648-3-didi.debian@cknow.org>
References: <20241008105450.20648-1-didi.debian@cknow.org>
 <20241008105450.20648-3-didi.debian@cknow.org>
Message-ID: <a30f1363b47e6e928685f9f01110230c@manjaro.org>
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
> Update the rk3328 DT files which still used the deprecated variant.
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
>  arch/arm64/boot/dts/rockchip/rk3328-a1.dts               | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-evb.dts              | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts       | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts           | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts        | 2 +-
>  arch/arm64/boot/dts/rockchip/rk3328-rock64.dts           | 2 +-
>  7 files changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> index 824183e515da..9406a887652d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-a1.dts
> @@ -159,7 +159,7 @@ pmic@18 {
>  		interrupts = <RK_PA6 IRQ_TYPE_LEVEL_LOW>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <0>;
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> index 1eef5504445f..12a4e421ec95 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-evb.dts
> @@ -121,7 +121,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> index a4399da7d8b1..a10847509bfe 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
> @@ -181,7 +181,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-0 = <&pmic_int_l>;
>  		pinctrl-names = "default";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vdd_5v>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> index f20662929c77..99499a0bab19 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-orangepi-r1-plus.dts
> @@ -152,7 +152,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-0 = <&pmic_int_l>;
>  		pinctrl-names = "default";
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> index 414897a57e75..88bb95075b6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> @@ -191,7 +191,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> index 3e08e2fd0a78..905ef4b94095 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dts
> @@ -249,7 +249,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> index 90fef766f3ae..7d179aae8d24 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
> @@ -181,7 +181,7 @@ rk805: pmic@18 {
>  		#gpio-cells = <2>;
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pmic_int_l>;
> -		rockchip,system-power-controller;
> +		system-power-controller;
>  		wakeup-source;
> 
>  		vcc1-supply = <&vcc_sys>;

