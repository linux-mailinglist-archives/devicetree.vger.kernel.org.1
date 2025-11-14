Return-Path: <devicetree+bounces-238447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5BCC5B4B7
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 05:21:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D9758350DCD
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2E828751A;
	Fri, 14 Nov 2025 04:20:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="KRVBEpwe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail1.manjaro.org (mail1.manjaro.org [142.132.176.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E502874E1
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 04:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.176.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763094059; cv=none; b=rVGbN9z03rWedRLHsd2V8wxMvLdFMD7T3+sTB+Ecn/0KX6pWDO9jphiQbRgPwHGT2bGz1wverkCBmgwozXx4YiHGKJsRyIO53HEGgyXcrY3fZkSbQlxTCOo2aekG3kCLUIkMbgmUhEBda8EAsF57NQF7uS7QXDdrJ/jJy3gw2S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763094059; c=relaxed/simple;
	bh=/4EaHt2oICTgYiBd/CFnoWOKfZOPIgY/dKPi5/YUStE=;
	h=From:In-Reply-To:Content-Type:References:Date:Cc:To:MIME-Version:
	 Message-ID:Subject; b=jessoXh7Y1f+1IrKhTfjUUPjxFGaLZeWHBOyzwuDj4Eyv4JilbjBmt2MO2YR9mOByikj1/BgBolqUeXpoOFN05RaWqe8ahNyWJaNCX4+BMqbUorZiA1/X9MOZBwcd5eSWb3hh1/OOxckBUtn3zZrU4VVizkj4SV/Gvz9v1QEKbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=KRVBEpwe; arc=none smtp.client-ip=142.132.176.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id E899140ECE;
	Fri, 14 Nov 2025 05:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1763094054; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=7mqMVZGjRGxSNiyx8hmsml8fGRYwKvUMkxvdQwmOrmE=;
	b=KRVBEpweTP8WmX95GZlLn1IDJLjQmUiTLs3uBnT6f3CN9d3Nz5hv/IeM2G/SYCJRcSzIX6
	o9tDwOiKnwMxrziL/wYwoC5uzGUOq0/CKg91lXPupBJuIoKcfNRniAAtRj9F8tG9xLjJTO
	0qdCHDGPKzqYF9buCf2IHOnhoFj6ItOW0rFvtZiugouulI8lAxu9VIpHm0WpcRhRXoLs4J
	AtdURia3VXG9jWU065k6EZtqu9DjVi3+zjF3NEQEbkwtf/JTV1w9FvaW+KkVsdiqxaJRjN
	Ziu7q5sw8MlXk5gxCiRdJKZEy9UptswwUFdIOHL9z9sq4iWmztsFGSphqBN9Dg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251113124222.4691-4-naoki@radxa.com>
Content-Type: text/plain; charset="utf-8"
References: <20251113124222.4691-1-naoki@radxa.com> <20251113124222.4691-4-naoki@radxa.com>
Date: Fri, 14 Nov 2025 05:20:50 +0100
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, pgwipeout@gmail.com, didi.debian@cknow.org, jonas@kwiboo.se, ziyao@disroot.org, amadeus@jmu.edu.cn, nicolas.frattaroli@collabora.com, pbrobinson@gmail.com, wens@kernel.org, detlev.casanova@collabora.com, stephen@radxa.com, sebastian.reichel@collabora.com, liujianfeng1994@gmail.com, andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com, kuninori.morimoto.gx@renesas.com, damon.ding@rock-chips.com, kylepzak@projectinitiative.io, devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
To: "FUKAUMI Naoki" <naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Message-ID: <7b668c0b-f685-d909-4b05-02778a688839@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Remove default-state =?utf-8?q?=3D?=
 =?utf-8?q?_=22off=22?= from LEDs for Radxa boards
User-Agent: SOGoMail 5.12.3
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: None

Hello Naoki,

On Thursday, November 13, 2025 13:42 CET, FUKAUMI Naoki <naoki@radxa.co=
m> wrote:
> Currently, on Radxa boards, the power LED is turned on immediately
> after power-up, independent of software control. The heartbeat LED an=
d
> other available LEDs are subsequently turned on by the initial
> software, such as U-Boot, to indicate software is running.
>=20
> However, the device tree description for this behavior is inconsisten=
t
> and fragmented, with definitions split between the main Linux DTS
> files and separate U-Boot files (u-boot/arch/arm/dts/*-u-boot.dtsi).

I'm sorry, but the two paragraphs above seem to be redundant and
should be deleted, because they actually don't help with describing
what this patch attempts to achieve.

> This patch addresses inconsistency by removing redundant default-stat=
e
> =3D "off" definitions, as this is already the default configuration.

Mentioning inconsistency here also seems redundant.

> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts | 2 --
>  arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts | 2 --
>  2 files changed, 4 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts b/arc=
h/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> index b324527561558..79d316a1d8495 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-radxa-e20c.dts
> @@ -62,7 +62,6 @@ leds {
> =20
>  		led-lan {
>  			color =3D <LED=5FCOLOR=5FID=5FGREEN>;
> -			default-state =3D "off";
>  			function =3D LED=5FFUNCTION=5FLAN;
>  			gpios =3D <&gpio4 RK=5FPB5 GPIO=5FACTIVE=5FHIGH>;
>  			linux,default-trigger =3D "netdev";
> @@ -78,7 +77,6 @@ led-sys {
> =20
>  		led-wan {
>  			color =3D <LED=5FCOLOR=5FID=5FGREEN>;
> -			default-state =3D "off";
>  			function =3D LED=5FFUNCTION=5FWAN;
>  			gpios =3D <&gpio4 RK=5FPC0 GPIO=5FACTIVE=5FHIGH>;
>  			linux,default-trigger =3D "netdev";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts b/arc=
h/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> index 854c118418eb8..f737769d4a007 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> @@ -71,7 +71,6 @@ leds-1 {
> =20
>  		led-1 {
>  			color =3D <LED=5FCOLOR=5FID=5FGREEN>;
> -			default-state =3D "off";
>  			function =3D LED=5FFUNCTION=5FLAN;
>  			linux,default-trigger =3D "netdev";
>  			pwms =3D <&pwm14 0 1000000 PWM=5FPOLARITY=5FINVERTED>;
> @@ -80,7 +79,6 @@ led-1 {
> =20
>  		led-2 {
>  			color =3D <LED=5FCOLOR=5FID=5FGREEN>;
> -			default-state =3D "off";
>  			function =3D LED=5FFUNCTION=5FWAN;
>  			linux,default-trigger =3D "netdev";
>  			pwms =3D <&pwm11 0 1000000 PWM=5FPOLARITY=5FINVERTED>;

Removing the properties that introduce the default values is fine,
so with the remarks above addressed, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


