Return-Path: <devicetree+bounces-123139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFA079D37FC
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 11:09:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ABDABB2E7EE
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 10:04:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 352A119CC3F;
	Wed, 20 Nov 2024 10:01:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3DFE16F8E5
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 10:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732096897; cv=none; b=ChA6uBegFgf7kvIa5osS6GqXCCR6hP21KIfJVq7eqft62pYXt/aw2/DCR78ty/VHvMA9XxIgOjuyLpDqB/lKMBx6qo2jYTCtyT/lpmy76Dbg81CuYgGLYYZcyKMLawPz3QNCrpJlVmx39uv3L6bb/f1SZ48Jd/RgOqWQH0L0RiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732096897; c=relaxed/simple;
	bh=chcNovfSeV+DZRaWhommLahi04LyZbnfEGviJ3Q2E80=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Du/E/SLMe07Zu42HI0xaVocgmnU+XHanLMztRII7Hjg8xP7kR8zgYZikn/lXEkqL1mQTSFpzVHxR6581+JB/QV2jCrK5td/AXxz2uJhONxvL7yEMOLlO+XsA0CoiuJjXUK1MiMyZwGQk19jT9VinrZ2ubUEuv4wKLbzK0AzaG6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tDhWM-0008UK-HI; Wed, 20 Nov 2024 11:01:14 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tDhWL-001igc-02;
	Wed, 20 Nov 2024 11:01:13 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 8D2CF377B9F;
	Wed, 20 Nov 2024 10:01:12 +0000 (UTC)
Date: Wed, 20 Nov 2024 11:01:12 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, NXP Linux Team <s32@nxp.com>, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>
Subject: Re: [PATCH 3/3] can: flexcan: handle S32G2/S32G3 separate interrupt
 lines
Message-ID: <20241120-venomous-skilled-rottweiler-622b36-mkl@pengutronix.de>
References: <20241119081053.4175940-1-ciprianmarian.costea@oss.nxp.com>
 <20241119081053.4175940-4-ciprianmarian.costea@oss.nxp.com>
 <20241120-magnificent-accelerated-robin-70e7ef-mkl@pengutronix.de>
 <c9d8ff57-730f-40d9-887e-d11aba87c4b5@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="3wnxz2cl47oixl33"
Content-Disposition: inline
In-Reply-To: <c9d8ff57-730f-40d9-887e-d11aba87c4b5@oss.nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--3wnxz2cl47oixl33
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 3/3] can: flexcan: handle S32G2/S32G3 separate interrupt
 lines
MIME-Version: 1.0

On 20.11.2024 11:01:25, Ciprian Marian Costea wrote:
> On 11/20/2024 10:52 AM, Marc Kleine-Budde wrote:
> > On 19.11.2024 10:10:53, Ciprian Costea wrote:
> > > From: Ciprian Marian Costea <ciprianmarian.costea@oss.nxp.com>
> > >=20
> > > On S32G2/S32G3 SoC, there are separate interrupts
> > > for state change, bus errors, MBs 0-7 and MBs 8-127 respectively.
> > >=20
> > > In order to handle this FlexCAN hardware particularity, reuse
> > > the 'FLEXCAN_QUIRK_NR_IRQ_3' quirk provided by mcf5441x's irq
> > > handling support.
> > >=20
> > > Additionally, introduce 'FLEXCAN_QUIRK_SECONDARY_MB_IRQ' quirk,
> > > which can be used in case there are two separate mailbox ranges
> > > controlled by independent hardware interrupt lines, as it is
> > > the case on S32G2/S32G3 SoC.
> >=20
> > Does the mainline driver already handle the 2nd mailbox range? Is there
> > any downstream code yet?
> >=20
> > Marc
> >=20
>=20
> Hello Marc,
>=20
> The mainline driver already handles the 2nd mailbox range (same
> 'flexcan_irq') is used. The only difference is that for the 2nd mailbox
> range a separate interrupt line is used.

AFAICS the IP core supports up to 128 mailboxes, though the driver only
supports 64 mailboxes. Which mailboxes do you mean by the "2nd mailbox
range"? What about mailboxes 64..127, which IRQ will them?

> I do plan to upstream more patches to the flexcan driver but they relate =
to
> Power Management (Suspend and Resume routines) and I plan to do this in a
> separate patchset.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--3wnxz2cl47oixl33
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmc9s2UACgkQKDiiPnot
vG+mXQf+NEq1bSfJ1c4c9BnkrCHdJ8Th83zFhGmdTCdimKVJda+UVE+kZXKkSkvf
WQKn4pX291kNV4SbBw1YeWk/cbS7WrpHrFO3GzxNXYgftoLV00v21E3sH6hZYLVj
cot8rw1k3M+bi/bhnrsBxZW+rTC4xJHVmU+AbAXXsUu4fXV0wdTtW7hndoBtnkio
kTwU2duz2R/x5O6ni9vP7afjGVig43jtzXfLWPT7p3PHbMzB9Y3XCc8Lf4xsGR6o
IQdi1LKVAr0OjFJiy6WmhJJ2YhByE/jVpEnfyRjAHmnr8jIclAg6q9IAtbChAXH2
dX5EByDmnF8G0EJG/C0jPBczpI87dA==
=ZtzX
-----END PGP SIGNATURE-----

--3wnxz2cl47oixl33--

