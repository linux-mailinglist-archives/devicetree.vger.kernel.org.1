Return-Path: <devicetree+bounces-2582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D101C7AB8E5
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 20:12:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 641BB282246
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 18:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57E5B45F4A;
	Fri, 22 Sep 2023 18:12:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6044483
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 18:12:34 +0000 (UTC)
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39355C1
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:12:33 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-530a6cbbb47so3097071a12.0
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 11:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695406351; x=1696011151; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EKwr2XjhB87XY1eJcNFIWSnRqkfq4gGTTTV7rcfgoQg=;
        b=LpsF6LYmtOp2WOyI/N+C7UpruCLsKErGUCoYr/byu2GVQFTvkWa12O87SzGWUdrriv
         E1dDBCZZmi53zQ8onyp3z8F64JeIyM4ZuFxr5twJ533R7qfT0NjOytWq9xBxsdkrrSzH
         rdK+6w9AKDCyEojuX6muvRmArZB/wZJSRKTGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695406351; x=1696011151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EKwr2XjhB87XY1eJcNFIWSnRqkfq4gGTTTV7rcfgoQg=;
        b=TRC71d3hYdxG+SaJlqBm5gFxS8eMZShyx4pHbj+m/0ZMkkvGtXcjyrxrRJ+XpGZfpi
         EFTT91wM7CYnyWJiEL/frt3I3zb0wdTE608QMKVrlaSRzVzCH5GiP7aIZxju9s6w3ipy
         s/Z92dzf7r3OwzGBMF+yWwmWOs6vPvQq6onuKpxXjbyEABc8sb+CKv6eAPoP6ThUoYc5
         UohBQ9g6bxOuQOfrM4+Tdnxi9V6KArQsCZpEitcwk6rF9OjkuS1wF71PJoAfPvXbSrDk
         Pg4kxIr8MiOMwgT9Kdqhwp41Rwao5QCdBc1xGG87I8JAhBf7ftwq0hn1FbY9ZxvafXzS
         L70g==
X-Gm-Message-State: AOJu0YwXJziggWoN8Va/AI+NYLLg2VEqa1128kMI5VmS+fM+v3qU54vR
	IFDJ5SmLvkRkm/HcTmtKpDToY03Fq7D8ap+2G3aO1kPE6ox9vZmrCnw=
X-Google-Smtp-Source: AGHT+IEhGuF05gZ1ykRj7c0nOIVSMf034rK4oo9lAlBZB3RlBbcD+8isF0isGviqL5G0fBM/1IdwSOKb/LE2mWFyyHQ=
X-Received: by 2002:aa7:dc17:0:b0:533:926:da9d with SMTP id
 b23-20020aa7dc17000000b005330926da9dmr220253edu.18.1695406351489; Fri, 22 Sep
 2023 11:12:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
 <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
 <CAPnjgZ1pfxaMG1n5yOBhiOhsNrRjck1K92U7Ga=+VTY_jjjrVg@mail.gmail.com> <20230922174649.GA3320366-robh@kernel.org>
In-Reply-To: <20230922174649.GA3320366-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 22 Sep 2023 12:12:20 -0600
Message-ID: <CAPnjgZ3ojfAv=BHqOhM=-NnYqCm81Ny=PsGKiNphKTmw++fk9w@mail.gmail.com>
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
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Fri, 22 Sept 2023 at 11:46, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Sep 22, 2023 at 11:01:18AM -0600, Simon Glass wrote:
> > Hi Rob,
> >
> > On Fri, 22 Sept 2023 at 10:00, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Sep 21, 2023 at 1:45=E2=80=AFPM Simon Glass <sjg@chromium.org=
> wrote:
> > > >
> > > > Binman[1] is a tool for creating firmware images. It allows you to
> > > > combine various binaries and place them in an output file.
> > > >
> > > > Binman uses a DT schema to describe an image, in enough detail that
> > > > it can be automatically built from component parts, disassembled,
> > > > replaced, listed, etc.
> > > >
> > > > Images are typically stored in flash, which is why this binding is
> > > > targeted at mtd. Previous discussion is at [2] [3].
> > > >
> > > > [1] https://u-boot.readthedocs.io/en/stable/develop/package/binman.=
html
> > > > [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chr=
omium.org/
> > > > [3] https://www.spinics.net/lists/devicetree/msg626149.html
> > >
> > > You missed:
> > >
> > > https://github.com/devicetree-org/dt-schema/pull/110
> > >
> > > where I said: We certainly shouldn't duplicate the existing partition=
s
> > > bindings. What's missing from them (I assume we're mostly talking
> > > about "fixed-partitions" which has been around forever I think (befor=
e
> > > me))?
> > >
> > > To repeat, unless there is some reason binman partitions conflict wit=
h
> > > fixed-partitions, you need to start there and extend it. From what's
> > > posted here, it neither conflicts nor needs extending.
> >
> > I think at this point I am just hopelessly confused. Have you taken a
> > look at the binman schema? [1]
>
> Why do I need to? That's used for some tool and has nothing to do with a
> device's DTB. However, I thought somewhere in this discussion you showed
> it under a flash device node.

Yes, that is the intent (under a flash node).

> Then I care because then it overlaps with
> what we already have for partitions. If I misunderstood that, then just
> put your schema with your tool. Only users of the tool should care about
> the tool's schema.

OK. I believe that binman will fit into both camps, since its input is
not necessarily fully formed. E.g. if you don't specify the offset of
an entry, then it will be packed automatically. But the output is
fully formed, in that Binman now knows the offset so can write it to
the DT.

>
> >
> > I saw this file, which seems to extend a partition.
> >
> > Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-partition=
s.yaml
>
> IIRC, that's a different type where partition locations are stored in
> the flash, so we don't need location and size in DT.

OK.

>
> >
> > I was assuming that I should create a top-level compatible =3D "binman"
> > node, with subnodes like compatible =3D "binman,bl31-atf", for example.
> > I should use the compatible string to indicate the contents, right?
>
> Yes for subnodes, and we already have some somewhat standard ones for
> "u-boot" and "u-boot-env". Though historically, "label" was used.

Binman has common properties for all entries, including "compress"
which sets the compression algorithm.

So perhaps I should start by defining a new binman,bl31-atf which has
common properties from an "binman,entry" definition?

>
> Top-level, meaning the root of the DT? That sound like just something
> for the tool, so I don't care, but it doesn't belong in the DTB.

Sorry, I mean 'top-level' with respect to the partitions.

>
> >
> > Re extending, what is the minimum I can do? Are you looking for
> > something like a "compress" property that indicates that the entry is
> > compressed?
> >
> > I'm really just a bit lost.
>
> Me too.

Regards,
Simon

