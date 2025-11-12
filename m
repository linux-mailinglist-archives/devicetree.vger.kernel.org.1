Return-Path: <devicetree+bounces-237598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7697CC5242B
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 13:32:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AD4DA4E16EA
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 12:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA3E2329E6D;
	Wed, 12 Nov 2025 12:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aJ/Z5FWt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1734832D0CF
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 12:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762950394; cv=none; b=Py58ZHhIV9dQKm+4rBCGgA/UlwlP1rWfLqp5vtUiJRMAAT0ti7OXkeSkDcTqJ1wozRQztZpq1OO5YKEw3M1bxGxbIrRCe195qu1mE9eAZ6I7r5VB3B4PfaLZX2tQGprOUwkSD8K8bXL6LvCh3ccRkvmPYnUbNaH8JMUmNOCQ3as=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762950394; c=relaxed/simple;
	bh=dDKYGlIJ32m211Bih55y93s3DErpXU3iR5VwKKs6LPE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GCml3qnxj08NSudVQcZgOZnOUdLhlF6xc2eEWD3kDtlMxyAK8BBPgXWDajHIAwyAVKhq4mbLz5k0yv4S/5OP9Na3QW7p9wZ0Pn96f+ifDDAH/jU0BSWgPfngzXuZdlo3tO8Qy0cFN1IHmdIyB43Nd+sKR49NTddRyr43LgsBPUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aJ/Z5FWt; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-3e2d1477b9cso409104fac.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 04:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762950392; x=1763555192; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0wFrt/LADXbjn6c8+TuF1xEj034sEsGmUDeod+7NYBo=;
        b=aJ/Z5FWtr5HkyktzhSE9r4ff1yR+FylYC2Mu5zRY+NAhQH3BgrQXdc+Nw5sJhSghGM
         VgAD4ZQz56NPNW9PPmHjVoAzJYK6PoH606ldmXEt25qoR9Ais9w3mWH5446ECbxOjXfH
         rAfYrEZMfbsNqjU6nk0clcv6IiZEICQ3n0XoQMv6UTNlrutJR9tH/SF2oEeKKGV8l9Lm
         k0BTTB77/hJqX+2egOf3iCrTbQ+ilhi9h36UeLQLnVs5qmsnoQbECmKvS8k5EkwNzgki
         /6iWfT0KYGmZdhMFAmZMgntoxUPA6D4y+IerSe3IEBbRG3O5VR9qFqHlRkqWDBtLnqcZ
         emkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762950392; x=1763555192;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0wFrt/LADXbjn6c8+TuF1xEj034sEsGmUDeod+7NYBo=;
        b=pMg8zOT8WppnnyK/IPo9ESYwiuVf8OZKxYfvjxeJEjy2HHA/aGNHfUv7RXsimlzcMj
         M5y6ZLZTWCns22+Mf+3Ho7PldukkIG+0oxVvhOvG47SU6msOn+1ZXreQYdgMLhrFNUOX
         tt+AL27Afy28lYdS70H0zbehIXDfuPjS6fnQlny5mlOstC1Na7MqDVICdA8pIsZkVtoq
         xLcJY7zdLdHixbKMQW3JMbXwPNj2GYCZskTJJJr+KODVfXMyLqxRe5JYvUxKEs4HPDHB
         h4gDWJ9hRIS1vZZVJO98RFWZQW2tjy40oCqqEba/DJgP7OUO9sKt6uKkpviKdQEZhRtF
         kQnA==
X-Forwarded-Encrypted: i=1; AJvYcCUzC0nAdk9X8SsQJZrGcea4JkSUcm6uyCtZhdQLl5Bpv+FEBsq4/bOyg5sREATzHxgFkje6DiRuIUQd@vger.kernel.org
X-Gm-Message-State: AOJu0YydRINNvVGCFHnugaFGMLfy/rN0dazAKUk/IOZw56rL06Y9KnYE
	7jrGBrBppyYRuajXreNtIcfShI5RwJ4+DHRIzHNxaolQgq2UlQheVMfUYVI8ErUmSnMrv7NsgR3
	JlxlOpwlCPkOR06U3LVkMgrJQF2Y4sAsClb39fQIQPQ==
