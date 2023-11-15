Return-Path: <devicetree+bounces-15618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F247EAF53
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 12:39:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DEE01F24608
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 11:39:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF5E22D62E;
	Tue, 14 Nov 2023 11:39:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2523A267
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 11:39:43 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E78EDD9
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 03:39:41 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2rlW-0006s8-2e; Tue, 14 Nov 2023 12:39:34 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2rlU-008yw4-SK; Tue, 14 Nov 2023 12:39:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2rlU-001K1A-HH; Tue, 14 Nov 2023 12:39:32 +0100
Date: Tue, 14 Nov 2023 12:39:32 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/3] imx8qm/imx8qxp: Support for inverted PWM
Message-ID: <20231114113932.aqidxrmg4sajfsh5@pengutronix.de>
References: <20231106151326.812099-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tpesly76tzrmhhw3"
Content-Disposition: inline
In-Reply-To: <20231106151326.812099-1-alexander.stein@ew.tq-group.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--tpesly76tzrmhhw3
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 06, 2023 at 04:13:23PM +0100, Alexander Stein wrote:
> this small series adds support for inverted PWM output i.MX8QM/QXP.
> Driver is already there, but #pwm-cells needs to be adjusted in DT.
> While at it, enforce the same #pwm-cells value for all compatibles.
> [...]
>  Documentation/devicetree/bindings/pwm/imx-pwm.yaml | 10 ++++------
>  arch/arm64/boot/dts/freescale/imx8-ss-dma.dtsi     |  2 +-
>  arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi    |  8 ++++----
>  3 files changed, 9 insertions(+), 11 deletions(-)

What is the merge plan here? pwm or imx? For me both options are fine,
given this only touches bindings and arch/arm64, maybe it's more
suitable to be merged by Shawn?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--tpesly76tzrmhhw3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVTXHMACgkQj4D7WH0S
/k7LdAf+NnQYkQGnKrZvedYT3teoz1FJiDO3bUDuCnRckIIOznKn3cv/z085oM4K
ZC2vYSScAeGtICTJWFVREt+Dd81iSb0VymgNSzh92//FOUodhMm8ljq/EYRhUAkE
Lw0Fet7virGan3nz4cj07h1ZuFU+XweObNBF6Z6VhQSUjUY91ORj1UiGZdvcle8C
xJqX9kBGqHgBuMEFIqRqJAS1dRD4rAKbBw5E1x2sEi/aljj2XHlEC85ilJ8gXswU
cYsBwKUM1XuYXb5Qmy68azlrz3SafKsfaJcoflcVrhs0omZkDFfVqK9qY96GmlzY
LI6sJfBhkC1IJfb5vvPAtTIviDuJxA==
=USdg
-----END PGP SIGNATURE-----

--tpesly76tzrmhhw3--

