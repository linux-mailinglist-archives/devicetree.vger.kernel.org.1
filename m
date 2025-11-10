Return-Path: <devicetree+bounces-236729-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BED1C46B62
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 13:53:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 47C6D4E984B
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 12:53:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8623101BA;
	Mon, 10 Nov 2025 12:53:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pHAuyUbP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0DDE3064A6
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 12:53:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762779186; cv=none; b=Rvc+XWY9PNWuT09MdNw25IzP0F5tF9N1O8DapqrkErmyo6YMn/Q+e5lPi9ajHh78yOLY4E6PwLZhiZ8rt4IlaMOWJhJhnWJ5PRY8Il7cgq+Lb4Hw99qoK2kMwQisL2n5sUJDcPb/aTpPCXet0DZ61je09ZEVmjqBX5JnwqsKy4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762779186; c=relaxed/simple;
	bh=lajD8QJElBkHp+szQMp4lvfntXaq7B2csoiFGrMzr/8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q4FuSu9/mR5B8yzfd9KJ5wwJS1NtoXzJO5JUCXWQi/WO4ne5oxjH24wA4kBgD6uPgsGX8BEgL12XAj7jqw3CjkcqoHUwpud8bXEWkOLwAFTyvZcXnu3xi9DiUD+IbBntDS6/Pws3EONWedZ1bl4dTR7mabsQBjaC2llU+Fkoukw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pHAuyUbP; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-3c9859913d0so1684384fac.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 04:53:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762779183; x=1763383983; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lajD8QJElBkHp+szQMp4lvfntXaq7B2csoiFGrMzr/8=;
        b=pHAuyUbPTRgXF6gAyhV8JVy7+EDCorUsZr9eGAo/TITyvpDhI1fXmNQU5oIzJlPQtl
         +Tq+4arshPmQNek2fkonRGxqSqJYlhxpZ1TRy2SsyMwL6dwDtkkTIjCWJ6S9Nfq1C8xt
         X5cSR6XyI+b+5nZSLyX9rqdq5a9VBpVp5BBIQQfnEX9fitosoxpIz24ADV3KXortYbl8
         yxDdW1OYcSBH61IUagKk5zW4GjE5fxgf/hXxSJzyK8jVYPtsYf80RDMPb6WyaXfoJ5MV
         a9Ku5JpyQZA66zbTkcPvsvG2WtvhaKtwRN4H80iw8QP9yYbSpIrk5Tl84oQF2a0gEG3i
         8eOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762779183; x=1763383983;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lajD8QJElBkHp+szQMp4lvfntXaq7B2csoiFGrMzr/8=;
        b=RJSNMdGAx21M+27XVeTS0J13O6Cpp/nzZPLd0ppgJ2wj/6dkGKuUmXlfW2BlA6b/dP
         0935e3vNgg7tkW8SeBYDehQJXEx0YLkjD0I4CoacgvESMazI71nFbPzFebsu4cAxUKCg
         41D8LIdEI7vPCdYYymZTBMP3UW7qhaNKU3CMmSZWB8tF1LkdZ6lnjhkPmmA41whB5q96
         AIG1LjMDhFIC1eSVp8pkgKgkPID7XAuBzsgOKQ4lVlARMno+LiQh7a8kmTTPDMMYuwnz
         TOdwzr6mqHBM3x1iEsajvYHm+iRfC4O4YB/mR9YXnecsksALek7vdD3caDsgS/pEouGe
         W0MA==
X-Forwarded-Encrypted: i=1; AJvYcCWHdU94ShPNeqd9SStyxgHO+VtYlca81qk6NOeOVRaD//H9/7TdCp7Dp4A7uNOiuykbtxZvMMWU8eYk@vger.kernel.org
X-Gm-Message-State: AOJu0YyDm3T6o5rEffelrjiYK8+QaLhzd3WYddcqbatDScwXrr4Hi4IB
	GxMYWOCi8A+AsUmSaRrU0ajASm1pAmME7bzOJeVX82kPqZ9qg2ZeSVi5nzD5XTNC5fLEO59+7Kn
	NmSYfxyw0NB9ISV2o9H6P69TOF1OB6Jn4U6vUAHCizg==
X-Gm-Gg: ASbGncsjGgGLYbZ9ed8Hk/Jl+62hcfMQ7CfkKKDE4PdkqcIu/7QcgZk4ch7wEY9clUs
	aUlaehFS01bnLsUS/sY94vZoMOBzfwgSLorJUdKQqiwlHqoHgytSAtnujjBSbc/4fkz7kSOmqHt
	DDSJw7GxfgTYfmyJ0qWLTlS0qswX+TZ+ajmqjGlTeGSTYJGkNDnSQtwiOxZhqGe5CJp//RnaI7f
	gpzohOPWsSq6zWxoFtlY9Q6XHpwSqN03ddeyMFpuy0ycLGZnGZYow8biLyF
