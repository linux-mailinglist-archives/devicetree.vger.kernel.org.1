Return-Path: <devicetree+bounces-23013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C734809ED0
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 10:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DFFA1C209E7
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 09:08:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54B16111A3;
	Fri,  8 Dec 2023 09:08:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3681703
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 01:08:12 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rBWpx-0005lS-NY; Fri, 08 Dec 2023 10:07:57 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rBWpv-00ENVi-0n; Fri, 08 Dec 2023 10:07:55 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rBWpu-00GLG5-NU; Fri, 08 Dec 2023 10:07:54 +0100
Date: Fri, 8 Dec 2023 10:07:54 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>, linux-serial@vger.kernel.org,
	Jiri Slaby <jirislaby@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
	Ian Ray <ian.ray@ge.com>, NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	kernel@collabora.com, Shawn Guo <shawnguo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCHv5 0/2] Fix imx53-ppd UART configuration
Message-ID: <20231208090754.fn3bddlum3t7kakn@pengutronix.de>
References: <20210430175038.103226-1-sebastian.reichel@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rhppgyqd7t7ywrip"
Content-Disposition: inline
In-Reply-To: <20210430175038.103226-1-sebastian.reichel@collabora.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--rhppgyqd7t7ywrip
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Cc +=3D dt maintainers]

On Fri, Apr 30, 2021 at 07:50:36PM +0200, Sebastian Reichel wrote:
> IMHO PATCHv4 was better, but in the end I don't have strong feelings
> about this. Btw. I think this patchset is a good demonstration of
> frustrating upstream kernel development can be considering PATCHv5
> is basically the same as PATCHv1. Thanks for making us go in
> circles :(

I still like v4 better than v1/v5. I'm sorry for the frustration this
created on your side.=20

I'd ask Greg to reconsider given that dt is less flexible than a sysfs
knob and otherwise shares all downsides of sysfs (people don't want to
have to tune that, so a useful default for most cases is important; you
have to consult documentation to understand how to tune it).

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--rhppgyqd7t7ywrip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVy3OkACgkQj4D7WH0S
/k6ZMAf/bJ6Do/+Ap+RHZnbjCMELrpCx+6h7f7pnGXD8hqftIz+Ysir0aF+kBCFH
GdEtc/ct9nQi9SYsT1u18+UFG/roD/WoNLQ72Elr46CopNsRnHBNKmDA/VgS0xW/
um8qYbF+aEFkyZgS2NKT0bzkjpMSDnNYu2IZQr2keCLmQQAbLOp8bELi3oX2JuJT
fjHusoMT3abd0ZQm3kY+CUVJ+ROkUl/8yi7TZTnLN0NTH8JSudB1euakrEV0bhOc
KW6GMif04RK75PWPUunvlrxyPD2Pje2I9G3K6vsp8mXDIffeI5GyhH51wD3YKOe7
mIaJ6GBw0+ASbVw7fErVyzxIf5SzdQ==
=BHUP
-----END PGP SIGNATURE-----

--rhppgyqd7t7ywrip--

