Return-Path: <devicetree+bounces-5843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC99C7B819F
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DA0B81C20865
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 14:03:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4C0315EAE;
	Wed,  4 Oct 2023 14:03:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EBB813AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 14:03:04 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59FC3AD
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 07:03:03 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qo2Si-0007mV-CC; Wed, 04 Oct 2023 16:02:52 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qo2Sh-00B3H0-R7; Wed, 04 Oct 2023 16:02:51 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qo2Sh-0090zY-Hq; Wed, 04 Oct 2023 16:02:51 +0200
Date: Wed, 4 Oct 2023 16:02:51 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: pwm: Add T-HEAD PWM controller
Message-ID: <20231004140251.smwazlizo5nmpz2a@pengutronix.de>
References: <20231004092731.1362-1-jszhang@kernel.org>
 <20231004092731.1362-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yyfa3baivxpuqfl7"
Content-Disposition: inline
In-Reply-To: <20231004092731.1362-2-jszhang@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--yyfa3baivxpuqfl7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Oct 04, 2023 at 05:27:30PM +0800, Jisheng Zhang wrote:
> +  "#pwm-cells":
> +    const: 2

Please make this a 3.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--yyfa3baivxpuqfl7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUdcIUACgkQj4D7WH0S
/k4h8Qf+Ia6dnze4AFsN9pYFc9wi8+dnrkfW8vPHngsUX7UMRjp24RuetCeLpPNf
zdAp8DHO10gQMncXwM/JXMlLg+OC7PJ3YhdFLq6HZbLrvwO0sOITHr5q087tpaRN
h27NkHMGILH3rYFSqni0nRxNCH+gwbrZ8OpAyCO1XjwtCYWTBpp/E+V+VZAxQUyd
Q8j2aoCE9p4+vJvCYoUomWm9S3b0UT/6Odw/mAbrghFXaTx+8YUDznQPuQx+pBQB
H4ZFpmHmkTJ42/cU6Q2yGxwmjkmhWyPfusUesmbOpV9QKj7aGuFXBE5N6PZ2Uu3I
KaxuEG8+CwEWzxuQDssUrTrXf8JGpQ==
=2coh
-----END PGP SIGNATURE-----

--yyfa3baivxpuqfl7--