X-Google-Smtp-Source: AGHT+IHaOc9Hf++xJ77n1T9F3eaANxA6a255QvjbOAcsfDAumQrnMbLyVAX5itd8dNhL35m/2iP5WQb/9KW6fxXbd5k=
X-Received: by 2002:a05:6871:60c:b0:3d2:fddc:862c with SMTP id
 586e51a60fabf-3e7c2452b4cmr4340908fac.7.1762779182758; Mon, 10 Nov 2025
 04:53:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251102-automatic-clocks-v3-0-ff10eafe61c8@linaro.org>
 <20251102-automatic-clocks-v3-1-ff10eafe61c8@linaro.org> <20251103-smoky-rustling-bloodhound-7590ce@kuoka>
 <CADrjBPpjX_qSehbNkaAG03f=whs09qFzzgNiY3sztk7v0QeCFw@mail.gmail.com> <20251104-enthusiastic-cream-gibbon-0e7b88@kuoka>
In-Reply-To: <20251104-enthusiastic-cream-gibbon-0e7b88@kuoka>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 10 Nov 2025 12:52:51 +0000
X-Gm-Features: AWmQ_bmYJGLwRqlUrf73Sc1rVwj8QxtUbwqaYUkACotkTBe74SIkf0KWHru_6Ms
Message-ID: <CADrjBPpGt3qBGucF1COWZT=OZ+8ithg6=-QefhKUiW4tkC=KrA@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: google,gs101-clock: add
 samsung,sysreg property as required
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Sam Protsenko <semen.protsenko@linaro.org>, 
	Sylwester Nawrocki <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
	Will McVicker <willmcvicker@google.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Tue, 4 Nov 2025 at 08:11, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Mon, Nov 03, 2025 at 01:49:53PM +0000, Peter Griffin wrote:
> > Hi Krzysztof,
> >
> > Thanks for the review feedback!
> >
> > On Mon, 3 Nov 2025 at 09:41, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > >
> > > On Sun, Nov 02, 2025 at 08:27:14PM +0000, Peter Griffin wrote:
> > > > Each CMU (with the exception of cmu_top) has a corresponding sysreg bank
> > > > that contains the BUSCOMPONENT_DRCG_EN and MEMCLK registers.
> > > >
> > > > If present these registers need to be initialised
> > >
> > >
> > > ... for what exactly? What would happen if this was not initialized?
> >
> > The BUSCOMPONENT_DRCG_EN register enables dynamic root clock gating of
> > bus components. So it is related to the automatic clock gating feature
> > that is being enabled in this series. Things still work without
> > initializing this register, but the bus components won't be
> > automatically clock gated leading to increased dynamic power
> > consumption. Similarly the memclk register enables/disables sram clock
> > gate. Up until now we've not been initializing the registers as
> > everything from Linux PoV has been in manual clock gating mode and
> > until starting to implement this I wasn't aware there were some clock
> > related registers in the corresponding sysreg. Additionally with
> > Andre's work enabling power domains it has become clear we should be
> > saving/restoring these two sysreg clock registers when the power
> > domain is turned off and on.
> >
> > > What is the exact justification for ABI break - wasn't this working
> > > before? Or new feature will not work (thus no ABI break allowed)?
> >
> > No, automatic clocks and dynamic root clock gating were not working
> > prior to this series. Currently power domains and system wide
> > suspend/resume aren't enabled upstream either. As we work on enabling
> > these features we are finding some things that in an ideal world we
> > would have known about earlier. Unfortunately it's not so obvious just
> > from studying the downstream code either as they rely heavily on
> > CAL-IF layer that has peeks/pokes all over the memory map especially
> > for power/clock related functionality.
> >
> > Whilst it is technically an ABI break, I've tried to implement it in a
> > backwards compatible way (i.e. an old DT without the samsung,sysreg
> > phandle specified) will just fallback to the current behavior of not
> > initializing these registers. Things will still work to the extent
> > they did prior to this series. With a new DT the registers will be
> > initialized, and dynamic power consumption will be better.
>
> So explain that this is needed for proper and complete power management
> solution on this SoC, however that is not an ABI break because Linux
> driver will be stil backwards compatible.

I'll send a new version shortly with an updated commit message like you suggest.

Thanks,

Peter.

