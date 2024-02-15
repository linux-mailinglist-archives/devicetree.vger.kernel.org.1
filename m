Return-Path: <devicetree+bounces-41957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 83F86855EAA
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 11:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 22C751F24FB0
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:02:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92E8265BBB;
	Thu, 15 Feb 2024 10:02:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1ED5664C1
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 10:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707991343; cv=none; b=CQ9i9Wps8Z0t9X7tFU47Dt5cU4G/2lxGMqqTy8BEn3cs6/IGman+82A0nYlEYzfaoTzEPQEFVUBH8uU+BEqKJ5gTiYEcfmVtZ+KIUQWeNu6yq0BTy6GykjZQpVE7LtPEHSrr5+6/SgvvvDNUurGNHMcKIqEuveppz9aPmAbBd1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707991343; c=relaxed/simple;
	bh=To/616VYsl1JYtI0DcRNUrjLciru29NY2Dgy6sQDoRA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HENLIqVMQZ5IxlsQIxiX4ES9C0LaxEsCqsE53YywkQ4lslygYAMT/pQ9a+dMkkgTlnxEf2aNXSsa1Eh2bzWs77HbnLT9YIpWjnoIU+YwZe8mZBWk16jptZBd4KbSZLeGOuopGV1JXxQYbhn+IQFgQTxgZcon2IC+9QxwKvnHKT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1raYZC-0004fD-8S; Thu, 15 Feb 2024 11:02:06 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1raYZA-000rGi-Vp; Thu, 15 Feb 2024 11:02:04 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1raYZA-005HsV-2q;
	Thu, 15 Feb 2024 11:02:04 +0100
Date: Thu, 15 Feb 2024 11:02:04 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Lee Jones <lee@kernel.org>, sam@ravnborg.org, bbrezillon@kernel.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	claudiu.beznea@tuxon.dev, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, thierry.reding@gmail.com, 
	linux-pwm@vger.kernel.org, Dharma Balasubiramani <dharma.b@microchip.com>, 
	hari.prasathge@microchip.com, manikandan.m@microchip.com, 
	Conor Dooley <conor.dooley@microchip.com>
Subject: Re: (subset) [linux][PATCH v6 3/3] dt-bindings: mfd: atmel,hlcdc:
 Convert to DT schema format
Message-ID: <aamdttvdk3jmswvy3rw3debk3ouddkgjbs6xmixroe6kqakjw4@lnd5crcgoeyj>
References: <20240202001733.91455-1-dharma.b@microchip.com>
 <20240202001733.91455-4-dharma.b@microchip.com>
 <170738899221.920003.15342446791449663430.b4-ty@kernel.org>
 <cedecdb7-fe4a-42ea-9a11-faa82f84b57d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="o2z5u2icip6vcnon"
Content-Disposition: inline
In-Reply-To: <cedecdb7-fe4a-42ea-9a11-faa82f84b57d@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--o2z5u2icip6vcnon
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 11:23:02AM +0100, Krzysztof Kozlowski wrote:
> On 08/02/2024 11:43, Lee Jones wrote:
> > On Fri, 02 Feb 2024 05:47:33 +0530, Dharma Balasubiramani wrote:
> >> Convert the atmel,hlcdc binding to DT schema format.
> >>
> >> Align clocks and clock-names properties to clearly indicate that the L=
CD
> >> controller expects lvds_pll_clk when interfaced with the lvds display.=
 This
> >> alignment with the specific hardware requirements ensures accurate dev=
ice tree
> >> configuration for systems utilizing the HLCDC IP.
> >>
> >> [...]
> >=20
> > Applied, thanks!
> >=20
> > [3/3] dt-bindings: mfd: atmel,hlcdc: Convert to DT schema format
> >       commit: cb946db1335b599ece363d33966bf653ed0fa58a
> >=20
>=20
> Next is still failing.

Failing in the sense of dtbs_check, right?

> Dharma,
> You must explain and clearly mark dependencies between patches.
>=20
> Lee,
> Can you pick up two previous patches as well?

I applied the pwm patch now. If Lee wants to pick up this one via his
tree that would be fine for me, too. If that's the case please tell me,
then I'll drop it from my for-next branch again. Feel free to add
my Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de> for patch
#2 then.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--o2z5u2icip6vcnon
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmXN4RwACgkQj4D7WH0S
/k6aQggAqysz6fco+x2BEiMLKvymsmjxsyB2/87ERoRKMlE6OrSSbqyjTAhMSXeo
V66WmW2x3F1DhLcpwochJJIc2e4sFUWSJ1qfXPyGNTocDInGiLAhYZGqoBuOZBIN
nfJTFseFLQ429Y9Ip7uMet4TIhZjAX0t8cMGKDZSMU2h+Xeuj76BidSxgtiHErcP
k0ej0USTqRXvJ3IebZ7lbrhJBPF5CMAW9U83v9gqCbg85lVGANWcte/AcvPTKCcH
CERT4AOYikNxEQIC8PEhYWCwOcR9lkY4o0WPSUe6T/11eFmiga+uk+NDdRONRPN7
w3esiQ5TsIkYMiK/13Ve0Y8podbLnQ==
=g/pN
-----END PGP SIGNATURE-----

--o2z5u2icip6vcnon--

