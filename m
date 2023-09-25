Return-Path: <devicetree+bounces-3289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AE617AE1A9
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 00:26:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 559D01C204F7
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 22:26:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 523352511F;
	Mon, 25 Sep 2023 22:26:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BD42BA41
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 22:26:11 +0000 (UTC)
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D46BE121
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 15:26:07 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-5042bfb4fe9so11671110e87.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 15:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695680766; x=1696285566; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sHB5IL1T88qgL4XItKYJYwf3rmjKIe0AB+bW8EbZuVY=;
        b=a+nPRwEC5WTW2GbZZZ1pZz9Ckiy7GWuHWrI5okDn7U2YKr/jUHtxS54QPgTRGqvsAr
         Uzao2s5zDykm4bE7DRP6aDLlyZY/PB/gWBPCKLa4fSUfOcXdvf2/Zrc9hnTGlyUrq0DO
         /snjOxezBf3OjkKIa2J5Yo7+sQ9S2I/vfLvlA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695680766; x=1696285566;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sHB5IL1T88qgL4XItKYJYwf3rmjKIe0AB+bW8EbZuVY=;
        b=j1NePWBdVXr0o1KsKAM0Twye15O8+QuPfUhntq1yLOp7Vzn5pj66CDDxe2G31ntyfB
         t9sgDUairD2LiVVf4pg2C7kXcbK/xthZAfDrqj1WwhFbvbwgOAkBesc8oQh5LXU+4lBV
         XG8w3lL2EEutvPzW7s4Fo1uHyPBBnanyT4jY6NvYOrOqxvmeOYw6+yohyBKFZO5AMJ3d
         AH9h8WUdaMJCkHBlUlb/FMAkGO+Y1UfkspNNdOX/8c+jG1YSWJMqnayWP8VRaiC3fPT1
         YSJQaFmfefsUtD8rHHLdgYfYYJYFzh57KgekpMrBQg99TBEXyhcIG8AyTkD229QPgq6g
         wDvA==
X-Gm-Message-State: AOJu0Yw/q4IPtPtf8nBPSdLsWSrpLPVzd4JuzPHNAJYqukfgLMqD/vzz
	zGTeFWUY6Xo3KkXTxLxqpUmJ61E0MKMnaN2J6dt38Q==
X-Google-Smtp-Source: AGHT+IFuDsUZ/C+JOgCrSAxNKjCJEH0stsapm18e9nwK4naev+5fQkTG+WFNiy9706sZDwBh+w1k4UJRO29flm15igk=
X-Received: by 2002:a05:6512:3b12:b0:4fa:da4f:636f with SMTP id
 f18-20020a0565123b1200b004fada4f636fmr8482017lfv.32.1695680765816; Mon, 25
 Sep 2023 15:26:05 -0700 (PDT)
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
In-Reply-To: <CAL_JsqJfjHqtTB2qfLmNxmQtn1rZewNyNe+Knu_Z4UCdPoPhSQ@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 25 Sep 2023 16:25:47 -0600
Message-ID: <CAPnjgZ1npHPpwPmw2f4=E3U5=RH0m4R+W_MZ7+oXdmDF=EeUjg@mail.gmail.com>
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,USER_IN_DEF_SPF_WL
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Rob,

On Mon, 25 Sept 2023 at 12:49, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Sep 25, 2023 at 11:25=E2=80=AFAM Simon Glass <sjg@chromium.org> w=
rote:
> >
> > Hi Miquel,
> >
> > On Mon, 25 Sept 2023 at 09:24, Miquel Raynal <miquel.raynal@bootlin.com=
> wrote:
> > >
> > > Hi Simon,
> > >
> > > > > > > > > > > > I was assuming that I should create a top-level com=
patible =3D "binman"
> > > > > > > > > > > > node, with subnodes like compatible =3D "binman,bl3=
1-atf", for example.
> > > > > > > > > > > > I should use the compatible string to indicate the =
contents, right?
> > > > > > > > > > >
> > > > > > > > > > > Yes for subnodes, and we already have some somewhat s=
tandard ones for
> > > > > > > > > > > "u-boot" and "u-boot-env". Though historically, "labe=
l" was used.
> > > > > > > > > >
> > > > > > > > > > Binman has common properties for all entries, including=
 "compress"
> > > > > > > > > > which sets the compression algorithm.
> > > > > > > > >
> > > > > > > > > I see no issue with adding that. It seems useful and some=
thing missing
> > > > > > > > > in the existing partition schemas.
> > > > > > > >
> > > > > > > > OK I sent a patch with that.
> > > > > > > >
> > > > > > > > >
> > > > > > > > > > So perhaps I should start by defining a new binman,bl31=
-atf which has
> > > > > > > > > > common properties from an "binman,entry" definition?
> > > > > > > > >
> > > > > > > > > I don't understand the binman prefix. The contents are AT=
F (or TF-A
> > > > > > > > > now). Who wrote it to the flash image is not relevant.
> > > > > > > >
> > > > > > > > Are you suggesting just "atf-bl31", or "arm,atf-bl31" ? Or =
should we
> > > > > > > > change it to "tfa-bl31"?
> > > > > > >
> > > > > > > I don't really understand the relationship with TF-A here. Ca=
n't we
> > > > > > > just have a kind of fixed-partitions with additional properti=
es like
> > > > > > > the compression?
> > > > > >
> > > > > > Binman needs to know what to put in there, which is the purpose=
 of the
