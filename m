Return-Path: <devicetree+bounces-107086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D961498CE37
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 09:56:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 163661C20AA7
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 07:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE14D1946CA;
	Wed,  2 Oct 2024 07:56:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vBFdJiMx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFF91946B8
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 07:56:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727855803; cv=none; b=iHsSjV4qzqqP9wIV0455zUqHtfQpKVygfOsfKsUlc/ufakruqyc8SocBFEUk421za8zBRGmhZJpE4Ezn5zQ0CXtFS5DpUCN+7QRhDaZ377e6loETVk74FH0BvpiBq+OtS4kAf+F3PgSYWj7vcrSzYiVRBvgBGHN3vtjDxV+WmpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727855803; c=relaxed/simple;
	bh=zNB5aPvFtGX3xHkTauxG+Rfp5nBAXBexbnbIbTYxA9w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dbHOI/03yKYOE//Gr2/1wF23yrQtk4z4uw37Uz8m4YTqacEx4tXbe8cVEB8ghEr3/n2CDwNqmGlntuBpX7DR/9A4JQO4F435dt7zhIQW6t1Aese019VLzyNW1f7WVQRyLyP0rFIrUxk8mlfm1qCfz0pIO8mHWUTO6wWiRY3MSMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vBFdJiMx; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5c8967dd2c7so3833094a12.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 00:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1727855800; x=1728460600; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:fnrom
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O08lDxgSZwC02/Y7RyccoCps9zhNy47cXCSDgPSj+Pg=;
        b=vBFdJiMxxf0+bpET9iUBlUlci9HYnHoUoOewzwMkFlhAaoYg24puFjMxemeBiD2iwZ
         Brvz1hDOPq1yMKCplwjeByL+n2aGBlrOxqomTMKLiwqJN71Gh+geV92QoY9r30bJMICl
         beeaK41L8ghWSpGGzsVqM/mLtqdXcTLHE6vM1bJP5X2UdTLXXyONXueKqvvJDFv87Mfn
         yd92NRTgR3VYZsm/XLIVffDBQ6eloSgA4B7sKWYUekb9MUUH6fgggCsY00pYGXJeFT68
         Ty+IwBpfn+gztsM6ctY/1iObxw3u7lUDAnAy68l1bua/5zID7yYfGa7rGq064ZJakZsm
         CVEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727855800; x=1728460600;
        h=in-reply-to:content-disposition:mime-version:references:fnrom
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O08lDxgSZwC02/Y7RyccoCps9zhNy47cXCSDgPSj+Pg=;
        b=XSpL+AHuirO8DfZMRtxgNvsaG0u5tSuREbGSxRA9eXNDb5esztwmqNWrihCqkQjCKg
         9TnLEG0UUd9nXJ3uEizZMVXr9oEbvLtKCzu/lQrDtIoNUf74drDz8MsP0s+WaNwJ7RYj
         88wHjBjQlkXMUk22bKwI1fLUrLbm3g+cUn22dz+WG4oHCRwRbsbcMcIpVbInPatoFYFq
         fvDF12iy44CW2Tbp6rw37052T2smsSnbU8Bng5D2X8Z+tpSReBgAagf7s5Jwmf3jw9Ek
         E3VWrxr44RnEeU8r4GPXSl6IgcEs6P0pWbovMii/ISNND+tj2XVvOThJ0CQx3s9lOqLV
         wJzg==
X-Forwarded-Encrypted: i=1; AJvYcCVuZ3xhLZo6h3GEPMoY+hXlAfnppbcBgBFCKY5rKLzVHq/oFaILNaVxChkG5XiUD+n8l7y/8Lm2IVrT@vger.kernel.org
X-Gm-Message-State: AOJu0YylG02bPwjtZMU1IrTcvS2zmC27/XWL5IojRlM1qkNey2WPGwwg
	oNKrccFSqC0XAubMSjbLZCsF7qc2z9Kd9dYZxTTmRbAlFhPutnjhMyREjtLJHMA=
X-Google-Smtp-Source: AGHT+IE8u200qXGBAzQDFEPwMdjrSXJqDUZiLWhBJFDgwgHtqmfq6vo4KW4QvXEdgdad+14r6A7rSA==
X-Received: by 2002:a17:907:9281:b0:a8d:555f:eeda with SMTP id a640c23a62f3a-a98f81f652amr223080166b.8.1727855799769;
        Wed, 02 Oct 2024 00:56:39 -0700 (PDT)
Received: from localhost (p5dc68d3d.dip0.t-ipconnect.de. [93.198.141.61])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a93c27d47a2sm820676066b.89.2024.10.02.00.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 00:56:39 -0700 (PDT)
Date: Wed, 2 Oct 2024 09:56:38 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Alex Lanzano <lanzano.alex@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Mehdi Djait <mehdi.djait@bootlin.com>, skhan@linuxfoundation.org, 
	linux-kernel-mentees@lists.linuxfoundation.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH v8 0/2] Add driver for Sharp Memory LCD
Message-ID: <t4lefcykpoe5i36wb4x5u23sseh6drnphtivuqc3mjviat2vvc@7hg4jyhxvpye>
Fnrom: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
References: <20241002033807.682177-1-lanzano.alex@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="6erctmsjfjme4qbh"
Content-Disposition: inline
In-Reply-To: <20241002033807.682177-1-lanzano.alex@gmail.com>


--6erctmsjfjme4qbh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

On Tue, Oct 01, 2024 at 11:37:35PM -0400, Alex Lanzano wrote:
> This patch series add support for the monochrome Sharp Memory LCD
> panels. This series is based off of the work done by Mehdi Djait.
>=20
> References:
> https://lore.kernel.org/dri-devel/71a9dbf4609dbba46026a31f60261830163a0b9=
9.1701267411.git.mehdi.djait@bootlin.com/
> https://www.sharpsde.com/fileadmin/products/Displays/2016_SDE_App_Note_fo=
r_Memory_LCD_programming_V1.3.pdf
>=20
> Co-developed-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Mehdi Djait <mehdi.djait@bootlin.com>
> Signed-off-by: Alex Lanzano <lanzano.alex@gmail.com>
> ---
> Changes in v8:
> - Addressed review comments from Uwe
>     - Replace pwm_get_state with pwm_init_state
>     - Use pwm_set_relative_duty_cycle instead of manually setting period =
and duty cycle

You didn't explicitly mention that it's fine if the PWM doesn't emit the
inactive state when you call pwm_disable(). You're code should continue
to work if you drop all calls to pwm_disable().

Ideally you mention that in a code comment to make others reading your
code understand that.

Best regards
Uwe

--6erctmsjfjme4qbh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmb8/LMACgkQj4D7WH0S
/k7EZwf+M/ShRYq1YgwqZPW4U30npE1K82FqykS7bQJxJQkQVyLkiSYOjmtVqVp2
Gax20mtgp0qxXz7EfAfKkNxJVTUbrK/O261lnSwfGMaXOf4HIriBDcER+MuSFzRZ
MJT6PmB0L+Ariyvbj/cKAUKwvGo8Mtfjbng0Mn3eHFNLIBPsfPT5PYFd7ru11pie
xQhZnUJJxusruq9VUnWFu/9Dqkh+EhSoZYH+sjtH6U62926QbxygpTSu9sjuU/NO
5nkEDUktwwDI01FdtksIo5RtwE1Dme5xYhA/KT3TX8HNjzYQSIEmkiZzu2vG60A+
hV/vo+Rw+hGNL4whuTeh0PDGqUedag==
=7JKD
-----END PGP SIGNATURE-----

--6erctmsjfjme4qbh--

