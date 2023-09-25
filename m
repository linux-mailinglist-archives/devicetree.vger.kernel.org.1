Return-Path: <devicetree+bounces-3158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6227AD815
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 14:33:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id CE1D11F24AED
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 763C5748A;
	Mon, 25 Sep 2023 12:33:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D00267E
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 12:33:37 +0000 (UTC)
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31634FB
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:33:34 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-5031426b626so9841870e87.3
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 05:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695645212; x=1696250012; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uOrEG4tfl75vIbxlTDfOPlF5gglTowT9ubBWOy0wGIE=;
        b=XraXWh175C0O1zeaF6oDS5y4MnsE+aL81TMVqOA8Ep1RsgCgNkscjk4Xs8zutgCURc
         Uuz0Dbo8ZZYmSC8Fecdoy1rfUmD2P6ZlDcvNghuSxf79muMlQ7vKhKrioc9ZqvLj+8OW
         pHW1wxxW78wozyS8earWBGR5Ib7a+l1IzH07g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695645212; x=1696250012;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uOrEG4tfl75vIbxlTDfOPlF5gglTowT9ubBWOy0wGIE=;
        b=QDz5tt7kEg7POadKpqEhoQyKNOdPnznhK7p9hy7GvE7pOKtLhGGHqSne/XF3TF1tY0
         dEXCaA87LnjKehtYLjF+ii7GkfqyDU7K80zBVJcUQfmCmarFHfzmLjsQOrOyrIPNXZ3x
         kD1PCHlifWHXHiwvNtHHr9mnVtElbKSrDf35R2qdhUNUc8NWcv+TgCJjS9Y+jsbKcNPo
         Xfs2D+G8A9GtFY5WS5gFm5apLATQI3Uv3KgF+FFcAgnaw1L1Eu3LLf2lwKeampItoirq
         GlKUm8toUmZ9sQWhIJOHA1dhtRpI7ouaRBJlXY4mh7zjs+i8F2vvsMM2EPTQOl9MH16B
         w8Ug==
X-Gm-Message-State: AOJu0YyUGEg+k5uVCkC/G8ElYsi0rKrpip7dCb0VX8Mp2M+6qXtS03wx
	SjZcnXOvdvM9kZfvo6a0FKE8k96rg2FfdZoXvKyenA==
X-Google-Smtp-Source: AGHT+IHQ2mVoYf0gISCrXjW928D9kOOj+nnB4kchHzakcfJ5+nTvY6NHkpDiRDXDUhEg1TfER0INKlLUgGq8Jiet7Nw=
X-Received: by 2002:ac2:4c9c:0:b0:503:18c3:d87a with SMTP id
 d28-20020ac24c9c000000b0050318c3d87amr5120311lfl.21.1695645212082; Mon, 25
 Sep 2023 05:33:32 -0700 (PDT)
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
 <CAPnjgZ3BnD9aX3cNNPiGRKTOj+YeurHCLv6K0TRFhAtY21Qufw@mail.gmail.com> <20230925092122.0b615f25@xps-13>
In-Reply-To: <20230925092122.0b615f25@xps-13>
From: Simon Glass <sjg@chromium.org>
Date: Mon, 25 Sep 2023 06:33:14 -0600
Message-ID: <CAPnjgZ0Z5J_33HuQF-5XgDFmZim0nHHzvZJOOZobWw_cOJd=9g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
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

Hi Miquel,

On Mon, 25 Sept 2023 at 01:21, Miquel Raynal <miquel.raynal@bootlin.com> wr=
ote:
>
> Hi Simon,
>
> sjg@chromium.org wrote on Fri, 22 Sep 2023 13:51:14 -0600:
>
> > Hi Rob,
> >
> > On Fri, 22 Sept 2023 at 13:43, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Fri, Sep 22, 2023 at 1:12=E2=80=AFPM Simon Glass <sjg@chromium.org=
> wrote:
> > > >
> > > > Hi Rob,
> > > >
> > > > On Fri, 22 Sept 2023 at 11:46, Rob Herring <robh@kernel.org> wrote:
> > > > >
> > > > > On Fri, Sep 22, 2023 at 11:01:18AM -0600, Simon Glass wrote:
> > > > > > Hi Rob,
> > > > > >
> > > > > > On Fri, 22 Sept 2023 at 10:00, Rob Herring <robh@kernel.org> wr=
ote:
> > > > > > >
> > > > > > > On Thu, Sep 21, 2023 at 1:45=E2=80=AFPM Simon Glass <sjg@chro=
mium.org> wrote:
> > > > > > > >
> > > > > > > > Binman[1] is a tool for creating firmware images. It allows=
 you to
