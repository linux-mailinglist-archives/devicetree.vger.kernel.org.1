Return-Path: <devicetree+bounces-23770-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EFAE080C478
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 10:24:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA3EA280AAC
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 09:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7915621349;
	Mon, 11 Dec 2023 09:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W/CiEJ6Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-xa2e.google.com (mail-vk1-xa2e.google.com [IPv6:2607:f8b0:4864:20::a2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4527E124
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:24:35 -0800 (PST)
Received: by mail-vk1-xa2e.google.com with SMTP id 71dfb90a1353d-4b2dc44d54aso962154e0c.3
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 01:24:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702286674; x=1702891474; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ioYDubYP3iKfHKMHSy5gra3AJi2J9HK+LXY7uK+G2MA=;
        b=W/CiEJ6Zrane0oOjE//4FGj+YzLPdrKB2GGEh0/4qccXwnJPHTc2FRUqAZ9euJ8Vzz
         PsymlVpHxUW0Jg+3GeXkEYPaIO9cN5k7ebupTeRd67qS8LRJ0ayHcYNUqncJqkP9NRgU
         c4RMyWxrbOBFiJV+e2Zo2IJZocsJgFB/ioo4DQhqoEEmEPmDU/twikraVG553CPIeQQa
         ZhWIvzOfZPEXnxbfRNfAKhvn8N5sJxwrCXDrZjtVenGE0DYFMj7gz2PmfcbCzcuz7uoZ
         zTNp/zaZgfl2ZrxAya4f1llynoJgQ7yAzDqiKaRRoBjJT4QxeaEi/Vguc+rHSYYbwHIA
         0JYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702286674; x=1702891474;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ioYDubYP3iKfHKMHSy5gra3AJi2J9HK+LXY7uK+G2MA=;
        b=ABMEO0XE1gWhO7EcxfmDdHsXUwJg78DQsdRdjSpu65ryEzsWCAH1yNNmz2q1N3Qh+M
         mKLuB+tmisGP8Gc7PO7qw6kif+5cLLgXwK9G/vlWlvPJ8B/YiubYFSADttzzqTmwcgM/
         lCGSueKHE1eoNvfeuEPHlc2xr6qR6hibcB+LA48yq7Wvtvkhhdsykh763/gJojUDPGUP
         zU/RB02r/oc+xutU0uQuKX3b2yx40rlAvd6RlFyYa1y3eO7kkRcih8CX0qerGAHzxnWY
         DUD2QeJOAhjL0mhPjGNBOAkJJkOLtzVGsCrje7/wGeliyDa+TkM6m5ObureKS4tKMLFm
         8E9g==
X-Gm-Message-State: AOJu0Ywb6emfiO6g3+9IDZksKj0EXtozEvuiVq/5MA8VKbMVDi8wQhRL
	5m5QBzlU23kxqugq6zNx2Yz8QFGjkjxzbxYgjHvgtw==
X-Google-Smtp-Source: AGHT+IFmqVBB1S6PPILmZng6sUl4gnE7B/ENtukMPc8F2U+pjJRlhmvt8Xvk382O4/Rc8AUY2sPYgeEL53IrvFfBTZs=
X-Received: by 2002:a05:6102:3e90:b0:464:82c0:7ed9 with SMTP id
 m16-20020a0561023e9000b0046482c07ed9mr2131634vsv.20.1702286674338; Mon, 11
 Dec 2023 01:24:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209233106.147416-1-peter.griffin@linaro.org>
 <20231209233106.147416-5-peter.griffin@linaro.org> <e70d516d-db24-4d79-bbd8-bb5b497a4391@linaro.org>
In-Reply-To: <e70d516d-db24-4d79-bbd8-bb5b497a4391@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 11 Dec 2023 09:24:22 +0000
Message-ID: <CADrjBPrhO42-7TY0iNuRcyWj_YUwpNMWROY_6waLoVtmp7uwrg@mail.gmail.com>
Subject: Re: [PATCH v6 04/20] dt-bindings: watchdog: Document Google gs101
 watchdog bindings
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	mturquette@baylibre.com, conor+dt@kernel.org, sboyd@kernel.org, 
	tomasz.figa@gmail.com, s.nawrocki@samsung.com, linus.walleij@linaro.org, 
	wim@linux-watchdog.org, linux@roeck-us.net, catalin.marinas@arm.com, 
	will@kernel.org, arnd@arndb.de, olof@lixom.net, gregkh@linuxfoundation.org, 
	jirislaby@kernel.org, cw00.choi@samsung.com, alim.akhtar@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Krzysztof,

On Sun, 10 Dec 2023 at 14:23, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 10/12/2023 00:30, Peter Griffin wrote:
> > Add the "google,gs101-wdt" compatible to the dt-schema documentation.
> >
> > gs101 SoC has two CPU clusters and each cluster has its own dedicated
> > watchdog timer (similar to exynos850 and exynosautov9 SoCs).
> >
> > These WDT instances are controlled using different bits in PMU
> > registers.
> >
> > Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../devicetree/bindings/watchdog/samsung-wdt.yaml         | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> > index 8fb6656ba0c2..57468c2c5ece 100644
> > --- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> > +++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
> > @@ -17,6 +17,7 @@ description: |+
> >  properties:
> >    compatible:
> >      enum:
> > +      - google,gs101-wdt                      # for Google gs101
>
> I think you did not rebase on linux-next. The hunk differs.

It was re-based off 'next-20231130'. I will re-base off the current
day's linux-next for v7.

Thanks,

Peter.

