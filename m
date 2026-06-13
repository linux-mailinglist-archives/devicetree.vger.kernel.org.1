Return-Path: <devicetree+bounces-311354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OqELGIF/LWrogwQAu9opvQ
	(envelope-from <devicetree+bounces-311354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:04:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F39C67F05C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 18:04:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311354-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-311354-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5B0D5300292A
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 16:04:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6191A2DF15C;
	Sat, 13 Jun 2026 16:04:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3BA2BEFEB
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:04:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781366652; cv=none; b=HsNFCvzNsOegrfM19pvbjpaOix/2FvcW95xnYmyjI1U13gRLhzupdOimjQ3dFdKJL5mvSJRgD91Rk/K2tHDFlGLdLTOoggONCK9L8HlrFSCRHXc474oOGpZZFoO5vLIgdoJYRKJ6Efy36Zl6PhXNaMLdQjuoMyESsuoTk6KMptg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781366652; c=relaxed/simple;
	bh=EofRNAWWoK6ninLYphik3XkuhEkM07X/chON4WHDbDQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eQTkmo1l0VK3kOuKsR2EIXbEpTblrGsxrW7NM3muD9dTL3Hw8HHMd6NnwLb1hg8O7kyrccW/cHv70vrq1sMnll8yfWA7slsJt6VCx8p6H4+WOCdi9exO1IVaUI9UeKi3yd+dUTF2ZhtHvb1O3PKpo+z8FOB1Y2y1c5tzbraanWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id 35F3537002EF
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 16:04:09 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id 3FB03B45542; Sat, 13 Jun 2026 16:04:08 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id A590EB454DE;
	Sat, 13 Jun 2026 16:04:07 +0000 (UTC)
Date: Sat, 13 Jun 2026 18:04:04 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v10 5/6] ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2
 support
Message-ID: <ai1_dNwtHT8NVg_G@collins>
References: <20260613152655.212490-6-paulk@sys-base.io>
 <20260613154131.A62201F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="A3eF4Hsd8Zg9JfnQ"
Content-Disposition: inline
In-Reply-To: <20260613154131.A62201F000E9@smtp.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311354-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DMARC_NA(0.00)[sys-base.io];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_NONE(0.00)[];
	R_DKIM_NA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,paulk.fr:url,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F39C67F05C


--A3eF4Hsd8Zg9JfnQ
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

Le Sat 13 Jun 26, 15:41, sashiko-bot@kernel.org a =C3=A9crit :
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Low] The `csi0` node introduces the `interconnects` and `interconnect-=
names` properties, but these are not defined in the corresponding dt-bindin=
g schema `allwinner,sun6i-a31-csi.yaml`.
> --
>=20
> commit 6348731e0b0149fecdb9ccb7d05f8577710a1724
> Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
>=20
> ARM: dts: sun8i: v3s: Add nodes for MIPI CSI-2 support
>=20
> This commit adds MIPI CSI-2 support for the V3s SoC by introducing nodes
> for CSI0, the MIPI CSI-2 bridge, and the D-PHY. The CSI0 node includes
> interconnect properties to inherit the proper DMA offsets.
>=20
> > diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot=
/dts/allwinner/sun8i-v3s.dtsi
> > index 02d6c62b3874e..03a1739683b16 100644
> > --- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> > +++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
> [ ... ]
> > @@ -671,6 +671,79 @@ gic: interrupt-controller@1c81000 {
> >  			interrupts =3D <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_=
HIGH)>;
> >  		};
> > =20
> > +		csi0: camera@1cb0000 {
> > +			compatible =3D "allwinner,sun8i-v3s-csi";
> > +			reg =3D <0x01cb0000 0x1000>;
> > +			interrupts =3D <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> > +			clocks =3D <&ccu CLK_BUS_CSI>,
> > +				 <&ccu CLK_CSI_SCLK>,
> > +				 <&ccu CLK_DRAM_CSI>;
> > +			clock-names =3D "bus", "mod", "ram";
> > +			resets =3D <&ccu RST_BUS_CSI>;
> > +			interconnects =3D <&mbus 5>;
> > +			interconnect-names =3D "dma-mem";
>=20
> [Severity: Low]
> Will adding these properties cause a dtbs_check validation warning?
>=20
> The interconnects and interconnect-names properties do not appear to be
> defined in the corresponding dt-binding schema at
> Documentation/devicetree/bindings/media/allwinner,sun6i-a31-csi.yaml.

Patches to enable said properties in the binding were accepted already.

All the best,

Paul

> Because that schema enforces additionalProperties: false, introducing
> undocumented properties here might result in a validation failure. Should
> the schema be updated alongside this patch to allow these interconnect
> properties?
>=20
> > +			status =3D "disabled";
> > +
> [ ... ]
>=20
> --=20
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613152655.21=
2490-1-paulk@sys-base.io?part=3D5

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--A3eF4Hsd8Zg9JfnQ
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmotf3QACgkQhP3B6o/u
lQxKLQ//XwETSU+q2Y4R4J9vuJ5uwwXy5d6PHypPYsoMRhBbyP48/mJZtg2lHkBP
MS5aZKzNyS+E7OHLSiKVf78ybzZGew6QwiFS0e1/fsB642qjmYyd0BuXBbcXcYI6
AN867uOhcbDmLSzV58nABhSYnGSIYg7tXflTGqqAlufMF/XD1WEFggiAd7aSjuqq
1gev9TV9161vLHH5Jylbj7MrIX+mpc6zZq455JeUi6+ecT6wTwHGc9UcjxdSe9It
ca4D1tpLIm7AmWWyzwncNg6aqsjLclKHHlU8ENICKDp8suDgkabVEf2Ar+yREq3V
0+Mi+iC3Xujj4qozjI9Hejgq1jyTzwXAf/DoorjlF99WO7Tzwqz4fDuR9bzAza3/
6uruETXmfot2sS/mVxJGMqumXrXzstps0auYf7ciHfQyOo2T+o2WHImJh2zJgYKW
14vrcq29wdD8cjyQj/lxxHBPDdbTPHq4f+0LjWXyDWaGoDdIEOHxEfTBcGpogzYo
Ft1suK2VeGLZRKIXZx8bR3WKUURH8lAXCLfRLgn3/R2rPRvhwEfjXoxnfeZh5WTN
iI8kOt06vPZEU+Fj8noaKDvlzGh8RsbhnMeG6nM1Bun0AKwYXfaUyI7u/7r/FVig
/HuNGEccfmaSCCIomAZ0bHMTBCt2a1iha3Vyi5NO+ZdvgLWPKa8=
=m2s+
-----END PGP SIGNATURE-----

--A3eF4Hsd8Zg9JfnQ--

