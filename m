Return-Path: <devicetree+bounces-147858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0BCA39A57
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:17:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 452D7174B4F
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F35324060E;
	Tue, 18 Feb 2025 11:14:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592123C375
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739877276; cv=none; b=ED8DvKPncBQH4npp9AZ94vYBJi+hXDfVX4D2HnP6Ybdd+IvQbqRii6qDS/RJHhJ0JIe2swhQZDFPnn2hE4sP7l35fT2boXIRLArRm7n3fa5tdEMrpGT8ZobEVCc1xdDdGmMPI8vT0hWEKdHtjhAj6qCdVCaVrlZz9E94mSOvnxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739877276; c=relaxed/simple;
	bh=CzKvQA0VswSdpIHPfZkDC1XIgL8JGpwAbo8/WLHhC+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sGspoXLrmuId6S0uQ4mN53ecsMmeFMYIXRXo+meXDAoJqvXaA37GccQuBR1+X6l2cvYKnYHwTVjmmLH8+v1WjTNXmUG92C+zkTuNZxt5K51dqu5giU91UHSvfW69WM4Wh/XUPP7KxpACD/jMnQyyoMoLS0w6tKbJB6aafFiZHcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tkLYP-0005B9-Ti; Tue, 18 Feb 2025 12:14:17 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tkLYN-001aFH-2r;
	Tue, 18 Feb 2025 12:14:15 +0100
Received: from pengutronix.de (p5b164285.dip0.t-ipconnect.de [91.22.66.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id 702BE3C5B2C;
	Tue, 18 Feb 2025 11:14:15 +0000 (UTC)
Date: Tue, 18 Feb 2025 12:14:15 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-can@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Subject: Re: [PATCH 00/11] Add support for RZ/G3E CANFD
Message-ID: <20250218-outgoing-binturong-of-tact-aa4d49-mkl@pengutronix.de>
References: <20250218105007.66358-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z6lokcnpvxqlpaay"
Content-Disposition: inline
In-Reply-To: <20250218105007.66358-1-biju.das.jz@bp.renesas.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--z6lokcnpvxqlpaay
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 00/11] Add support for RZ/G3E CANFD
MIME-Version: 1.0

On 18.02.2025 10:49:50, Biju Das wrote:
> The CAN-FD module on RZ/G3E is very similar to the one on both R-Car V4H
> and RZ/G2L, but differs in some hardware parameters:
>  * No external clock, but instead has ram clock.
>  * Support up to 6 channels.
>  * 20 interrupts.

Thanks for you contribution. Can you split this series in fixes and
enhancements and post the fixes as a separate series. Please add
stable@k.o on Cc if needed.

regards,
Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--z6lokcnpvxqlpaay
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAme0a4QACgkQDHRl3/mQ
kZy1HQf/Ra/7NSy+7EbzmQjtexxW1MNCxtpZKA3Bh5+doGSLvtiwwD5TePU41XMc
36D4mLSyExIuxREb6Zd188JVf0W9PVoFO6paThCK1jPKzTJI0H5u2dTXrbyFYm5N
b+udrsOoV6ivihs9itEePaQ7QwZMEG6ONZSvPw9maHNzIvUdJeukqOtTSvWzATCa
T/NHWcR6rZk1Xjf/JhKeTythzpu7WmcqHbNE/VOHzWLDubKJvXw5nmMN6q2Ob76V
lCMGx3Lm+ww3mhBO6T2ObN5j9LsIwI9YHk14kwhgUZ8a5xATAJIZ2keBtnpRAWmv
J110WHSpR1bGISUnlsgik8KJncgeOg==
=r/2J
-----END PGP SIGNATURE-----

--z6lokcnpvxqlpaay--