> > > > > > > > combine various binaries and place them in an output file.
> > > > > > > >
> > > > > > > > Binman uses a DT schema to describe an image, in enough det=
ail that
> > > > > > > > it can be automatically built from component parts, disasse=
mbled,
> > > > > > > > replaced, listed, etc.
> > > > > > > >
> > > > > > > > Images are typically stored in flash, which is why this bin=
ding is
> > > > > > > > targeted at mtd. Previous discussion is at [2] [3].
> > > > > > > >
> > > > > > > > [1] https://u-boot.readthedocs.io/en/stable/develop/package=
/binman.html
> > > > > > > > [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3=
-sjg@chromium.org/
> > > > > > > > [3] https://www.spinics.net/lists/devicetree/msg626149.html
> > > > > > >
> > > > > > > You missed:
> > > > > > >
> > > > > > > https://github.com/devicetree-org/dt-schema/pull/110
> > > > > > >
> > > > > > > where I said: We certainly shouldn't duplicate the existing p=
artitions
> > > > > > > bindings. What's missing from them (I assume we're mostly tal=
king
> > > > > > > about "fixed-partitions" which has been around forever I thin=
k (before
> > > > > > > me))?
> > > > > > >
> > > > > > > To repeat, unless there is some reason binman partitions conf=
lict with
> > > > > > > fixed-partitions, you need to start there and extend it. From=
 what's
> > > > > > > posted here, it neither conflicts nor needs extending.
> > > > > >
> > > > > > I think at this point I am just hopelessly confused. Have you t=
aken a
> > > > > > look at the binman schema? [1]
> > > > >
> > > > > Why do I need to? That's used for some tool and has nothing to do=
 with a
> > > > > device's DTB. However, I thought somewhere in this discussion you=
 showed
> > > > > it under a flash device node.
> > > >
> > > > Yes, that is the intent (under a flash node).
> > > >
> > > > > Then I care because then it overlaps with
> > > > > what we already have for partitions. If I misunderstood that, the=
n just
> > > > > put your schema with your tool. Only users of the tool should car=
e about
> > > > > the tool's schema.
> > > >
> > > > OK. I believe that binman will fit into both camps, since its input=
 is
> > > > not necessarily fully formed. E.g. if you don't specify the offset =
of
> > > > an entry, then it will be packed automatically. But the output is
> > > > fully formed, in that Binman now knows the offset so can write it t=
o
> > > > the DT.
> > >
> > > I suppose it could take its own format as input and then write out
> > > something different for the "on the device" format (i.e.
> > > fixed-partitions). At least for the dynamic offsets, we may need
> > > something allowed for binman input, but not allowed on device. In
> > > general, there is support for partitions without addresses/offsets,
> > > but only for partitions that have some other way to figure that out
> > > (on disk partition info).
> > >
> > > There's also the image filename which doesn't really belong in the on
> > > device partitions. So maybe the input and output schemas should be
> > > separate.
> >
> > OK, I'll focus on the output schema for now. I suspect this will be a
> > grey area though.
> >
> > As an example, if you replace a binary in the firmware, Binman can
> > repack the firmware to make room, respecting the alignment and size
> > constraints. So these need to be in the output schema somehow.
> >
> > >
> > > > > > I saw this file, which seems to extend a partition.
> > > > > >
> > > > > > Documentation/devicetree/bindings/mtd/partitions/brcm,bcm4908-p=
artitions.yaml
> > > > >
> > > > > IIRC, that's a different type where partition locations are store=
d in
> > > > > the flash, so we don't need location and size in DT.
> > > >
> > > > OK.
> > > >
> > > > >
> > > > > >
> > > > > > I was assuming that I should create a top-level compatible =3D =
"binman"
> > > > > > node, with subnodes like compatible =3D "binman,bl31-atf", for =
example.
> > > > > > I should use the compatible string to indicate the contents, ri=
ght?
> > > > >
> > > > > Yes for subnodes, and we already have some somewhat standard ones=
 for
> > > > > "u-boot" and "u-boot-env". Though historically, "label" was used.
> > > >
> > > > Binman has common properties for all entries, including "compress"
> > > > which sets the compression algorithm.
> > >
> > > I see no issue with adding that. It seems useful and something missin=
g
> > > in the existing partition schemas.
> >
> > OK I sent a patch with that.
> >
> > >
> > > > So perhaps I should start by defining a new binman,bl31-atf which h=
as
> > > > common properties from an "binman,entry" definition?
> > >
> > > I don't understand the binman prefix. The contents are ATF (or TF-A
> > > now). Who wrote it to the flash image is not relevant.
> >
> > Are you suggesting just "atf-bl31", or "arm,atf-bl31" ? Or should we
> > change it to "tfa-bl31"?
>
> I don't really understand the relationship with TF-A here. Can't we
> just have a kind of fixed-partitions with additional properties like
> the compression?

Binman needs to know what to put in there, which is the purpose of the
compatible string.

>
> > > We already have some compatibles in use. We should reuse them if
> > > possible. Not sure about TF-A though.
> >
> > OK.
> >
>
> Also, I still don't understand the purpose of this schema. So binman
> generates an image, you want to flash this image and you would like the
> tool to generate the corresponding (partition) DT snippet automatically.
> Do I get this right? I don't get why you would need new compatibles for
> that.

It is actually the other way around. The schema tells Binman how to
build the image (what goes in there and where). Then outputs an
updated DT which describes where everything ended up, for use by other
tools, e.g. firmware update. It is a closed loop in that sense. See
the references for more information.

Regards,
Simon

[1] https://u-boot.readthedocs.io/en/latest/develop/package/index.html
[2] https://pretalx.com/media/osfc2019/submissions/Y7EN9V/resources/Binman_=
-_A_data-controlled_firmware_packer_for_U-B_pFU3n2K.pdf
[3] https://www.youtube.com/watch?v=3DL84ujgUXBOQ

