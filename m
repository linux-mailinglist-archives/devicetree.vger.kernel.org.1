Return-Path: <devicetree+bounces-252459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A985FCFF5D3
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 19:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45B9B31E47B8
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:08:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087E835F8C6;
	Wed,  7 Jan 2026 16:49:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="HvIHGLHn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C2335BDB6
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 16:49:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804568; cv=none; b=kILjayLHIa5DFO2wJ9bMdWbUSXHB2VwI4TbG/Rzaw5QeC7TpZ4KKAeYyHHQdxu00Xpkx9xj+BabTTRhcMcnZQtLfYAlNyTxjXkldGrqsKfhrcG3se8cYe8heTqonkFtB8ADT2vL40iqWuwsiip8kExvZzkbANs7jqzKPV1fwWuk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804568; c=relaxed/simple;
	bh=d3Jp8VmK7Td+lon4XDu7tae7mJhQimHCtrKSSeeGA3w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=C1/Zc1sF+fHY0Ayjr4NmYJGw9CkN+bmggsGQPsMzqlKRG9aTPRjTlzKLnrVtUokZVVdHC7Gi7aUkNBiOp8ADzHLjzTACkrgh87DFA+1+FTyMiO0qkNzApy7Az5/srKNF3lmuC0Pg6PW9XXhs0CrcT+l55KOtcg1DfO2XZQXpW3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=HvIHGLHn; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id F41444E41FDE;
	Wed,  7 Jan 2026 16:49:17 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id C86B8606F8;
	Wed,  7 Jan 2026 16:49:17 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5BB65103C821A;
	Wed,  7 Jan 2026 17:49:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767804557; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=rcgCX2fXWS5eVlssZfM9EdZK5PhnReDDhnViyjK0RKE=;
	b=HvIHGLHnT3ueEo1ltCuVNUyLDP1qzs6rcBf/DrbmZM/iepDZncyzfzKFdfykUzpMIwFx8S
	dhewcLQGrlRWTo1Lp51qC/bqtAHNHKYcsjx80JdctqUDFZ3sSF2ALP+gBdIUOmGilgD8rU
	lmfwNucTQKb3Ljw38GVubI9GcNY44GUZPm/IckncCMxLaSMJkLJeJFuLv8gL7SVdq8xo4r
	v5275JXffurOgRIyKNdWEGf8S/xJYM0IErClXSNec6caSeFNn2bqA0tZXS0PqPpAqdmoTz
	I4bPfDFp2DaS2livYxohSf7fJSX0KszCnO7j1qjQE2w7kTtW6BKfhTjWHiboyg==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: Fix stray and typo "pinctrl-names"
 properties
In-Reply-To: <20260105194642.3189113-1-robh@kernel.org>
References: <20260105194642.3189113-1-robh@kernel.org>
Date: Wed, 07 Jan 2026 17:49:16 +0100
Message-ID: <87eco1qsfn.fsf@BLaptop.bootlin.com>
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

> There's several cases of "pinctrl-names" used without any "pinctrl-0"
> properties. Drop them.
>
> Fix the typo "pintrl-names" as well.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 1 -
>  arch/arm64/boot/dts/marvell/cn9130-cf-base.dts                | 2 +-
>  arch/arm64/boot/dts/marvell/cn9130-crb.dtsi                   | 1 -
>  arch/arm64/boot/dts/marvell/cn9130-db.dtsi                    | 2 --
>  arch/arm64/boot/dts/marvell/cn9132-db.dtsi                    | 1 -
>  5 files changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dt=
s b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> index e82284888b9a..0ab33aa928e7 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> @@ -42,7 +42,6 @@ usb3_phy: usb3-phy {
>  	};
>=20=20
>  	gpio-leds {
> -		pinctrl-names =3D "default";
>  		compatible =3D "gpio-leds";
>  		/* No assigned functions to the LEDs by default */
>  		led1 {
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts b/arch/arm64/=
boot/dts/marvell/cn9130-cf-base.dts
> index 788a5c302b17..212865f6cf6a 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
> +++ b/arch/arm64/boot/dts/marvell/cn9130-cf-base.dts
> @@ -137,7 +137,7 @@ led@1 {
>=20=20
>  &cp0_pinctrl {
>  	pinctrl-0 =3D <&sim_select_pins>;
> -	pintrl-names =3D "default";
> +	pinctrl-names =3D "default";
>=20=20
>  	rear_button_pins: cp0-rear-button-pins {
>  		marvell,pins =3D "mpp31";
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi b/arch/arm64/boo=
t/dts/marvell/cn9130-crb.dtsi
> index 5689a8bdfd03..c9050e707a60 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-crb.dtsi
> @@ -93,7 +93,6 @@ &uart0 {
>=20=20
>  /* on-board eMMC U6 */
>  &ap_sdhci0 {
> -	pinctrl-names =3D "default";
>  	bus-width =3D <8>;
>  	status =3D "okay";
>  	mmc-ddr-1_8v;
> diff --git a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9130-db.dtsi
> index 7156739aa31a..8e413286e019 100644
> --- a/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9130-db.dtsi
> @@ -111,7 +111,6 @@ &uart0 {
>=20=20
>  /* on-board eMMC - U9 */
>  &ap_sdhci0 {
> -	pinctrl-names =3D "default";
>  	bus-width =3D <8>;
>  	vqmmc-supply =3D <&ap0_reg_sd_vccq>;
>  	status =3D "okay";
> @@ -166,7 +165,6 @@ &cp0_i2c0 {
>  	/* U36 */
>  	expander0: pca953x@21 {
>  		compatible =3D "nxp,pca9555";
> -		pinctrl-names =3D "default";
>  		gpio-controller;
>  		#gpio-cells =3D <2>;
>  		reg =3D <0x21>;
> diff --git a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi b/arch/arm64/boot=
/dts/marvell/cn9132-db.dtsi
> index f82d45e62753..98eee9e4e10b 100644
> --- a/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9132-db.dtsi
> @@ -142,7 +142,6 @@ i2c@1 {
>  			/* U12 */
>  			cp2_module_expander1: pca9555@21 {
>  				compatible =3D "nxp,pca9555";
> -				pinctrl-names =3D "default";
>  				gpio-controller;
>  				#gpio-cells =3D <2>;
>  				reg =3D <0x21>;
> --=20
> 2.51.0
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

