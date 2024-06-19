Return-Path: <devicetree+bounces-77443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4848C90EA1E
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 13:54:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A07DB284372
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 11:54:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 855C213DDDA;
	Wed, 19 Jun 2024 11:54:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="ef8/mN/u";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Uq9KHJU9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7E613DDBC
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:54:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718798078; cv=none; b=U22aD2ZMGUY6guwVoG5pNiIbJX7j81HmM4F3DCGiEEq2DbL2ytVdDuIn76DAL83bQ9zK17FxPeBl6kmABMhlKkJLrqhGahcXtXlXDwHnCgumvJMPtO0Ak7TrtXUehIl5Vakl+za+fc+Q1umT2JJpjEuzDwpNGNYbBefYTwv8+0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718798078; c=relaxed/simple;
	bh=MScr25z0RXwL4RRyFNcos6HQbc7b4E3ynQLZqADwn+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Fp+85FZWM/dYg6ONFbek+ldkAhfvr5p9VuubLEaUM2HWj9OrA6o7mz2EKF9YxD4buBVJYvvnskVYxMmKBAExP2ZmF+VRN1Vyayvsg20pYZrAyhafYltVxTRZnBld+nF4PbqblsaZ0yqAC6X31pif4JQeQyZ+I0R5XpsyQhf29vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=ef8/mN/u; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Uq9KHJU9 reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1718798076; x=1750334076;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=Z2VwPfNFQMSKo7IJsXpnz6VafI9aevrXL1K2TD4e5mw=;
  b=ef8/mN/uWVqfHhRqdjfV2BefY12443bgf4lFW4z/JJ5r+VQYCQxe7NZt
   +G+lYoi8AB0/THstWcAC92jLlubBU/+srfxj+Qe5WdwYXC1wcILbBv9bm
   Wlgzak4G/9x4i2cOiKoPT3vcIsy6KM/Ev2ffJ17EUyKnypDClaJz2sQ7M
   WQ9wGVilWrwlhqfRrANjCjZLrqYEi+FgIA+ijSvFQxnMX6XmWK1g/ItQj
   TePN7CvrNP22tQ074e3NSkb40XwZ7W4nFYTlc3YK0CkyseZVaL2cXaUUp
   foFA/fCRkM5HYIF1ofwpSNZzYaY0dRbiiOE1X4CH2d3GRxQfwIIjDtCdt
   Q==;
X-CSE-ConnectionGUID: 9WXoXxT0QVC2dQSLddA1/Q==
X-CSE-MsgGUID: X8A3A/pPRuixnNqMrcxtHQ==
X-IronPort-AV: E=Sophos;i="6.08,250,1712613600"; 
   d="scan'208";a="37475512"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 19 Jun 2024 13:54:33 +0200
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D50CB161455;
	Wed, 19 Jun 2024 13:54:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1718798069;
	h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Z2VwPfNFQMSKo7IJsXpnz6VafI9aevrXL1K2TD4e5mw=;
	b=Uq9KHJU9EbusPCofO/69COjT9GTk4MbX9QXHmI/dGfL9QYhhcSb2452J5aXp3BPqJbO01E
	NQzLD3EF+l9elefRZZBtJDlYbgXnqNPyvLqOnNTHzqLFkASXXeDq5+aHRN4ldTj0heRrHb
	XIWNd9URhaytfaJUVhN4GFT+/ZAOmuaQ6zmKOZQg6N5DOZcYATV9YiXjmNUjypBaQT3cVU
	IkfbUIqZ9OW37QJeiI5XNoPwJNfuVnz2YV+IFCdR+t9KE9nE8kZjblZL8KYr8c5pc8p32T
	hxXlPPSxYQTJefMZn7Mh7fvHhspLX+ZK9FZ05nntDTQpbkPEejvfoL0pbPk0Hw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Markus Niebel <Markus.Niebel@ew.tq-group.com>, Shawn Guo <shawnguo2@yeah.net>
Cc: Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Subject: Re: [PATCH] ARM: dts: nxp: imx6: convert NVMEM content to layout syntax
Date: Wed, 19 Jun 2024 13:54:30 +0200
Message-ID: <2353498.ElGaqSPkdT@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <Zm1QUUAIB9CuGu9n@dragon>
References: <20240520060222.2980-1-zajec5@gmail.com> <Zm1QUUAIB9CuGu9n@dragon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Last-TLS-Session-Version: TLSv1.3

Hi Shawn,

Am Samstag, 15. Juni 2024, 10:26:57 CEST schrieb Shawn Guo:
> On Mon, May 20, 2024 at 08:02:22AM +0200, Rafa=C5=82 Mi=C5=82ecki wrote:
> > From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> >=20
> > Use cleaner (and non-deprecated) bindings syntax. See commit
> > bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> > details.
> >=20
> > Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>=20
> Markus, Alexander
>=20
> Are you guys good with this change?

Thanks for bringing this up. The MAINTAINERS file still has not been updated
since the arm dts directory split..

Reviewed-by: Alexander Stein <alexander.stein@ew.tq-group.com>

> > ---
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi | 12 ++++++++----
> >  arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi | 12 ++++++++----
> >  2 files changed, 16 insertions(+), 8 deletions(-)
> >=20
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi b/arch/arm/bo=
ot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> > index 238f3af42822..807f3c95e3ce 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6a.dtsi
> > @@ -22,12 +22,16 @@ m24c64_57: eeprom@57 {
> >  		compatible =3D "atmel,24c64";
> >  		reg =3D <0x57>;
> >  		pagesize =3D <32>;
> > -		#address-cells =3D <1>;
> > -		#size-cells =3D <1>;
> >  		vcc-supply =3D <&reg_mba6_3p3v>;
> > =20
> > -		mba_mac_address: mac-address@20 {
> > -			reg =3D <0x20 0x6>;
> > +		nvmem-layout {
> > +			compatible =3D "fixed-layout";
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
> > +
> > +			mba_mac_address: mac-address@20 {
> > +				reg =3D <0x20 0x6>;
> > +			};
> >  		};
> >  	};
> > =20
> > diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi b/arch/arm/bo=
ot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> > index a587bc88f76f..789733a45b95 100644
> > --- a/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> > +++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-mba6b.dtsi
> > @@ -32,12 +32,16 @@ m24c64_57: eeprom@57 {
> >  		compatible =3D "atmel,24c64";
> >  		reg =3D <0x57>;
> >  		pagesize =3D <32>;
> > -		#address-cells =3D <1>;
> > -		#size-cells =3D <1>;
> >  		vcc-supply =3D <&reg_mba6_3p3v>;
> > =20
> > -		mba_mac_address: mac-address@20 {
> > -			reg =3D <0x20 0x6>;
> > +		nvmem-layout {
> > +			compatible =3D "fixed-layout";
> > +			#address-cells =3D <1>;
> > +			#size-cells =3D <1>;
> > +
> > +			mba_mac_address: mac-address@20 {
> > +				reg =3D <0x20 0x6>;
> > +			};
> >  		};
> >  	};
> > =20
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
http://www.tq-group.com/



