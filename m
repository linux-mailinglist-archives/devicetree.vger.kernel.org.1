Return-Path: <devicetree+bounces-148738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7624DA3D389
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 09:45:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6D0BA16B71D
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 08:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 451AD1EDA07;
	Thu, 20 Feb 2025 08:45:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB921EB1AA
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 08:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740041103; cv=none; b=D4HMT2QVsmVNGS4g1GyZ6l/rwRi37hWItckLNCGA4UfMY5XjZwHaIDNYz9nSMe9pL+MohVPbcQOPbrH65eV+P1aRStTmtszeN/yOwezLNLkqZ8AaJAd0hFuCd0hB5p8LWe5h+lVDnI9se25D1DNxaVhSUkh/1egGWD97ohLzcWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740041103; c=relaxed/simple;
	bh=jDF4OAWgFocj9kIItZn6ybJBBEfS88yhQn1hnG/2FvA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gulMDDSIHCXWiC7Cmp9aWH0aJv7Oo633h/YYqSp88oiLiPBQdzTIktLZm3LJ6nVpddQIzZ6G16BrRuHYpy8R53yP4igcSGPUSiExr5wLVZjcMEGG1GLSbjhNntqvUG41u57Y2YckVgnQuLf8JIaiTtNJwMygCpueCHZwVmfikJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tl2Au-0004Ku-34; Thu, 20 Feb 2025 09:44:52 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tl2At-001uHB-11;
	Thu, 20 Feb 2025 09:44:51 +0100
Received: from pengutronix.de (p5b164285.dip0.t-ipconnect.de [91.22.66.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 0CF183C757B;
	Thu, 20 Feb 2025 08:44:51 +0000 (UTC)
Date: Thu, 20 Feb 2025 09:44:50 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Dimitri Fedrau via B4 Relay <devnull+dimitri.fedrau.liebherr.com@kernel.org>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Dimitri Fedrau <dimitri.fedrau@liebherr.com>, 
	Dimitri Fedrau <dima.fedrau@gmail.com>, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: can: fsl,flexcan: add transceiver
 capabilities
Message-ID: <20250220-tasteful-loud-firefly-1e2438-mkl@pengutronix.de>
References: <20250220-flexcan-add-transceiver-caps-v2-0-a81970f11846@liebherr.com>
 <20250220-flexcan-add-transceiver-caps-v2-1-a81970f11846@liebherr.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lvyhmneskmwhjs2b"
Content-Disposition: inline
In-Reply-To: <20250220-flexcan-add-transceiver-caps-v2-1-a81970f11846@liebherr.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--lvyhmneskmwhjs2b
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 1/2] dt-bindings: can: fsl,flexcan: add transceiver
 capabilities
MIME-Version: 1.0

On 20.02.2025 09:22:10, Dimitri Fedrau via B4 Relay wrote:
> From: Dimitri Fedrau <dimitri.fedrau@liebherr.com>
>=20
> Currently the flexcan driver does only support adding PHYs by using the
> "old" regulator bindings. Add support for CAN transceivers as a PHY.
>=20
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Dimitri Fedrau <dimitri.fedrau@liebherr.com>

Is it possible express in the biding that we either want to have
xceiver-supply or phys?

regards,
Marc

> ---
>  Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml | 3 +++
>  1 file changed, 3 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml b=
/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> index 73252fe56fe6c8e9fd19142208bb655dc86d47cd..a7b9ae2b2546b801623117179=
e16c4ffc11a234e 100644
> --- a/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> +++ b/Documentation/devicetree/bindings/net/can/fsl,flexcan.yaml
> @@ -77,6 +77,9 @@ properties:
>    xceiver-supply:
>      description: Regulator that powers the CAN transceiver.
> =20
> +  phys:
> +    maxItems: 1
> +
>    big-endian:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description: |
>=20
> --=20
> 2.39.5
>=20
>=20
>=20

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--lvyhmneskmwhjs2b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAme264AACgkQDHRl3/mQ
kZwkdAgAp3RkDoXszkIIqJ74B1dI2nOExNOrAEnRNx4PuBf4gfILPt0Mp3RfrdhD
H7L4eddzJvUayk5upeO31PhENa03UENM+8sxbyxbVZ13eAsn2sEvzdtJn1ccGitv
Aa+sOmb8B35oNm1m5Vz1yhkM1psm5CD4f2ZMHOrmxFYRo0nK2TajHTjs1LRsh+Zd
NgNlpz5wAPgKeGW/++0M2C9OBYCTmvprnco/ThgIQCHKO7Buhlj38qeD1v6lZPOj
Qrack3HvphPTxxS+s26fZSmHwQ1C6S92+MmqKphxwI8YpNfTVuD2HCLPWy8bd/SW
b3h+Z04FiJdxX1fNd6NbVj2hIjsmDA==
=kF49
-----END PGP SIGNATURE-----

--lvyhmneskmwhjs2b--

