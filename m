Return-Path: <devicetree+bounces-223633-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DE36CBB8EE3
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 16:33:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B37B189EF4E
	for <lists+devicetree@lfdr.de>; Sat,  4 Oct 2025 14:33:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9DE20E023;
	Sat,  4 Oct 2025 14:33:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3B61F91E3
	for <devicetree@vger.kernel.org>; Sat,  4 Oct 2025 14:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759588401; cv=none; b=a4HMRyFUhegJjgR8IV04Lu2nWch7zMCaSVtU254XnnJW4G7RNphiLNJSjsqJDIZGU4ANG7Nm1kgQ56f8LWEfqkrJ9IZzn+ih53tY1TWEUZIZ11ENq/dsFvLT8bE3FM4TBmqVzqXYcgcQdTBL82pUQrfGJnnTUZLfyMpZ9SXcI7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759588401; c=relaxed/simple;
	bh=0J55Y2HmqgcnbS+RXB3tiJFIIySx+Rr5EZpIa0gAB24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OMu72EDVuGoTFUUc8fyUHCoOv9ftiJK+3A5PGj4gHbl3LsWAJ3xy4EnU36Bh1pq0/UUnRVi3gXHvt0i3HljDyHLzUXp6ubO74YzEeryJOM9LWzfCNscFgkpUTqdK9lBRtc8RmKknBWs74JE42wrle5AcS0RWXjorb6ZFG0HQgxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54a79cadd1fso2251495e0c.3
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 07:33:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759588397; x=1760193197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xthzmHjkhKJUrri8Wf1E3AifPP/ZxbkaJDpboT1dzM4=;
        b=Om6Y9ZZVWnasw/ObG0MjzegkNma7osEetG/JJtR8MBo22iAR62Kx8AQmJj3AOTPZrX
         j0MsD7k3koiY9vNq+der8g3bkJgJbH4o7WJ8beo8Dry6U3yje84586Yyn7mFxRR0Yv+i
         bSdi3OOoxBYn4/YkQ2so9wkmukMvcNVtNl5dz53rCgrEbmV2xTHmNvsqiP61pRyipnwB
         +YqT201/YjKJiGWM7k0hVL1/KtVY1Y/aNjfHK6q1IwVU5r+zTIVkML7V8cN2bS0A3PV1
         J9W1WwLq/1zuS/FqcTI0BnSvgUU6Gz0GRaM7UbHMq47pEeb31CKL9Le2phZMxbHBZMoS
         G2Bw==
X-Forwarded-Encrypted: i=1; AJvYcCX9ZIQ8oUqpfk4xsZC97BqPge4iwEErZjUsUY6h/LEBhVsUb00tIfkB5GPuYXwOCJmqO05wE0rMeXWp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9VGshEQTf6+z7sf28YrfL16PdacH29S4URv26ew8k/h9VnfBr
	PX9UGvml0GJfWO+2KXQd6f3NwIRpov8RcNzA6WDtvdHeHvcYbkpv26vh0TpKBfHl
X-Gm-Gg: ASbGncvZAiDJfdPL4uahm8tBBiPlBaXCmrGel4rV7lAfYWXMm+e5ID4Mb+Ymz/vm4EL
	EHMvoBRcFIRR2k56bZvM31009z8FXbshKCwncZcfnKH2Zqz+7Bjo7JqwZV0TN+zNek38qpY/f0d
	iszZRh0Hj/66ym3q1Iy7s6kFy6BURpX89iXpgQqnQvdQzwtVnq7O9B+c+QYJiShGsF0HLa0XTAO
	TtZFTozqWjED3UsKC1irTSaovZwmlQEA9GjYpDhdq3lFoiFpfiLvLJ3Ipy9RwkBQshr+12MUyxW
	5v7qhCpD/ZPQ/laxiLG42Sz8B1mCJVqsApoXXkzasLjWsWZ5s6nw/BsYkNcU6wGYnkfCtvdaGyx
	G1uCFCxojzVuXdzWKaxTUE8fC8zxGJ7Z008tyuCOJqV9JkldXqlA7S0wMwEZDm2hn6H8rdIDumH
	BgaSttyTKLou8GC0cySEY=