X-Gm-Gg: ASbGncs0FqB0NsagT/iy7hOLbqwUlFipmxU6y5rV7Fi3l4spi+sbnXkohUTMBi7GYLw
	YGYzrMN6SUgfS4qwZEopksP+X3pcWZLnFFghab4q0qrfFhCj8ibUK12cr9cLEXKWxrWA77/I4ln
	2wkHcEFYOFBWRqGGYyxfPephQm1mq8WnMerR6CUap+pV+Nygxf3F8SJVg/Lo2IaFrvbIEOHQ19Q
	3QDMqLFBMVdSUpBavFwy0dz1BIeCtXsUqIMjqhfnTm7x4LL7AxwwVqdTorbGA==
X-Google-Smtp-Source: AGHT+IE1tLumK4n7DEwiq4S5JSBYPEzwm+BAj2LMCZxL3vQMOt1J1sE0UaE8YVtiqdzAwD2oN7VxHWusv1seYdRsy+g=
X-Received: by 2002:a05:6871:2e8e:b0:3d4:3658:ede0 with SMTP id
 586e51a60fabf-3e83419b8bfmr1247405fac.40.1762950392152; Wed, 12 Nov 2025
 04:26:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251111192422.4180216-1-dianders@chromium.org>
 <20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid> <b55d94f2-6b79-407f-af58-b9847db3c9a2@kernel.org>
In-Reply-To: <b55d94f2-6b79-407f-af58-b9847db3c9a2@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 12:26:21 +0000
X-Gm-Features: AWmQ_blqp2Ui-ZoVaTdeg2kHQP2n-uxUtRhftLhBrfgQJGuwpcrlRSIvpnI39mE
Message-ID: <CADrjBPpCKfd_0PY=DULnmqfb8veqH-SQ-kr5gC6Y28uBVo8iRA@mail.gmail.com>
Subject: Re: [PATCH 3/4] arm64: dts: google: Add dts directory for
 Google-designed silicon
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Roy Luo <royluo@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wenst@chromium.org>, 
	Julius Werner <jwerner@chromium.org>, William McVicker <willmcvicker@google.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Arnd Bergmann <arnd@arndb.de>, 
	Catalin Marinas <catalin.marinas@arm.com>, Drew Fustini <fustini@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org, 
	soc@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof & Doug,

On Wed, 12 Nov 2025 at 08:10, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On 11/11/2025 20:22, Douglas Anderson wrote:
> > The first four Google Tensor SoCs were offshoots of Samsung Exynos
> > SoCs and their device trees were organized under the "exynos/google"
> > directory. Starting with the Google Tensor G5 SoC in Pixel 10 phones,
> > Google Tensor SoCs are now of Google's own design. Add a location in
> > the tree to store these device tree files.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  MAINTAINERS                         | 1 +
> >  arch/arm64/Kconfig.platforms        | 6 ++++++
> >  arch/arm64/boot/dts/Makefile        | 1 +
> >  arch/arm64/boot/dts/google/Makefile | 1 +
> >  4 files changed, 9 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/google/Makefile
> >
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index ddecf1ef3bed..f73a247ec61c 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -10606,6 +10606,7 @@ C:    irc://irc.oftc.net/pixel6-kernel-dev
> >  F:   Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
> >  F:   Documentation/devicetree/bindings/soc/google/google,gs101-pmu-intr-gen.yaml
> >  F:   arch/arm64/boot/dts/exynos/google/
> > +F:   arch/arm64/boot/dts/google/
> >  F:   drivers/clk/samsung/clk-gs101.c
> >  F:   drivers/phy/samsung/phy-gs101-ufs.c
> >  F:   include/dt-bindings/clock/google,gs101.h
>
>
> I am fine with this but also please consider having separate maintainers
> entry, because, as you said, this is a completely different SoC.
>
> In any case, up to you folks.

Doug did reach out to me prior to posting. We are OK having it here
(happy to help with Laguna). Most of the exynos specific SoC drivers
are under ARM/SAMSUNG entry anyway. There will be some Laguna SoC
drivers for pinctrl, clocks etc, but many of the IPs are designware so
likely to have existing entries (uart, i2c, spi, i3c, usb etc).

>
> > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> > index 13173795c43d..044af9a3b45f 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -138,6 +138,12 @@ config ARCH_EXYNOS
> >       help
> >         This enables support for ARMv8 based Samsung Exynos SoC family.
> >
> > +config ARCH_GOOGLE
> > +     bool "Google-Designed SoC family"
> > +     help
> > +       This enables support for Google Tensor chips starting at the
> > +       Google Tensor G5.

It might be worth adding (Laguna) here

With that addressed:
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>

regards,

Peter

