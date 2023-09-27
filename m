Return-Path: <devicetree+bounces-3872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC5857B04D8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:59:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5A83A28335E
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:59:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5069C28E3F;
	Wed, 27 Sep 2023 12:59:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07EAF28E1F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:59:38 +0000 (UTC)
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 457B8136;
	Wed, 27 Sep 2023 05:59:37 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-57ba5f05395so4250373eaf.1;
        Wed, 27 Sep 2023 05:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695819576; x=1696424376; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzrVgOmYsIRSuT5i2Iuq8x6qyRRfEUm7yS5SiLLhnY8=;
        b=H4ZLBxr20C+4/elTAATUIDlDpXNPgi1mM+i2VMiTUxXFMsKonxpAz5u5tMVm/m+AV1
         qg6htdB7ad/8nSUNYDA2pEDvXjyVuSFA1s2AyMp+874PMI4JAfdYy0jwPZ1O9Rwbyw4m
         FkqYOX5bVfCkG+HZPUI35IM+iHeDqZBjrNUiRyGkscVNCX9tYkESpKEFQD0/leALw1Y1
         Yvu+D12VsDbYuklFRWGF+TRCqaZ2kEVGLdMyZqYPe+Ceh7U4AsVMocuZl4fwJL5aEOmg
         Cf6f1WJU7fkfGwh8WcJfa39Nk4BYiHzKeEA4QwqX5qE3Dt4TRjKJh8M/A5mThdQ8pmqG
         cFaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695819576; x=1696424376;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzrVgOmYsIRSuT5i2Iuq8x6qyRRfEUm7yS5SiLLhnY8=;
        b=R2Iw5pJoLQY2PsAux1GVGlpuW6YJOBC7T+FTnbFYtox9eRw1ZEqGRAv4NNym3IF+pX
         ubL9o1FKeHCG/Q5sMdPoJGDySArco3aJ/1HPdYrGj+6PPupiwoYzbVHQ+nAbTeGtsTbd
         YoigMCob5eWyRlToAFIMzgS4btI7SUrLWxr7WEZw6XHZwJJ8Rep2QJjvyGbyP3ZBZ8Sa
         bKWaPbXnRjjPq8Zrf4n33JzVp27H0woeC7mpkEqSkftHyHNh8/Oqfew1wWMGHj0xMgL/
         sA4RYzs1rPTQcesYMQ9JH7rhagNkWVT6OYGE4P8qA6izbaomScWpm18MDqKoClsi+eUK
         dkLw==
X-Gm-Message-State: AOJu0YynuUyNqc1g0Uzd+J1eJkbchY/ppojuNl+n42d6jW0AkonI2JlY
	iMlQ+0sOoZGnBldeIywPAHbVdfT8bKHgjMeqkMU=
X-Google-Smtp-Source: AGHT+IGHxeX/0rvnZnBrYX4vca7q1HBpULYfkd+KQlXBJUdVjHqN4+84zPghil8ovZ908wCta4IvbyGEjIzTVsVa9us=
X-Received: by 2002:a4a:918f:0:b0:57b:63a6:306d with SMTP id
 d15-20020a4a918f000000b0057b63a6306dmr1932059ooh.6.1695819576407; Wed, 27 Sep
 2023 05:59:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAHp75VfRLv1=3M+a9pr=ZJgNwtBOrT9xi0UjDJMuY8uM9+ffSw@mail.gmail.com>
 <20230926200541.35787-1-blarson@amd.com>
In-Reply-To: <20230926200541.35787-1-blarson@amd.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 27 Sep 2023 15:59:00 +0300
Message-ID: <CAHp75Vd3Jj_giyWKhA2OyPrY5xKhyQ6We3qkz9-yDs15F+SFRg@mail.gmail.com>
Subject: Re: [PATCH v16 6/6] soc: amd: Add support for AMD Pensando SoC Controller
To: Brad Larson <blarson@amd.com>
Cc: adrian.hunter@intel.com, alcooperx@gmail.com, arnd@arndb.de, 
	brendan.higgins@linux.dev, briannorris@chromium.org, broonie@kernel.org, 
	catalin.marinas@arm.com, conor+dt@kernel.org, davidgow@google.com, 
	devicetree@vger.kernel.org, fancer.lancer@gmail.com, gerg@linux-m68k.org, 
	gsomlo@gmail.com, hal.feng@starfivetech.com, hasegawa-hitomi@fujitsu.com, 
	j.neuschaefer@gmx.net, joel@jms.id.au, kernel@esmil.dk, krzk@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, lee.jones@linaro.org, lee@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org, p.zabel@pengutronix.de, 
	rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org, 
	skhan@linuxfoundation.org, suravee.suthikulpanit@amd.com, 
	thomas.lendacky@amd.com, tonyhuang.sunplus@gmail.com, ulf.hansson@linaro.org, 
	vaishnav.a@ti.com, walker.chen@starfivetech.com, will@kernel.org, 
	zhuyinbo@loongson.cn
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 11:05=E2=80=AFPM Brad Larson <blarson@amd.com> wrot=
e:
> On Thu, Sep 21, 2023 at 18:19:57 +0300 Andy Shevchenko <andy.shevchenko@g=
mail.com> wrote:
> > On Thu, Sep 14, 2023 at 12:52=E2=80=AFAM Brad Larson <blarson@amd.com> =
wrote:

...

> >> +       u8 tx_buf[PENCTRL_MAX_MSG_LEN];
> >> +       u8 rx_buf[PENCTRL_MAX_MSG_LEN];
> >
> > These are not DMA-safe, is this a problem?
>
> It's not a problem, the peripheral is PIO FIFO driven only.

The question was about the SPI controller itself.
Also, depending on the driver it may or may not require DMA-safe
pointers. I believe with the new pump queue used in the SPI core all
drivers that are using it are DMA-safe and the caller needs no
additional care.

...

> >> +       msg =3D memdup_user((struct penctrl_spi_xfer *)arg, size);
> >> +       if (IS_ERR(msg)) {
> >> +               ret =3D PTR_ERR(msg);
> >> +               goto out_unlock;
> >> +       }
> >
> > Wondering if you can start using cleanup.h.
>
> Perhaps if recommended, I don't see DEFINE_(FREE,UNLOCK,...) being used.

It's guard()() and scoped_guard() for locks and __free() for the allocation=
s.

Plenty of uses in a few modules already (talking about Linux Next snapshot)=
.

...

> >> +       spi->chip_select =3D current_cs;
> >
> > spi_set_chipselect()
>
> Yes, I'll change to inline function spi_set_chipselect(spi, 0, current_cs=
).  The
> second arg must be legacy as its unused.

Actually, it's a placeholder for the future support of indexed CS'.

...

> >> +       u8 txbuf[3];
> >> +       u8 rxbuf[1];
> >
> > Not DMA-safe. Is it a problem?
>
> Not a problem, the peripheral is PIO only using FIFOs.

Same as somewhere above.

--=20
With Best Regards,
Andy Shevchenko

