Return-Path: <devicetree+bounces-150017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB60A40FA9
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 17:11:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7602B3B8471
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 16:11:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 277EF70825;
	Sun, 23 Feb 2025 16:11:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="fCe64v0K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206B01C6BE
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 16:11:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740327093; cv=none; b=NZLubBmehiQSwa+JlcnhIbFtSt/iFPzYTFOcR5KHkWFyMqb/+6R3u2p7npx1cpBxHsn8UHMeW41+pMsPyZPcSvNSzNiqbw6mI3u6Kil8BClSgt5jdE90J0HHO+cM80ODcaIV4QtmD4b2e/rIUMSeOl/GLSMN5yUL7KziqCI5dhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740327093; c=relaxed/simple;
	bh=h6RHMJs7PqkrNK9Y/YAwxZLPAZtSgRd9y+M0g8dXsWI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E8BjcVC2NNxTwxofRuJJg9mSZoom6BBuVGswBa3wO2qpQpTEyVAr5HrvBzAkWBgc0/jI5rqGSyorQk+8l7dg986kRmT8yy6ZISBBbjKkIhs1kwloKNFy1bfK2f9rFH2ZVPa2zUDrVyGXwMoBJJ1WhbFMjIMKaK/GMmYWgEKliCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=fCe64v0K; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-aaf900cc7fbso559459666b.3
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 08:11:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1740327089; x=1740931889; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=h6RHMJs7PqkrNK9Y/YAwxZLPAZtSgRd9y+M0g8dXsWI=;
        b=fCe64v0KnuYsakqXazhHdxjkUg/bzlA1w5fEFAZ7+XGXSkGld/bm+2D58Td3Pj8K5v
         jhXpVXYQdRm7nPXX9k63vamhE/LN6oN2QLeO2H3Fre85EKqSYM+3JJ4S63TtlmiqCo9+
         D2KofGASGtkHd4r5md8FlDynT9IJ+n9bqwNyxHKy+mEnW2/zrmVzFoJF/nvx9qvwDmwS
         E5/gCahpLlV1kEeondwx5rTFjczvvdKCfjc03Mu0pKcSCmoGyzGr4JiHnFAyomMEaxKd
         HOyz3UdkTK2wDwApNsuNwy9H8A6k1Qm5XD7bbrmUzMbBoxVje1yuuoJ/6kFryVUwnn2K
         b/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740327089; x=1740931889;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=h6RHMJs7PqkrNK9Y/YAwxZLPAZtSgRd9y+M0g8dXsWI=;
        b=TEHgh3M3YDkXBhTnx/HnJVlZf+HWLyZzWriBQDKSZQHDS2JgbHla49zqlSq5IOPzKc
         uYampWDytCefaps+AYo7UhKyjvMkjMoDNxtDmZTbnAkfjEX7x+19XV0DdT9fYrCdEz++
         ft0Ag3NFTGzMWWKOHP5cLMK5f+JjlmC1iJROvYd0Fx+yMoYTtx6KT2nRBCfnbB6m9RSm
         Pki+/Kbrk36mRRKWmNbUOzWVbPt9WnpeqYr4AnVBlLkm85dJSP8qVRxDaqTTW6Me1qZ/
         XW90pHXkJqd8P7aFiVf9tPiOKQH2gIRk7WggOZ2rSm9j8dOzfVjnWcVAS4m/0tzthoYi
         HA4w==
X-Forwarded-Encrypted: i=1; AJvYcCV00zRaRDkWOa14HdWXrCr0VouikWdxYO3h4XOfRzrexPdYIgyKuHuSZLwvf4hk+xDb3mIqVwpPTFlx@vger.kernel.org
X-Gm-Message-State: AOJu0YyNbAJkIyWtX12WK+lrX8HwZTVL+iHMy+UWCAdDdAeylB7AkHsf
	VbErkcjkqAcxr5Kwa994O6Psg8UmMQyv3J2N0tU5JXN6wAxh1FkfONwHtvK49egpuun4L7zK5j8
	Bs9CddvhbglYXVZ/sBbVCf9g8gbbMr2zdsuzASA==
X-Gm-Gg: ASbGncsuCq2WwXEOLs2BsYHn5dgf6QHkKl/7hp8QkYWAgDWpLLT/MUqps2P55wXsFdI
	1wCmujYHYiH/8UOOw2DAs0PFw8dDsen/+bIzTruQS+aNGhfMjkxhhmopJiatGFUSVtlIGc7zUz6
	End7nz5HE=
X-Google-Smtp-Source: AGHT+IFIDZJr6Jur/hwIghGQ2Qq9i/9D/BgAwgxNvwuLBG06ES9xqEPe80nvc5cmXe6MC221B1H3UO7JvZ3cGAzb6AU=
X-Received: by 2002:a17:907:8688:b0:ab2:faed:f180 with SMTP id
 a640c23a62f3a-abc0da33a30mr1190754766b.33.1740327089277; Sun, 23 Feb 2025
 08:11:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250222094113.48198-1-wahrenst@gmx.net> <5ab95f85-9a91-4bbc-8eef-299376ab46f2@kernel.org>
In-Reply-To: <5ab95f85-9a91-4bbc-8eef-299376ab46f2@kernel.org>
From: Phil Elwell <phil@raspberrypi.com>
Date: Sun, 23 Feb 2025 16:11:18 +0000
X-Gm-Features: AWEUYZmkjkeF07rULr98ZcLeKWQEtabmSV1J-NMRHam6ld1g-hvY8YToBNU7zvM
Message-ID: <CAMEGJJ04D-LJ5=NdYYu=8Dfsy+mb0sQpL6n_pT+DAcyKAiPyvw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm2711: Don't mark timer regs unconfigured
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-arm-kernel@lists.infradead.org, 
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Sat, 22 Feb 2025 at 10:44, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 22/02/2025 10:41, Stefan Wahren wrote:
> > From: Phil Elwell <phil@raspberrypi.com>
> >
> > During upstream process of Raspberry Pi 4 back in 2019 the ARMv7 stubs
> > didn't configured the ARM architectural timer. This firmware issue has
> > been fixed in 2020, which gave users enough time to update their system.
> >
> > So drop this property to allow the use of the vDSO version of
> > clock_gettime.
> >
> > Link: https://github.com/raspberrypi/tools/pull/113
> > Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
> > Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> > ---
>
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

FYI, although the patch was written by me, the commit message has been
completely rewritten.

Phil

