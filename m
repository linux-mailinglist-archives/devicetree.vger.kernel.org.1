Return-Path: <devicetree+bounces-214782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BECBCB4A5B1
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:43:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BF0A718938DD
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36DD257452;
	Tue,  9 Sep 2025 08:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="buW/gLlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAE1255F2C
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:43:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757407411; cv=none; b=ROVMKMEgzfnlXkfb/QAcBl5tY/LXBqs8LYnZ8336HIWgGvOvi3+ccxQUXpdpGg80rhUYgoMymk1tz90PGC16YK26so1Xaam9hvLhA5YmSPl5HLKa/dGxoWfrshllLyIm026NYzFAnp5mxAGNChCjIngf0R+YUPyhxarZV62mfB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757407411; c=relaxed/simple;
	bh=K3yYzemhNVHnyY+yjD9Hgn79d+yRsEmyDvqiPDeccP4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ma4Bs06gm+8xqUUN+43c235ZV654GdlXQsEuwNCFxoZFgSVCFN+Ghj6NDTNBOrm1DP2a/2ZZrCF9pq8sOX7xo0tYac9SKzx7e0V1YoNawKzEGEQmJpUent54wrqymj0YW0/bqssM9LCCzGXZw0BxFWjBQpPxPlo23NwUc2BwCfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=buW/gLlT; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3df15fdf0caso4082990f8f.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1757407407; x=1758012207; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Xa/sWJ3+sYlQ69Mrer6agiOorC008o3RFoU6757EbEk=;
        b=buW/gLlT2CNVtUE70kZhAt2fF3Tjqc1Ix+w4B8oyqMmL4vc8yOBh8ZCGsSgxLkB7gV
         COUoyrxO960mLkoPjbrIhUFMYRPEienvIgqeHNi0d1m6ikbrKxjKIo26qJQvl8agNwrM
         K4JnjBTILSdw3pMtut4K891tAdgIv8BJuZOUyiYFIuEBqdtWbsqJNfBH4LnLEqqzvgnI
         g2yA5gIJJHMgCzUpTwyedVOxMpG/f0+QsmT9nJiX6SVw4vvb4TqOeL3eJCHTLE/n78zC
         40klm7u7wuGT43zWDxKHys/aka31B7DkgvqrT/qJ5qu4baj6GtEdczNNH0oVzvhV2c6s
         4dVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757407407; x=1758012207;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xa/sWJ3+sYlQ69Mrer6agiOorC008o3RFoU6757EbEk=;
        b=evxq7c9IXBTERBv5ubvi9mTkKhF+XF39aqAk85VOZ0z5Ao84pnAfnDhNyBmZZ3w5k3
         gz4w7xfdwy3WjMa1ikJNx9DO1PtO9cQsNKvt82owSEQeg8p8iVfMeXuXGDdGaX09UhF2
         os10KcHvG/xF+L2x2AMwKLCFxYe7kcNRYlP0ugViuo9ruUVNs/EVpYITmwrvEKXXphd1
         szDArQMY1P5TlhfIUuLf89ho1Llm/1eeLn/sANWa6ssP8tJkDNE1j13gxnBJ0gk2LYX9
         APjzplgUpqHFQTbSt2W3IDfLSQTVvYZZxQA9UoPFUOjjh3DvkirTPmahkD1xkur8VNFf
         GVEw==
X-Forwarded-Encrypted: i=1; AJvYcCWqOoddvZn8lGsm6shee/7zZynBvcfpqXMFiSjWyWpNjAru+GeopfpsoDI+R/le/cGs1iM30AD0qncI@vger.kernel.org
X-Gm-Message-State: AOJu0YyllV2PrgDlfxklbKD2dAQ/57ZZgt7h5raszBa5eRlbAhLIllgB
	iy5FjgWhbIiAUB/9f6+K5x7RM46mGHYwd4FKH2aGs3/HYBcj685cPDspEal2UO6IXHPdRKHq/WU
	EH3xq
