Return-Path: <devicetree+bounces-177909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BB910AB9973
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 11:54:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3FC977A8D11
	for <lists+devicetree@lfdr.de>; Fri, 16 May 2025 09:52:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96DE1231839;
	Fri, 16 May 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F/eg2ZxU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A379B231823
	for <devicetree@vger.kernel.org>; Fri, 16 May 2025 09:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747389233; cv=none; b=g1/Ph8lW3TN6FHz7JkjvstAUWGOcD67IK6duY7te24er75qT7gs9vllm/DExb9aSJs1LweFPyLCz/7fHEd/w6qQ01TzRSj2hVwotn+zPBAkpyFuF8Vf4vBUalwnrL3LPFJLqXqvZODADw3f2Y6gVJdmz5Qu6+LLM5gbIZjjeGaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747389233; c=relaxed/simple;
	bh=0T9dXX4j3/xNPrysk0i+Gd7aVj9eRvCOhtMXwW578kM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZYFnJD8Y+thNRgrH2OGSiIkAwpc/ZdDZ7HE1ghdtTMGZh732W1uisbUHMvxaECYJbJhAi2lUGlrZvNyGEtBFqM+VS/17JEajNqy1R3rhPPnne5CR/3x2hZsxTBaOU3dBaMBbBTp4z41b15SXD4j5M1ItZ8IjdqlAYszZBLpm1gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=F/eg2ZxU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a361b8a664so371685f8f.3
        for <devicetree@vger.kernel.org>; Fri, 16 May 2025 02:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747389230; x=1747994030; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0T9dXX4j3/xNPrysk0i+Gd7aVj9eRvCOhtMXwW578kM=;
        b=F/eg2ZxUpml2N8mRwZ6n+Ttvvxpi+XTozMO9rt0wxcCEt4+YBa9+K0/oZqK4BCm2vn
         a4iwU7Wp8NBz34JxO0pEBP5KZopHDm/MBCh41U9xQnaK7PYI13I123gKZ0Bsh9gH/tKg
         drefYBzrPnr3yC+jHNO0yLnEsh+OZGkXVccmM3X8t6NFxap5LWtvOSptztHGwg0PunWM
         pGJveWXwosoysGQAxzX7NXKzJvKAB/n7Bm158E9Qg37oOkEMDsagPUmrSnOTp1TnOe3W
         poP1xD19T4uT9JMeNZrNpDj/9Ynkcuf+fnWEjNN+CLqpi6dxld0FBeYAHepZy2gw8sv+
         0jjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747389230; x=1747994030;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0T9dXX4j3/xNPrysk0i+Gd7aVj9eRvCOhtMXwW578kM=;
        b=qyz99RXyXfBVSMJiqhgKTHYPczD342bVK1LMEuFHKZ5oSLtkRRbM9l6TePKHsWP6wr
         9AyPPhOu0aVd2CtpR4LCYoR+jg7VNdGEWuMsLlhvoTDc5OSnYAlmo56pNcZK3vZcNTH6
         0bfuOY/vNOi2QbNJt6GXu5Ra9xV4OL6KODX65+BZIwkP+MDwo05hnLe/enwvFMx3TPFp
         Pd6kGCQC54aTqcz7GlVLM/0oeOUiLV/AvK6gZZSdahHy0OyD4YkC+NAHD0R64DcwrSMM
         4MW2gKZoVr0T7ADu8WC7GzIJrMVNgk/iOjqbcW9YDZhDb6RANJ86TupurT/3Bjq5+l5l
         LYBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjk6se8EwBqF2GtuThcDJKJgdHul1oGNynh4c2HnXDdZ3s5VHECcF7a7FsDhY4J1AVenQ+s7EfJIB+@vger.kernel.org
X-Gm-Message-State: AOJu0YyntUChbTi4kfajiCbc1A38dEZnslLEIzHipGY/ZrBeGNFuvyNd
	NMiS5UIhaN9iaGVKpDS9v1NXZCnzW3gW9+gD6VhmWUyOfBrqVVVQeuI6W9QqShLA2cE=
