Return-Path: <devicetree+bounces-9814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 99D127CE973
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 22:52:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 39A13B20E7F
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 20:52:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 933B81EB35;
	Wed, 18 Oct 2023 20:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939E11EB46
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 20:52:47 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F0AA89B
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 13:52:45 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDWs-0002aR-OD; Wed, 18 Oct 2023 22:52:34 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDWr-002dSr-Fc; Wed, 18 Oct 2023 22:52:33 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1qtDWr-001Ewi-5y; Wed, 18 Oct 2023 22:52:33 +0200
Date: Wed, 18 Oct 2023 22:52:32 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
	andersson@kernel.org, konrad.dybcio@linaro.org, lee@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, thierry.reding@gmail.com,
	ndesaulniers@google.com, trix@redhat.com, baruch@tkos.co.il,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, llvm@lists.linux.dev,
	linux-pwm@vger.kernel.org, nathan@kernel.org
Subject: Re: [PATCH V15 0/4] Add PWM support for IPQ chipsets
Message-ID: <20231018205232.p5d4xaqsd5fcbvfi@pengutronix.de>
References: <20231005160550.2423075-1-quic_devipriy@quicinc.com>
 <f87f480d-6775-44c9-8a2b-05d47bb0dc5d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6foex2ayshpkzjy2"
Content-Disposition: inline
In-Reply-To: <f87f480d-6775-44c9-8a2b-05d47bb0dc5d@linaro.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--6foex2ayshpkzjy2
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Wed, Oct 18, 2023 at 06:29:30PM +0200, Krzysztof Kozlowski wrote:
> On 05/10/2023 18:05, Devi Priya wrote:
> > Add PWM driver and binding support for IPQ chipsets.
> > Also, add support for pwm node in ipq6018.
> >=20
>=20
> You need to clearly mark dependencies.

This is something I wouldn't blame Devi for. The dependency is not very
obvious and its kind of normal and expected for a patch series to have
dependencies. *shrug*

> Next is now broken because of this patchset.

If I understand correctly this affects "only" the dtb check targets,
right? Is this bad enough that it needs an urgent fix? I would expect it
doesn't hurt much, am I right here?

I just looked into patch #2 and had a few comments for it.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--6foex2ayshpkzjy2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmUwRZAACgkQj4D7WH0S
/k4XJQgAp4VfEVwgDzWlPPCnQWB0m+MuYItgUfBPVM+8B48xCCnkP5UocEn4hI3q
Zjek7v+tQBAXIckXu6RndUjFF2H5PrV4f2EpUAyVtyONFLA6zl4fd3LxiXZsOS6/
LeTITpIekRlPZFRh3pvscS8O2/ZkXfU3PYV2jb1Ch4woaVYAui2IcmcqsyWVUE9J
Wd4hLPLNHCAoK4aYz3xEnNOM2/x9LT2KqxndiTFtpZS6auOf+dWVJndAehIPbXsC
mzSNBelj8MItVL8kucOY34s6DLj1GPTSSklE1yyM3W9TQ7Nn0xKbbaem/XqkG/Gv
lfiB9x/hb7yFBv3crIPZfiRd5kLgmg==
=XXnl
-----END PGP SIGNATURE-----

--6foex2ayshpkzjy2--

