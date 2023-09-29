Return-Path: <devicetree+bounces-4611-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A913B7B33F5
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 15:47:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 03DA5B20A10
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 13:46:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89B5C41210;
	Fri, 29 Sep 2023 13:46:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A11CBE4F
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 13:46:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18334C433CA;
	Fri, 29 Sep 2023 13:46:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695995215;
	bh=nOoINXbCtXHi03H4Jfyw8P2HWSbPAKaj4dwA0naO4lQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XLMxc/a7E6FFcjSVAv8Ki5QEuCMxlMosA51LtXvxn1KFynWOWQSZpaIfO3wLEcOvm
	 WIyx0oEVtSzKjPshvhipvne2PXEJRD9cECYwRNt+VXSZff7LDEsSUhmrJ4qYZjjVz1
	 nfHfqj94RoDkdzxvv538OLZCR7Qf2ah51rfHVV1Cg5FJgfzP6jdmUfOrWvHkYJxM5S
	 CxsAcpVK//7axEU1de2swnqL6ECwQq1xZ4BN0DG4iJC2IQr+1swlWEgZZpgzqaGNi7
	 KZD8t8pLlo/Ot7AQeLzwj0B9IgptcHWovkzJlGRtHSpotetCu6rUBduoJL3PkJ0/dn
	 +3gS0F2QvKM/Q==
Date: Fri, 29 Sep 2023 15:46:52 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Ying Liu <victor.liu@nxp.com>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	dl-linux-imx <linux-imx@nxp.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	Guido =?utf-8?Q?G=C3=BCnther?= <guido.gunther@puri.sm>, Marcel Ziswiler <marcel.ziswiler@toradex.com>, 
	"Laurentiu Palcu (OSS)" <laurentiu.palcu@oss.nxp.com>, "robh@kernel.org" <robh@kernel.org>
Subject: Re: [PATCH v14 RESEND 1/6] dt-bindings: display: imx: Add
 i.MX8qxp/qm DPU binding
Message-ID: <aaxikc6gowwpjhhsmfeu3djepwuqovebojveil4judk2glazii@53j5bulxwud3>
References: <AM7PR04MB7046598DF5621D73152AB1E898E8A@AM7PR04MB7046.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="abx4pgmbvnft3cjd"
Content-Disposition: inline
In-Reply-To: <AM7PR04MB7046598DF5621D73152AB1E898E8A@AM7PR04MB7046.eurprd04.prod.outlook.com>


--abx4pgmbvnft3cjd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 05, 2023 at 03:44:23AM +0000, Ying Liu wrote:
> On Thursday, August 24, 2023 5:48 PM, Maxime Ripard <mripard@kernel.org> =
wrote:=20
> > On Wed, Aug 23, 2023 at 08:47:51AM +0000, Ying Liu wrote:
> > > > > This dt-binding just follows generic dt-binding rule to describe =
the DPU
> > IP
> > > > > hardware, not the software implementation.  DPU internal units do=
 not
> > > > > constitute separate devices.
> > > >
> > > > I mean, your driver does split them into separate devices so surely=
 it
> > > > constitutes separate devices.
> > >
> > > My driver treats them as DPU internal units, especially not Linux dev=
ices.
> > >
> > > Let's avoid Linuxisms when implementing this dt-binding and just be s=
imple
> > > to describe necessary stuff exposing to DPU's embodying system/SoC, l=
ike
> > > reg, interrupts, clocks and power-domains.
> >=20
> > Let's focus the conversation here, because it's redundant with the rest.
> >=20
> > Your driver registers two additional devices, that have a different
> > register space, different clocks, different interrupts, different power
> > domains, etc. That has nothing to do with Linux, it's hardware
> > properties.
> >=20
> > That alone is a very good indication to me that these devices should be
> > modeled as such. And your driver agrees.
> >=20
> > Whether or not the other internal units need to be described as separate
> > devices, I can't really tell, I don't have the datasheet.
>=20
> i.MX8qxp and i.MX8qm SoC reference manuals can be found at(I think
> registration is needed first):
> https://www.nxp.com/webapp/Download?colCode=3DIMX8DQXPRM
> https://www.nxp.com/webapp/Download?colCode=3DIMX8QMRM

I tried, but the registration is buggy. The email takes longer than the
timeout to be sent.

> Sorry for putting this in a short way, but the DPU is one IP, so one dt-b=
inding.
>=20
> >=20
> > But at least the CRTC and the interrupt controller should be split away,
> > or explained and detailed far better than "well it's just convenient".
>=20
> CRTC is Linuxisms, which cannot be referenced to determine dt-binding.
>=20
> DPU as Display Controller is listed as a standalone module/IP in RM.
> This is how the IP is designed in the first place, not for any convenient
> purpose.

Sure, but pushing that argument further, the entire SoC has been
designed as a single entity.

Every vendor out there designs its display pipeline in its entirety and
not block by block. This doesn't mean that it isn't composed of several
mostly discrete components.

If it has a separate address space, clock and interrupt, it's a
different device, no matter how it was designed or what the intent was.

Maxime

--abx4pgmbvnft3cjd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCZRbVTAAKCRDj7w1vZxhR
xfZqAP9e8GEes903vpreo8t3DuJDR/u0I9fTrgVUjDE4SUwcgAEAicL2Oh4ELOb0
zfaeBFyPQsaR6hlxxvYsgLbT/A0yzwg=
=5kua
-----END PGP SIGNATURE-----

--abx4pgmbvnft3cjd--

