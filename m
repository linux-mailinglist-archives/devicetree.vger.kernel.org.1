Return-Path: <devicetree+bounces-125530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5FF9DE6AB
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:46:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3D08AB2094B
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:46:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19460198842;
	Fri, 29 Nov 2024 12:46:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out-176.mta1.migadu.com (out-176.mta1.migadu.com [95.215.58.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6058B158520
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 12:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732884394; cv=none; b=q5NGGAFmN/ct8i+K89kDgCK1lGJH5SkZAUIjil70/jXShU0Jjofe6BAPUyKjAfxc6scwSMbW20r4+OBP1zKaquDfrBwc/IpKZigD1En6rb8BZvILWrwfYiHj4BV+9nJmrFrzheUviKti+RDPCuOrwOsZTJwAgJs5S35qOjM3J0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732884394; c=relaxed/simple;
	bh=X7HTknE1ZNCQtR2PQJVYwNbPS4cm2O/nHZN/s+4oBdM=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=eGqcUinczPivD/uv33gb1/DViN3bMFoP+VotPxYNEXN80dVX8nZFuMWp1TG4NbhJacP8Pl9FzOM/V8cXrxlcbKblt7GRGmUtCu+srXm+vJJkcJEwdq7/4dsT5x2m85VcUAXv5SmNlpPoj3m4U9a1xUB1c0tSkUDMiVhDLu0PY14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; arc=none smtp.client-ip=95.215.58.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: multipart/signed;
 boundary=b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Fri, 29 Nov 2024 13:46:12 +0100
Message-Id: <D5YO8QULYWDR.I3T73UCTD0WF@cknow.org>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <macromorgan@hotmail.com>, <jonas@kwiboo.se>, <andyshrk@163.com>,
 <devicetree@vger.kernel.org>, <linux-rockchip@lists.infradead.org>,
 <dsimic@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: add support for device tree
 overlays for Radxa devices
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "FUKAUMI Naoki"
 <naoki@radxa.com>
References: <20241129002419.60404-1-naoki@radxa.com>
 <1952472.6tgchFWduM@diego>
In-Reply-To: <1952472.6tgchFWduM@diego>
X-Migadu-Flow: FLOW_OUT

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hi,

On Fri Nov 29, 2024 at 1:20 PM CET, Heiko St=C3=BCbner wrote:
> Am Freitag, 29. November 2024, 01:24:19 CET schrieb FUKAUMI Naoki:
> > since Radxa devices use device tree overlays[1][2][3], make base .dts
> > support them.
>
> this essentially doubles the sizes of generated DTBs.
>
> In previous iterations there were concerns that this might overload
> allocated memory in legacy firmware that might still run on people's
> devices.
>
> I'm not sure if someone did look deeper into that meanwhile and you
> can't of course not require people to update u-boot just for a kernel
> upgrade. Hence previous overlays do not enable those options but instead
> depend on "distributions" to handle that.
>
> So I'm definitly not sure how to proceed with this.

In my recollection this was brought up when the restructuring of the arm
(not arm64) dts 'tree' was discussed.
So hopefully Rob can recall the details?

But IIRC, the objection was about enabling it *globally* and instead it
should be done more granually, be it on the SoC manufacturer level
('rockchip') or on the SoC ('rk3588') or on the board level as is
proposed in this patch.

e925743edc0d ("arm: dts: bcm: Enable device-tree overlay support for RPi de=
vices")
is where it got enabled for RPi devices

I can't speak for the Debian kernel team, but the general approach is:
get it fixed (or in this case enabled) *upstream*.
That's why Aurelien Jarno (who's a DD) send it upstream.

HTH,
  Diederik

> > [1] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> > [2] arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> > [3] https://github.com/radxa-pkg/radxa-overlays
> >=20
> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile | 28 +++++++++++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dt=
s/rockchip/Makefile
> > index 86cc418a2255..cac3f39af82a 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -1,4 +1,32 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +
> > +# Enables support for device tree overlays for Radxa devices
> > +DTC_FLAGS_rk3308-rock-pi-s :=3D -@
> > +DTC_FLAGS_rk3308-rock-s0 :=3D -@
> > +DTC_FLAGS_rk3328-rock-pi-e :=3D -@
> > +DTC_FLAGS_rk3399-rock-4c-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-4se :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4a-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4a :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4b-plus :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4b :=3D -@
> > +DTC_FLAGS_rk3399-rock-pi-4c :=3D -@
> > +DTC_FLAGS_rk3399pro-rock-pi-n10 :=3D -@
> > +DTC_FLAGS_rk3528-radxa-e20c :=3D -@
> > +DTC_FLAGS_rk3566-radxa-cm3-io :=3D -@
> > +DTC_FLAGS_rk3566-radxa-cm3.dtsi :=3D -@
> > +DTC_FLAGS_rk3566-radxa-zero-3e :=3D -@
> > +DTC_FLAGS_rk3566-radxa-zero-3w :=3D -@
> > +DTC_FLAGS_rk3566-rock-3c :=3D -@
> > +DTC_FLAGS_rk3568-radxa-cm3i.dtsi :=3D -@
> > +DTC_FLAGS_rk3568-radxa-e25 :=3D -@
> > +DTC_FLAGS_rk3568-rock-3a :=3D -@
> > +DTC_FLAGS_rk3568-rock-3b :=3D -@
> > +DTC_FLAGS_rk3588-rock-5-itx :=3D -@
> > +DTC_FLAGS_rk3588-rock-5b :=3D -@
> > +DTC_FLAGS_rk3588s-rock-5a :=3D -@
> > +DTC_FLAGS_rk3588s-rock-5c :=3D -@
> > +
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-evb.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-engicam-px30-core-ctouch2.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D px30-engicam-px30-core-ctouch2-of10.d=
tb

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ0m3lwAKCRDXblvOeH7b
bqfCAQDRKJuB0M35DzSoeDImZ2gW4ojJSeHiYBG+Q8bw/n856QD/ZtSZbyu4WEzY
gQgaaYd78PTfM8jaqBNH//CHdbrfLA0=
=cbFW
-----END PGP SIGNATURE-----

--b3737e8e694637f47ed46da814853505c287bb3020cc139beb4cb6d520d9--

