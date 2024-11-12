Return-Path: <devicetree+bounces-121035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D479C4FA4
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 08:40:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2A63B2175E
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 07:40:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B7120DD74;
	Tue, 12 Nov 2024 07:38:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01D4420DD6B
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 07:38:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731397119; cv=none; b=nKWy6UKOfPoyiHUpGBcAiTXdOqGG3oLKDeW8drVVjhjkhem+rXWPyEC+l7GzVwi+jrpK6o0EfS1w50/WPanwKQ6uFwqh2gv8vp+QAZng5kX5CcP8NGvQhhAyTEGEvfYiV81ZFsQKrBSx+CinmrwiBTYyfphjHdTfhceYylTIHJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731397119; c=relaxed/simple;
	bh=V25d4nclfr4yZ4OkzVfKjGvH4jsETk2+KmZ+vS7o4Lw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I0pFrNiI5aiFnnZ+Q9Yz70lLCKBnKnHPckfiaUlWVTS7aKlZ4OKEAUOm6J0p9zXDPIvP0KzZCfwTKaL54oPTvTwMAl9Y+IQFZH6URipCqndJ3L+D/FB8lvpiJQ9Fvt/raa3JK4g3wRLCdxroUzqGx2tf00WYWDdf+eaU+bkzpEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tAlTn-00057u-Pi; Tue, 12 Nov 2024 08:38:27 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tAlTn-000NDh-1q;
	Tue, 12 Nov 2024 08:38:27 +0100
Received: from pengutronix.de (pd9e59fec.dip0.t-ipconnect.de [217.229.159.236])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 340B137124D;
	Tue, 12 Nov 2024 07:38:27 +0000 (UTC)
Date: Tue, 12 Nov 2024 08:38:26 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Sean Nyekjaer <sean@geanix.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-can@vger.kernel.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] can: tcan4x5x: add option for selecting nWKRQ
 voltage
Message-ID: <20241112-bizarre-cuttlefish-of-excellence-ff4e83-mkl@pengutronix.de>
References: <20241111-tcan-wkrqv-v2-0-9763519b5252@geanix.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2urjt7ttlmihpixs"
Content-Disposition: inline
In-Reply-To: <20241111-tcan-wkrqv-v2-0-9763519b5252@geanix.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--2urjt7ttlmihpixs
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2 0/2] can: tcan4x5x: add option for selecting nWKRQ
 voltage
MIME-Version: 1.0

On 11.11.2024 09:54:48, Sean Nyekjaer wrote:
> This series adds support for setting the nWKRQ voltage.

IIRC the yaml change should be made before the driver change. Please
make the yaml changes the 1st patch in the series.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--2urjt7ttlmihpixs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEUEC6huC2BN0pvD5fKDiiPnotvG8FAmczBfAACgkQKDiiPnot
vG9iOggAnnufYuM/lvKpRCOIaluA5IBmC52ryeaFX85bmfkQm2RMhTn9POVLtK6D
hlitkd1FbizmaTfEp2DyskROpAYAiNM/GoaY11ATkQwuoQhlqvqqSqWYRK+nug43
415eybrFjMH4JxPjBsRLevjqwGhfTD+OosQ9rScbfgjwo1TU2/SFiHR17NPmYqLh
5ZfTErhNXQaTwYoMdvEzdtNTTg0gM/AcgIi4jw1N4YXfy/Luq1gvpUAMr12namoW
Aq9O5b47OLSQc/s6JbFKdYRLAKroxZTwFWz+Q9QPyaATHHDcGjJlT0ZaCCOfrTa1
/qRlTRH48uioXAabFi3qfmTWclh1Wg==
=aNIp
-----END PGP SIGNATURE-----

--2urjt7ttlmihpixs--

