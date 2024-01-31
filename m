Return-Path: <devicetree+bounces-37106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D7AC843B3E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 10:38:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E599CB2443C
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:37:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A1967E8E;
	Wed, 31 Jan 2024 09:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="xBkCE3xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA3567E97
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 09:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706693863; cv=none; b=ZksmNzqhzwYvb0SdEdYQGjlOCFdov58Xh++qE4taYxKYwXjlRsiIFJfKBFJZv21mdGsI5GTOWp8ciQHwxK0+4eTTT4ayJvORTBE0LWzZAQzHJ6U8Z10Crh8Ab5XmukzKaHoSBLlfXU8P7TSUhwSTrOzjsL+lGNXMV6kiFd2/rns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706693863; c=relaxed/simple;
	bh=6g/9wBTl6BPCWec9Q4PfBb1jAfx/QsrhO21o+nVjTVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MixWtmh2xiYBYkIp4uB7LgoenkSl0xahwKTS0rIaUp1fDaDvh+4mT5OJQKLyfP+rIAPBhcSsRM5zu9jcQjl9+GcT5xzZAlTasx8ttnOk9U67Xwjl+0MZQbZmHP1Wu68wRek7czliuUgj3hecdi+WFqZpFXm/o2HSqvrS/SqV/dw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=xBkCE3xf; arc=none smtp.client-ip=209.85.221.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-4bd87fd64c1so1483685e0c.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 01:37:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706693861; x=1707298661; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DmHeh0AnnU8R6/8VaEZIi+vqbQkcVNAn6pqy7RHvRQI=;
        b=xBkCE3xfgEp8qPGMcW2d28LiFylg+yIZOldTOmpHe5lUFK6l5+DI497ZIMUvKHvR3j
         5vOhoZK9QoLFDxfTn4kYxFh/FX3o8o25S/D6Sv8wZeP18QQPnyWKphT1Bh7/ezCzu4Wr
         s95RpLWANK4vYXBZrbepdIn0wldP0HdC2BxO0HdJ+8ZawP2n58lqMjREM5faykWBjJ45
         EtBMY2xpQgjmRDSFw9hHxeb8YH3+3DWp7ciglNRhkeikLvefwq2ngMcoIKg2ocnq/ql2
         RL8HFjKkqdVJR+bPWl1Add/iTs6kyaHX4qQGGvRX+gUYzPDz0BBz9JoiBd75cdYvLfG+
         ZdBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706693861; x=1707298661;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DmHeh0AnnU8R6/8VaEZIi+vqbQkcVNAn6pqy7RHvRQI=;
        b=mtAMd6ZZ+Xu0wnGgVDqifBepszfuGwg3Jg7XHFcpRBCjwZQR4kqZruZIKfYOLpMU7I
         2jdjru/tnlwQlvP/vtYI6Rqff7R1ylDabqXnttMUvoMYuk2WsiWLtGIFFm0V0FCnw8w2
         X1jmIWOGHMgnRF34DKwhRF1qzE/k3Men3L3LjHDI/3d6sOVhCJwlMdT/CK2J2ETp9MrD
         msPb2aBASMlFinWya3woIMXOrQL6bAVulAxDpV6MXWSruskZ1EUSLL2e1cQ9cnIq0npy
         ItOI4RfO8ScjAwHEe+XwZA1BjR/o6BJ6T/0f785tJMUzH+KCK/tk6lNKyaT5Y+6dtVng
         FJnw==
X-Gm-Message-State: AOJu0YxyS1+E1bklfGv0lFtI2jT/CxJpUq8htXVx7Lr85n6gXTehyHnB
	dKQnyx0j8HA4G2YybMBYPsH2xxodykQJPdhC4ohFWMmNz4jgXk4JTXItXs7/ZvEw+ep7YaksD9A
	uAcoJmlSR1D8qL6Ct3e8jDs+hbg4/b/Iyn/vW7g==
X-Google-Smtp-Source: AGHT+IGYiHwBdTOPDnoFpMk4wG2qn9o70lLB7qc/tMqoiGXQQ1hR03EibuQ3mFexsetD4ArcCOazY4KDA9aeRUgU3NE=
X-Received: by 2002:a05:6122:4693:b0:4bf:dbbd:37aa with SMTP id
 di19-20020a056122469300b004bfdbbd37aamr937831vkb.15.1706693860441; Wed, 31
 Jan 2024 01:37:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240129115216.96479-1-krzysztof.kozlowski@linaro.org>
 <20240129115216.96479-5-krzysztof.kozlowski@linaro.org> <CACRpkdYf4HUaV-Pjr81WjLbzy9zdAnyFWs9gPayPC6-3OjHQwA@mail.gmail.com>
