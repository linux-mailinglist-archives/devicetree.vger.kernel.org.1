Return-Path: <devicetree+bounces-170490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A67A9B1A5
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 17:05:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF5CE7AF124
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 15:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98C6D1B4F3D;
	Thu, 24 Apr 2025 15:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="G4RlSguV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BC01B3956
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 15:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745507133; cv=none; b=ddFz0wUpdkhMEffZy3JCQqo3wvLI+n5KhoqNtdgVojR+WRy1uC4pDzJpZCePNLfKa7yfm6BJ/5lbfBbB0MinkAaEcj5sA8/V3SWYLRlPIaFrmUafYo5gu3U3zJB8fmfNnlgweAXVgzZ7GyQnqn97seQYj84ugwqD99Aq/Q7hgPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745507133; c=relaxed/simple;
	bh=unMncNq2brLx3SFqedtBHI7Svfe3aKAUdpwvabhKt5s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HPZ+PZeHyZ4wa+oy8kZ08FdJPkld53W4dW/UuDxIThzrdicTfUlNBz7dvyLtGHXs3ip2LAqDPyR0adI+nQIDIC+87R8xx4tJKq4R5ezZiS/GjM8TG7gis3aAP4bRKYIS2UOwWNGcvwAOOAQ9iu+6+7NwYU/xqahcaNbdbwOSneg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=G4RlSguV; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so11022825e9.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:05:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745507130; x=1746111930; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=unMncNq2brLx3SFqedtBHI7Svfe3aKAUdpwvabhKt5s=;
        b=G4RlSguVPSmqiPxmn1cdPJ2bxkg/+d/SdEQmbiGanFXuubcqJ1+1PIVZExoqzhSyq5
         +DIg19t6x7hGVTaB92AEcHd/CXKUd263M+/Xu+XUWJldnShde5BLvNhxn40OEoKwn3xm
         kqRBm2iXbCUl5vbSiZZD/v08PMT/eqclhHCVct3HrFFoAgShufWqJCdDD9t0SUaUHiCn
         iyhX7dCZXL/vs6tqRQhqU+3p7IGiwMO65abo5orRGn5y2fUUOx0cVpDG+YBGjAZ5DS8G
         ZF7542jgQf2/wIU1Kfg6OoT0KhqhQIDnx3FyisULIgXum8sVJaz6m9jkSmtuROqQC+N/
         kzlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745507130; x=1746111930;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=unMncNq2brLx3SFqedtBHI7Svfe3aKAUdpwvabhKt5s=;
        b=rzsYd+9cWD1Ldumr/kb1hXfBZXmUlpU94i43weaY4TFvydOpz525vk029RoXDsAbfo
         F2aJVH0+7ECNkMJ6vFJccVgmEBAqq3qc5eTjljnIHuG53vicsJO0JTIWYhkFZ65e4j1B
         YLjFSpZP5YPj6Fyly626BM2Cp7a3ETY44z05os6Lg6qGYlSYpEyNMDpekM/u4O4OcXcf
         0BK95nsLC1EkHUYr9lkki4FrVmulUqDUbF+H4JqrVbA/PKT3xDNIqB4ClgbSA4KHUj2Y
         dgdDYlY2amSIiSpnCX4/ngYDgbsyuXNOhFAT18M3S6zzPJSnwG6OJPKHQtrFDpKjC0Fg
         3taA==
X-Forwarded-Encrypted: i=1; AJvYcCVLgVduhCPYY27AuckAp7AamHvJ50DDRAqcy8Z+nCp7Bc/ayyyZKOa9saJnq05eL4lKux9iGFhf4Zsc@vger.kernel.org
X-Gm-Message-State: AOJu0YxI4TBKdhcrpKDBmdAst2HgF71qRK+KW9oeNLfenfwaV04q6Aq+
	0uFA95Lyf2cDLg2K/fFmcEALcBn2w0BSDC9GwaShbhcrD+j5dyKZ2/i/K2tzOQU=
