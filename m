Return-Path: <devicetree+bounces-3761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED79E7B0124
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 11:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9AF4F28299B
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 09:57:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7939E210FE;
	Wed, 27 Sep 2023 09:57:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F02F38C1C
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 09:57:23 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 866BAC0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 02:57:22 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlRI6-0005gM-PA; Wed, 27 Sep 2023 11:57:10 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlRI5-009JFx-7k; Wed, 27 Sep 2023 11:57:09 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qlRI4-005FLO-UV; Wed, 27 Sep 2023 11:57:08 +0200
Date: Wed, 27 Sep 2023 11:57:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: jic23@kernel.org, andriy.shevchenko@linux.intel.com, lars@metafoo.de,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC 2/2] iio: imu: Add driver for BMI323 IMU
Message-ID: <20230927095708.l57kmdc3mmrtaco7@pengutronix.de>
References: <20230918080314.11959-1-jagathjog1996@gmail.com>
 <20230918080314.11959-3-jagathjog1996@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ayzzs7ssu5nzixlw"
Content-Disposition: inline
In-Reply-To: <20230918080314.11959-3-jagathjog1996@gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--ayzzs7ssu5nzixlw
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Sep 18, 2023 at 01:33:14PM +0530, Jagath Jog J wrote:
> The Bosch BMI323 is a 6-axis low-power IMU that provide measurements for
> acceleration, angular rate, and temperature. This sensor includes
> motion-triggered interrupt features, such as a step counter, tap detectio=
n,
> and activity/inactivity interrupt capabilities.
>=20
> The driver supports various functionalities, including data ready, FIFO
> data handling, and events such as tap detection, step counting, and
> activity interrupts
>=20
> Datasheet: https://www.bosch-sensortec.com/media/boschsensortec/downloads=
/datasheets/bst-bmi323-ds000.pdf

Maybe put this link better in the driver.

> +static struct i2c_driver bmi323_i2c_driver =3D {
> +	.driver =3D {
> +		.name =3D "bmi323",
> +		.of_match_table =3D bmi323_of_i2c_match,
> +	},
> +	.probe_new =3D bmi323_i2c_probe,
> +	.id_table =3D bmi323_i2c_ids,
> +};
> +module_i2c_driver(bmi323_i2c_driver);

If you want to compile this driver after v6.6-rc2 (which includes=20
commit 5eb1e6e459cf ("i2c: Drop legacy callback .probe_new()")) better
use .probe here instead of .probe_new().

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--ayzzs7ssu5nzixlw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUT/HQACgkQj4D7WH0S
/k5O+AgAupD7sxxsTSWm21ccqUt6/DseGEcb01TUR1IxTfoMogC9MdJRO23HF3hn
5x61HUQAMPjb2pw1yOASyRfE6L1A2+iojJ93053SBtw3c2puzc6SgW/bLBuMCyoi
64Y1DTm0PP3vZwRLxOV66k3v7wecsMak0p/4l5XaiAgwNNQDTEA9MX68Peu91k2F
N7E+GnUs8eNOLRC7E0YJHSv5S3SqilqeknU8IhOZBNDcOIoz+punWdFSbWBJGMAM
kS4e//zRjf6gU7KRvs8ABe8Iux3NTqcyVAXjT7fIG9vdimsu0QXlymNXuz2eYNcw
3/Kgp/AZrVmTr+7l3VovKGB3PyHJqA==
=AfNQ
-----END PGP SIGNATURE-----

--ayzzs7ssu5nzixlw--

