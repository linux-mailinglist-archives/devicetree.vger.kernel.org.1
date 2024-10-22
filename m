Return-Path: <devicetree+bounces-114039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 476D39A9A48
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 08:54:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6386D1C21E5F
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 06:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54181146D59;
	Tue, 22 Oct 2024 06:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BYXuPgp+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FDB811F1
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:53:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729580026; cv=none; b=GIwbP9x9DSeKYiatTE19vMeX2RSi9H8DWhGJopN7qxFZWuvYKbsGZ1VaMsgEfC/SmU5HZRygU8DAQN1DbX2hKSL2w0Jhbwhex6XqiptN9GM7tg2LbytCczYBro2Wk4JFA3FGtQtA9Qb42/naqVFZmLTeFhWyK4rBF9di93Fej2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729580026; c=relaxed/simple;
	bh=5uEPeXTznO+zq/VrowXIv/nZTT75BAURDha2R40cA8Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AtCysS5D5q7CgWGxAP258T8kNvqJU3Y1GMZPukXtpgrBHwI8wgWdmnMsOclbOD3aceAtihRjNDJz7a5PvjRpku+aFAEkvYSDbTufdOaXsiMwynh4lDut22Fh5+IJ6Rbncu9M2xsW9fQMOpw6IP2lWCmpQPdeX5r5g1wDXp1pVNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BYXuPgp+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43159c9f617so50166835e9.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 23:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729580022; x=1730184822; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1gGKS5/KjNKqMu0CnZ1nG3vuEUT3rVS9BxXtvnX9ivk=;
        b=BYXuPgp+lJ+S1yiiUn7uIbwcDQoVSiRQKNFQVXet5WKqX8XeuPMyK5l46weJlqQ2Ur
         fQRYMMRKJHDVqlqFHp3686msp00YXQizEYzjbeV8Fc4xKdK7k3pNXULaqL0Wa2gL4YJ0
         caKhP5tdgdPh5nW27oQvcca+G00bdfoSNCPJHF1r8Qzyj7/6roAN1KDzlWzQAnaFmScC
         2lPYoxWFFn0c7C1pdUkCJ3aLCbW3Cc4SkJ6iNQsM4hC0Erk32xc1FAknJpvF9zdSP161
         Gp6wnHTHa97o4pguuj4C8mfO0EDhwD4YlVE0HnMbaw0HVfvUmpzZ31qDlisPhuHfY8Wj
         vE2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729580022; x=1730184822;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gGKS5/KjNKqMu0CnZ1nG3vuEUT3rVS9BxXtvnX9ivk=;
        b=J64Vyiy0mWF2YAfdxWzMz2djbPQSrewB9Lsqzg2/q8qRUfWxNWDVE6uryvvM5MgbiZ
         r0QCLyV7U7yG8bn/zUJ2hg1Y5Ja5RaVsJ2mosfBUNBMEcPguEOjBI6sa7IbnKdt0DUFW
         y6Ikj/lrP9GGs/UNl4cmEZI5t7aw3S4K6+P8tPIDEgUQSxU01wDV+DJYmGXN1V4oKbSf
         ipQ6HjISuLfZS40+v0LwsD+yCVCIqPyq1ZEfrpVY4yzen2RYhPrXbH3wh99p7WGg6n0p
         bGEvXhIWa30vm6Ckahin7OHwTy0fkqJPLPOvt+66HfGpeqKwY/UgYYkXXxxzHng2wfAM
         AH3w==
X-Forwarded-Encrypted: i=1; AJvYcCWyh3MrLgn9LOfmiVSpXnfbfBzIfC2ZsR6jA+DN/QycPz38UWLqNG6ShTXHcawxuwfrsdkQh+pLnpOQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyiRrF2pKT1rawdTQ4BuOerekxASsQ3nPY5XaM0IBRYIePMURiw
	nox0u9aAbtEhLqlZYLy8JvrF9klvDrUmfCGaKZVnusyHALaGP0CbutH+0IVegCo=
