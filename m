Return-Path: <devicetree+bounces-131400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1779F30C0
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 13:44:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 874CA1886E9A
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 12:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0663A204C11;
	Mon, 16 Dec 2024 12:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dXEzbnqS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546E5204C08
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 12:43:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734353040; cv=none; b=tNm6r2cPsezF2N/zl/Ocy+j33n4XSG61i5DkidabhATDpeaCUwNzp/nCKP64p6yw6FhA5MYfjzc+piY7sI/o2aup96GA/gKDsaTwI9X891l4IVh9PjC1kYz1bHbJJb58AoZf4pQkFOYAGDJYHvM6f4N0J6AvdBYkKhBTbEvyv2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734353040; c=relaxed/simple;
	bh=RZz6Lfw/3do751n1Waib60UAOky3TFznJ3CWwyFgs3Y=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=qP1UwqyOGibozAFLmycWRSTFKrLgMKzOIc7fTeD/Z8kB/jp+ZDM+c3BSFHGr0C0Utbyi8sbYX6DuwzXMXakkLL2jtMWSDRm+sCI2aVLYswT76BE6dWOf/TV0orOcZeVQ0igmRtgqIdbi7kaOZuhftZd6sAeveQdvZqaEQqQW3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=dXEzbnqS; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734353037;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tgCIti+ssc1Xg36yK4ivJkFfNVpSpn+E3Ta5XD/CT6M=;
	b=dXEzbnqSTbfhtyM33PrBBU884XkDCa6DXY+aj7MWnk5usglhL3BAuEv30dKMNFqbBZStwO
	PS4OaUZdwDpjXBFFPZ54GBiHa8OvN35aLiJwvu/5gtrQpQ6S2v1HOFweDbP99dOFzENgXY
	d7ij5KfMNh19mShGJtFIy8gMSQ6POO9mShnxo0rtBiJCzm22sb9o5qpHZ38/4xsDPkLw9p
	Zsne+K3V4jGckbz9kJZGTw1scAobs2mKyZ7OUiDYVftSAMeP2UhkfvD2EaVFtaUlo9CiHg
	t6QZxl0Ye8chmJF5H8afbpcUHMN22PWCdoEQ/lBC2s13DUjk5pnfUJbSVCxfZg==
Date: Mon, 16 Dec 2024 13:43:57 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 03/12] arm64: dts: rockchip: Use a longer PWM period
 for the fan on Radxa ROCK 5C
In-Reply-To: <20241216113052.15696-4-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-4-naoki@radxa.com>
Message-ID: <616cd7b81d5469de7bd5a84d2d23387f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-12-16 12:30, FUKAUMI Naoki wrote:
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

Looking good to me.  Please, feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> Changes in v5:
> - Reword commit message (Alexey Charkov)
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 630f026d856c..85589d1a6d3b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ pwm-fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

