Return-Path: <devicetree+bounces-157554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A69B8A6118D
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 13:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8C9F6188A03E
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 12:39:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1EA91FECDE;
	Fri, 14 Mar 2025 12:38:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A031A23A4
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 12:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741955909; cv=none; b=VMX7TP/WxEAp2GgTBO2Gj2xF1Ew//6doRr5hBj1eVX5oVO6oiPtsWulgeOLWDJinYs9DTLM5TbhaOe59PPLnISHiuEqN/DmAnaQUQe8p0P6nM25q26qGD0x+uhHRnjoB8hsoE4cvOO7Ernsf851Ok2dxMlDD4nkXcreIcr/qSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741955909; c=relaxed/simple;
	bh=6md49y5PF98TaNdg3CmnRQhmN9p3RUvTuQz5FN8C3Qk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Dncm57w3dmyv7+mV9zlsqeV40uu3cEaUjd9J1dj3hYYgxkhl0EzrEcNvYFzgdTn9V3GML11Hm0LC3m2ldm8F3eRsCrBUCjitSC9vNkHFfD1ffKAF17r9JxK56d8/rdsE0E3kW2wAG57sHSIBMC+YSzWyCHoOSn1fwgaaC4lfEeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1tt4Io-0002LW-3X; Fri, 14 Mar 2025 13:38:14 +0100
Received: from moin.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::7b] helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mkl@pengutronix.de>)
	id 1tt4In-005hf9-0c;
	Fri, 14 Mar 2025 13:38:13 +0100
Received: from pengutronix.de (p5b1645f7.dip0.t-ipconnect.de [91.22.69.247])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	(Authenticated sender: mkl-all@blackshift.org)
	by smtp.blackshift.org (Postfix) with ESMTPSA id D05603DBB04;
	Fri, 14 Mar 2025 12:38:12 +0000 (UTC)
Date: Fri, 14 Mar 2025 13:38:12 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, linux-can@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Subject: Re: [PATCH v4 00/11] Add support for RZ/G3E CANFD
Message-ID: <20250314-meticulous-daring-loon-bf86f6-mkl@pengutronix.de>
References: <20250306124256.93033-1-biju.das.jz@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="r6da444pe2xmwoiu"
Content-Disposition: inline
In-Reply-To: <20250306124256.93033-1-biju.das.jz@bp.renesas.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--r6da444pe2xmwoiu
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v4 00/11] Add support for RZ/G3E CANFD
MIME-Version: 1.0

On 06.03.2025 12:42:39, Biju Das wrote:
> The CAN-FD module on RZ/G3E is very similar to the one on both R-Car V4H
> and RZ/G2L, but differs in some hardware parameters:
>  * No external clock, but instead has ram clock.
>  * Support up to 6 channels.
>  * 20 interrupts.
>=20
> This patch series depend upon [1]
> [1] https://lore.kernel.org/all/20250220094516.126598-1-biju.das.jz@bp.re=
nesas.com/

I'll send a PR for linux-can today. Ping me after net is merged to
net-next, so I can take this series.

Marc

--=20
Pengutronix e.K.                 | Marc Kleine-Budde          |
Embedded Linux                   | https://www.pengutronix.de |
Vertretung N=C3=BCrnberg              | Phone: +49-5121-206917-129 |
Amtsgericht Hildesheim, HRA 2686 | Fax:   +49-5121-206917-9   |

--r6da444pe2xmwoiu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEn/sM2K9nqF/8FWzzDHRl3/mQkZwFAmfUIzEACgkQDHRl3/mQ
kZwemgf/d01wB2CtulciMJxoqCj2gYYoRhWEHkNOC43q70dAJKarKpdFpXR9uVHx
5oKYBmSMndXJHerslrEv9n8NiCG7mh+hQJBwuWwt6uhHxGO+haKQ+v3ztcsPaVHy
Vh1FiHLUQU0Pdry+bz2H/Dt/4OURNWq46KPEwKki+xi6P4UE0a58KkqjOtHtBz+n
NmOaral/J41nZmC354T6pCEVinFZpf9/Vp39MRJ8CCmVB8HWmRFbiwpntnnMf1JC
KUfsCzvn4JeHezfAkRkWfCfLg4S/NsHRVYrpBmsR9vC/rfHCwwou6HEx5bjImePY
B41jF3aixyPjIiDEUeDzEGqPr02mOg==
=00Cy
-----END PGP SIGNATURE-----

--r6da444pe2xmwoiu--