X-Google-Smtp-Source: AGHT+IFyICfACBpi7T/crxG0x8ivlGRMR53KD4SiK/OFtztf44if/Rm8vT9be/4sTTsfE2WW+prIog==
X-Received: by 2002:a05:600c:6012:b0:431:5ba2:2450 with SMTP id 5b1f17b1804b1-4316169391dmr102908315e9.33.1729580022314;
        Mon, 21 Oct 2024 23:53:42 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4316f58ae0asm78563945e9.23.2024.10.21.23.53.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 23:53:41 -0700 (PDT)
Date: Tue, 22 Oct 2024 08:53:40 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: Marek Vasut <marex@denx.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, pratikmanvar09@gmail.com, francesco@dolcini.it
Subject: Re: [PATCH v3 2/3] pwm: imx27: Use clk_bulk_*() API to simplify
 clock handling
Message-ID: <7kplk52i7e2nha5ym4loza5oc3lwghifjfk3aut24w3hjagfk3@zusb2naeaevw>
References: <20240910-pwm-v3-0-fbb047896618@nxp.com>
 <20240910-pwm-v3-2-fbb047896618@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v4u73livoku4nk7u"
Content-Disposition: inline
In-Reply-To: <20240910-pwm-v3-2-fbb047896618@nxp.com>


--v4u73livoku4nk7u
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 2/3] pwm: imx27: Use clk_bulk_*() API to simplify
 clock handling
MIME-Version: 1.0

Hello,

On Tue, Sep 10, 2024 at 03:07:19PM -0400, Frank Li wrote:
> @@ -229,7 +209,7 @@ static int pwm_imx27_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>  	int ret;
>  	u32 cr;
> =20
> -	clkrate =3D clk_get_rate(imx->clk_per);
> +	clkrate =3D clk_get_rate(imx->clks[PWM_IMX27_PER].clk);
>  	c =3D clkrate * state->period;

Unrelated to this patch: clk_get_rate() should only be called on enabled
clocks. Given that further down in that function (see next hunk)
pwm_imx27_clk_prepare_enable() (or clk_bulk_prepare_enable()
respectively) is called, that clk might be off?!

>  	do_div(c, NSEC_PER_SEC);
> @@ -259,7 +239,7 @@ static int pwm_imx27_apply(struct pwm_chip *chip, str=
uct pwm_device *pwm,
>  	if (pwm->state.enabled) {
>  		pwm_imx27_wait_fifo_slot(chip, pwm);
>  	} else {
> -		ret =3D pwm_imx27_clk_prepare_enable(imx);
> +		ret =3D clk_bulk_prepare_enable(imx->clks_cnt, imx->clks);
>  		if (ret)
>  			return ret;
> =20

I applied just this patch to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next
=2E The others are still under discussion, right?

I see you signed your patch (which is fine!), but I couldn't find your
key, neither on hkps://keys.openpgp.org/ nor on
hkps://keyserver.ubuntu.com nor in the kernel keyring. At least the
first two should be easy to fix.

Best regards
Uwe

--v4u73livoku4nk7u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmcXS/EACgkQj4D7WH0S
/k5sBggAqO4ZT0/OYhnXz4EtDfNYkq7vy4oX9E/FFWF7QqEm7Q6PfyrY6lOanGOX
imauNxmocF70rk2IX9aPaAmzQiou3jGgb+9JfG6ZubDfSzlm9FSqPxHramxmY2up
HnSCux8OpU/OZ8PfdGwDrv6NP4lDwRBBT0JUS4p/ojwCr0gW+kgEpI8oL88jI598
eBiweBQlFM7rOFMsIuVsyhr9yz5GPwxcsDoLdQ6Fi95zA/ZqdRlLT7b26VZhiMFt
x1bnfHOK08RaZX+uFDttyYB1wkW2gzopZrHhG8i7hNVz7QdWdxm8DPW8gHtg8Xmo
uwjcm7qBXbwwl2Vq3Rk0K2ZMme9zKw==
=bPF5
-----END PGP SIGNATURE-----

--v4u73livoku4nk7u--

