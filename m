Return-Path: <devicetree+bounces-226997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C13BDD88F
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:52:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 009355445C0
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 08:52:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13C5C31A807;
	Wed, 15 Oct 2025 08:51:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD41331815D
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 08:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760518301; cv=none; b=g9utRJhTPaBxxbNL4HgkD8g3/knORrOXybCAy+B+KLX4GlK+5KOcQXKgWuTIhvfbicDSEnfUgRytnw/VecMXgwn67DwkTRFgq4lX5MSm3GEjWml4Ciz/dVdan8o+xIb5oos93gEM5TBEjuropR/aVksrzzM2l9fzpGFsOHZTTPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760518301; c=relaxed/simple;
	bh=Xe6Y50t/1UHK03lauiiO1RqhnypsAyHrTe2pPSI8Vmg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sgnk5lGoVA1V2rHMk7H3Uo8JYjEs5KMqCPbwZsAXcDV6oMMgBvudkrccK2T+Q437vi1vZ3L2TwRAGVdm9Up77sH/qsbwi4ywfJSsi38JJXcJrSEV1py+V2qD5n+qec6QPQKFriU9owHnlTjcNtoKlo2sgDHHehXE1uytBSt+nzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-54c0bac7d6bso3253084e0c.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:51:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760518288; x=1761123088;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Cc23OylIA7nwIKH5grl86j81RiWu7A7C8vOJ884eZmU=;
        b=R0hFaccVvFPjsGbPyKepBycHnOZ1s2SwlWp695w7EKCi79zj3wiYJOGwu5i8jaO+r8
         kGAHRhV74KkONNmasupzEzOKPKr6WaQJSxP7Dnx0EH0rUUvTf7Dl0O3FkFmX5UfRzWBP
         XrtkX7ZQJhLEQCempq7vyC3Aekx5kj1SKWhsG8OJ6HNK10UxaZvNfjjhTU+lQhnZqRVD
         Ie04nmbP3eJNYjknSEOvmVIwXbCShhzMdfP1tBTPWYJ9WsXsnEKivS7sCj1jpe3OqxNM
         4tdPkhldjFnT5V3RO1/gxiQc0f39VodQSrcz1Dj/Q2Hop1Q7LRcgAKyXJ1u1MU1gSdO9
         9tqA==
X-Forwarded-Encrypted: i=1; AJvYcCU+zOBm2gBRKJRxx5vuf0OeRru02CooCA2I8w1eiJDCK1he1H0k7JA/EulgLEmCuoauHwqeRb5HKG2k@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9HpTCCwiwxlqqxjtp2Wzb28V2f5Egrs6yuGbTzEt9742D48DX
	YRgyLsALl2ZW+RyzQmnbxrNZ6FdrA4pwu8DVkNbK8RTnVd1Gchb5UJGLfXhoT623
X-Gm-Gg: ASbGncuUv883o0ObS0tkYj3xA9MNO6bN9zdqr3YMVFCJU/wi/FodbCjoRPQRNoobR8c
	lwEwjgu4n+lKKBsbeyPI4gZtO41JjbaP45UEIWF/8SwzHQqYSd9ys48aFcU0asMc/LmafXeFXwc
	8hcsZi4l2IVIuWStMjIcykgSFDrxjmjw8Tnhrb+FP4ECHkXPykdixBA4qrkxhOUiqdoOVMaHhB0
	zkWv7nkPNI+w8vrACoi6+pRvhZJT3QDeUriecrcESq4ADqLWQ9MgA8f6LLCdrCc2a8xDS8tLYhF
	SLN90OZwtSAwbS6OG1OaOaspogmezXIl0Yvujj0TBZYIoe7CpBHN+Qe1LBCOixd3v2BR0H6oyKJ
	Gyj4eMdCQKLjxGMmRqhXAh9FBpKmIOZU/T9xhXBk9n34gEIx3YKfem3hGZe3MH+0+TbjY/6QB0q
	ldd4i8Wuw=
