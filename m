Return-Path: <devicetree+bounces-3159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 531CD7AD82B
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9728E281007
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A56414287;
	Mon, 25 Sep 2023 12:39:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E354E13AE7
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:39:20 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 034C99C
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:39:18 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkkrs-0002iA-UL; Mon, 25 Sep 2023 14:39:16 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkkro-008sBk-4H; Mon, 25 Sep 2023 14:39:12 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qkkrn-004fbH-Qd; Mon, 25 Sep 2023 14:39:11 +0200
Date: Mon, 25 Sep 2023 14:39:08 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: William Qiu <william.qiu@starfivetech.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	linux-pwm@vger.kernel.org, Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Hal Feng <hal.feng@starfivetech.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Subject: Re: [PATCH v5 2/4] pwm: starfive: Add PWM driver support
Message-ID: <20230925123908.4hohhjarviwattgw@pengutronix.de>
References: <20230922092848.72664-1-william.qiu@starfivetech.com>
 <20230922092848.72664-3-william.qiu@starfivetech.com>
 <CAJM55Z8d368MAQPpnRO8giKmasN5XETP40i3JVdW_0gTF3Ktqg@mail.gmail.com>
 <ade1c061-63d8-8b48-b8e2-69416cd8aa48@starfivetech.com>
 <CAJM55Z83VUkoTNCMbd9GJ7NpwgeQqMjCxPmYonEAXBjr5Tx9Zg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xq7ehyumhkwfir4g"
Content-Disposition: inline
In-Reply-To: <CAJM55Z83VUkoTNCMbd9GJ7NpwgeQqMjCxPmYonEAXBjr5Tx9Zg@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net


--xq7ehyumhkwfir4g
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Mon, Sep 25, 2023 at 10:31:49AM +0000, Emil Renner Berthing wrote:
> William Qiu wrote:
> > The PTC, short for PWM/TIMER/CONUTER, comes from OpenCore's ip, but onl=
y PWM
> > mode is used in the JH7110. So the register still has the word "PTC".
> > s the best way to change all the prefix to STARFIVE?
>=20
> I see. Yeah, since you're only using the P from PTC the PTC name doesn't =
make a
> lot of sense anymore. I'd just call this whole driver
> STARFIVE_PWM_/starfive_pwm_ consistently.

I don't care much how the driver is named iff there is only a single
type of hardware unit on this platform that can be used as a PWM.
However if the hardware manual calls this unit PTC I'd at least mention
that in a comment at the top of the driver.

Thanks
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--xq7ehyumhkwfir4g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmURf2wACgkQj4D7WH0S
/k6D+Af/UurV0zRPp6nHaILWU8arJcTP6K/TCv9XK/rO3ubSZPfvesG/KvvgwhAL
NdrQu6EKqRNNIh8gXlBP7VXgQgDlot+E9fNz10BKinKi7i7VFQvJ/W+rzZ91me1+
Z7uxb+hvVa+GZMdc6VTeosGlnuSjugyggCwjGohFanhF6QqGMxn5hpS1/ZrKlCM+
gUDVk5fLhLnT/Mo8GlsQEcbULJnmyZ9JSnoif+XJLvs5F55GUlQOlua9PxXegP4p
Jsp5Oxx+wuy5BTkgVm+y1dwV3p4XNjjS/K29nn6ggZNPolFqm1Hx169DIUqE8Zqg
YZRA5euMXw7FxnPNLsMic9EoBOzFXw==
=M19j
-----END PGP SIGNATURE-----

--xq7ehyumhkwfir4g--

