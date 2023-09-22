Return-Path: <devicetree+bounces-2357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F917AA9C7
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 09:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F21D61C20832
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 07:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025CC17736;
	Fri, 22 Sep 2023 07:10:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA65154A7
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 07:10:48 +0000 (UTC)
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75C1D1B1;
	Fri, 22 Sep 2023 00:10:46 -0700 (PDT)
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-59c268676a9so21465087b3.0;
        Fri, 22 Sep 2023 00:10:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695366645; x=1695971445;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CNNKeiWdrHi1JK275O0aat5lgv03VJfdBdgbH4hvBr8=;
        b=lWmOjxNZOh/6L+J7pcCl2Xfcmwt248UDdKpifleWVvria0pgd2kA/dmNzxBSGGo0+Y
         cSYDyqIPSdCOZYLeqC8xIYTOi+/bQ7lURS6YwGL3OLueMN6Yc5laNpKwgdipRgxmkWMt
         0NxYbXtToxof/36qzN0R7dmzeEcVUmKja9Atc2B0Lkdzh8DNE+8+Onu/XvZg6jB7NmhV
         FM8/OtzgVddRD7Dva4i7PYgohhPOSX8deUmkhMoaZXKOOHV5kXkHwBFwqJ07rryUVF7e
         C69qU3HdlTjLYWlbv7+J3hypVOrwG7cVfV4oT7oUsTr6C4OOMsDo8uflF9LaryXUM3op
         ZsYQ==
X-Gm-Message-State: AOJu0YxOpuEBzbUfuIlGLjaNRDmqhXbqBEuLmmMQ6oFlpzj+auEQ6EeF
	7oIxjqxGcvxRc0Y6PpLPbymGTfc9ku6BgWTp
X-Google-Smtp-Source: AGHT+IFs1eLn569V1EXSutqipTlXJSEjyz+aZXREadv4detSI2yd0qNhbRTsqEXGPzqefVZvN9QX3Q==
X-Received: by 2002:a0d:df4e:0:b0:592:85ec:df15 with SMTP id i75-20020a0ddf4e000000b0059285ecdf15mr7034112ywe.11.1695366645221;
        Fri, 22 Sep 2023 00:10:45 -0700 (PDT)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id a184-20020a0df1c1000000b00577269ba9e9sm749544ywf.86.2023.09.22.00.10.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 00:10:44 -0700 (PDT)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-59c268676a9so21464857b3.0;
        Fri, 22 Sep 2023 00:10:44 -0700 (PDT)
X-Received: by 2002:a0d:c8c1:0:b0:59b:c6a4:15c7 with SMTP id
 k184-20020a0dc8c1000000b0059bc6a415c7mr7945698ywd.46.1695366644065; Fri, 22
 Sep 2023 00:10:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <363186079b4269891073f620e3e2353cf7d2559a.1669988238.git.geert+renesas@glider.be>
 <1503a3857107e3a4f34e0c7fb5dada39@walle.cc> <CAMuHMdXN+HJb=zGeG=3t=Pie9cVpnBLYuEb_qX6=oSxG8eTkAw@mail.gmail.com>
 <20221205163306.GB2012644-robh@kernel.org> <CAMuHMdUcrh26MNYuiqiC0_FMkeHtq1YnJrZKHEV_WQm5Dgzoaw@mail.gmail.com>
 <ee03d150-51cf-4e12-ae2c-9475a192fb6c@linaro.org> <CAMuHMdW_-0f8DOmEzYb28XABqU3oFL4KXf9M-qKVyyrE_Lo+jQ@mail.gmail.com>
 <d4d998cff934328f58cec767f93a59b5@walle.cc> <CAMuHMdUK=HvvjeTDefzX9sbY-vaRFVixcSvKVqDPgBpGVt2dQA@mail.gmail.com>
In-Reply-To: <CAMuHMdUK=HvvjeTDefzX9sbY-vaRFVixcSvKVqDPgBpGVt2dQA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 22 Sep 2023 09:10:31 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUKxJDPs3Ow8E-g2bLr7c7jREf5gSqWZ+o5aWbGj6uO=w@mail.gmail.com>
Message-ID: <CAMuHMdUKxJDPs3Ow8E-g2bLr7c7jREf5gSqWZ+o5aWbGj6uO=w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: jedec,spi-nor: Document support for
 more MT25QU parts
To: Michael Walle <michael@walle.cc>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
	Tudor Ambarus <tudor.ambarus@microchip.com>, Pratyush Yadav <pratyush@kernel.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	linux-mtd@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 7:01=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
> On Thu, Sep 21, 2023 at 6:01=E2=80=AFPM Michael Walle <michael@walle.cc> =
wrote:
> > >> We won't break compatibility with older DTBs if we use a list of
> > >> compatibles. First the vendor specific one which will use some quirk=
s,
> > >> and if that's not available, have as second the generic jedec,spi-no=
r
> > >> to
> > >> fallback to.
> > >
> > > Sure, you should use a list.
> > >
> > > But the current recommended practice is to not have a list,
> > > but just "jedec,spi-nor" (using a list with a new FLASH part name
> > > causes checkpatch and dtbs_check warnings). Hence if you follow that
> > > recommendation, you will run into compatibility issues with older DTB=
s
> > > when you discover the quirk later, and decide to add it to the list.
> >
> > The SPI NOR flashes should be auto discoverable. Why do you need a
> > compatible string? Quirks can be added to the flash_info database.
>
> This assumes you don't need the quirk before you can identify the part.
> I'm not sure that is always the case.

Reminder where this is apparently not the case:
https://lore.kernel.org/r/OS0PR01MB5922A4F16DE8923373AA5DD886F7A@OS0PR01MB5=
922.jpnprd01.prod.outlook.com/

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

