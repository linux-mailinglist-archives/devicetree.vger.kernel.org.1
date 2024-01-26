Return-Path: <devicetree+bounces-35376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CCD83D522
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 09:59:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 872321F21D50
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 08:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C13450A97;
	Fri, 26 Jan 2024 07:31:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF61C5466F
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 07:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706254269; cv=none; b=antZ5P6YM/wvVFSBdwr+UZ0QvgyLkFJPzwN4mB2qGu8KezEt7fZDEsaJHKd/bZGUoKS8jLclWRmJlBJ2h250Qn7Tl8+NONUDbQwzYA0oATIbRcwmTNLVE4mnHQePVE1W2i4m8UNEhZs1acv0JycnluVeP/XB40Pttk/04J1H7kI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706254269; c=relaxed/simple;
	bh=AdHSgCHXz4t9LFcMc7HD0XQaTLFaT8m5meLQIXeDfIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=B4njsHez64UcGAf4nGod+0cfhYboMWKVOOj5v5utw331M5eQKRCw4gQOIJ4IEBQgfdUQ9kUwNCMOHSgAaMIShbgx5ginxf4kfT2OAtZdFxz93d5BhMp0+jbCTd0tgdOIcZUYgKFFNkXH5lRVjp56vr6DuzmWUrIxn66o8l8CkSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rTGfo-0000uf-Uv; Fri, 26 Jan 2024 08:30:48 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rTGfi-002SbC-QR; Fri, 26 Jan 2024 08:30:42 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rTGfi-008SgD-2J;
	Fri, 26 Jan 2024 08:30:42 +0100
Date: Fri, 26 Jan 2024 08:30:39 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Wenhua Lin <Wenhua.Lin@unisoc.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, wenhua lin <wenhua.lin1994@gmail.com>, 
	Xiongpeng Wu <xiongpeng.wu@unisoc.com>, zhaochen su <zhaochen.su29@gmail.com>, 
	Zhaochen Su <Zhaochen.Su@unisoc.com>, Xiaolong Wang <Xiaolong.Wang@unisoc.com>
Subject: Re: [PATCH V2 3/6] pwm: sprd: Optimize the calculation method of duty
Message-ID: <mdrr6ko2zqsf2osdkecjac6ollnuvlv4irkkiyn4ihkq5fioxx@nm6677kkih4h>
References: <20240125025533.10315-1-Wenhua.Lin@unisoc.com>
 <20240125025533.10315-4-Wenhua.Lin@unisoc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nbxfrdzexmsdijcq"
Content-Disposition: inline
In-Reply-To: <20240125025533.10315-4-Wenhua.Lin@unisoc.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--nbxfrdzexmsdijcq
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Jan 25, 2024 at 10:55:30AM +0800, Wenhua Lin wrote:
> diff --git a/drivers/pwm/pwm-sprd.c b/drivers/pwm/pwm-sprd.c
> index cc54aa77c7e6..8de3f9e154ce 100644
> --- a/drivers/pwm/pwm-sprd.c
> +++ b/drivers/pwm/pwm-sprd.c
> @@ -156,7 +156,8 @@ static int sprd_pwm_config(struct sprd_pwm_chip *spc,=
 struct pwm_device *pwm,
>  	 * given settings (MOD and input clock).
>  	 */
>  	mod =3D spc->mod[pwm->hwpwm];
> -	duty =3D duty_ns * mod / period_ns;
> +	tmp =3D (u64)duty_ns * mod;
> +	duty =3D DIV_ROUND_CLOSEST_ULL(tmp, period_ns);

Please stick to rounding down in .apply() (and so sprd_pwm_config()).
Given that duty_ns is an u64 in .apply(), you're loosing precision
anyhow. Look at how the microchip-core driver uses mul_u64_u64_div_u64()
for how to do that properly.

You tested your patch with CONFIG_PWM_DEBUG enabled, right?

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--nbxfrdzexmsdijcq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmWzX54ACgkQj4D7WH0S
/k4qqQf8CaMZ4GC23NL6d3gan0EFqQgyw5XxVJwmfjLIEtA+dS0X9v7addb+u/zB
4tvbIX1ODa40SNWJsg/rF2NbYrEhyzHOYuj5ByjCZWuQnYFaefEfqcU9OoBTtiL9
3RNRKYwkWO/h1+oWV+7B7ZRBY5y5r+dPhGCE7Xda8RbgELeBtZ6cKERyjsAR1tDw
yIBTwPp71RNxnPiAbPR/OqNRFuafy5LVXV3yuk+1yqj7O8midCQAwDPZGi0ZZwf1
7BMtWQZH7pDaml9UfjainioEZKLH4RvbZvRf2PobuqJlE6I3jfR4flsHmp3fvZsB
gMK6THLg/QmGriqtkEgsKcldcB8PBA==
=wH2f
-----END PGP SIGNATURE-----

--nbxfrdzexmsdijcq--