> > > > > > compatible string.
> > > > >
> > > > > But "what" should be put inside the partition is part of the inpu=
t
> > > > > argument, not the output. You said (maybe I got this wrong) that =
the
> > > > > schema would apply to the output of binman. If you want to let us=
er
> > > > > know what's inside, maybe it is worth adding a label, but otherwi=
se I
> > > > > don't like the idea of a compatible for that, which for me would =
mean:
> > > > > "here is how to handle that specific portion of the flash/here is=
 how
> > > > > the flash is organized".
> > > >
> > > > But I thought that the compatible string was for that purpose? See =
for
> > > > example "brcm,bcm4908-firmware" and "brcm,bcm963xx-imagetag" and
> > > > "linksys,ns-firmware".
> > >
> > > These three examples apparently need specific handling, the partition=
s
> > > contain meta-data that a parser needs to check or something like that=
.
> > > And finally it looks like partition names are set depending on the
> > > content that was discovered, so yes, the partition name is likely the
> > > good location to tell users/OSes what's inside.
> > >
> > > > > > > Also, I still don't understand the purpose of this schema. So=
 binman
> > > > > > > generates an image, you want to flash this image and you woul=
d like the
> > > > > > > tool to generate the corresponding (partition) DT snippet aut=
omatically.
> > > > > > > Do I get this right? I don't get why you would need new compa=
tibles for
> > > > > > > that.
> > > > > >
> > > > > > It is actually the other way around. The schema tells Binman ho=
w to
> > > > > > build the image (what goes in there and where). Then outputs an
> > > > > > updated DT which describes where everything ended up, for use b=
y other
> > > > > > tools, e.g. firmware update. It is a closed loop in that sense.=
 See
> > > > > > the references for more information.
> > > > >
> > > > > Maybe I fail to see why you would want these description to be
> > > > > introduced here, if they are not useful to the OS.
> > > >
> > > > Well I was asked to send them to Linux since they apparently don't
> > > > belong in dt-schema.
>
> That is not what I said. I said fixed-partitions should be extended. I
> prefer they are extended in-place before moving them rather than the
> other way around.

OK.

>
> > > > These are firmware bindings, as indicated, but I
> > > > took them out of the /firmware node since that is for a different
> > > > purpose. Rob suggested that partitions was a good place. We have fw=
upd
> > > > using DT to hold the firmware-update information, so I expect it wi=
ll
> > > > move to use these bindings too.
> > >
> > > I would definitely use fixed partitions as that's what you need then:
> > > registering where everything starts and ends. If you have "in-band"
> > > meta data you might require a compatible, but I don't think you
> > > do, in this case you should probably carry the content through a labe=
l
> > > (which will become the partition name) and we can discuss additional
> > > properties if needed.
> >
> > I believe I am going to need a compatible string at the 'partitions'
> > level to indicate that this is the binman scheme. But we can leave
> > that until later.
>
> Perhaps:
>
> compatible =3D "binman", "fixed-partitions";
>
> Though I don't understand why binman couldn't just understand what
> "fixed-partitions" means rather than "binman".

Well so long as we don't add any binman things in here, you are right.

But the eventual goal is parity with current Binman functionality,
which writes the entire (augmented) description to the DT, allowing
tools to rebuild / repack / replace pieces later, maintaining the same
alignment constraints, etc. I am assuming that properties like 'align
=3D <16>' would not fit with fixed-partitions. But if we don't preserve
these properties then Binman cannot do repacking reliably. Perhaps for
now I could put the augmented DT in its own section somewhere, but I
am just not sure if that will work in a real system. E.g. with VBE the
goal is to use the DT to figure out how to access the firmware, update
it, etc.

Is it not possible to have my own node with whatever things Binman
needs in it (subject to review of course)? i.e. could we discuss how
to encode it, but argue less about whether things are needed? I
kind-of feel I know what is needed, since I wrote the tool.

>
>
> > So you are suggesting 'label' for the contents. Rob suggested
> > 'compatible' [1], so what should I do?
>
> "label" is for consumption by humans, not tools/software. Compatible
> values are documented, label values are not. Though the partition
> stuff started out using label long ago and it's evolved to preferring
> compatible.

OK so we are agreed that we are going with 'compatible'.

>
> > With this schema, would every node be called 'partition@...' or is
> > there flexibility to use other names?
>
> The preference is to use generic names. Do you mean without a
> unit-address or different from "partition"? The need for the input
> side of binman to have dynamic addresses seems like the biggest issue.
> That's allowed in other cases with "partition-N" or "partition-foo"
> IIRC. I don't think we want to allow that for "fixed-partitions" at
> least in the DTB (i.e. the output side of binman).

OK I suppose this is the problem with starting small. I was hoping to
build up the schema piece by piece but now I am wondering whether
every little detail will get redirected and I'll end up with something
that Binman cannot use.

So far all I have is that I can add a 'compress' property and a
'compatible' which describes the contents. I suppose it is a start.

Regards,
Simon

