Return-Path: <devicetree+bounces-121040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A99CA9C5025
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 09:00:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 77573B2BC81
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 07:53:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 839E320A5EB;
	Tue, 12 Nov 2024 07:52:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1202F209698
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 07:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731397948; cv=none; b=PBTgPQZgIAyibRX4JX/9XuMuiJ+o7oUvYLEfbzLpRe97dwi7Xa+1LNEyt2IAW8KbRLSy+7jE5tK3sr4LVVZMJT4gPNQeVnNurJkoeTy6QA6/+eI9unuGk14i8qLA90MeTnTRjfhNQ4NNdHJoYLSzu2AAgS8jUIfqwikifpconcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731397948; c=relaxed/simple;
	bh=POwYjtnpgolL6l6ahsmO9UZ0qOY+y4zU24wV7XuUjFQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Njc/mRFRKguhn2ju9ln/bBeFH6DOg1Lh65ZVPUy9h3ALvHWeab1/srYrLyCrwSsMifWZ8hJkM3kCLg5U+j2+XAxzDrhW1OQWSbNCmVInOTpIfuYBttehY5bkJ3ckPCczb3JxnHVbQfyUe2l6NDtsJQ3NNFAoUQa6k4VjZndEBlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tAlhA-0007Yv-E2; Tue, 12 Nov 2024 08:52:16 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tAlh9-000NFE-2L;
	Tue, 12 Nov 2024 08:52:15 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 4871137129D;
	Tue, 12 Nov 2024 07:52:15 +0000 (UTC)
Date: Tue, 12 Nov 2024 08:52:14 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sean Nyekjaer <sean@geanix.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] can: tcan4x5x: add option for selecting nWKRQ
 voltage
Message-ID: <20241112-doberman-of-original-discourse-a50070-mkl@pengutronix.de>
References: <20241111-tcan-wkrqv-v2-0-9763519b5252@geanix.com>
 <20241112-bizarre-cuttlefish-of-excellence-ff4e83-mkl@pengutronix.de>
 <lfgpif7zqwr3ojopcnxmktdhfpeui5yjrxp5dbzhlz7h3ewhle@3lbg553ujfgq>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hh6yehkk7ldsldi7"
Content-Disposition: inline
In-Reply-To: <lfgpif7zqwr3ojopcnxmktdhfpeui5yjrxp5dbzhlz7h3ewhle@3lbg553ujfgq>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--hh6yehkk7ldsldi7
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/2] can: tcan4x5x: add option for selecting nWKRQ
 voltage
MIME-Version: 1.0

On 12.11.2024 08:44:00, Sean Nyekjaer wrote:
> Hi Marc,
>=20
> On Tue, Nov 12, 2024 at 08:38:26AM +0100, Marc Kleine-Budde wrote:
> > On 11.11.2024 09:54:48, Sean Nyekjaer wrote:
> > > This series adds support for setting the nWKRQ voltage.
> >=20
> > IIRC the yaml change should be made before the driver change. Please
> > make the yaml changes the 1st patch in the series.
> >=20
> > Marc
> >=20
>=20
> I know, so I have added, prerequisite-change-id as pr the b4 manual.

I mean the order of patches in this series. First the yaml patch, then
the code change.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--hh6yehkk7ldsldi7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmczCSwACgkQKDiiPnot
vG+fnwgAmvu0pC+KQK1mZHowWzB931rUdeDA6rQvNK+37ZcU2Cq74OYzNLslL0D3
QXZHkt/2xpelz/IcWPg6/KADSP817woI7FDyVvyWi2sy43Us+UW2V442/VC+m5jA
iV27BL9RsaXoEzEyc3jcKBtrRsVQNy2xVFtKiOkR+vxb/gglWA0ndrHuxa3aX5Sr
nkvFepwi+2V17IIwU7F67y+f66+X0iIf7S6WvxOPxk+3v0fIcYYr7bmyB0HDRt9w
ZDyIe1u2IhwQwDorQuZ5x1sUOTdgLLC48DYd7yOkJ1B4LkRow3znNmuZZAMzqE0G
Zlh4hfNSkX4FO8pPaDQ/jUpqh6KMFg==
=7h/8
-----END PGP SIGNATURE-----

--hh6yehkk7ldsldi7--

