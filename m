Return-Path: <devicetree+bounces-2212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 991C47A9E44
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 38BB31C20A82
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:59:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6E8B182DE;
	Thu, 21 Sep 2023 19:59:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B8721799E
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 19:59:26 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA4FA8E693
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 12:59:17 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPpO-0003Ut-6U; Thu, 21 Sep 2023 21:59:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPpN-00803g-AH; Thu, 21 Sep 2023 21:59:09 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qjPpM-003iAi-Ts; Thu, 21 Sep 2023 21:59:08 +0200
Date: Thu, 21 Sep 2023 21:59:09 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: thierry.reding@gmail.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, robh+dt@kernel.org, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 3/3] dt-bindings: pwm: mxs: Allow passing #pwm-cells = <2>
Message-ID: <20230921195909.ulpoqvrixocwqou2@pengutronix.de>
References: <20230921184348.290261-1-festevam@gmail.com>
 <20230921184348.290261-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zvqknlzx3hklllpf"
Content-Disposition: inline
In-Reply-To: <20230921184348.290261-3-festevam@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--zvqknlzx3hklllpf
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Fabio,

On Thu, Sep 21, 2023 at 03:43:48PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> All the in-tree imx23 and imx28 devicetrees use #pwm-cells =3D <2>.
>=20
> Allow it in the schema to avoid warnings.
>=20
> It is still possible for a devicetree to pass the third cell with the
> PWM polarity though.
>=20
> This is similar to imx-pwm.yaml that allows #pwm-cells to be 2 or 3.

Alternatively switch all devicetrees to use =3D <3>? That's what I'd
prefer given that the PWM supports both polarities.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zvqknlzx3hklllpf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUMoIwACgkQj4D7WH0S
/k6/sQgArIOAvS8VYqdd//skjrkrDRwEC7caykl2brTnBrGTCbXLcN1xx7Ljc88H
aLmjOFELi93sxjsGM5mcg5hQOg99fveuUKYLTQ/TpHmfPmT512SLRzeqPdMXmXdT
twpDtmtpu5/L7LhFrpnU9+KKpi3f3JFCVAOzp9p4VgITkMvotRlnIh8xgOoMn+XU
t/Rc3vylQ2Mqxrmsll4RJ3926JIG7OUAQ5Bpx7bWXNmzy9IdLe7zIIiGwLtEHhRH
war+bneWv5+4r2clmniafrhnqlxuI9PuMGuvg3Ab+KKq9LyoWCekNeTzDc2cNn85
nmMPSqbFBE9dwk6cig1WMkJFbS3KeA==
=6VPi
-----END PGP SIGNATURE-----

--zvqknlzx3hklllpf--

