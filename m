Return-Path: <devicetree+bounces-153372-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE788A4C2B7
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 15:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 98F60188AAB2
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 14:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7D282135BB;
	Mon,  3 Mar 2025 14:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="jRMTLYjS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C76F212B17
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 14:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741010618; cv=none; b=H+tcuRM+gnBmp2gyiQ+mQQc1KdZhfxwXGJeNeelTe2vKpdbnohtd9HgvoSpn6NOX4bd9ayQSinzgNoPhjXoKu2vwypb6ex2sz164IZ+a/ucTJaq4/nGKKwOpTgxMF9nI9UxXYgSJaMJy/+i3s+iakEfqDC5IFUkLPOKvltRFjbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741010618; c=relaxed/simple;
	bh=Evb90FKrgPWzLV5Du6tP4VGKeYOTKgFcIlyLIolITHs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r4ivCrzfAe+CcD33SzGGnmLDhXma9DRxD1Ssq1Te7fLHIOGPy1a1MEpIhnemNZlYp6shTi3WwGMtDZRT+bTvip4WpRcmP6Ff5m4g2z0UJZngT6m61DjTkXZzOcCdZYfmlmjw4+T8m4zo5y8bj8JzXHijCb0K1pTIArZZ23Rjt1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=jRMTLYjS; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43bc0b8520cso6358725e9.1
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 06:03:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1741010614; x=1741615414; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Evb90FKrgPWzLV5Du6tP4VGKeYOTKgFcIlyLIolITHs=;
        b=jRMTLYjSzBheKXY1GA/26lqMvjwRl8f05mUCnuiRJtIx0NAi6LIxH6yA4czIIxrBo3
         eiGNbsdLNBKsZqdpQ/ekc9AdTO+/QBi250y+BikwyJ7mNrkOR1hlR8C2SOpIAv8l3o2h
         7qoaF9fbhTkD+H4XvIiJwAEaiI+dYwuhgmbiyQOtzQ6fcjzWnP8fez85/g6g2Gpf9fJw
         YG3Ohw3ysHSQ2ieRTb/Ib6CHZ/ha+SGCKVLpQp7pmnCKCbHqO4Ik6DpnfojCo1Aa70YD
         tBi/S768Y/EoahP2WAAeXa1J8cabBTASSClGhFn7UWkLtBt/Pfs5h3YhRyo/7ef/dD7/
         cTnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741010614; x=1741615414;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Evb90FKrgPWzLV5Du6tP4VGKeYOTKgFcIlyLIolITHs=;
        b=cwK2jVnGt9Ldrifetjj/pwMlGpmL4gYS9xpuusoqMvbUZ4QQPTANIprs1TLRYvqWta
         sxE6r9+f0s4hxnaCMbcUIiG37/OkeNZAuAMcJu+B9fzwkY6qGIiA/YNmj3FE5Gc7+AUL
         /Cue+wL1yAQU+IZ2IKpBCYnQ9lUZoz3WPFytHOcALBdrLsAd+4vs59g0ebkCJMxVFUlH
         J94aeyOb07rCGAaZXLL7bsWHNFNXaZnWh3hdGl+sW4D1LdFzEGsyfwNw1LzEF5Srcy1D
         Y6FumnXG0P/ot8Y2xgnW426rc5sETvsEGznoN1+RbbtZRhxS7IPR80TrP08B8hbAqdAu
         krpg==
X-Forwarded-Encrypted: i=1; AJvYcCXz9rmryCgAKC8mnlWYohzTJSBlE6o2nmzan8yLu53YVpx1AyuZqKWrUF8rA9P3CtsT8QzjkUGGTaMl@vger.kernel.org
X-Gm-Message-State: AOJu0Yyb58Z7rihMGpCUvdd3hnPuLNUXtvr6g/Hu5/o0XYSXNHxTIr5b
	fnABNP94szO/d0fcD+DydyHCv9yfMyP8K4amhK1NGniUVIouoHmmQY6Fa470VAk=
