Return-Path: <devicetree+bounces-83483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAB39288DF
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 14:43:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 167911F22A80
	for <lists+devicetree@lfdr.de>; Fri,  5 Jul 2024 12:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE5AE1487D8;
	Fri,  5 Jul 2024 12:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HuGhRfW3"
X-Original-To: devicetree@vger.kernel.org
Received: from mslow1.mail.gandi.net (mslow1.mail.gandi.net [217.70.178.240])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F4F214A61B
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 12:43:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.178.240
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720183389; cv=none; b=eMLWdBsyAnpFswpys1xTy81ssxvfGvShu7HBaS9xLG+vGQl5S+oIy520sAtUVAORpgzaXdosjezRYmuw6JZyQEOCSmHvguuXWAkQRDPdXMHyafS1Quu7/E+44+oZIi3XYcpNHSil3hWZ5MuQw0lsKvZoT+CA4dfB7g1A+U9zpU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720183389; c=relaxed/simple;
	bh=jTCwjDZ/WqYKhhxkU8dDZ6T5ytrF7DP05rG8nV/C4Zg=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ZBXit+HfhAr1xNeUyrzXF+PomopZzFHLj1b7gyMDN3DHEf+rMJ1SI178by3bNLR0ZmLBgJHqQa0mE0eY11uTHRoSVrk2mv1KtihOYckjrTVDEdfadD15AzlSjFnWlDkjx6TiKlbVPUa7eZxariywzvEA/eRyQVBh3IWkUCq++ZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HuGhRfW3; arc=none smtp.client-ip=217.70.178.240
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from relay8-d.mail.gandi.net (unknown [217.70.183.201])
	by mslow1.mail.gandi.net (Postfix) with ESMTP id 3229BC782A
	for <devicetree@vger.kernel.org>; Fri,  5 Jul 2024 12:41:40 +0000 (UTC)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 708071BF20C;
	Fri,  5 Jul 2024 12:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1720183292;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=iosINar1te4jQmV0kLBug8VLhQo1H7OfnXMTToJiLeo=;
	b=HuGhRfW3NamX4GM3vt8ybyncRclOK3/tqvtVgmB/JmbdWBSGFLxDMmHteT0EZk2TFSVum2
	moDI4KjjZRtlQ2mpNmmIJoUqZXp29d7dG3Q8RLVTfRk/n5GEbFJn3xrG6id3VFVvmYyvJ4
	3IraKY0z4HAy1+oFuWNq34Pzt9d2TY48+5SLk3vvHxhEN3BKOUkCszMp7lI1E1Ohp4m3Xr
	1x1pun13K3J621FITvLwMfc5iJ+79vBUZSwuoZrXp9MEMZYFsVmbeM2ytT7n2of6t2LGeb
	1OueM1+GwUw7p9+7weWUWExO2tW9tbVF+4ezLyQ7Amzj/Mbh5bR61MDCRbXouA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian
 Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, soc@kernel.org, Thomas Gleixner
 <tglx@linutronix.de>
Cc: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Subject: Re: [PATCH v2 1/2] ARM: dts: armada-{370-xp,375,38x,39x}: Drop
 #size-cells from mpic node
In-Reply-To: <20240624145355.8034-2-kabel@kernel.org>
References: <20240624145355.8034-1-kabel@kernel.org>
 <20240624145355.8034-2-kabel@kernel.org>
Date: Fri, 05 Jul 2024 14:41:31 +0200
Message-ID: <87le2gj9j8.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: gregory.clement@bootlin.com

Marek Beh=C3=BAn <kabel@kernel.org> writes:

> The marvell,mpic interrupt controller has no children nodes. Drop the
>
> Signed-off-by: Marek Beh=C3=BAn <kabel@kernel.org>


Applied on mvebu/dt

Thanks,

Gregory


> ---
>  arch/arm/boot/dts/marvell/armada-370-xp.dtsi | 1 -
>  arch/arm/boot/dts/marvell/armada-375.dtsi    | 1 -
>  arch/arm/boot/dts/marvell/armada-38x.dtsi    | 1 -
>  arch/arm/boot/dts/marvell/armada-39x.dtsi    | 1 -
>  4 files changed, 4 deletions(-)
>
> diff --git a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi b/arch/arm/boot=
/dts/marvell/armada-370-xp.dtsi
> index 0b8c2a64b36f..954c891e5aee 100644
> --- a/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
> +++ b/arch/arm/boot/dts/marvell/armada-370-xp.dtsi
> @@ -168,7 +168,6 @@ mbusc: mbus-controller@20000 {
>  			mpic: interrupt-controller@20a00 {
>  				compatible =3D "marvell,mpic";
>  				#interrupt-cells =3D <1>;
> -				#size-cells =3D <1>;
>  				interrupt-controller;
>  				msi-controller;
>  			};
> diff --git a/arch/arm/boot/dts/marvell/armada-375.dtsi b/arch/arm/boot/dt=
s/marvell/armada-375.dtsi
> index ddc49547d786..99778b4b7e7b 100644
> --- a/arch/arm/boot/dts/marvell/armada-375.dtsi
> +++ b/arch/arm/boot/dts/marvell/armada-375.dtsi
> @@ -376,7 +376,6 @@ mpic: interrupt-controller@20a00 {
>  				compatible =3D "marvell,mpic";
>  				reg =3D <0x20a00 0x2d0>, <0x21070 0x58>;
>  				#interrupt-cells =3D <1>;
> -				#size-cells =3D <1>;
>  				interrupt-controller;
>  				msi-controller;
>  				interrupts =3D <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm/boot/dts/marvell/armada-38x.dtsi b/arch/arm/boot/dt=
s/marvell/armada-38x.dtsi
> index 446861b6b17b..1181b13deabc 100644
> --- a/arch/arm/boot/dts/marvell/armada-38x.dtsi
> +++ b/arch/arm/boot/dts/marvell/armada-38x.dtsi
> @@ -408,7 +408,6 @@ mpic: interrupt-controller@20a00 {
>  				compatible =3D "marvell,mpic";
>  				reg =3D <0x20a00 0x2d0>, <0x21070 0x58>;
>  				#interrupt-cells =3D <1>;
> -				#size-cells =3D <1>;
>  				interrupt-controller;
>  				msi-controller;
>  				interrupts =3D <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm/boot/dts/marvell/armada-39x.dtsi b/arch/arm/boot/dt=
s/marvell/armada-39x.dtsi
> index 9d1cac49c022..6d05835efb42 100644
> --- a/arch/arm/boot/dts/marvell/armada-39x.dtsi
> +++ b/arch/arm/boot/dts/marvell/armada-39x.dtsi
> @@ -268,7 +268,6 @@ mpic: interrupt-controller@20a00 {
>  				compatible =3D "marvell,mpic";
>  				reg =3D <0x20a00 0x2d0>, <0x21070 0x58>;
>  				#interrupt-cells =3D <1>;
> -				#size-cells =3D <1>;
>  				interrupt-controller;
>  				msi-controller;
>  				interrupts =3D <GIC_PPI 15 IRQ_TYPE_LEVEL_HIGH>;
> --=20
> 2.44.2

