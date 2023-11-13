Return-Path: <devicetree+bounces-15482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7067EA5A2
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 22:56:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E9F731F22853
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 21:56:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6564B2D625;
	Mon, 13 Nov 2023 21:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C8D2D622
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 21:56:19 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31FAED50
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 13:56:18 -0800 (PST)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2euc-00012d-Iz; Mon, 13 Nov 2023 22:56:06 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2eub-008qd6-I6; Mon, 13 Nov 2023 22:56:05 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1r2eub-0016N6-8d; Mon, 13 Nov 2023 22:56:05 +0100
Date: Mon, 13 Nov 2023 22:56:02 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thierry Reding <thierry.reding@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Guo Ren <guoren@kernel.org>,
	Fu Wei <wefu@redhat.com>, linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v3 2/2] pwm: add T-HEAD PWM driver
Message-ID: <20231113215602.tzscoi5mob5izkyk@pengutronix.de>
References: <20231005130519.3864-1-jszhang@kernel.org>
 <20231005130519.3864-3-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vy26ypeqfku3zalk"
Content-Disposition: inline
In-Reply-To: <20231005130519.3864-3-jszhang@kernel.org>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--vy26ypeqfku3zalk
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Oct 05, 2023 at 09:05:19PM +0800, Jisheng Zhang wrote:
> diff --git a/drivers/pwm/pwm-thead.c b/drivers/pwm/pwm-thead.c
> new file mode 100644
> index 000000000000..3b9ffddfe33d
> --- /dev/null
> +++ b/drivers/pwm/pwm-thead.c
> @@ -0,0 +1,270 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * T-HEAD PWM driver
> + *
> + * Copyright (C) 2021 Alibaba Group Holding Limited.
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + *
> + * Limitations:
> + * - The THEAD_PWM_CTRL_START bit is only effective when 0 -> 1, which i=
s used
> + *   to start the channel, 1 -> 0 doesn't change anything. so 0 % duty c=
ycle
> + *   is used to "disable" the channel.
> + * - The THEAD_PWM_CTRL_START bit is automatically cleared once PWM chan=
nel is
> + *   started.
> + * - The THEAD_PWM_CFG_UPDATE atomically updates and only updates period=
 and duty.
> + * - To update period and duty, THEAD_PWM_CFG_UPDATE needs to go through=
 0 -> 1
> + *   step, I.E if THEAD_PWM_CFG_UPDATE is already 1, it's necessary to c=
lear it
> + *   to 0 beforehand.
> + * - Polarity can only be changed if never started before.

Questions I'd like to have answered here additionally are:

 - How does the hardware behave when it's disabled? Typical canditates
   are:
    - drives the inactive level
    - freezes where it just happens to be when disable gets effective
    - disable drivers (HIGH-Z)
    - drives low

 - Does the hardware complete the current running period when apply is
   called with enabled=3Dfalse?

 - Does the hardware complete the current running period when apply is
   called with enabled=3Dtrue?

> +static const struct dev_pm_ops thead_pwm_pm_ops =3D {
> +	SET_RUNTIME_PM_OPS(thead_pwm_runtime_suspend, thead_pwm_runtime_resume,=
 NULL)
> +};

Please see
https://lore.kernel.org/linux-pwm/20231023174616.2282067-13-u.kleine-koenig=
@pengutronix.de/t/
how this can be improved.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--vy26ypeqfku3zalk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmVSm3EACgkQj4D7WH0S
/k554Af/QvwzPRC9hztEdjfVmmYDjddOhvO8NPMi8aa4rJYBhU3QLoUIAMiFYJMe
1xQkwUstnDJRvJ8fI6juPzsXDfqHimH4wLUdTTDIbDaxwCBOEu46rYUTNpeC98eu
Qo2stF4ISASYh0vK78kUSNisxwJqSNtBTEcFQ8D3IXWiOP0IPa1L0uUco9ig+iW+
H6DnkhCV4Rd191VgBKJJlL1msMyUuxyjbf6Mf5S7YzQ2tdbHWzl2yGTOtpUfiGky
p51fLsih/Y01foVsjr1w3x/Uns0DUhCRnUGSfh5b0KypRob/2h/8BzahdpcimzaL
jKPX9GTl5qijzTFoPG+vX27jcdnD8w==
=DwUH
-----END PGP SIGNATURE-----

--vy26ypeqfku3zalk--

