Return-Path: <devicetree+bounces-126797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E0AA59E3318
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 06:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 420ADB251D6
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 05:33:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185AE171658;
	Wed,  4 Dec 2024 05:33:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="eZPw8q+i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609B02F22
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 05:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733290405; cv=none; b=cZfYWyLmp1+YUlwKCiDIJmq2xksZxQ09Qk19kuKrS01XPM8fASyh7SXsnD/c6dz57NIo/26gAKFCHHHUp5DSHxQxt/RzmG5k27bKZHmBAdaafuyfLNF/OnphwRZqHytlk6+yLbG82mK+c8S9TQraS90Vf5sKvq31OJlIX59qCQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733290405; c=relaxed/simple;
	bh=ACknXcIMrtIzX9+PYKY8xkZHn1LYGaDb+49lQGwfpiA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=A3fJPJmFuqJH6nYUE7KQ1D/MCZXk0InBVfix6/+FvhdqLTAybCqg5qTymHquxTfvDUAwZ1kzO67McKUdLYMGtaVORsvFhXABOAI/GEaJTJ/M8ey07MhWM/kG5nth4vOGpESbriAh95zRWKt1JIFFdg5Icchll7A8fLkU0mobLuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=eZPw8q+i; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733290400;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=P2g3bhmmojUvsrqFJkcem25HX+I+3zq50u2ZMd5NGWU=;
	b=eZPw8q+iyJOMj0BeNww5BAamEly+HdsRywK6ycDI/zdBYiMPKui26NlGnWSmv1KEER13m6
	qhdUV9/bwdDmqUHcGNYga2qRQvYHXLxoqlgeqUzXJSLPprA75eofoN3P18O4Tro/rHlOoU
	twSr4XcyBT1Upo7jQqm02PiBFFMqrbvYS0HufVfu41elmlTYOu7RG10x1PDMeEFgmzmSL7
	e4+2RUy6yCAGFIqSXvtrlc5AjzFFGI55QR4YRww6CEJmSeI3LGH8/Q9dkuYe54kYGacMZB
	1v7u5FR12lYaHUJjdvNxOeTSzp5CRy6h07d5nlqr3AmBshS25ApfxVUjvAQ9jw==
Date: Wed, 04 Dec 2024 06:33:19 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: fix cooling-levels in pwm-fan
 for Radxa ROCK 5A/5C
In-Reply-To: <20241204045447.1036-2-naoki@radxa.com>
References: <20241204045447.1036-1-naoki@radxa.com>
 <20241204045447.1036-2-naoki@radxa.com>
Message-ID: <ed28e18be8db8274abffbcf840ce0550@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-04 05:54, FUKAUMI Naoki wrote:
> fan behavior is better than current configuration.

Could you, please, describe better what makes this configuration
better, which fan make and model are you using, etc.?

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> this patch depends on [1] which depends on [2].
> 
> [1] 
> https://patchwork.kernel.org/project/linux-rockchip/cover/20241128121929.62646-1-naoki@radxa.com/
> [2] 
> https://patchwork.kernel.org/project/linux-rockchip/patch/20241119095113.78151-1-naoki@radxa.com/
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> index a1cac40d439e..472b41f0d47f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5.dtsi
> @@ -36,7 +36,7 @@ analog-sound {
>  	fan: fan {
>  		compatible = "pwm-fan";
>  		#cooling-cells = <2>;
> -		cooling-levels = <0 64 128 192 255>;
> +		cooling-levels = <0 120 150 180 210 240 255>;
>  		fan-supply = <&vcc_5v0>;
>  		pwms = <&pwm3 0 60000 0>;
>  	};