X-Gm-Gg: ASbGnctwi3ORRMQ1KKaAZCsHJn0yEVy82oYjw6xHlwGasU6qGKPCZDT2pd4sLfzZ0zL
	1bNasq4loqvRrtZRHirZNvX3kBkFxf6kld1Li8Z+oj4VC+QgMTyxvF5SccbmueZEJTfGaD8PQoS
	9w4hwmHZ1TzLA2WjbIdveaYSZAyNgIqHZrGlbR5BUbDthwRTLAvWVFj9hHdKiCo7Mj73d8tSwyp
	m0Tv2nDgMTTfBSphI5Qutfpb9yqOFtUKLe1tFoUC8UzU74Bps6avmRDIfZFbrEGLQ7tu3Ign0OR
	Z/IvDTbSp8SpzmM9uKJlIErTtCVMHnFaJNg4zCo92fn1Mkpq66z7ljm+hQRmouqKiL6nVgpEviP
	t7HCZ4Nc=
X-Google-Smtp-Source: AGHT+IGZerVnzzo+3licesW6Rjehtmkd5CAagkG0LYgOKDQGkVRLoR8KgscNzd0tm4Vv9ry8z/vBqw==
X-Received: by 2002:a05:600c:698d:b0:43c:f332:7038 with SMTP id 5b1f17b1804b1-4409bd76f40mr21710945e9.21.1745507126313;
        Thu, 24 Apr 2025 08:05:26 -0700 (PDT)
Received: from localhost (p200300f65f00780800000000000001b9.dip0.t-ipconnect.de. [2003:f6:5f00:7808::1b9])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-4408d8d191bsm63019605e9.1.2025.04.24.08.05.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 08:05:25 -0700 (PDT)
Date: Thu, 24 Apr 2025 17:05:23 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Vladimir Zapolskiy <vz@mleia.com>, 
	Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>
Cc: Purva Yeshi <purvayeshi550@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: lpc32xx: Add #pwm-cells property to the two
 SoC PWMs
Message-ID: <hbz3gikjqwuqmexzrxis43gmxcviiryihi7pdp3btdb3sopqi4@mssyr62bunxk>
References: <20250403104915.251303-2-u.kleine-koenig@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kubdbvpqoinlop4p"
Content-Disposition: inline
In-Reply-To: <20250403104915.251303-2-u.kleine-koenig@baylibre.com>


--kubdbvpqoinlop4p
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] ARM: dts: lpc32xx: Add #pwm-cells property to the two
 SoC PWMs
MIME-Version: 1.0

Hello,

On Thu, Apr 03, 2025 at 12:49:14PM +0200, Uwe Kleine-K=F6nig wrote:
> If these PWMs are to be used, a #pwm-cells property is necessary. The
> right location for that is in the SoC's dtsi file to not make
> machine.dts files repeat the value for each usage. Currently the
> machines based on nxp/lpc/lpc32xx.dtsi don't make use of the PWMs, so
> there are no properties to drop there.
>=20
> Signed-off-by: Uwe Kleine-K=F6nig <u.kleine-koenig@baylibre.com>

I wonder if this patch is still on someone's radar. I didn't hear
anything back and it's not in next.

Best regards
Uwe

--kubdbvpqoinlop4p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEP4GsaTp6HlmJrf7Tj4D7WH0S/k4FAmgKUzAACgkQj4D7WH0S
/k773QgAt0YvjENQdbx0qGBqEFrZ7A2MKIrQOmIzi5tHb4ZU5atUQjFVrspi85w7
8E9dp57nMgLABhMSLsq9jFfOCEConixxOGhnnQ3uw8wi04mFHmicB0DJTIMAbT9S
4VqYdC6GDtQXZfTjoSIYhas3c5n140j9rNEDYKvbmKfQye2cp6YifjKxeeWEF92M
vB/e9r4X//tv3o3ZqrgRYuAan8T6xF7XjxyqHieZ3JcP+ZD/MwRksBMMgQBMLXyE
uI1vrPLOKMiakQICU4pTT+JRR2+Kj0XufdXfAI+oz5GEiR8JwDDAl8XCdna6Vfjd
KRhgqVp9RXsYnuWiOjkkCa80mr/xqQ==
=nKWo
-----END PGP SIGNATURE-----

--kubdbvpqoinlop4p--

