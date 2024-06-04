Return-Path: <devicetree+bounces-72013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8608FA80B
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 04:03:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4A90FB225A9
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 02:03:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C42339BC;
	Tue,  4 Jun 2024 02:02:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="dpLdVfSz"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C464A04
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 02:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717466579; cv=none; b=mekTEzRYc1qP02z92kSwdgoz068WtyorwCtngtVjYPCGxZeABt77dIh9xJSbFQQgQS536m6MeRZ9gh1j3Ly10HrK0YCKdkROQ4QMvNZBu8Pn849h47pu+M7CB/ckaU6ThuGOr8AdXtviSNtcmanFDazeLfYYpowOwjsoXTy3SxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717466579; c=relaxed/simple;
	bh=Ro3laXcMAbm91nrsiay29MPahSHKS8ZwIKwgKQFDV8A=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Y7MgOf/HbAdnCB/pGJp7xQpadL6FxDCYH4poMYLjknzsuEobK8JNVkuFR174SJ3dz2pXVzDuhzaY9OMbiEaqxQt2S29uK7Ed65bfvmqE2bmds4b/UYbqt7SvtaAAqFlCi/Enh+I3F6xJfzp4aWZUm7AG4kFgRotRXaHqrB1zYHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=dpLdVfSz; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp118-210-171-248.adl-adc-lon-bras34.tpg.internode.on.net [118.210.171.248])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id A5736201B6;
	Tue,  4 Jun 2024 10:02:54 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1717466576;
	bh=wWRmPcmFirZAAtih3AkzVHKsH5OIiMN68xLR8oBNnrw=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=dpLdVfSzJPSFbaw7WOZX2/IyBbi7NtqcTPgi/yb6jsOKOzF6hZjibXlaravhzyjPe
	 DD9Xk5t+cK8wKP4FSlPxWOx82EWORymqtyJDOV9wlG8m6EibEunNZ7G8mhZmfsPFqD
	 uxx77xIUfnXVwqhu9XlXMO6cIh5orl3v7nA8gpHiKv7JF7EsFfs4YKsf2VsWTHj3AF
	 QDd2HpviGUaCLcDX91bIQHnX3MUZhuZ/kfe96SCg29rIDseDO6axvI1C3i0W9y+9UN
	 Q7JZ0p6XqYf/C8xEcLFPD03owuun1I2dLwPaLyRq7uc9X/cG75ayqeDdJ9hNSWW+lT
	 JWM3g2Lo8MvVw==
Message-ID: <f4a891a6548461935129bb8ef4bed68c265567a1.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: convert ASRock SPC621D8HM3 NVMEM
 content to layout syntax
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Zev Weiss <zev@bewilderbeest.net>, =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
	 <zajec5@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,  =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?=
 <rafal@milecki.pl>
Date: Tue, 04 Jun 2024 11:32:54 +0930
In-Reply-To: <11f0a9a0-967e-4971-8ca1-4730f2881ee1@hatter.bewilderbeest.net>
References: <20240520063044.4885-1-zajec5@gmail.com>
	 <11f0a9a0-967e-4971-8ca1-4730f2881ee1@hatter.bewilderbeest.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Mon, 2024-06-03 at 18:21 -0700, Zev Weiss wrote:
> On Sun, May 19, 2024 at 11:30:44PM PDT, Rafa=C5=82 Mi=C5=82ecki wrote:
> > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >=20
> > Use cleaner (and non-deprecated) bindings syntax. See commit
> > bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> > details.
> >=20
> > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> > ---
> > .../dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts     | 12 ++++++++----
> > 1 file changed, 8 insertions(+), 4 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts=
 b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
> > index 555485871e7a..c4097e4f2ca4 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts
> > @@ -110,11 +110,15 @@ eeprom@50 {
> > 		compatible =3D "st,24c128", "atmel,24c128";
> > 		reg =3D <0x50>;
> > 		pagesize =3D <16>;
> > -		#address-cells =3D <1>;
> > -		#size-cells =3D <1>;
> >=20
> > -		eth0_macaddress: macaddress@3f80 {
> > -			reg =3D <0x3f80 6>;
> > +		nvmem-layout {
> > +			compatible =3D "fixed-layout";
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
> > +
> > +			eth0_macaddress: macaddress@3f80 {
> > +				reg =3D <0x3f80 6>;
> > +			};
> > 		};
> > 	};
> >=20
> > --=20
> > 2.35.3
> >=20
>=20
> Acked-by: Zev Weiss <zev@bewilderbeest.net>
>=20

Thanks, I've applied this to a tree for Joel to pick up.

Andrew

