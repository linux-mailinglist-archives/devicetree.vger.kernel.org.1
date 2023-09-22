Return-Path: <devicetree+bounces-2577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F16C7AB6CB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:01:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 815F4B20A29
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:01:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D9AA41E4C;
	Fri, 22 Sep 2023 17:01:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4A7941E44
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 17:01:38 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE92A1
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:01:37 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99bf3f59905so296536066b.3
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:01:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695402096; x=1696006896; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=prIJYO4UCCa6Vt94U+NHB8APLB3E/mezXQCP+edywR0=;
        b=BEMsmtupvlAH0gzfsM4XZaqBFNVnsAPECW+HZ8ISoS3pIG/63qKRJVgby3915kuuwZ
         AX/HlaU28scNtw949VyZF2YHMmtdXRyACizRfq20UavdOLNF0HJiPM9ZMRm1SySq9Epc
         YjAFdfdAvWIRTiTRfLQi5RbuebW9Vm22LtDyo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695402096; x=1696006896;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=prIJYO4UCCa6Vt94U+NHB8APLB3E/mezXQCP+edywR0=;
        b=JZAn4NoQj+mPUSBXFpzLqy5Ga6b6M3jmSVVJfTv1qmIzsphfaA/mOyObdrh9IosDN8
         063iwBDgOuShngulk5iUdSCDi5mJ5X/hEDOA6/CMV76/U+ogChz5yBTxO1idaCz+WuDV
         xqWx1V7Dhhl90fgP0i/ZLMuBTBfht4d9lxa6x8tuxTXFLQF8Yq4zTxdJP4NF0sX35z8z
         P2Q1iwRI7faSkpUtC2Mdep/nTgF6O54FI4jsT2kCeEEzq9HnijBHIXoVhS6ULn65+Zbj
         cnLd+kMUq3ZkaZFHNVopjn0k8fBZp8tukoGXnxv1eChewd/HvqqRh/lqeZ+owkDHVzRF
         xUkA==
X-Gm-Message-State: AOJu0YyvBeLfwv/kQpDSJKb1QyYae4R2RBvT6P5ccYom3iYtUDXnAPbC
	K3U33qd7nAV6Rxa121eNK8fH8Ze2JW0knTyWCpiPhMO3PFXy1wmfPn91wA==
X-Google-Smtp-Source: AGHT+IHHv1gP/4pypmekIUolVP4Bg2MyLQnwNSeSTQqinVXlc3czJqPwmHasOlWBXAyzd5YREZkr1Q8LAEn78+XhqMI=
X-Received: by 2002:aa7:c7d3:0:b0:523:3fff:5ce2 with SMTP id
 o19-20020aa7c7d3000000b005233fff5ce2mr42790eds.41.1695402095589; Fri, 22 Sep
 2023 10:01:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
 <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
In-Reply-To: <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 22 Sep 2023 11:01:18 -0600
Message-ID: <CAPnjgZ1pfxaMG1n5yOBhiOhsNrRjck1K92U7Ga=+VTY_jjjrVg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, U-Boot Mailing List <u-boot@lists.denx.de>, 
	linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, 
	Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Fri, 22 Sept 2023 at 10:00, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Sep 21, 2023 at 1:45=E2=80=AFPM Simon Glass <sjg@chromium.org> wr=
ote:
> >
> > Binman[1] is a tool for creating firmware images. It allows you to
> > combine various binaries and place them in an output file.
> >
> > Binman uses a DT schema to describe an image, in enough detail that
> > it can be automatically built from component parts, disassembled,
> > replaced, listed, etc.
> >
> > Images are typically stored in flash, which is why this binding is
> > targeted at mtd. Previous discussion is at [2] [3].
> >
> > [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.html
> > [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromiu=
m.org/
> > [3] https://www.spinics.net/lists/devicetree/msg626149.html
>
> You missed:
>
> https://github.com/devicetree-org/dt-schema/pull/110
>
> where I said: We certainly shouldn't duplicate the existing partitions
> bindings. What's missing from them (I assume we're mostly talking
> about "fixed-partitions" which has been around forever I think (before
> me))?
>
> To repeat, unless there is some reason binman partitions conflict with
> fixed-partitions, you need to start there and extend it. From what's
> posted here, it neither conflicts nor needs extending.

I think at this point I am just hopelessly confused. Have you taken a
look at the binman schema? [1]

I saw this file, which seems to extend a partition.

Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partitions.ya=
ml

I was assuming that I should create a top-level compatible =3D "binman"
node, with subnodes like compatible =3D "binman,bl31-atf", for example.
I should use the compatible string to indicate the contents, right?

Re extending, what is the minimum I can do? Are you looking for
something like a "compress" property that indicates that the entry is
compressed?

I'm really just a bit lost.

>
> I did a bit more research. "fixed-partitions" as a compatible has
> "only" been around since 2015. Prior to that, it was implicit with
> just partition nodes with addresses (i.e. reg) and that dates back to
> 2007. Looks like u-boot only supports the newer form and since 2021.

OK

Regards,
Simon

[1] https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#ima=
ge-description-format

