Return-Path: <devicetree+bounces-91490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDA95949812
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 21:15:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 977581F22631
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2024 19:15:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0953C47F4D;
	Tue,  6 Aug 2024 19:15:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B94CB40856
	for <devicetree@vger.kernel.org>; Tue,  6 Aug 2024 19:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722971729; cv=none; b=KnXm7wJSGSeSqBIFfjyWvGytn5++pePp5Y0tsazX7JcKv9E9kL2l/nL7l+eaM+ML+DLvOLVtvZ5zOC0T86NO3AkzTeSpd0HsZX+O9rCswUyL9LTUbaHySmEG+6fIiicF1ANdtfgnKblkR9zOdZILL0NqcJZOOQgTlaYIbOlXJNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722971729; c=relaxed/simple;
	bh=/KTY3Gaho72Tf3+2/vhp6C+9MfaiqfVEjgZtRJhZ9k0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UIBrsvJpEO70lwifYv7T8KtRDy2JCowZYpSFGx0E0xhaVvKl7mj5dU3c4Ne2rDQv3/4QCEPI5U17Hj5zHnn3jyGQOm6WYa6YnwauJkvuUgg2FIGa8EXcrzDxry6sibxzF1iKK04iWkA/FTy8RPdhlQj0dOOLnvxtS6VfhtpiJgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1sbPeI-0004ET-0G; Tue, 06 Aug 2024 21:15:10 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1sbPeE-0051Tg-Pj; Tue, 06 Aug 2024 21:15:06 +0200
Received: from pengutronix.de (p5de45302.dip0.t-ipconnect.de [93.228.83.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 6F10F31831F;
	Tue, 06 Aug 2024 19:15:06 +0000 (UTC)
Date: Tue, 6 Aug 2024 21:15:05 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Duy Nguyen <duy.nguyen.rh@renesas.com>
Subject: Re: [PATCH v3] dt-bindings: can: renesas,rcar-canfd: Document R-Car
 V4M support
Message-ID: <20240806-fragrant-nimble-crane-c5a129-mkl@pengutronix.de>
References: <68b5f910bef89508e3455c768844ebe859d6ff1d.1722520779.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mknissrzzstlngmz"
Content-Disposition: inline
In-Reply-To: <68b5f910bef89508e3455c768844ebe859d6ff1d.1722520779.git.geert+renesas@glider.be>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--mknissrzzstlngmz
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 01.08.2024 16:03:17, Geert Uytterhoeven wrote:
> From: Duy Nguyen <duy.nguyen.rh@renesas.com>
>=20
> Document support for the CAN-FD Interface on the Renesas R-Car V4M
> (R8A779H0) SoC, which supports up to four channels.
>=20
> The CAN-FD module on R-Car V4M is very similar to the one on R-Car V4H,
> but differs in some hardware parameters, as reflected by the Parameter
> Status Information part of the Global IP Version Register.  However,
> none of this parameterization should have any impact on the driver, as
> the driver does not access any register that is impacted by the
> parameterization (except for the number of channels).
>=20
> Signed-off-by: Duy Nguyen <duy.nguyen.rh@renesas.com>
> [geert: Clarify R-Car V4M differences]
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

Added to linux-can-next.

Thanks,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--mknissrzzstlngmz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmaydjYACgkQKDiiPnot
vG+u2AgAn4+6wZaPame+miPr3sdkTEbM/Lg8mogLdoWmXvVo+Th8y/L03f4Toefj
ms/W67M+6IKrmQ0knx6dvuxoqv2gm3nDDvaxl6cjbmob7bfRqgXgyMCkeQoLnHX3
fQODaGqxPQUwJMVWkr2a1n22/0amEJS8rt5mJ3JB9q5ZbKomD600abjFBXi2CMiw
rePQSVXAz7Xs8zliYk1fDUvPU7df+P+oTTFUOvl/6G38xnmRBYPHNEyPdSWN+cKZ
p3LYYX0BcbjxovTUEx++/Ex9g9KX2OhVroi5C6He7to34xFYgMZmyiA35iZ4Zd8i
PuyzFe7V+Qyl/4McRVkCyseIDq74Gw==
=nZkM
-----END PGP SIGNATURE-----

--mknissrzzstlngmz--

