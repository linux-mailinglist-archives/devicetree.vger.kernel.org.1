Return-Path: <devicetree+bounces-232668-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A803C1A05F
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 12:30:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CFCDD3B84A6
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:25:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A850B32E122;
	Wed, 29 Oct 2025 11:24:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SMLLqUHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB37031062C
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 11:24:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761737091; cv=none; b=Y/r7RbGV7DETA1bNb6/80U+Tzrq5ciq2dh0w32kE+alWGgfRXPnkFGLu+w0UipEZw54FTObd5x8fgT/pVp82ZLvL7hVakMjYR2gfjL6pTWlWBhC4Plo4O3+gH6vlfkaC3xvuIriPtrZAWU0vCzXT80k+3uu/iDyMf6C7M6BbuJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761737091; c=relaxed/simple;
	bh=SSN7+2SHUlqyDZJ7M9gECbgIzqZWKI8o2SRJwxBxLK0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=ULaS38/wDrJFG+hodT0I+YcdlsbnlJhs08VUns1VPVgHb2RAGbVkNEGWHkqoX+QNQVWnrfIE7+E0Cq3nerZPaOvz++eZ4ZpwRVmvlqHveXETyfHC65O0WeInGckT+VYpLo79yI5CtogTsV+zBTkPJv7sdouTPj3+HTWjOEl90S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SMLLqUHO; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-475dbc3c9efso32663155e9.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 04:24:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761737088; x=1762341888; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SSN7+2SHUlqyDZJ7M9gECbgIzqZWKI8o2SRJwxBxLK0=;
        b=SMLLqUHOvRiXo5bzPpbV90MNXbK/6aZbH/ta4d0TPKSfwmHmyv9AW0FO+PiQqFzDkI
         D9ahNnTjW9Gs+quiAyT5UMxyRNJXHrXOHOuyPqaXEpwAZSgYe+Hy8QaYPg4FrzjTbrPn
         USgHEQIYkKkRZM0tR/wFzFCHbzQWYI5hhcnr935wl1urUHxYozlS8k5+uI7D5dHHarpm
         Zcby/6r9AYLl9hpHOF0iMH6cdmPWo8ZYanRKPEQuRuSFSd3aBcCt/EuCsENAupKv3LwD
         qcNm/oGtx0Ft3E0n+yyJ2DhhaWXWWrbpmiAN76thzPnCD+jsTYlGivMamgKNCnA4T+6t
         H/qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761737088; x=1762341888;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SSN7+2SHUlqyDZJ7M9gECbgIzqZWKI8o2SRJwxBxLK0=;
        b=IKm/Tn+qTRgjD409WKxilpGg17nQf6s6taEH4ze/nIHl7kUJ+KMcJ565rkG+VvzuC8
         C6gwclyDPVk9zRyk45Mmsn2fPua3urUCu8VBue/A4gLsNwcWnJckGUALjUQogwWSGku1
         usA+y41nzxaw7iO2iKb3b99s8Fg/Q9ffivwlhdbX2NvfjeIfUmsdvZCAbdNzDsS1Ab5q
         DuOV1X6Ez4FOQavoiL9K6lc0BTAt9M3kM8pExNhRCiVHzlwyn1lQjEsF64nbkOoe3z4u
         PHGa8pZy4HiP0syne6KmQpRb0uBe9sdrwaiBw7hqMPpzF+6bUqCb8StyoArWcQmM/Uo5
         q8qQ==
X-Forwarded-Encrypted: i=1; AJvYcCXHWj1Q2rz+StLB/BdbKDruh3nSQCMAPeHfuz4P6KyR7CME2dlOJj3zVLc8rPP0FwAo5AAdYYimM8jS@vger.kernel.org
X-Gm-Message-State: AOJu0YxoQHEUGy8QEsjLtsEKaI/udcyThXiPysSTOwc0Uh0cBtbOhfWE
	DGBpKawZWvC6vwJxYzZJg/c/MJLMrsIhyPx6KLulERu4z7MVXnWLFlsw
X-Gm-Gg: ASbGncuRzaVyzW7lmwBidQ8IHHE7Nxt/VZu+pIAG99qWWHnhWyjIcxiM7nF9+K3Xr2s
	POLMBnG2Sbuh4DRpKo2NZHFy0TCOd/At8dukgHjXnqW9Ikgq19EHupAQEhV+8roeVBnpyTJRv8P
	XWyrKJkDzLka9lHTOzvqJPvQdR9LdWVjQeOAikYCjQrlWA2oeUYtvFtQw7B6LF2coFOLVqZPgm/
	Hum5HeB98PZiiYynIkTYUM1vxs3dBd0NKWzYX55PNKH8CQR9kn14T989BDmTccllJ284l3S+Men
	icnn8RR21mp5u6yW1UVCQGyqvx6mGgsaEM/WFUOz1K4Kl6qsjzWto89z4laKQi1N2yk738Wtss8
	9z1Xrlfp7kKHTcikALgbT3JtXqqQdZgvXghAT+hy554u/qPyrooFVP+AgLh9CPt6xDB1OjHvo5j
	ME3MIwCn7u/A/56+QjWlnEQfPLWSmWgANh1sikgb32AYQg+HUH2W3/FD9m
X-Google-Smtp-Source: AGHT+IEkpyQtLQ97U7LSxA+GQnz86sOiezs7Bj4Kw0ZYAFnyDPGMmE4GKO5EGWyqrEBvSGThbDG3RA==
X-Received: by 2002:a5d:584d:0:b0:425:856f:70ff with SMTP id ffacd0b85a97d-429aefcda6amr2551180f8f.45.1761737088137;
        Wed, 29 Oct 2025 04:24:48 -0700 (PDT)
Received: from 0.1.2.1.2.0.a.2.dynamic.cust.swisscom.net ([2a02:1210:8642:2b00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952b7b22sm25422572f8f.9.2025.10.29.04.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 04:24:47 -0700 (PDT)
Message-ID: <3e2ebf04f53cbf801e13fd808d8438c6d2cee412.camel@gmail.com>
Subject: Re: [PATCH v2 4/4] ASoC: cs4271: Add support for the external mclk
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: linux-sound@vger.kernel.org, patches@opensource.cirrus.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas Petazzoni	
 <thomas.petazzoni@bootlin.com>, David Rhodes <david.rhodes@cirrus.com>, 
 Richard Fitzgerald <rf@opensource.cirrus.com>, Liam Girdwood
 <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,  Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,  Jaroslav Kysela	 <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Nikita Shubin	 <nikita.shubin@maquefel.me>, Axel Lin
 <axel.lin@ingics.com>, Brian Austin	 <brian.austin@cirrus.com>
Date: Wed, 29 Oct 2025 12:24:47 +0100
In-Reply-To: <20251029093921.624088-5-herve.codina@bootlin.com>
References: <20251029093921.624088-1-herve.codina@bootlin.com>
	 <20251029093921.624088-5-herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi!

On Wed, 2025-10-29 at 10:39 +0100, Herve Codina wrote:
> The mclk (master clock) of the cs4271 codec can be an input clock.
>=20
> In this case the connected clock needs to be enabled outside of any
> audio stream. Indeed, this clock is needed for i2c communication.
>=20
> Add support of this clock and enable it before the first i2c transfer.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
> =C2=A0sound/soc/codecs/cs4271.c | 29 ++++++++++++++++++++++++++---
> =C2=A01 file changed, 26 insertions(+), 3 deletions(-)

Reviewed-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

--=20
Alexander Sverdlin.

