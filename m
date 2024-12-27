Return-Path: <devicetree+bounces-134280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 627409FD1E7
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 09:20:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 152A53A060C
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 08:20:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42E4D1531DB;
	Fri, 27 Dec 2024 08:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="LvyPPYYx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5F81494BB
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735287628; cv=none; b=qUmnNw2ZJWnFUZ32ixCpnSu9O90fAV6rtbc7RJVNMFUkVK0ViKujDVne+rhTBE0RFEuq/qxBltt82RurWkTKxPe+EC44hS5SIFiQboSm45oxf7MlWw7mOiDDYCjCmss7XOaOZL21Jl53y6NQBGZXGgLUi4eu2nAIvXUbrQJZEPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735287628; c=relaxed/simple;
	bh=gjZyma2ZYER6csroLP4LBLybl+Rt0XNSkVRP7WNrBHw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C3UYMeJkT7TOg1ihORuxLzuUuTLxB+RvJ3ZPn20NqMx2sxUkvyMb/FhbReHGafjlgnizg7waCvGpSphto5O9LYA1Yd/OgtTY3XYeEsSRmo5bc4xz7X7kJXmWVSVQ8FPU5lF2qiFI3HT6aLijfG6D5dXxzbiyNBgSR2ATg4+fx8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=LvyPPYYx; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d3bbb0f09dso11889139a12.2
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 00:20:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1735287624; x=1735892424; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8ymnkaFSKoa88cBBO+Aw6l4UGz2gfKbnPeK/qmnKF3M=;
        b=LvyPPYYxlkPjrgJOGO6GPGmG/0CNSgwte5lVNDyVhDMMPQMKA0kRZxqvt0d+GpKZEF
         9GZOzll7Uhl+xo2zBdCinUn+ziqT28f/94lXTiyC0mcwDymCSNHUFUPwfVNodiPa6CZT
         9Pot1pqeV63cakqRVUv7FvFIbWVENG1VgtMus015GvE0GH+CSkRENCabkXj86p5OZZZ8
         z1qUMmjs8NXeaZRe1Gv9/DOTZoSS4vYnDp9bWUMzTMONomH6gnmRV4GeH6aH55svSmiA
         sQlPqfJhYYqxJP+Pv09ihYtZzVIWxLrESm2LN0LRmD2WvjMdPgmdhFa7VRTqZBkE2kW/
         iPgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735287624; x=1735892424;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8ymnkaFSKoa88cBBO+Aw6l4UGz2gfKbnPeK/qmnKF3M=;
        b=K6qKde5+aWhjh3Zs+5aDwVw5xaQUJ4zedm6tXO6Tcpc1XdU3X3tKYHO/8I4fFsJvNB
         vfvgMuSCWlZM28jKBeZFlqZ0wGObKqNqhlVHBtGNAQ2U2t1csDuTIG77IWRA/g/Kp4LR
         RIwIMjtViYZSC6FvPF1tI+/bzso4AqTDUVlt02PjYeUZ5l6ZjqP3em5tmk8fMO4geCeV
         oFJaZTSaw0LyPXg7L2ryu7r6r5wEfbyIFUDTEldvTqBOvOEmABMqcYA4Orp8klEnAdsx
         l4vLf4QatYq6ao03AcZKA3MN+fKCt3XKqfJ6E0j0+It/H9oYkLKhpmkgzOglyk7m7nBz
         +NMg==
X-Forwarded-Encrypted: i=1; AJvYcCVHsE6zAO2Di4gYa7RmusU1zI5LxNwCGLUj6WsEdL74XeGzIePoJX6j1sDk0N4t9v3ePblwgWWx5KrO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7uGYXZY343oHebhV2H6NrQv+ga58Iy/z2HBVftSqJ3WcnDsc5
	jJxd4T+AiHEY9d0bwqIGW4deUsCnNKK9N0o1boRsDKbG0Os1Q9OVwtQPRlxERmo=
X-Gm-Gg: ASbGncu9txRYjwG3RUHHAzeynFdc4cClT2HOcgHRrSW8bp1XhQ3OMYgFoX9Paiklo76
	0+KX2aHATE2Ii8z4UL/zjBVJwX4Cp4tJ0heW2Tn29JTYaWQvMgy+0vzMa0qDPXkwhWPG6u/5XOt
	7CuIKuplvgKwI+K3NwxLr0nVfdLNOkf6rmWoj+B9n+3xR/zYZmzI+iFcSepEGpO+Q/l7CmBHxxX
	KmdFRndHExKCj1RqLUjKN1cY+RVgZtv8V9qTToWqn+SHF3RAXKgyDLxZE/Av6rc88uvutc85xuK
	ffjsmSNs7g==