X-Gm-Gg: ASbGncszUTDSGdOQ4Odk3qf7duzT7V6iyUkw+nRIh5JvvUqQtCXqLyEpyLS1cbBXA6P
	2weStXhxjt3riVlDoxeq0EzW/Zfv9CoO3+Zbw9UiIGNC8Yx0BTxjKN/9hf6tDHvFG8IelK1z1aO
	GqRD7oXJkMORS53fAeYETP3wHmijmUtm8TQH4je3PZptRyCajeKVCu3u6prYyiVfAfN0vGRtiJS
	Aw6/JawO3psemrqYX6mWZj2ViQO3Md5oFgD6A6e/IVaA8QJ+hAt96wVYQ6F+mVTodKAx9aNkVZh
	5l6SqVn4L71eaEWjKQKHP/WOKPkrGdQ+1LjK11CXmPTHIJHM3AjTjwduW3c2w0X1PMOjv5NtnoA
	HJvBUDJo5ZfwZkR1GyqLnwnxggA==
X-Google-Smtp-Source: AGHT+IH+p7ThXgxbHvbT9aEZalC898OCXp/uZvsSO+RyrFtvjYhk8Dx7PziT3Aqfwo54nFZzgv1HgA==
X-Received: by 2002:a05:600c:3505:b0:43a:b8eb:9e5f with SMTP id 5b1f17b1804b1-43ba66d588bmr103036975e9.3.1741010612945;
        Mon, 03 Mar 2025 06:03:32 -0800 (PST)
Received: from localhost (amontpellier-556-1-148-206.w109-210.abo.wanadoo.fr. [109.210.4.206])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bc48fc886sm26543925e9.4.2025.03.03.06.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Mar 2025 06:03:32 -0800 (PST)
Date: Mon, 3 Mar 2025 15:03:29 +0100
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
Message-ID: <xqe3grxdj62u6ixl5cdzcgzjo6swe64kegzjx4qabkfbkohlb5@rwu6rrh5lkzm>
References: <cover.1738600838.git.u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="747pyp5fjw7bmyol"
Content-Disposition: inline
In-Reply-To: <cover.1738600838.git.u.kleine-koenig@baylibre.com>


--747pyp5fjw7bmyol
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v3 0/2] ARM: dts: socfpga: Add basic support for
 Terrasic's de10-nano
MIME-Version: 1.0

Hello Dinh,

On Mon, Feb 03, 2025 at 05:46:35PM +0100, Uwe Kleine-K=F6nig wrote:
> The only change since v2
> (https://lore.kernel.org/linux-arm-kernel/20250130074553.92023-2-u.kleine=
-koenig@baylibre.com):
> is that I added patch 1/2 that is supposed to fix the warning that I
> failed to notice with the testing I did. Thanks to Krzysztof and Rob for
> their patience with me. I hope I got it right now.

I didn't hear anything from your side on this patch set and I don't see
it applied in next. Do you still have it on your radar?

If you prefer me dropping the reg property on the fpga node, please
tell me. Otherwise you dropping it on application is fine for me and
keeping it is fine for the dt people, too.

Best regards
Uwe

--747pyp5fjw7bmyol
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmfFtq4ACgkQj4D7WH0S
/k6dEAf/YqUHjcoJ4EMUtHBrWkZ2SOE8Hhtl8/9eJmOAuWiftC/qMfMXKzqOPIN0
xTSnSCGP9Iuy5lGeSpdtNtzXMtvPQOmQxwSG41/5jRXG3Y2VR11i+OShfvskEd4m
Pg8Pz8eUP0ZbzTzWXy4Vnmff8foS0a+FrF547HrZT63OEfH5+Ghj10tRX83zYKww
Y5jZJStU0Yu1/1tpiBr40HCNT/KxVFxJd5mIcPX+ZIoJx3sQU9G4XRU1hG8u32Ab
Du1tUwz9HJpcjIkgSp43kR0rFMnZ84JrX2E7gGjykaC7urgTI0lU5+wby0gzNdCu
OuFHTdFjt+y6ax30NbrRxcKar1TxlQ==
=6e6Z
-----END PGP SIGNATURE-----

--747pyp5fjw7bmyol--

