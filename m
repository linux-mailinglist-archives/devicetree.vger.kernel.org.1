Return-Path: <devicetree+bounces-252461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DC0CFFB98
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 20:25:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0A8133003FEF
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 19:25:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B213734EEEB;
	Wed,  7 Jan 2026 16:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="b2MEexUc"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD1C9359FAD;
	Wed,  7 Jan 2026 16:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804680; cv=none; b=atqbz8JgVJ9C/OS+TrljfeJyiEBD8BVkJPT2HpuTr5RfY6X4+A9GNtJ5t9+30mobdjjNPTEHKz8gY+claYQYR7xA0jNNwDIQdLUcgGQVn/DeoHku8v4xDJhKTDrb/TZYv/iUrCrKXVCC/Tzuyb7OqBr1V0lCZGyz3h0oRGp5V8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804680; c=relaxed/simple;
	bh=HFFf5+w3MgzzB3jJVGnSZtirn4PJbB5FqGmGi+wAaJQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=bPFxkKzqeVc9J6r6hlAvhAd2Dyx5lwj/GcYKGrFQd1l0hO8lvn/GIacLsKEQfsv25St1d9w2j8kTx8uXau/v0I50lL829fy1aIVB0Aso6mZYKUAJb9dDGA2+FdxDFHQm1cWW/BwMRJiX/7Vs6WVKaIxlQ07Fj53eilBdamVa5XQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=b2MEexUc; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id CCB224E41FC3;
	Wed,  7 Jan 2026 16:51:09 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 9A87F606F8;
	Wed,  7 Jan 2026 16:51:09 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E688E103C87CB;
	Wed,  7 Jan 2026 17:51:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767804668; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=M9pSGC/oLaDuML1ifdt7/iThN7wpM2Uqsbh75Zxu46w=;
	b=b2MEexUcepyZzHGVNE1lLP45R9wV1vnWcS+VCUC3+WdY5OqnHVlfTORSBz5Zvai1fxlruG
	VXE6vRSu5xGXRhsAAVUptZqfUJin3dG0YbPXgwwUhVVmiY8YhE8wQlSfgB65p/JLiRTgfw
	PjiVphcfS5luAkkFOhvw4l5O78R4FZ30VoeN0FS+85CXFnEN/9iSPifdjnLMMPnKL01lS1
	4qUAB52aZ6ev+P1eIY+u+zeQM2vEd4f4rcg6sR9ScJAmz1Djml5TWh/z/o7EtQaZzFYO4D
	Rtq/1SEw9VD5oxWJW3qrvyUyMadCvOWjVavin5C0/hUFR/AbTtPWATUkChWz2A==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: change regulator-gpio to
 regulator-fixed
In-Reply-To: <20260105194653.3189515-1-robh@kernel.org>
References: <20260105194653.3189515-1-robh@kernel.org>
Date: Wed, 07 Jan 2026 17:51:07 +0100
Message-ID: <878qe9qsck.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

"Rob Herring (Arm)" <robh@kernel.org> writes:

> A "regulator-gpio" must have a GPIO control, hence the name. There's no
> GPIO on a couple of Marvell platforms at least as far as the DT is
> defined, so change the regulator type from GPIO to fixed.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts | 9 ++-------
>  arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi | 3 ++-
>  2 files changed, 4 insertions(+), 8 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts b/arch=
/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
> index 9f4bafeddd82..a881a3326dba 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-gl-mv1000.dts
> @@ -26,16 +26,11 @@ memory@0 {
>  	};
>=20=20
>  	vcc_sd_reg1: regulator {
> -		compatible =3D "regulator-gpio";
> +		compatible =3D "regulator-fixed";
>  		regulator-name =3D "vcc_sd1";
> -		regulator-min-microvolt =3D <1800000>;
> +		regulator-min-microvolt =3D <3300000>;
>  		regulator-max-microvolt =3D <3300000>;
>  		regulator-boot-on;
> -
> -		gpios-states =3D <0>;
> -		states =3D <1800000 0x1
> -			3300000 0x0>;
> -		enable-active-high;
>  	};
>=20=20
>  	keys {
> diff --git a/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi b/arch=
/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
> index 6f3914bcfd01..71c225221617 100644
> --- a/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9131-db-comexpress.dtsi
> @@ -15,8 +15,9 @@ / {
>  };
>=20=20
>  &ap0_reg_sd_vccq {
> +	compatible =3D "regulator-fixed";
>  	regulator-max-microvolt =3D <1800000>;
> -	states =3D <1800000 0x1 1800000 0x0>;
> +	/delete-property/ states;
>  	/delete-property/ gpios;
>  };
>=20=20
> --=20
> 2.51.0
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

