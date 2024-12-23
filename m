Return-Path: <devicetree+bounces-133505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E12469FAD2B
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:34:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3BDD7188511E
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5086B192D6B;
	Mon, 23 Dec 2024 10:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="c2VpAnRb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A839F18DF6D
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:33:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734950040; cv=none; b=cB/wnIy8ykQgeEBZ+559Y6GSJsykHhy+rAyC9kznn/9Y3XmCWaXXtyxUebVp1k2FGg2aTQKfCpxd59BY9cwfYvL1Au2KwmkfQgJQcUL/y5mT3L80CSRPEfzETh3Vqn2xKWr7XZkQzro6O42n8B2nCX+Zj6Qo3KYDO+dYlsLd85I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734950040; c=relaxed/simple;
	bh=jlyDyKpLDvIeI4mkegVlDpL3qVXNnJkpIqqZ0Wava/s=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qyZqqcsEKXbelA1VC//IMWefR6x1/prN9N77V0EK+x87Ofk/cHQMg50eOe8WDXPaAoKjo7YdEuLtF273Kgw5z1cH/30nIqniGurfk0cNs1arjWNWss/3CMmUyUuecc+/gnSnbIF7Y25oPbrSCaj0s0tme6on5KHEgyviqTBCQtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=c2VpAnRb; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734950036;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+uDqEKfZmjRtcwf9AXrkiBbUT1Vkgc3fKlMIoDQ7vkw=;
	b=c2VpAnRbRY22cr9v8qkdIJ+xMW0Gvvutt4eXuOrsvWZz/YeT1mk1KgyAIH7wPOMPMeT9KT
	GSSKOFOu2HZhv2LKXsNbGB4rKt2b1JTE4YqmC6LCw+NJFE+sYtog5uL/Fk6TWczpxfcwLD
	Si1PMr/jsbGz3eCUKEUaOsO8ajB7RkgenpztFkCK9SNOtyewaQlvtfr/mVhz1+gOCREokA
	p1YSA2/bOkAPqNEFzKpWXOxgaH1QbLoQBzAbnrymakhMcd61pn7RC+sbVRWG9M27tqfxic
	L/E4nYEyd05g6+ZAqSHQUfyG358QJPKZzzqTg3fMOwLcT/uwcOBM7sR3KSQCMg==
Date: Mon, 23 Dec 2024 11:33:56 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v6 2/7] arm64: dts: rockchip: Use a longer PWM period for
 the fan on Radxa ROCK 5C
In-Reply-To: <20241223013926.1134-3-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
 <20241223013926.1134-3-naoki@radxa.com>
Message-ID: <b474fcce9df1ec4474237959fddcd84e@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Fukaumi,

On 2024-12-23 02:39, FUKAUMI Naoki wrote:
> The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
> total switch-on time of 0,6us and a total switch-off time of 6us [1],
> meaning that the current PWM period of just 10us is too short for
> fine-grained fan speed control. Increase the PWM period to 60us, so
> that the switch-on and switch-off time of the MOSFET fall within a
> more reasonable ~10% of the full period, thus making lower PWM duty
> cycles meaningful.
> 
> [1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

As a note, it seems that you forgot to include my Reviewed-by tag
for this patch in the v6. [*]

[*] 
https://lore.kernel.org/linux-rockchip/616cd7b81d5469de7bd5a84d2d23387f@manjaro.org/

> ---
> Changes in v6:
> - none
> Changes in v5:
> - Reword commit message (Alexey Charkov)
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - Reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 23e9b447b6f0..910ec67bd4eb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