X-Gm-Gg: ASbGncsIzGjHsAgpXQU6EaKWKiqP/CHm+7UpYWETgAAo7HgiSPAeeyRTZzx0Hdv2Dhq
	iy3iC6TPZHE1B/MIN8eNiyXEbRYy+fq302r7dBJsuODWdFzQDu7a6Ev98NFFWqvQ3NtbPlU8wB7
	xX+NW6PM4y5/FwWedJcYmPbNtXcaHk2lU28QWPy6qaQUevIJpTi3nkkM1wWp2TOp43qajHLG6U+
	wvDtvMkyIdEnuqpeSm/7FWSp6a/fnOrSk4DBmIbX4UP4ym8s5foNjykGp80z/Yvk2nRags83TKp
	u+2+7Jsojynt39DXKlh8aHk4DbmrQPr3Hszfug9b+z0P4AvLrrmVv7V62y5bQSU9nXgbwW5LxJT
	63jFRxjVW/lm2yT7H93uEd7cmoVfZPKv9zWZGux6BpeIx/HBMcqCu5ZcK6E9Ufy95
X-Google-Smtp-Source: AGHT+IFwviVv9E6G+QlETszLxP1bxPGt6GB3+PenTuHVlAmd1yq3YJNDwylJsDXseMVJsR2twUXkxA==
X-Received: by 2002:adf:a384:0:b0:3e6:e931:b41a with SMTP id ffacd0b85a97d-3e6e931f965mr6178328f8f.33.1757407407356;
        Tue, 09 Sep 2025 01:43:27 -0700 (PDT)
Received: from localhost (p200300f65f06ab0400000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f06:ab04::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3e75223ea47sm1663307f8f.46.2025.09.09.01.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 01:43:26 -0700 (PDT)
Date: Tue, 9 Sep 2025 10:43:25 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vladimir Zapolskiy <vz@mleia.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, Frank Li <Frank.Li@nxp.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/7] ARM: dts: lpc32xx: Set motor PWM #pwm-cells property
 value to 3 cells
Message-ID: <uaisa3ejgtww2lyzwwze6pumvr2ztuwwlgaaqrt3lw63l33ack@atipbrmy3cjl>
References: <20250904184647.397104-1-vz@mleia.com>
 <20250904184647.397104-3-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6mchymnprx32ocnr"
Content-Disposition: inline
In-Reply-To: <20250904184647.397104-3-vz@mleia.com>


--6mchymnprx32ocnr
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 2/7] ARM: dts: lpc32xx: Set motor PWM #pwm-cells property
 value to 3 cells
MIME-Version: 1.0

Hello,

On Thu, Sep 04, 2025 at 09:46:42PM +0300, Vladimir Zapolskiy wrote:
> Since commit 4cd2f417a0ac ("dt-bindings: pwm: Convert lpc32xx-pwm.txt
> to yaml format") both types of PWM controlles on NXP LPC32xx SoC
> fairly gained 3 cells, reflect it in the platform dtsi file.
>=20
> The change removes a dt binding checker warning:
>=20
>     mpwm@400e8000: #pwm-cells:0:0: 3 was expected
>=20
> Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
> Cc: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

Thanks
Uwe

--6mchymnprx32ocnr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmi/6KoACgkQj4D7WH0S
/k6L3QgAmis+DmabnC85Qg82WyzPFg6kUeIQ/NgsR+zqbr9yCJgmcKkZpCKRNptq
bT9J+2+Hl7mJZRD9A9B11IjUiySx93T1H8FPR7hUEZsdfblASxdr/jfz6b4FIk5N
P23GCE92eUyBK7UgM9FXEiAAr+m0V8DSgOn7weBTjQNBRzfi0vVmZYa74mZq9BK0
lItvRfVz5bf3fij5HGYSHmR9AUqNei8y21sYMKT0BuBjJAoP0kzL+cD3Mz9K44Wn
yct+9Eu32ISvIpPrbrCpxFo2ceaEts4x2a4wyTTX8hWmaIaKx/CnqU9xA0vG64ci
DwCVXiEETgnC/LjwkvZndWLE21bx4g==
=+Yf5
-----END PGP SIGNATURE-----

--6mchymnprx32ocnr--

