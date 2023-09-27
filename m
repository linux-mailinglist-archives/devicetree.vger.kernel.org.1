Return-Path: <devicetree+bounces-3893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A497B0702
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 16:35:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C9C9928279F
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749031FA7;
	Wed, 27 Sep 2023 14:35:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E58D91854
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 14:35:00 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD6C3192
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 07:34:58 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlVcj-0007du-JP; Wed, 27 Sep 2023 16:34:45 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlVci-009MaV-1x; Wed, 27 Sep 2023 16:34:44 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlVch-005LnT-Ot; Wed, 27 Sep 2023 16:34:43 +0200
Date: Wed, 27 Sep 2023 16:34:43 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Jagath Jog J <jagathjog1996@gmail.com>, jic23@kernel.org,
	lars@metafoo.de, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC 2/2] iio: imu: Add driver for BMI323 IMU
Message-ID: <20230927143443.f4xpfzkwylipo25g@pengutronix.de>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-3-jagathjog1996@gmail.com>
 <20230927095708.l57kmdc3mmrtaco7@pengutronix.de>
 <ZRQhdkVNFdCfPseY@smile.fi.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6qll4arutm5puf3a"
Content-Disposition: inline
In-Reply-To: <ZRQhdkVNFdCfPseY@smile.fi.intel.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--6qll4arutm5puf3a
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 27, 2023 at 03:35:02PM +0300, Andy Shevchenko wrote:
> On Wed, Sep 27, 2023 at 11:57:08AM +0200, Uwe Kleine-K=F6nig wrote:
> > On Mon, Sep 18, 2023 at 01:33:14PM +0530, Jagath Jog J wrote:
>=20
> ...
>=20
> > > Datasheet: https://www.bosch-sensortec.com/media/boschsensortec/downl=
oads/datasheets/bst-bmi323-ds000.pdf
> >=20
> > Maybe put this link better in the driver.
>=20
> Why? We have a handful commits with this and it's better to see the link
> to the datasheet without browsing the source code.

But if you later work on a problem in the driver, it's better to see the
link without browsing git history. :-)

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6qll4arutm5puf3a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUUPYIACgkQj4D7WH0S
/k74wAf/bKI3Et3gPAiOaaSXOYWg7yGxuEkgLT0MChmeipxFuTXHohip+DTJJtYv
/omw0NS3Ysa2BGAg6ytQWuSuA5DE/6GxpiZ1GVwsLQLd7mFkIOg0DP7pp6elhqCR
Ex9/ioVWyWEKKCFjeywO+dYruEDFD87//au1bpNyY5ZTTNBvfQhuPsRmD1SQ1IUc
X0NuZxB7WwYTR83Zpw5kgViBjYAvL3qgd470uwrbAESBSJfCCE7noB7trU18A5mR
/BjCr6RzE/CWUKX6fE+tfw4PQr2l+eDeYE12W96JAgduRwVk3d/JSIlhSd6Rkkvp
2c+EnW0JyNOKnA7L0F8RBFyUXjOLaw==
=bJTb
-----END PGP SIGNATURE-----

--6qll4arutm5puf3a--

