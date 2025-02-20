Return-Path: <devicetree+bounces-149025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B69DFA3E019
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 17:14:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CAFDA7B00AC
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:02:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCF4220CCE6;
	Thu, 20 Feb 2025 16:03:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A997200B9F
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 16:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740067388; cv=none; b=T11uaLboVQLBVcmGv3F8zvIqO6PqwKhILhJO0j1CIiVZfcolsxs6rOvS2KYyjN0sbb27HNE+/NI5ZYZI3uKi5qKv5ppAOivFkSek22t/fH6aZA/JWWZ2XJCNE3KrWwwgOBbjNEGtrri7vtOr7lmuLmu6oL62s1PbpxFTglAatO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740067388; c=relaxed/simple;
	bh=opYWkCgMY/n5TWw5aaKOamNRs/af6edaq76M7S/EAAQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=luaTeGfPr0lYRttNV9IedX5ysR/CEeD1IhUalTf0LCA9Kr6fsWCBVEseKO48nAp+dsiXPcdMEjr4s+Y8QsSjykLo26GMBVvrdUWSNYs/T+rzQVSeWDWOnRJI+4JJBQJjESHGqFUv6S+bu6j7hRxGxJmjPTksb5nh/lrzzkgeJfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tl90s-0006xE-H0; Thu, 20 Feb 2025 17:02:58 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tl90r-001xiI-1Y;
	Thu, 20 Feb 2025 17:02:57 +0100
Received: from pengutronix.de (p5b164285.dip0.t-ipconnect.de [91.22.66.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 1B1183C7C3A;
	Thu, 20 Feb 2025 16:02:57 +0000 (UTC)
Date: Thu, 20 Feb 2025 17:02:56 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dimitri Fedrau <dima.fedrau@gmail.com>
Cc: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>, 
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Dimitri Fedrau <dimitri.fedrau@liebherr.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: can: fsl,flexcan: add transceiver
 capabilities
Message-ID: <20250220-intelligent-serious-badger-978793-mkl@pengutronix.de>
References: <20250220-flexcan-add-transceiver-caps-v2-0-a81970f11846@liebherr.com>
 <20250220-flexcan-add-transceiver-caps-v2-1-a81970f11846@liebherr.com>
 <20250220-tasteful-loud-firefly-1e2438-mkl@pengutronix.de>
 <20250220155642.GA43726@debian>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wqtouqubhi2si6xv"
Content-Disposition: inline
In-Reply-To: <20250220155642.GA43726@debian>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--wqtouqubhi2si6xv
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] dt-bindings: can: fsl,flexcan: add transceiver
 capabilities
MIME-Version: 1.0

On 20.02.2025 16:56:42, Dimitri Fedrau wrote:
> Am Thu, Feb 20, 2025 at 09:44:50AM +0100 schrieb Marc Kleine-Budde:
> > On 20.02.2025 09:22:10, Dimitri Fedrau via B4 Relay wrote:
> > > From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> > >=20
> > > Currently the flexcan driver does only support adding PHYs by using t=
he
> > > "old" regulator bindings. Add support for CAN transceivers as a PHY.
> > >=20
> > > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > > Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
> >=20
> > Is it possible express in the biding that we either want to have
> > xceiver-supply or phys?
> >
> I didn't found anything to express that in the binding.

What about something like this:

| dependencies:
|   prop-a: ["!prop-b"]
|   prop-b: ["!prop-a"]

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--wqtouqubhi2si6xv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAme3Ui0ACgkQDHRl3/mQ
kZw6hAf+PRw5IO6COXcoXq45opFTd4+0MQHbBDiyNS98oJ28tCbY5TWgGqTKngQm
V3hjrxZCmkTWluJJPbL8GtbizZyzM6bLVIKAHgy53+9ybJCNyewkZwv543XeZxQC
VtOcY1bdazB+ewfxb3rYwPiiwrZ7w01CjPF9YFwBJDSdz51bDgCE7q9xnfX7XZc5
wg9XUsucf7QkOH5UwrjeUes7aTlQxWUr6wgP1BorlS6HjSNV4eQ1UHKElqcrTW7p
6CNPFtR2Aoon4belSVEOIM5cZ4duJTMuH4oyY1s4KI3HsArs8n0MfFGWBy3nLtFE
BOiJ3AAKGhK/hOJepNLmMVMWwMGU0A==
=CGvy
-----END PGP SIGNATURE-----

--wqtouqubhi2si6xv--