X-Google-Smtp-Source: AGHT+IFk1/jeIk+86CbVe+psNQHbQk4Ft1GaXChMxtwryXWxQ68/+7uQGwP5yjIPanBECm3EpGOuCw==
X-Received: by 2002:a05:6122:3d0f:b0:544:4ee5:1334 with SMTP id 71dfb90a1353d-554b8a82a96mr10338892e0c.2.1760518287548;
        Wed, 15 Oct 2025 01:51:27 -0700 (PDT)
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com. [209.85.221.177])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-554d81148c6sm4883468e0c.26.2025.10.15.01.51.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 01:51:26 -0700 (PDT)
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-554ee2f1e9bso2357057e0c.3
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 01:51:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUflLhO9EPnQgAQYZTl2PaYyz7e3kGhGLMurlFwz0yEX1ZLOpO/PiwNax6AJ2MVQtbHE7MzpTOgbQOV@vger.kernel.org
X-Received: by 2002:a05:6102:6219:10b0:5d5:f40d:28cc with SMTP id
 ada2fe7eead31-5d5f40d28d5mr7213275137.34.1760518286251; Wed, 15 Oct 2025
 01:51:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev> <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev> <6d4bc69c-1571-4d98-b0d4-214c68be118e@tuxon.dev>
 <c1099a8e422abbc5d12bf3f325cb9f2140c8c006.camel@pengutronix.de>
 <77678dd6-071b-4911-a5c5-f1519c92e91a@tuxon.dev> <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
In-Reply-To: <6ba1fd1f07753c9b98a57c87bffbbee16971da7a.camel@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 15 Oct 2025 10:51:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVQ_Eabhz0=FRB28BqdidQDpjdBOGq6+9yR6pioNfA_Lg@mail.gmail.com>
X-Gm-Features: AS18NWCfZCQ0twtFVwNHBIGpA19Nn65er5LxlXMaub9DnCgxRsRqvVPljtERNfU
Message-ID: <CAMuHMdVQ_Eabhz0=FRB28BqdidQDpjdBOGq6+9yR6pioNfA_Lg@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB PWRRDY
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Claudiu Beznea <claudiu.beznea@tuxon.dev>, vkoul@kernel.org, kishon@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	magnus.damm@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
	biju.das.jz@bp.renesas.com, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset="UTF-8"

Hi Philipp,

On Tue, 14 Oct 2025 at 18:42, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> On Di, 2025-10-14 at 11:36 +0300, Claudiu Beznea wrote:
> > On 10/13/25 17:57, Philipp Zabel wrote:
> > > Is the issue that you need the PWRRDY signal to be (de)asserted
> > > independently from the CPG power domain enable/disable?
> >
> > Yes. I need to de-assert it before clocks, MSTOP on probe/resume and assert
> > it back after clocks, MSTOP, on remove/suspend.
> >
> > > (Why?)
> >
> > Due to hardware constraints. This is how Renesas HW team recommended.
>
> I still haven't understood this part. Isn't CPG the power domain
> enabled "before clocks, MSTOP on probe resume" and disabled "after
> clocks, MSTOP, on remove/suspend"? So PWRRDY could be toggled from
> genpd notifications. If it needs to be (de)asserted independently,
> wouldn't that mean the genpd notifier approach can not be used?
> The notifiers are called from genpd_power_on/off(), after all.

Please let me chime in to clarify...

The CPG is not a power domain in the sense of a power area that can
be powered on or off.
The CPG is a clock domain in the Linux PM Domain abstraction, more
specifically an always-on power domain that contains devices that are
all power-managed similarly, through their module clock(s).
Hence the CPG PM Domain itself cannot be powered on or off (through
the generic_pm_domain.power_o{ff,n}() callbacks), but the individual
devices that are part of it can be started/stopped (through the
generic_pm_domain.dev_ops.{start,stop}() callbacks).

I hope this helps.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

