Return-Path: <devicetree+bounces-4337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A97A37B20FC
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:20:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4980C282EC0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 15:20:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC4A4E298;
	Thu, 28 Sep 2023 15:20:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1404E291
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 15:20:20 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45729B7
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:20:18 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-533cbbd0153so12874710a12.0
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695914416; x=1696519216; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NhGCCrTPz3qD815DrUTz3QFvoilWcLj84jeEgBAbn4g=;
        b=RQ2FPrFYjacQNvGdOlD75otTCmHvrF1Ybu5BwIbkEwy/0WPLPBJ+0J62RXmfkdETIx
         gBZOUDhhBxWjalQacJipdaRmkDvXzbX3Ir/mBHVdRIvSh/6zZxe+dhu4O4jl23Dlri1z
         9sAC0gnWrxGiVRpATaZf4sy/SS4qIQdILJlJM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695914416; x=1696519216;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NhGCCrTPz3qD815DrUTz3QFvoilWcLj84jeEgBAbn4g=;
        b=PTooe17mXAKZm6radzqIxyFTYY3sQdbHTWAyYv/eo7PlkB+lcjbhi1SGQ2SuzXV7Gh
         jDg4CzAYvIxJGNRUv99QbK2JfJJQEFYOaA/M1T+wBxq2DNY3zzX7dn9H/IHSLlvMLpqJ
         zyYBdxU6VX9UYKZLrqJ4kMwKO1oiHoC+vjfABwbe9chM1hY84oyXdxDqUfgFsIAFShC/
         dH/XYhF3hSOyRKYENSOlJ7lFhkKbICMOu/OFkkQGSe17c3Ctu3xTtlFR3Lx9epzZ4pAm
         qf9iDbeMbI3beDo7dP14+v7ZTSBEJcWcShPdIOsoYfaiLsxwidrmvjfOftHy47/YUYZh
         sGUA==
X-Gm-Message-State: AOJu0YzZtoFYFTKcoi4SJdOYWcrPwuVzqHSI/v8uoDQEaXGidHRU6h6h
	1wYZs3ju/WRkVmHTaJRwHHLsylq67S9w3ROlTJUElA==
X-Google-Smtp-Source: AGHT+IGCrTzWYKPGz8+625kDs0eQi51Ow82elgipH2Qu5W+6QmLi6g4eOr361Yni2q+KJAEShzSViau1oDvFTplMmIU=
X-Received: by 2002:aa7:c1ca:0:b0:533:926:da9d with SMTP id
 d10-20020aa7c1ca000000b005330926da9dmr1505968edp.18.1695914416372; Thu, 28
 Sep 2023 08:20:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
 <CAL_Jsq+WuYDU+yY98opTHr1PT-J9mFYJQBjVMnk+FSWLDUO33w@mail.gmail.com>
 <CAPnjgZ1pfxaMG1n5yOBhiOhsNrRjck1K92U7Ga=+VTY_jjjrVg@mail.gmail.com>
 <20230922174649.GA3320366-robh@kernel.org> <CAPnjgZ3ojfAv=BHqOhM=-NnYqCm81Ny=PsGKiNphKTmw++fk9w@mail.gmail.com>
 <CAL_JsqJqvyP=c93DHDO8A5RXv7Lz_Z7eEHSbJQ=JCo+qPVhSfg@mail.gmail.com>
 <CAPnjgZ3BnD9aX3cNNPiGRKTOj+YeurHCLv6K0TRFhAtY21Qufw@mail.gmail.com>
 <20230925092122.0b615f25@xps-13> <CAPnjgZ0Z5J_33HuQF-5XgDFmZim0nHHzvZJOOZobWw_cOJd=9g@mail.gmail.com>
 <20230925164736.5efbf4c0@xps-13> <CAPnjgZ3YCQHJ-eXuX8rYx2Qb6QEL+XviFmXYTON6M-sGPWSBBg@mail.gmail.com>
 <20230925172447.43dcef88@xps-13> <CAPnjgZ20c9FsYVjSrQ9qbFy9Y67BqDP2zxMyATx===PFhO69Ew@mail.gmail.com>
 <CAL_JsqJfjHqtTB2qfLmNxmQtn1rZewNyNe+Knu_Z4UCdPoPhSQ@mail.gmail.com>
 <CAPnjgZ1npHPpwPmw2f4=E3U5=RH0m4R+W_MZ7+oXdmDF=EeUjg@mail.gmail.com>
 <20230926094815.5802e184@xps-13> <CAL_JsqL_8bhHkHOFL8a8=g1dYL4OY8hGuNDyc0Jz22rEuJzXtQ@mail.gmail.com>
 <CAPnjgZ3TJLaRzv_cXyLdpRBtc2-FBYQ=gk-_MhEDH47HvO71FQ@mail.gmail.com>
In-Reply-To: <CAPnjgZ3TJLaRzv_cXyLdpRBtc2-FBYQ=gk-_MhEDH47HvO71FQ@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Thu, 28 Sep 2023 09:20:05 -0600
Message-ID: <CAPnjgZ2eUcgevpS7Ak5p=7bhm0aHW3taLO8Fq_EcpDDQidJFVA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Rob Herring <robh@kernel.org>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>, devicetree@vger.kernel.org, 
	U-Boot Mailing List <u-boot@lists.denx.de>, linux-mtd@lists.infradead.org, 
	Tom Rini <trini@konsulko.com>, Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-9.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi again Rob,

