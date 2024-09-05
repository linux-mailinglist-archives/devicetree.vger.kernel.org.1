Return-Path: <devicetree+bounces-100518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A19B196DF41
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 18:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5B64A284E53
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 16:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D20A19F487;
	Thu,  5 Sep 2024 16:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="sC6/kDgW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557F3101DE
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 16:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725552659; cv=none; b=olTJ5fdLYW66IKK513wmAoWJ0WU/zejH9xxmBKx/x5cePwhA82mVXAj64IzoIiVDkWJ1nDixNao0B5H/ntiAZl23gzHDXC7ACJaDobe/hJ5giQzxDoc04N/n8IgWE0L4BtFEV1bBHa/cJNQwIAwVIQp9GXzwQXigg6e2OKCsbDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725552659; c=relaxed/simple;
	bh=UFsklKB4T8Uv2pYqKRY9mlsDLwYDpsExq9n42ZFvuME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HKTqY8fXpjKyeQREsgirtoKEKNvdL5Um4nOJm1x4Cai1kb8/EbA3HyYQpuU+a627RV4USpt1F3wR8bWM9JqGLj+vWcD4UUjFw2U8RWnbqtdIhEGAx7MbtSbFLsjArkh4gb1u7qedomFv8PsteqfIGx/wcYTOcdKJE7YUfQ1QjEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=sC6/kDgW; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5c26a52cf82so495866a12.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 09:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725552655; x=1726157455; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FmvSoHhDndKZ3y45tzXwCWQPSzV3qf2+rXDuMTj8IDg=;
        b=sC6/kDgW7jbINCIYkTvIYXMV/ncedwGORQW62RI9XFjgtz4/SyJFuZ0FW6TwAF6gdt
         2lBaOIGIL986Lin1uUkGPdxsn9cX7QxTxmUsnzEcHQ7LGrNjDYl5lsUrSQjVsJ9LVqRQ
         dY09iUL19o9vdfDbnln7oxVty/6a22onldPMmVt4EJh7h62SrNMKlQs340ruRlY5bpna
         RrfCDDpujfojcAzBXA6TGWPjE4MnrdHU2mDS+6gAWq956AVUJ1xcrGnDOp3AUAOLSLG9
         tlD1mS+yaHQ/avhQ3mNUwoU5TakOKMRTRRxleRWLTiMGUHxjnIsEVs3IEqhW/136Iowk
         +04g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725552655; x=1726157455;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FmvSoHhDndKZ3y45tzXwCWQPSzV3qf2+rXDuMTj8IDg=;
        b=Ecvz74uiTR424pUrNCZT5ytlupWmzk9+Ew9l9bxiqEaX3H0xyokE92WNpGDS3ym26q
         jkiafiOJFUt1NYDwF7HRiaZilRAfQ0tNSgkE3sG3voglct9RuuOKJS/9UBCpcN3oalhi
         AJ2HkUdxcbzvqHEAZHcYF2wHdj8DZh9K65W+QKOV22OgX4u2Lwz+qXPeFZ1aWm2vtdeR
         Ebr0jmuaAxp51YCqPXHuJj8T/Cf1X0aQIDYSbQGQ94UNtVVHSbIZx1nH84jFSJUETrCS
         iQcRndJWUUXp4mKhxCcyxVp8n0clhn5OW5/RpGWPGM+MYNdfHi8PNRV/7sin4beJWzqm
         RgPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOCQt9+8GTgnVYRjM6mvnk1EHURvgmaiSZ98Nj7fuFuJyxZ3jwloFBFEnmhrKQgKAsDMnxAa6/9ESZ@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsg17gmpVGQo5vmlGJfIkBUKHRxjx3jP9YZjg22Ckq2BZqu5zy
	Bm1kdCPn3THmI8hYPyGnu2K9nAoT1ZWpY1WBlrCmpW1clJVoV9HXou6pp6i0z/0=
X-Google-Smtp-Source: AGHT+IG6IDbk7v/HFG6pbnzGX3PkDzdGXmhD8c2zfgnVU3b8YLZ5Kd+Mnq7+b3YgqhjohnggrqFULA==
X-Received: by 2002:a05:6402:159a:b0:5c2:1803:ac65 with SMTP id 4fb4d7f45d1cf-5c3cd78cefdmr3013012a12.21.1725552654495;
        Thu, 05 Sep 2024 09:10:54 -0700 (PDT)
Received: from localhost (p200300f65f01db004d6a46a6454a1385.dip0.t-ipconnect.de. [2003:f6:5f01:db00:4d6a:46a6:454a:1385])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c3cc54b287sm1378738a12.30.2024.09.05.09.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 09:10:53 -0700 (PDT)
Date: Thu, 5 Sep 2024 18:10:52 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Maxime Ripard <mripard@kernel.org>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: pwm: allwinner,sun4i-a10-pwm: add top-level
 constraints
Message-ID: <zh5vm65iuzxzr2i5arjpv2m4bfowrx6uyhdtaa5nzdb4hf3fqg@qsnfcyrw54dm>
References: <20240818172828.121728-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="clmudpfclrlqcx4o"
Content-Disposition: inline
In-Reply-To: <20240818172828.121728-1-krzysztof.kozlowski@linaro.org>


--clmudpfclrlqcx4o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello Krzysztof,

On Sun, Aug 18, 2024 at 07:28:28PM +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clock-names.
>=20
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Applied with Rob's R-b to
https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux.git pwm/for-=
next
=2E

Best regards
Uwe

--clmudpfclrlqcx4o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmbZ2AkACgkQj4D7WH0S
/k4nLggAjg/D3fHm7uxQkqwzgFATNnkOhFJd5s1NiHmTxiUQ0OYSXEI4mv4hNxN6
4XtyF8SXGCLWt4T3GDxqM/c5zUTJIc9OxwUfBxud/iP0Ls/MNlCCMdtzJXvhwoMp
TAiu3vhb/cutSHbjPlGQ/A35zl/XDAvXlwxaGJfLIX/y1AkoAIE2nGaLLSQFTv72
ASAeWu6BYbdAs2mEZWVN0ixsqlNVkeHF15+7IQ0uXVs+ukBbVSIZlLkj6PnNcHA5
9MRO7cRENf2OaiO6yzWyeUQDxX0OOz28NNkPeqT6ucEPxNEBE96JJ5yJ4i2ch/F0
CEbdu8DoO/MF82GbO4j3cLV7EdiSsw==
=NPcN
-----END PGP SIGNATURE-----

--clmudpfclrlqcx4o--

