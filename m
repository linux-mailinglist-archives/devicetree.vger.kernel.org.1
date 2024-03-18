Return-Path: <devicetree+bounces-51347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B51E87EF99
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 19:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C8641F23C13
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 18:18:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D4B555E5F;
	Mon, 18 Mar 2024 18:17:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF10857879
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 18:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710785851; cv=none; b=Cpg2CtumxoUz+Md6ispvIwI8PhITOpgDdVQ9LFjIBc7ugUbY6gesQ3tnrMeFc6XGlo1cmKFF03skN0EEQpLHfp65uKf2i3lMCQ5tbLLjvzkiq5nCtYTgDtpLfofAMBmM8yxXZb+r82cPI0LLqjLfrdxkZUKy9tXHe83C5CBidUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710785851; c=relaxed/simple;
	bh=ljUrWkPTrnxySMMgHRBsRE9NywcmS1B0dCvLNhmjtR0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZEBgSX6T00bt7VZyrFUd6/qpYS1CHaj9XWDoGNJmSV+eNS0hOJjij8QePvJJKVIb+4dneEchMix1uDgjDDynlFPWwT6F21cED5ygHgj4unyJiD7+eZmMadspGbZ6gVd5kKY9+wfcyKZ+I4wJ3vK1Vcqh4fU/udH6tBgpi4g0Kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmHY8-0000eM-7a; Mon, 18 Mar 2024 19:17:28 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmHY7-0077xN-Pn; Mon, 18 Mar 2024 19:17:27 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rmHY7-00873f-2G;
	Mon, 18 Mar 2024 19:17:27 +0100
Date: Mon, 18 Mar 2024 19:17:27 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, conor@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	aou@eecs.berkeley.edu, thierry.reding@gmail.com, vincent.chen@sifive.com, 
	zong.li@sifive.com, nylon7717@gmail.com
Subject: Re: [PATCH v9 3/3] pwm: sifive: Fix the error in the idempotent test
 within the pwm_apply_state_debug function
Message-ID: <jvwgsszvs4jtcytcphsdjulzgqfqzdp4sisu236ddwsqgmvriw@ngi4ljgh5b74>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
 <20240222081231.213406-4-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x44go5u7hgleqhj7"
Content-Disposition: inline
In-Reply-To: <20240222081231.213406-4-nylon.chen@sifive.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org


--x44go5u7hgleqhj7
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Thu, Feb 22, 2024 at 04:12:31PM +0800, Nylon Chen wrote:
> Round the result to the nearest whole number. This ensures that
> real_period is always a reasonable integer that is not lower than the
> actual value.
>=20
> e.g.
> $ echo 110 > /sys/devices/platform/led-controller-1/leds/d12/brightness
> $ .apply is not idempotent (ena=3D1 pol=3D0 1739692/4032985) -> (ena=3D1 =
pol=3D0 1739630/4032985)
>=20
> Co-developed-by: Zong Li <zong.li@sifive.com>
> Signed-off-by: Zong Li <zong.li@sifive.com>
> Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> ---
>  drivers/pwm/pwm-sifive.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index a586cfe4191b..bebcbebacccd 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -101,7 +101,7 @@ static void pwm_sifive_update_clock(struct pwm_sifive=
_ddata *ddata,
> =20
>  	/* As scale <=3D 15 the shift operation cannot overflow. */
>  	num =3D (unsigned long long)NSEC_PER_SEC << (PWM_SIFIVE_CMPWIDTH + scal=
e);
> -	ddata->real_period =3D div64_ul(num, rate);
> +	ddata->real_period =3D DIV_ROUND_UP_ULL(num, rate);
>  	dev_dbg(ddata->chip.dev,
>  		"New real_period =3D %u ns\n", ddata->real_period);
>  }

pwm_sifive_apply has a DIV64_U64_ROUND_CLOSEST(). I wonder if that needs
adaption, too?!

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--x44go5u7hgleqhj7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmX4hTYACgkQj4D7WH0S
/k6K9QgAlQOk5zs1qZjx50SM5kcMxMw+J3ccF0gM0gezDCINIsFANkmsKs+qY3m9
b6NUelYUChHyY1+/zWpqLNGByQmGMm3yMBO4yZ3/jn/QPG1CxgejF6t60XVthOtr
9YjvOnCh9SSM5XkoPajFJ/n7qlk7T/xRA9+MBjSpwcVOicRZGE4FtFJ+AiToc5Yc
uebQi/SfgQ9uTUmYgOZzUJo140Q3XnoGasCf+V9C3SUVOPCPunEmhBH8aq5H6wk7
D9fIOAVfxEK/YIHNIzv+KjrkJ6t/b5/yeYC3zQgMzvDZYW47aRhLNioG0hQcvdPO
2ED/sw3W2E6eBAm8IBCDIyN9LWdNRw==
=tmD5
-----END PGP SIGNATURE-----

--x44go5u7hgleqhj7--

