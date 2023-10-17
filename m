Return-Path: <devicetree+bounces-9418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E853C7CCF43
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 23:27:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA8F3B21102
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:27:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B16EA2EAF7;
	Tue, 17 Oct 2023 21:27:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="veCoDS9A"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19207430E6
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 21:27:30 +0000 (UTC)
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58159211B
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:27:06 -0700 (PDT)
Received: by mail-oi1-x229.google.com with SMTP id 5614622812f47-3b0dcbf3672so3746299b6e.1
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 14:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697578025; x=1698182825; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6tRGfrHxWoOHPzxGnVVhSuuyyQDUo3sqJGVkRTYggdo=;
        b=veCoDS9Ae4TYJd0dRk01tljkyAkbGqKMha3CRUQxupyFh9CpddORN2UH78i/PKMalU
         Pkey9773fIkGFDhKcWu8O4/63MKaYGLD+30RtiGxTS5f3hIZpnc6T80LIIaOefKDNi9Q
         +gVxucnSDjmsycZMAoZgLztJvOyN9oZeE3HGtOsIIywq3e3PugXbBbBy2rQGNeIA4Wk/
         EzVBPNG9SyEtKeqgx6cosBJFTOxC3jUS05PqsZyOsKJ+VYecxcp9/WY+Ye2Xypu7IcxY
         OLiKDCutzvzN8PoNJCSt+sryjTvK+ul43Nyl18e7U2ZCyX8p1lIAzqVCwgmys9CRCnDK
         VXlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697578025; x=1698182825;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6tRGfrHxWoOHPzxGnVVhSuuyyQDUo3sqJGVkRTYggdo=;
        b=HA/r8RCpp/Qbdnkg2vYx5Pkr+cPiDKnZSZPTGvLjTgXP5oE1tPJh4HeZeh+kHxEV1Z
         XOvP95G+MrIC8poL+wUKOXe3Z3kOTUOw0WaaV0ZP8/sybDJK7Q8K20iTBF6no3S5c6Qd
         ZKm+2Y86ygbTGPumTT6OxFs05ofdZaF2mt/Aod4Gbn08Ft1rji0Dj5rnskOTJ/Ksh46h
         grSctx3OYEInPYVgHySF7L4e07dQrbOr9zFXrB2sQp94f/HFr4W3BvAgqxwxEL15VUyA
         L3RMbb7eWARxuJi8PPnpSMUYFaLlkI2C12bVZq7BHKolOGiJ8oBSeTLIt4PY/d2gcUUL
         vOfQ==
X-Gm-Message-State: AOJu0YwnSfyKJQ5bjYeCm3XgMaCstweH4Ckai7ddGvNNMPEBAIlXlALl
	bKDp+CoH96H2D/az4VgQtFxYjE9hPukBzUA+esl2sg==
X-Google-Smtp-Source: AGHT+IF5b9jDbFhnYpUDNL+02jp8ieInItk/oKQM4ieg1jU6ykyregNmT1dlW9hSGnvb/SCDrM3NdjGxvBqr1MN3PGs=
X-Received: by 2002:a54:4e85:0:b0:3ae:5e0e:1671 with SMTP id
 c5-20020a544e85000000b003ae5e0e1671mr3410123oiy.4.1697578025510; Tue, 17 Oct
 2023 14:27:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-16-peter.griffin@linaro.org> <36dd4a24-00a0-4901-b621-b50384b1020c@roeck-us.net>
In-Reply-To: <36dd4a24-00a0-4901-b621-b50384b1020c@roeck-us.net>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 17 Oct 2023 22:26:53 +0100
Message-ID: <CADrjBPqFwu6qs=-Tx+AKOoUOFgJQUF7XjmzJu9unbeY1w_amwA@mail.gmail.com>
Subject: Re: [PATCH v3 15/20] watchdog: s3c2410_wdt: Add support for Google
 tensor SoCs
To: Guenter Roeck <linux@roeck-us.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, catalin.marinas@arm.com, will@kernel.org, 
	arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	cw00.choi@samsung.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Guenter,

Thanks for your review.

On Wed, 11 Oct 2023 at 22:20, Guenter Roeck <linux@roeck-us.net> wrote:
>
> On Wed, Oct 11, 2023 at 07:48:18PM +0100, Peter Griffin wrote:
> > This patch adds the compatibles and drvdata for the Google
> > gs101 & gs201 SoCs found in Pixel 6 and Pixel 7 phones. Similar
> > to Exynos850 it has two watchdog instances, one for each cluster
> > and has some control bits in PMU registers.
> >
> > The watchdog IP found in gs101 SoCs also supports a few
> > additional bits/features in the WTCON register which we add
> > support for and an additional register detailed below.
> >
> > dbgack-mask - Enables masking WDT interrupt and reset request
> > according to asserted DBGACK input
> >
> > windowed-mode - Enabled Windowed watchdog mode
> >
> > Windowed watchdog mode also has an additional register WTMINCNT.
> > If windowed watchdog is enabled and you reload WTCNT when the
> > value is greater than WTMINCNT, it prompts interrupt or reset
> > request as if the watchdog time has expired.
>
> Sorry, I don't understand what the code is doing here.

No need to be sorry, I appreciate the review feedback and questions :)

>
> It looks like it enables window mode unconditionally (?). If so,
> what is the impact ? Does it mean that any code requesting multiple
> keepalives in a row on the affected hardware will now cause an
> immediate reset ? If so, what is the rationale ?

Essentially yes, it stops continual keepalives being issued as a
keepalive is only considered valid at certain times in the windowed
cycle.

By way of example, if the watchdog interval is 30s and wtmincnt is set
to *half* of wtcnt, then we would have a "closed window" for the first
15s whereby issuing a keepalive will reset the system, and a "open
window" for the second half of the interval where issuing a keepalive
would reset wtcnt (and be considered a valid service of the watchdog).

The rationale is to stop the watchdog being re-armed "too much" and
it should enable detection of abnormally early as well as abnormally
late servicing of the watchdog.

> Alternatively, if it enables window mode and configures it such
> that WTMINCNT is always equal or larger than WTCNT, what is the
> point of enabling window mode in the first place ?

I looked again, and you are indeed correct that the code currently is
essentially turning windowed mode into a no-op. This appears to be a
bug in the downstream driver as well. Setting WTMINCNT to half of
WTCNT results in a 50% closed, 50% open window, and works on the
hardware as I would expect. I guess this is a good example of why
upstreaming your code, and public code review results in better quality
drivers.

Thanks,

Peter