In-Reply-To: <CACRpkdYf4HUaV-Pjr81WjLbzy9zdAnyFWs9gPayPC6-3OjHQwA@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 31 Jan 2024 10:37:29 +0100
Message-ID: <CAMRc=Mc1SGLeUOWmKg=fvCdM+RR6FSu2QkFuR17s7L99eRMGug@mail.gmail.com>
Subject: Re: [PATCH v6 4/6] reset: Instantiate reset GPIO controller for
 shared reset-gpios
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Banajit Goswami <bgoswami@quicinc.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org, 
	linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Chris Packham <chris.packham@alliedtelesis.co.nz>, 
	Sean Anderson <sean.anderson@seco.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 31, 2024 at 9:57=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> Hi Krzysztof,
>
> something is odd with the addresses on this patch, because neither GPIO
> maintainer is on CC nor linux-gpio@vger, and it's such a GPIO-related
> patch. We only saw it through side effects making <linux/gpio/driver.h>
> optional, as required by this patch.
>
> Please also CC Geert Uytterhoeven, the author of the GPIO aggregator.
>
> i.e. this:
> > 2. !GPIOLIB stub:
> >    https://lore.kernel.org/all/20240125081601.118051-3-krzysztof.kozlow=
ski@linaro.org/
>
> On Mon, Jan 29, 2024 at 12:53=E2=80=AFPM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>
> > Devices sharing a reset GPIO could use the reset framework for
> > coordinated handling of that shared GPIO line.  We have several cases o=
f
> > such needs, at least for Devicetree-based platforms.
> >
> > If Devicetree-based device requests a reset line, while "resets"
> > Devicetree property is missing but there is a "reset-gpios" one,
> > instantiate a new "reset-gpio" platform device which will handle such
> > reset line.  This allows seamless handling of such shared reset-gpios
> > without need of changing Devicetree binding [1].
> >
> > To avoid creating multiple "reset-gpio" platform devices, store the
> > Devicetree "reset-gpios" GPIO specifiers used for new devices on a
> > linked list.  Later such Devicetree GPIO specifier (phandle to GPIO
> > controller, GPIO number and GPIO flags) is used to check if reset
> > controller for given GPIO was already registered.
> >
> > If two devices have conflicting "reset-gpios" property, e.g. with
> > different ACTIVE_xxx flags, this would allow to spawn two separate
> > "reset-gpio" devices, where the second would fail probing on busy GPIO
> > request.
> >
> > Link: https://lore.kernel.org/all/YXi5CUCEi7YmNxXM@robh.at.kernel.org/ =
[1]
> > Cc: Bartosz Golaszewski <brgl@bgdev.pl>
> > Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
> > Cc: Sean Anderson <sean.anderson@seco.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> (...)
>
> In my naive view, this implements the following:
>
> reset -> virtual "gpio" -> many physical gpios[0..n]

This is a different problem: it supports many users enabling the same
GPIO (in Krzysztof's patch it's one but could be more if needed) but -
unlike the broken NONEXCLUSIVE GPIOs in GPIOLIB - it counts the number
of users and doesn't disable the GPIO for as long as there's at least
one.

Bart

>
> So if there was already a way in the kernel to map one GPIO to
> many GPIOs, the framework could just use that with a simple
> single GPIO?
>
> See the bindings in:
> Documentation/devicetree/bindings/gpio/gpio-delay.yaml
>
> This is handled by drivers/gpio/gpio-aggregator.c.
>
> This supports a 1-to-1 map: one GPIO in, one GPIO out, same offset.
> So if that is extended to support 1-to-many, this problem is solved.
>
> Proposed solution: add a single boolean property such as
> aggregate-all-gpios; to the gpio-delay node, making it provide
> one single gpio at offset 0 on the consumer side, and refuse any
> more consumers.
>
> This will also solve the problem with induced delays on
> some GPIO lines as I can see was discussed in the bindings,
> the gpio aggregator already supports that, but it would work
> fine with a delay being zero as well.
>
> This avoids all the hackery with driver stubs etc as well.
>
> Yours,
> Linus Walleij

