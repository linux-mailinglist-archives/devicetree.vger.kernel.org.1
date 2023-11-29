Return-Path: <devicetree+bounces-20024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C2D7FD8DE
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E68C282DC7
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DBCB249FC;
	Wed, 29 Nov 2023 14:03:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ioc1jism"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 978EDB5
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:03:16 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5d2d0661a8dso2131517b3.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 06:03:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701266596; x=1701871396; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JLtZ8mDkPpZWh0qK6LF9/jlbCd5x7abg6/bo62M9z7s=;
        b=ioc1jismhBUIJuMLSqwqtPTlgYsvKaKpYRuM9ggYY2rFQ5p304IPvkI2FVeG6IW+dM
         uQR4iKC/eRi9G8XRzlI8K94EzuyPtdLopDmO8FnxNqdwQCYJpp9bxqJc3RROwO7d41pM
         mVdudxA99Lat82c7QuBD/fd/jT1GJVEm5mwWItwDcnccIfbLmz1irxLTGl1pRiuf+TUm
         l2h11xHos3eudS3Q8Q21WKcFzqqi3i0cdoFTvxM6R65I19+Boeblvs/ipLWbrrkczFoI
         LFTSnsW4PwVy9saffsqaOPGxUPEkpW0NOukbTcS8oYohW6OvbYCcn0WNGvc6gD6R6SR5
         nm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701266596; x=1701871396;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JLtZ8mDkPpZWh0qK6LF9/jlbCd5x7abg6/bo62M9z7s=;
        b=kufalaayuExu1+4WpFyUXy5xbUb6GLLkstKwgrG+VLce34VkJNziAM61keao6KwdUD
         PNyBB+1rCpD2gSeFOKhWlEL2hHXnV5AenaGU6G6+pVeMPyo/4sAU0Ea7PtAkxQhkremd
         Mc1a3Y+BPxO0ZZsQA/WPAHmEa1EybyLv2LwmSvb5xbAhTillk3se/Ya2U80GoyH9btzP
         IRKo8e1+gaGgJUaatA0b2U8XtdSiYWBe7JMFm1rKsDBEbesMWOVgjaokK4bmj1RlGPxP
         5LXEmj0iNUX6iXKsLlIy3pPv47l6hXsubJuo0OiNdDax8qAM+y5IvLBB5Cr3G6UFAH1m
         atiw==
X-Gm-Message-State: AOJu0Yy9OkETo6XnSN+we7SlKLVwxU5TNfP3Gwje4JJ4qMard7b4aRBL
	lCfiiZudNU5GAK/1GP3yzsAWJPoj5iYfuMns0hhB+w==
X-Google-Smtp-Source: AGHT+IF5qE0fSj5Cwf0MS+VLGouEXtLuBiPmt4xWTUyyWc7dhVJnanam1W6YNEoqWJAfYgNYIvTzT+8RJsy8rZC6o0E=
X-Received: by 2002:a25:947:0:b0:d9a:c61e:4466 with SMTP id
 u7-20020a250947000000b00d9ac61e4466mr17163062ybm.61.1701266595673; Wed, 29
 Nov 2023 06:03:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231118124252.14838-1-wahrenst@gmx.net> <20231118124252.14838-2-wahrenst@gmx.net>
 <ZVtHZWYl2skpn1Bg@smile.fi.intel.com> <9a9486bb-e737-4384-a581-76880b709758@gmx.net>
 <ZVtS4phUMmDD9ztz@smile.fi.intel.com> <CAMRc=MdpegfNrjWkeGSh8NhT_Go+q5MxueASxrLo18XBJaBsjA@mail.gmail.com>
In-Reply-To: <CAMRc=MdpegfNrjWkeGSh8NhT_Go+q5MxueASxrLo18XBJaBsjA@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 Nov 2023 15:03:04 +0100
Message-ID: <CACRpkdZuJqEA06NDneNFwjgj=u0Nm+yKCEd3VyJkMyZ1mLxQsA@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] leds: gpio: Add kernel log if devm_fwnode_gpiod_get
 fails
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Stefan Wahren <wahrenst@gmx.net>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Pavel Machek <pavel@ucw.cz>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Lee Jones <lee@kernel.org>, 
	bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-leds@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2023 at 11:53=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.pl=
> wrote:

> > > I cannot remember that i saw any of them on info level in my case of =
an
> > > already allocated pin (see patch 2).
> > >
> > > I'm open to place the log within gpiolib, if this a better place.
> >
> > I'm not sure, let's hear GPIO maintainers for that.
>
> Hard to tell which method is preferred among all the subsystems.
> Personally I'm more inclined towards letting drivers decide whether to
> emit an error message and only emit our own when an error cannot be
> propagated down the stack.
>
> Linus: Any thoughts?

I never managed to get it right so I can't give any good advice.

Usually I tend to think better one more error message than one too little.

Then again I'm a dmesg maximalist who just want it to scroll on forever
also with positive messages...

Yours,
Linus Walleij

