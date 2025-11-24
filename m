Return-Path: <devicetree+bounces-241482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 11EDEC7EF47
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 05:42:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BCC893A4569
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 04:42:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB78B2BDC04;
	Mon, 24 Nov 2025 04:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="WcGG1lFw"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC9A298CC4;
	Mon, 24 Nov 2025 04:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763959367; cv=none; b=YHfy1QdURdxZYtnsPdo242LNcsqeT14StIHJD4s1Kdt6EdRf9Y39GDzHn1iuaRyXfrX2Q7ZBQqg2uxLeKu4g5++JFAwSmwyNxyf3fd9VydKK1gHarswMiJt+xglki+Y46aERhadck9Ecj94c3+J3pIR34CgQKNxdTwk3cdvlkFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763959367; c=relaxed/simple;
	bh=TmDUgozbz+Mev4xQmVbseD8lbhkhqOMjm6cNZkURf1w=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PBT2BR41xQy/z062g5jepWv0oLDvRTxe1SNxsFuyBYgOXTGYlKg0PyW9PPf08hztgxraCqK4yDKJrpwK8lDsCAobX6edXhnfU/hSk8Y3BqGXJIuA4wqXwnfTb7U94CtoGSDcvm6UZ5W84CzoSaoqC+8GbW6uUoAvw6BpU/f0BaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=WcGG1lFw; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1763959355;
	bh=eBpV//B5/NrI5cFXQWjvu27goLCCU45mxVcrKziYGBI=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=WcGG1lFwZTg1XdJb1dOLwR4NR8V2lH/fJ58owDwziziZw13fHygM/1kn3ovsQk/OF
	 MDocDJ/mWGRIOGURhH4ApGj/0TgfrHwGX17ps3IYchCAy+nUYlyxMSnvzmUZask61t
	 gT5jDzGlHsMhswidYWeCt2qX7uG+HzRuubOOk+PLJ2kQ/CE3B+FwlPldU8A75KMnHG
	 xSvbOssgQEtqSEjYJ29Jz/Kxm5Z09nKs4TpiOnB0gNuYFT1C91NXTlbsrujvVOuHNi
	 rVa046rC6YeVw8Ql3eVx2fxV4QH8cRuNDGNAvSu1ogfdgElDc7ZwkFAwLCDT//KfLM
	 ScnP3d7BQBf8w==
Received: from [192.168.68.115] (unknown [180.150.112.38])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id C1BB77BE0E;
	Mon, 24 Nov 2025 12:42:34 +0800 (AWST)
Message-ID: <ad11cd30eddc1b7c496cc92eef129eb5c0f2d604.camel@codeconstruct.com.au>
Subject: Re: [PATCH 2/3] ARM: dts: aspeed: yosemite5: Update sensor
 configuration
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Kevin Tung <kevin.tung.openbmc@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Amithash
 Prasasd	 <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, Ken
 Chen	 <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Date: Mon, 24 Nov 2025 15:12:34 +1030
In-Reply-To: <20251118-yv5_revise_dts-v1-2-fcd6b44b4497@gmail.com>
References: <20251118-yv5_revise_dts-v1-0-fcd6b44b4497@gmail.com>
	 <20251118-yv5_revise_dts-v1-2-fcd6b44b4497@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-11-18 at 18:53 +0800, Kevin Tung wrote:
> Remove sensors 10-0040 and 10-0045 to align with the latest
> hardware design changes.

Can you please elaborate on this commit message? I'd like this
description to be much more specific about revisions of the hardware
design, and why you expect all instances of the previous design to
suddenly stop existing.

I can't imagine this is the only hardware change that occurred. What
other changes are lurking?

Andrew

>=20
> Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts | 14 ---=
-----------
> =C2=A01 file changed, 14 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b=
/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> index 7991e9360847532cff9aad4ad4ed57d4c30668a0..45b8ac2e8c65a4f672e645716=
31b7f6944f26213 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
> @@ -674,20 +674,6 @@ gpio-expander@22 {
> =C2=A0			"PWRGD_P3V3_AUX","ALERT_TEMP";
> =C2=A0	};
> =C2=A0
> -	power-sensor@40 {
> -		compatible =3D "ti,ina233";
> -		reg =3D <0x40>;
> -		shunt-resistor =3D <2000>;
> -		ti,maximum-expected-current-microamp =3D <32768000>;
> -	};
> -
> -	power-sensor@45 {
> -		compatible =3D "ti,ina233";
> -		reg =3D <0x45>;
> -		shunt-resistor =3D <2000>;
> -		ti,maximum-expected-current-microamp =3D <32768000>;
> -	};
> -
> =C2=A0	adc@48 {
> =C2=A0		compatible =3D "ti,ads7830";
> =C2=A0		reg =3D <0x48>;

