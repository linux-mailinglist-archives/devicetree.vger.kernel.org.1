Return-Path: <devicetree+bounces-2214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CDC87A9EA8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 22:08:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1FDC9B20EB0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 20:08:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BC9118AF3;
	Thu, 21 Sep 2023 20:08:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E318E1799E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 20:08:02 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F54526B4B
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 13:08:01 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPxq-0005Uu-N9; Thu, 21 Sep 2023 22:07:54 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPxo-00807b-W1; Thu, 21 Sep 2023 22:07:53 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPxo-003ido-Hi; Thu, 21 Sep 2023 22:07:52 +0200
Date: Thu, 21 Sep 2023 22:07:52 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, robh+dt@kernel.org, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/3] dt-bindings: pwm: mxs: Document the clocks property
Message-ID: <20230921200752.c3bibaeibezppzis@pengutronix.de>
References: <20230921184348.290261-1-festevam@gmail.com>
 <20230921184348.290261-2-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mbioodsp7x3pf27k"
Content-Disposition: inline
In-Reply-To: <20230921184348.290261-2-festevam@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--mbioodsp7x3pf27k
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Sep 21, 2023 at 03:43:47PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> The 'clocks' property is mandatory for the PWM to operate.
>=20
> Document it.

Indeed the driver does:

        mxs->clk =3D devm_clk_get(&pdev->dev, NULL);
        if (IS_ERR(mxs->clk))
                return PTR_ERR(mxs->clk);

so this is in line with the implementation.

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--mbioodsp7x3pf27k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUMopMACgkQj4D7WH0S
/k763gf/f8hPSXuAE/en6e4D/ydT2bEatfpYLmxAbSlXjECV7eM/RX/zE9V8rhc3
TLqG0e3JbWRU1JnFeHNYdF5vYXdJ22lpmfvLFWL0EWjT3Tzcp+d49TLYn/57BeGh
euauY8e+8jEW8c217iEnuAijGKmj66C0IbsZNQU01ACC4SwJ7FiufEHw9WLprX8V
loE0dDd+aJRi5QISznqAQYzmqj84J5JHlKewWQeAY8pEHDsA5+gwjvShQ6LCXyJL
emFX484vT8Ns8f9Fwlms7EPWMYvSs5CcC00r/qB3eprAtW8rOjRSBYlxylvn2W7l
gxBIKDqm8gf/J1fC0XRHC8P4wwmltA==
=ifJ4
-----END PGP SIGNATURE-----

--mbioodsp7x3pf27k--