X-Gm-Gg: ASbGncto94gv8+dt5222eRYU/GOkX6tSK7jdLzQDN/ICFQ5J+IJdyQKWhC1A4118Yyo
	fL54Sv/TSpliaaEjfTX4aM7N+VRoyDiW82vzOUKS5j0+jm919kHOJvPHNhcqg/eY2Hqzqlgg+qA
	JQimOY2NdvrIC+2L/wUmN95Tj4A6AhrKcPewvclJem3hfNsA4kf6axpf7uUT6KqtDf4pRcjQ8ko
	nUsmEkKmF34YsvHenyicCuk365jIQ2Ou9ny2x48q26DqtGFc9NYyz8paCnYjUY8k5MjEDxpNgWQ
	8CmzdrfK3No8r1cemrCipUcj3II7WV9JNrvQPoSwt0JfCHbNhI16Y7bd1UNSsD6gWmKWDs6I27e
	tGDfA+SCkXYCAE/GEbcgNOr3jLMiR
X-Google-Smtp-Source: AGHT+IGWMqbdmzot88BwoyJkKVlik7hJWWIpAdv/u8TjYPa8JtimIILaeyozEucB70fzns1tTqycTw==
X-Received: by 2002:a5d:51cd:0:b0:3a3:5cca:a539 with SMTP id ffacd0b85a97d-3a35ccaa7c1mr1995111f8f.20.1747389229889;
        Fri, 16 May 2025 02:53:49 -0700 (PDT)
Received: from localhost (p200300f65f00780800000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f00:7808::1b9])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-3a35ca5a87fsm2274308f8f.29.2025.05.16.02.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 May 2025 02:53:49 -0700 (PDT)
Date: Fri, 16 May 2025 11:53:48 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vladimir Zapolskiy <vz@mleia.com>, 
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>, Arnd Bergmann <arnd@arndb.de>
Cc: Purva Yeshi <purvayeshi550@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: lpc32xx: Add #pwm-cells property to the two
 SoC PWMs
Message-ID: <ss6jqmpz55wz3sb27kg7mu555qowf5enu3fe32zlxgqeix7odi@zhs3ns4euljf>
References: <20250403104915.251303-2-u.kleine-koenig@baylibre.com>
 <hbz3gikjqwuqmexzrxis43gmxcviiryihi7pdp3btdb3sopqi4@mssyr62bunxk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="z5nkams7un7oxsws"
Content-Disposition: inline
In-Reply-To: <hbz3gikjqwuqmexzrxis43gmxcviiryihi7pdp3btdb3sopqi4@mssyr62bunxk>


--z5nkams7un7oxsws
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] ARM: dts: lpc32xx: Add #pwm-cells property to the two
 SoC PWMs
MIME-Version: 1.0

Hello,

[adding Arnd to To:]

On Thu, Apr 24, 2025 at 05:05:29PM +0200, Uwe Kleine-K=F6nig wrote:
> On Thu, Apr 03, 2025 at 12:49:14PM +0200, Uwe Kleine-K=F6nig wrote:
> > If these PWMs are to be used, a #pwm-cells property is necessary. The
> > right location for that is in the SoC's dtsi file to not make
> > machine.dts files repeat the value for each usage. Currently the
> > machines based on nxp/lpc/lpc32xx.dtsi don't make use of the PWMs, so
> > there are no properties to drop there.
> >=20
> > Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>
>=20
> I wonder if this patch is still on someone's radar. I didn't hear
> anything back and it's not in next.

This is still the status quo.=20

There is a patch in next touching arch/arm/boot/dts/nxp/lpc/lpc32xx.dtsi
applied by Arnd. So maybe the problem that my patch wasn't picked up is
that Arnd wasn't aware?

Best regards
Uwe

--z5nkams7un7oxsws
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgnCykACgkQj4D7WH0S
/k4gBQf+MMHEz38OrUBBBQ7bgEtkz9tyZsvJY8TyLqJF1RXpnPhz0boYcprA6rhL
H3fnPM32zczBLCqyIwIHE79WpttHwN5jm6UK1Gi9na7cF85zHfJnnJCKrb3IDoPP
Gqb1DTEGHchPSkVI8przpdi/19wzLRhKpNb9RU4ILGtzqhVGjeQYf5mI8P419/JC
s29FNZjX8+W2sZBsxfxioM6SHVgjpsRP1DfxPYkf/cMKWk6+fPIiYCS2UwGRUKmX
Utr9tdaw8HsNHBiXGudxAojQiH6HdpZp17ET7SYu7SqRkzhJw6q8pqRrerxJhx6o
IN6p6ADPdGVEPiG0kp4QiricGqtmnw==
=xD5v
-----END PGP SIGNATURE-----

--z5nkams7un7oxsws--

