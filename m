Return-Path: <devicetree+bounces-125528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D079F9DE687
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 13:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C07E163865
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 12:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46FCB170A3D;
	Fri, 29 Nov 2024 12:35:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B90153598
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 12:35:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732883727; cv=none; b=AiAnHZOAAkyw9wv7/vkIO9fBzRTxmI1XK5/PJ5jOGeDjv6agPqEBlmTQG9Esa3mrjmqsDhj1Kzn27C/PBm4T/ejx/H3Av5hCTsVlcPUbYED1EGa64yl01SQqHa+U8IwytKmDrhvtUs9o7BEPxHv4wWzaI8FwYFVfe+uhDCY531c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732883727; c=relaxed/simple;
	bh=w67/ixr1H7XO0VSjOnNUeruUwtoAOjN1j4exDmNfTbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Te68k3g0ctXP0XK/LxHWcGcOGriz88U5QwEiiK+Q0m+9hbFqLbbwROpwZ8VEbKVUGH6vy8NCbQtLEtrIL20HGvTe2az/NXtPMfmKt9VSSRGYmVQuuYPusFAhADnrJPKz7wR7KfglUctoF8HD3JiiZrBbjzn6QeaJsKaEQ77y8vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tH0DK-0002FF-FK; Fri, 29 Nov 2024 13:35:14 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tH0DJ-000n13-0k;
	Fri, 29 Nov 2024 13:35:14 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id A638A38120F;
	Fri, 29 Nov 2024 12:35:13 +0000 (UTC)
Date: Fri, 29 Nov 2024 13:35:13 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sean Nyekjaer <sean@geanix.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH can-next v3] dt-bindings: can: convert tcan4x5x.txt to DT
 schema
Message-ID: <20241129-godlike-monumental-piculet-1dbd6d-mkl@pengutronix.de>
References: <20241128-convert-tcan-v3-1-bf2d8005bab5@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6hascvzpjolqdpwc"
Content-Disposition: inline
In-Reply-To: <20241128-convert-tcan-v3-1-bf2d8005bab5@geanix.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--6hascvzpjolqdpwc
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH can-next v3] dt-bindings: can: convert tcan4x5x.txt to DT
 schema
MIME-Version: 1.0

On 28.11.2024 09:29:21, Sean Nyekjaer wrote:
> Convert binding doc tcan4x5x.txt to yaml.
>=20
> Added during conversion, required clock-names cclk.
>=20
> Signed-off-by: Sean Nyekjaer <sean@geanix.com>

I've replaced the v2 in can-next/testing.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--6hascvzpjolqdpwc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmdJtPwACgkQKDiiPnot
vG82swf+KHFhEx4+B2xMRR1cWQQzel6mE6zkRaoYVFISkUBAUNJzYAGmOi/n9zSB
qCCD1I05Ezfhz1w0inZF438LI/zXoZv/QMtPvAQaRwUwmuvYeetCqLQAzaqR+/MU
3uikMf6I7g+Fq87iu1FR7A6LHud80fM5HavJF4jywMUt3HfC/ZjLH79mtqDF4J+y
SVRbbiX/3n1m/zPap8HYS++6t+dmjxf4MQIEtDhsuxPRwldUYowX9uFm9Io5nFwg
k+OvflbSsNu8asBN+oN03ENiQUoHjL6oM7JzDjMmByl/Cb2ljcSoQWZuosIgOeFd
jauPYNBoUS7zB3kYXbccL1l7AtVgdQ==
=kSfY
-----END PGP SIGNATURE-----

--6hascvzpjolqdpwc--

