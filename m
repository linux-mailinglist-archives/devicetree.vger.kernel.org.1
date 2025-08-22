Return-Path: <devicetree+bounces-208100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8C4B31901
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 94006188A5AB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:13:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14B252FD7C9;
	Fri, 22 Aug 2025 13:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="U19nGedy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D9A2FC021
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755868410; cv=none; b=hLU2ObB3GPAuwJ+yo4UbDKJfNz9qyUW3ZIOLc3+Q1RcLFkxdiryZ0Fsps5tmMMyewX0A7wiDMvs/6hUXL/99NNwxxkqfz+pyAjAqWeHfMkq9pDa7yrrcUUb8YZNfSAO1j6lVGDiJMegwpzxpYShxpf9JARg6rBEvG/EPZOgWAnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755868410; c=relaxed/simple;
	bh=xwmQglZ4ynQpUcBnG3RnegQ8txT3zm/VD+oLXC5P7xc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=lpF1yxebpPvhxPobRtK+P4HcmNBVmpa7kZkY1gdl6HoU7RdokeEnkWKRvs2imGVuOomBpICnPdUkAFgUQ2xkwxvvJ2WA3r4Ge+69PHRGdNEh7Vu3h5FYG+d1Tn5XthSInkoRh4dk9aMlR/yz5+gqJujti4kASOtTXFc8QmY+ZtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=U19nGedy; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 7005C4E40BA8
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:13:26 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 40A4B604AD;
	Fri, 22 Aug 2025 13:13:26 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 4E2881C22D64F;
	Fri, 22 Aug 2025 15:13:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1755868405; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=/Xt9kUxaqedEzy7mb2YdVsoY32BQaXwaTEeI7OTr1mI=;
	b=U19nGedyT/NWgRKxA+WD/R29xrHhG9nr2wfXWNXFRyfnhV+d4gf5yMaIoz++E9KbH66fbz
	Gq83IrRY5ZpSoJkHctNTLoTUzse7acZVa+0y53sGJxW0ywSMbI+HHL5QC+yFZI5OgRvr19
	oFIz9UTxepVGWNHzGbRYsfmzVKr2vo92txZAkHxiNgc7gcWEVyfTKYUveLhJHEaYO3Z4wI
	YbJn4nTCc7iVAa2odeR6jGBFA270hfJdlfnZzfuVFKRdfectOn9QPH3IXywP7QLgsEXgSb
	7R2KTV5sU04iw5L47uEkjilULQ1nCvCf/nvUVWmldT1tqpDEJgv/Ei5ZMQKgiQ==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Andrew Lunn
 <andrew@lunn.ch>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: marvell: Minor whitespace cleanup
In-Reply-To: <20250819131633.86478-2-krzysztof.kozlowski@linaro.org>
References: <20250819131633.86478-2-krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:13:22 +0200
Message-ID: <87plcn5wjx.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> writes:

> The DTS code coding style expects exactly one space around '=3D'
> character.
>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied on mvebu/dt64

Thanks,

Gregory

> ---
>  arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi   | 2 +-
>  arch/arm64/boot/dts/marvell/cn9132-clearfog.dts | 4 ++--
>  arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi b/arch/arm64/b=
oot/dts/marvell/ac5-98dx25xx.dtsi
> index 605f5be1538c..4878773883c9 100644
> --- a/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
> +++ b/arch/arm64/boot/dts/marvell/ac5-98dx25xx.dtsi
> @@ -322,7 +322,7 @@ spi1: spi@805a8000 {
>=20=20
>  		nand: nand-controller@805b0000 {
>  			compatible =3D "marvell,ac5-nand-controller";
> -			reg =3D  <0x0 0x805b0000 0x0 0x00000054>;
> +			reg =3D <0x0 0x805b0000 0x0 0x00000054>;
>  			#address-cells =3D <0x1>;
>  			#size-cells =3D <0x0>;
>  			interrupts =3D <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> diff --git a/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts b/arch/arm64=
/boot/dts/marvell/cn9132-clearfog.dts
> index 0f53745a6fa0..c872c8eca518 100644
> --- a/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
> +++ b/arch/arm64/boot/dts/marvell/cn9132-clearfog.dts
> @@ -559,7 +559,7 @@ led@2 {
>  };
>=20=20
>  &cp2_ethernet {
> -	status =3D  "okay";
> +	status =3D "okay";
>  };
>=20=20
>  /* SRDS #2 - 5GE */
> @@ -572,7 +572,7 @@ &cp2_eth0 {
>  };
>=20=20
>  &cp2_gpio1 {
> -	pinctrl-names=3D "default";
> +	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&cp2_rsvd9_pins>;
>=20=20
>  	/* J21 */
> diff --git a/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi b/arch/arm64=
/boot/dts/marvell/cn9132-sr-cex7.dtsi
> index afc041c1c448..1c9996d8cb24 100644
> --- a/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi
> +++ b/arch/arm64/boot/dts/marvell/cn9132-sr-cex7.dtsi
> @@ -442,7 +442,7 @@ tpm@0 {
>  		reg =3D <0>;
>  		compatible =3D "infineon,slb9670", "tcg,tpm_tis-spi";
>  		spi-max-frequency =3D <10000000>;
> -		pinctrl-names  =3D "default";
> +		pinctrl-names =3D "default";
>  		pinctrl-0 =3D <&cp1_tpm_irq_pins>;
>  		interrupt-parent =3D <&cp1_gpio1>;
>  		interrupts =3D <17 IRQ_TYPE_LEVEL_LOW>;
> --=20
> 2.48.1
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

