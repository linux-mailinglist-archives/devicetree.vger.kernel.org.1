Return-Path: <devicetree+bounces-2750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B607AC52B
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 23:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5652B1C2091D
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EC4163B5;
	Sat, 23 Sep 2023 21:05:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48321818
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 21:05:23 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C7A1180
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 14:05:21 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qk9oU-0000JV-Q8; Sat, 23 Sep 2023 23:05:18 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qk9oT-008UTq-Od; Sat, 23 Sep 2023 23:05:17 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qk9oT-004F4d-FA; Sat, 23 Sep 2023 23:05:17 +0200
Date: Sat, 23 Sep 2023 23:05:17 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: shawnguo@kernel.org, thierry.reding@gmail.com,
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 3/3] ARM: dts: mxs: Switch to #pwm-cells = <3>
Message-ID: <20230923210517.zbipvauk5jfmy3cc@pengutronix.de>
References: <20230922124229.359543-1-festevam@gmail.com>
 <20230922124229.359543-3-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zm6td2pbnnwho3ex"
Content-Disposition: inline
In-Reply-To: <20230922124229.359543-3-festevam@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--zm6td2pbnnwho3ex
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Fabio,

On Fri, Sep 22, 2023 at 09:42:29AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
>=20
> mxs-pwm.yaml documents that #pwm-cells should be 3.
>=20
> This is correct as the last cell may indicate the PWM polarity.
>=20
> Convert all mxs devicetree files to using #pwm-cells =3D <3> for
> consistency.
>=20
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Very nice,

Reviewed-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

Thanks!
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--zm6td2pbnnwho3ex
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUPUwwACgkQj4D7WH0S
/k70RQf+KK0J/5rruL7ki9dy+rFPYQ7jEf/niXOwLGktTba756QoOH/3FtFf+cma
zPOLHffLeHduug1DIIMrQonAz41qBlsYlQVZ20CK+ez4o6lH3fR2yp6PePdhOVW9
42Crp9xN0iD7vTsE3MWkpRa8UGFH54MfG3P/4g1iTxKpOl6QB6pBA3VBCbZm40JI
Jco5J61GTns88g3eKYTW8uzP1tsrmbHpKuqQ+woRbjZV2cFnHW6Dttti8ryo67U4
axd/FBTIlsllEAp1M1lCBOEiunEevmDXMVTnJNcCOe2ElQBbEH8TtFmxzmknf837
CWrFQ79d4SfFamyMCKIrdxWdCIthRw==
=55uq
-----END PGP SIGNATURE-----

--zm6td2pbnnwho3ex--