X-Google-Smtp-Source: AGHT+IHuzMycdQyfPrvUmgREwzA9rbFsJHptvmQJmTsllJlTLnfiJ98OYmXuSGvqenqvilnQMWt6pA==
X-Received: by 2002:a17:907:1c0b:b0:aa6:7933:8b31 with SMTP id a640c23a62f3a-aac3352cef9mr2027761766b.46.1735287623480;
        Fri, 27 Dec 2024 00:20:23 -0800 (PST)
Received: from localhost (p50915bc6.dip0.t-ipconnect.de. [80.145.91.198])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e895366sm1072502266b.73.2024.12.27.00.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 00:20:22 -0800 (PST)
Date: Fri, 27 Dec 2024 09:20:21 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Nylon Chen <nylon.chen@sifive.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
Message-ID: <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="jxfkviocdptb27ky"
Content-Disposition: inline
In-Reply-To: <20241224093902.1632627-1-nylon.chen@sifive.com>


--jxfkviocdptb27ky
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and
 algorithm
MIME-Version: 1.0

Hello Nylon,

On Tue, Dec 24, 2024 at 05:38:58PM +0800, Nylon Chen wrote:
> According to the circuit diagram of User LEDs - RGB described in the
> manual hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf=
[1].
>=20
> The behavior of PWM is acitve-high.
>=20
> According to the descriptionof PWM for pwmcmp in SiFive FU740-C000 Manual=
[2].
>=20
> The pwm algorithm is (PW) pulse active time  =3D (D) duty * (T) period.
> The `frac` variable is pulse "inactive" time so we need to invert it.

I'm trying to understand that. You're saying that the PWMCMP register
holds the inactive time. Looking at the logic diagram (Figure 29) of
"SiFive FU740-C000 Manual v1p6" that is because pwms is feed into the
comparator after going through that XNOR where the lower input is always
0 (as pwmcmpXcenter is always 0) and so effectively counts backwards,
right?
In that case the sentence "The output of each comparator is high
whenever the value of pwms is greater than or equal to the corresponding
pwmcmpX." from the description of the Compare Registers is wrong.

With that assumption there are a few issues with the second patch:

 - The Limitations paragraph still says "The hardware cannot generate a
   100% duty cycle."
 - If pwm_sifive_apply() is called with state->duty_cycle =3D 0 the PWMCMP
   register becomes (1U << PWM_SIFIVE_CMPWIDTH) - 1 which results in a
   wave form that is active for 1 clock tick each period. That's bogus.
   If duty_cycle =3D 0 is requested, either make sure the output is
   inactive the whole time, or return an error.
 - With the above error in the official documentation, I'd like to have
   a code comment that explains the mismatch such that a future reader
   of the code has a chance to understand the situation without in
   detail review of the manual and the driver.

Orthogonal to your patches, I wonder about

	frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);

=2E Round-closest is usually wrong in an .apply() callback. I didn't do
the detailed math, but I think you need to round up here.

Best regards
Uwe

--jxfkviocdptb27ky
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmduY0IACgkQj4D7WH0S
/k4hLwf8DsoYI030gIP8IMTk9dgJdMG1D9J4fZJzTF3l7KOC2eyw0OZhH24H0ErS
Nzmepa8T48/V4wFWqVZ00Zv5JI21c+i+8v0Z+ihxTZDgtgsnEvseEYGDeRVkghaM
Fl3JjlknakL717HMTHLWkJFgS6Hm6VGlKJkinsyb1StbG9hEIP5cvcm8g/bKkfkV
cZsxboyTFSOAXpCQokSpuurM8kl9uyXfXLXhIKPj5j972SMqS7G5BB61MSktm1Cw
1gAH7Ym+E2f7DfqH+ebInOB7ErKsLJCM3UYSWV4OF5AtA9nit4Guc1FTZoEnzsv5
+paB1cp9aflfh05vZYS9tAXVt4tIYg==
=hGQh
-----END PGP SIGNATURE-----

--jxfkviocdptb27ky--