On Wed, 27 Sept 2023 at 10:43, Simon Glass <sjg@chromium.org> wrote:
>
> Hi Rob,
>
> On Tue, 26 Sept 2023 at 11:29, Rob Herring <robh@kernel.org> wrote:
> >
> > On Tue, Sep 26, 2023 at 2:48=E2=80=AFAM Miquel Raynal <miquel.raynal@bo=
otlin.com> wrote:
> > >
> > > Hello,
> > >
> > > > > > > > These are firmware bindings, as indicated, but I
> > > > > > > > took them out of the /firmware node since that is for a dif=
ferent
> > > > > > > > purpose. Rob suggested that partitions was a good place. We=
 have fwupd
> > > > > > > > using DT to hold the firmware-update information, so I expe=
ct it will
> > > > > > > > move to use these bindings too.
> > > > > > >
> > > > > > > I would definitely use fixed partitions as that's what you ne=
ed then:
> > > > > > > registering where everything starts and ends. If you have "in=
-band"
> > > > > > > meta data you might require a compatible, but I don't think y=
ou
> > > > > > > do, in this case you should probably carry the content throug=
h a label
> > > > > > > (which will become the partition name) and we can discuss add=
itional
> > > > > > > properties if needed.
> > > > > >
> > > > > > I believe I am going to need a compatible string at the 'partit=
ions'
> > > > > > level to indicate that this is the binman scheme. But we can le=
ave
> > > > > > that until later.
> > > > >
> > > > > Perhaps:
> > > > >
> > > > > compatible =3D "binman", "fixed-partitions";
> > > > >
> > > > > Though I don't understand why binman couldn't just understand wha=
t
> > > > > "fixed-partitions" means rather than "binman".
> > > >
> > > > Well so long as we don't add any binman things in here, you are rig=
ht.
> > > >
> > > > But the eventual goal is parity with current Binman functionality,
> > > > which writes the entire (augmented) description to the DT, allowing
> > > > tools to rebuild / repack / replace pieces later, maintaining the s=
ame
> > > > alignment constraints, etc. I am assuming that properties like 'ali=
gn
> > > > =3D <16>' would not fit with fixed-partitions.
> > >
> > > I am personally not bothered by this kind of properties. But if we pl=
an
> > > on adding too much properties, I will advise to indeed use another na=
me
> > > than fixed-partitions (or add the "binman" secondary compatible)
> > > otherwise it's gonna be hard to support in the code while still
> > > restraining as much as we can the other partition schema.
> >
> > Agreed. It's a trade off. I think we need enough to understand the
> > problem (not just presented with a solution), agree on the general
> > solution/direction, and then discuss specific additions.
> >
> > > > But if we don't preserve
> > > > these properties then Binman cannot do repacking reliably. Perhaps =
for
> > > > now I could put the augmented DT in its own section somewhere, but =
I
> > > > am just not sure if that will work in a real system. E.g. with VBE =
the
> > > > goal is to use the DT to figure out how to access the firmware, upd=
ate
> > > > it, etc.
> >
> > VBE?

Verified Boot for Embedded, an EFI alternative with no callbacks.

> >
> > > > Is it not possible to have my own node with whatever things Binman
> > > > needs in it (subject to review of course)? i.e. could we discuss ho=
w
> > > > to encode it, but argue less about whether things are needed? I
> > > > kind-of feel I know what is needed, since I wrote the tool.
> >
> > What we don't need is the same information in 2 places for the DTB
> > used at runtime. If the binman node is removed, do whatever you want.
> > If you want to keep it at runtime, then it's got to extend what we
> > already have.
> >
> > I don't think anyone is disagreeing about whether specific information
> > is needed or not.
> >
> > > > > > So you are suggesting 'label' for the contents. Rob suggested
> > > > > > 'compatible' [1], so what should I do?
> > > > >
> > > > > "label" is for consumption by humans, not tools/software. Compati=
ble
> > > > > values are documented, label values are not. Though the partition
> > > > > stuff started out using label long ago and it's evolved to prefer=
ring
> > > > > compatible.
> > > >
> > > > OK so we are agreed that we are going with 'compatible'.
> > >
> > > Still strongly disagree here.
> >
> > Miquel is right. I was confused here. "label" is still pretty much
> > used for what the image is. Though we do have "u-boot,env" for both it
> > seems.
> >
> > My position on "label" stands. To the extent we have images for common
> > components, I think we should standardize the names. Certainly if
> > tools rely on the names, then they should be documented.
>
> OK thanks for clearing that up.
>
> But at present 'label' is free-form text. If I change it to an enum,
> won't that break things? If not, how do I actually do it?
>
> There is a u-boot.yaml but it doesn't actually have a "u-boot" label
> in the schema. In fact it seems that the label is not validated at
> all?

It looks like I can just add it to a separate schema file, which is
what I did in the latest version.

>
> >
> >
> > > My understanding is that a compatible carries how the content is
> > > organized, and how this maybe specific (like you have in-band meta da=
ta
> > > data that needs to be parsed in a specific way or in your case
> > > additional specific properties in the DT which give more context abou=
t
> > > how the data is stored). But the real content of the partition, ie. i=
f
> > > it contains a firmware, the kernel or some user data does not belong =
to
> > > the compatible.
> > >
> > > I.e:
> > > - The first byte of my partition gives the compression algorithm:
> > >   -> compatible =3D "compressed-partition-foo";
> > >      or
> > >   -> compatible =3D "fixed-partitions" + compression-algorithm =3D "f=
oo";
> > > - The partition contains a picture of my dog:
> > >   -> label =3D "my dog is beautiful"
> > >   but certainly not
> > >   -> compatible =3D "my-dog";
> >
> > IMO, compatible in this case should convey "JPEG image" or similar.
> >
> > > I don't see why, for the binman schema, we could not constrain the
> > > labels?
> >
> > Yes, but those should follow what we already have. "u-boot" for
> > example rather than "data,u-boot" which I think Simon had in some
> > version of this.
>
> Yes, don't worry, I had some feedback from Alper but have given up on
> that approach.

Regards,
Simon