X-Google-Smtp-Source: AGHT+IGaxsAdzvZDS5KCcJlz5P3ffKSy0nkUzwMEoBB4Pws0ItW5kjzx5T/jPp84uvZQoECzCfp5aQ==
X-Received: by 2002:a05:6122:514:b0:54b:bc60:93f8 with SMTP id 71dfb90a1353d-5524ea2517fmr2556877e0c.9.1759588397383;
        Sat, 04 Oct 2025 07:33:17 -0700 (PDT)
Received: from mail-ua1-f52.google.com (mail-ua1-f52.google.com. [209.85.222.52])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5523cf63c6asm1865051e0c.19.2025.10.04.07.33.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 04 Oct 2025 07:33:17 -0700 (PDT)
Received: by mail-ua1-f52.google.com with SMTP id a1e0cc1a2514c-8e8163d94bbso2399303241.3
        for <devicetree@vger.kernel.org>; Sat, 04 Oct 2025 07:33:17 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUso3R53BXUiiTVoXaTAWd3fFHyJUhy/0RdSvK3WSK6pxaOocYG3yswG8vp8kW3Q8sQ38k0ZYjAUHP0@vger.kernel.org
X-Received: by 2002:a05:6102:291f:b0:5a2:668d:f20b with SMTP id
 ada2fe7eead31-5d41d0dd17bmr3054407137.16.1759588396956; Sat, 04 Oct 2025
 07:33:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001122326.4024391-1-cosmin-gabriel.tanislav.xa@renesas.com>
 <20251001122326.4024391-4-cosmin-gabriel.tanislav.xa@renesas.com> <20251004143901.505ec386@jic23-huawei>
In-Reply-To: <20251004143901.505ec386@jic23-huawei>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 4 Oct 2025 16:33:05 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+V60pZSRmu6SjeBNyi_0+Un5pXjWDLDDBt6UbYfTmeQ@mail.gmail.com>
X-Gm-Features: AS18NWBkap4dmgI1LydXdtTPg0XGaFgAjq5oqq5cMsJWqAup1M73smsgPeqmT7I
Message-ID: <CAMuHMdV+V60pZSRmu6SjeBNyi_0+Un5pXjWDLDDBt6UbYfTmeQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] iio: adc: add RZ/T2H / RZ/N2H ADC driver
To: Jonathan Cameron <jic23@kernel.org>
Cc: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-iio@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 4 Oct 2025 at 15:39, Jonathan Cameron <jic23@kernel.org> wrote:
>
> On Wed,  1 Oct 2025 15:23:10 +0300
> Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com> wrote:
>
> > Add support for the A/D 12-Bit successive approximation converters foun=
d
> > in the Renesas RZ/T2H (R9A09G077) and RZ/N2H (R9A09G087) SoCs.
> >
> > RZ/T2H has two ADCs with 4 channels and one with 6.
> > RZ/N2H has two ADCs with 4 channels and one with 15.
> >
> > Conversions can be performed in single or continuous mode. Result of th=
e
> > conversion is stored in a 16-bit data register corresponding to each
> > channel.
> >
> > The conversions can be started by a software trigger, a synchronous
> > trigger (from MTU or from ELC) or an asynchronous external trigger (fro=
m
> > ADTRGn# pin).
> >
> > Only single mode with software trigger is supported for now.
> >
> > Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
> > Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>
> Hi Cosmin
>
> A few really minor comments.
>
> I might have ignored these or tweaked whilst applying but looks
> like you'll probably be doing a v4 anyway so I thought I'd mention them.
>
> Thanks,
>
> Jonathan
>
>
> > diff --git a/drivers/iio/adc/rzt2h_adc.c b/drivers/iio/adc/rzt2h_adc.c
> > new file mode 100644
> > index 000000000000..51d1852d814d
> > --- /dev/null
> > +++ b/drivers/iio/adc/rzt2h_adc.c
> > @@ -0,0 +1,309 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <linux/bitfield.h>
> > +#include <linux/cleanup.h>
> > +#include <linux/completion.h>
> > +#include <linux/delay.h>
> > +#include <linux/iio/adc-helpers.h>
> > +#include <linux/iio/iio.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/property.h>
> > +
> > +#define RZT2H_NAME                   "rzt2h-adc"
>
> I'm not a huge fan of defines like this as there is no inherent reason th=
e two
> places it is used should take the same value. If you feel it's really jus=
tified
> then I don't mind too much though.

I am not a fan either, as using a define in the initialization of
platform_driver.driver.name means I have to do another grep to
find the actual name.

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

