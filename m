Return-Path: <devicetree+bounces-11999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9E47D7628
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 22:59:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FC051C2074F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 20:58:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B4942E652;
	Wed, 25 Oct 2023 20:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="R/PmA97j"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4DD31A289
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 20:58:53 +0000 (UTC)
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57DEB132
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:58:50 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2c4fe37f166so2269061fa.1
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698267528; x=1698872328; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5E+y3Sa5hhlUIO0lLz8Lj8Z/SZXQuFdPCCdWtajuYnA=;
        b=R/PmA97jtdu7U+OlrZWWmzbBCZJ4J85CMAH3Y88zgW/9VOm5/PXPDL5VQ63GZIN4qv
         a1hWb+ZbQRtJMwzfbDn3vu2tUpZAz3L7zvpvWf8rg6NBb/7fsLiYe5FJjno7PdxTEoRa
         vNc0zEhCAGviC5CqVoqKHjjLeLijJOa8ZAp6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698267528; x=1698872328;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5E+y3Sa5hhlUIO0lLz8Lj8Z/SZXQuFdPCCdWtajuYnA=;
        b=RiP7GFbyn7oZrrI2TYbTfd1VyyNqO9RV5js03CSchkRAKtksclinLMSkwvk49jKt4t
         bMyPGgA+RjzZkHCs9DUNAjRWiONIyoXGk1RpjEr2uf/JRSJX31TD5SvB/dRaBTgi2rBI
         RtN75Zef1Px4+c3IUtVmyrxM0r+fVSkN+cTfIy5E3TDa0VrfZnqF76eVuM0WkYzdz/L3
         gdtqEZ0n4y5VjGVROKDBQo+XVlUlOZxnacVHjesVqI0/oRhH8Yed5bAnJLZ0gt5rHng1
         l15AnTbGEOEIGrx6DkPGGsFk/mMhRAOnOpmAfzgshC2Jzs0I07yfOR53EENJ+nmUcSAZ
         +ULg==
X-Gm-Message-State: AOJu0YxrfVpeDblVFfxeKrx68YlSDrh4F2BUYiyS1ErQE2tjAfWYGM85
	QaqF2HuvCvdeVmW2SZSVmLb/GpBQ+UCKlxuccVnVWQ==
X-Google-Smtp-Source: AGHT+IFIpzj33tVTxfmSbifouoWpSglC2W9rs1RwuI9tQBH2J4n3lYoTMUopFM/zLfxYuDpMHPxKVmRlPbKDytQm8m4=
X-Received: by 2002:a2e:3018:0:b0:2c5:1623:66b8 with SMTP id
 w24-20020a2e3018000000b002c5162366b8mr11230277ljw.12.1698267528156; Wed, 25
 Oct 2023 13:58:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231009220436.2164245-1-sjg@chromium.org> <20231009220436.2164245-2-sjg@chromium.org>
 <20231024161644.GB3707756-robh@kernel.org> <CAPnjgZ0G3W0a1T5TMuS_8L+4OwqFU3xXBKPnTs+MDDFBWYP_VA@mail.gmail.com>
 <20231025101126.2234a74c@xps-13>
In-Reply-To: <20231025101126.2234a74c@xps-13>
From: Simon Glass <sjg@chromium.org>
Date: Wed, 25 Oct 2023 20:58:36 +0000
Message-ID: <CAPnjgZ0GH-06xA3ij2ZBV_zDwPKa3m=wpHrsj8oKNS=8S0FvHA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org, Michael Walle <mwalle@kernel.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Tom Rini <trini@konsulko.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Miquel,

On Wed, 25 Oct 2023 at 08:11, Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Simon,
>
> sjg@chromium.org wrote on Tue, 24 Oct 2023 14:40:54 -0700:
>
> > Hi Rob,
> >
> > On Tue, 24 Oct 2023 at 09:16, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Mon, Oct 09, 2023 at 04:04:14PM -0600, Simon Glass wrote:
> > > > Add two compatible for binman entries, as a starting point for the
> > > > schema.
> > > >
> > > > Note that, after discussion on v2, we decided to keep the existing
> > > > meaning of label so as not to require changes to existing userspace
> > > > software when moving to use binman nodes to specify the firmware
> > > > layout.
> > > >
> > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > ---
> > > >
> > > > Changes in v4:
> > > > - Correct selection of multiple compatible strings
> > > >
> > > > Changes in v3:
> > > > - Drop fixed-partitions from the example
> > > > - Use compatible instead of label
> > > >
> > > > Changes in v2:
> > > > - Use plain partition@xxx for the node name
> > > >
> > > >  .../mtd/partitions/binman-partition.yaml      | 49 +++++++++++++++++++
> > > >  1 file changed, 49 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > > > new file mode 100644
> > > > index 000000000000..35a320359ec1
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > > > @@ -0,0 +1,49 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +# Copyright 2023 Google LLC
> > > > +
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/mtd/partitions/binman-partition.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Binman partition
> > > > +
> > > > +maintainers:
> > > > +  - Simon Glass <sjg@chromium.org>
> > > > +
> > > > +select: false
> > >
> > > So this schema is never used. 'select: false' is only useful if
> > > something else if referencing the schema.
> >
> > OK. Is there a user guide to this somewhere? I really don't understand
> > it very well.
>
> The example-schema.yaml at the root of the dt-bindings directory is
> well commented.

OK I had forgotten about that, thank you.

>
> > > > +description: |
> > > > +  This corresponds to a binman 'entry'. It is a single partition which holds
> > > > +  data of a defined type.
> > > > +
> > > > +allOf:
> > > > +  - $ref: /schemas/mtd/partitions/partition.yaml#
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    oneOf:
> > > > +      - const: binman,entry     # generic binman entry
> > >
> > > 'binman' is not a vendor. You could add it if you think that's useful.
> > > Probably not with only 1 case...
> >
> > I think it is best to use this for generic things implemented by
> > binman, rather than some other project. For example, binman supports a
> > 'fill' region. It also supports sections which are groups of
> > sub-entries. So we will likely start with half a dozen of these and it
> > will likely grow: binman,fill, binman,section, binman,files
> >
> > If we don't use 'binman', what do you suggest?
> >
> > >
> > > > +      - items:
> > > > +          - const: u-boot       # u-boot.bin from U-Boot project
> > > > +          - const: atf-bl31     # bl31.bin or bl31.elf from TF-A project
> > >
> > > Probably should use the new 'tfa' rather than old 'atf'. Is this the
> > > only binary for TFA? The naming seems inconsistent in that every image
> > > goes in (or can go in) a bl?? section. Why does TFA have it but u-boot
> > > doesn't? Perhaps BL?? is orthogonal to defining what is in each
> > > partition. Perhaps someone more familar with all this than I am can
> > > comment.
> >
> > From what I can tell TF-A can produce all sorts of binaries, of which
> > bl31 is one. U-Boot can also produce lots of binaries, but its naming
> > is different (u-boot, u-boot-spl, etc.). Bear in mind that U-Boot is
> > used on ARM, where this terminology is defined, and on x86 (for
> > example), where it is not.
> >
> > >
> > > Once you actually test this, you'll find you are specifying:
> > >
> > > compatible = "u-boot", "atf-bl31";
> >
> > I don't understand that, sorry. I'll send a v5 and see if the problem goes away.
>
> For me this means the partition contains U-Boot and TF-A, which is
> probably not what you want. I believe Rob is saying that how you define
> the compatible property above does not match the examples below. Did
> you run make dt_binding_check?

Yes, but I have not been able to install the correct version with 'pip
install'. So the check about not being an object did not appear for
me.

I have now figured out how to run the latest version locally with the
Linux validation, so will fix these problems in v6.

>
> Also, do you really need to say which software project provides a
> component? Would using "bl31", "bl33", etc be enough? Or maybe you
> could have eg. "bl31-tf-a" and "bl31-u-boot-spl" (in this order) for
> clarity? This way one knows which stage a partition contains and also
> the software project which provided it.

The software project tells binman the filename to pick up and any
processing it might need to use. It is quite an important element of
this schema. Bear in mind that Binman assembles the image...so it must
read in the various files that are needed.

The bl31 terminology is used by ARM but not x86. So using bl31 in the
context of U-Boot would be quite confusing on non-ARM SoCs.

For the stage (or what I call Phase), I have not considered that yet.
The purpose of adding 'bl31' is because TF-A (like U-Boot) produces a
few binaries so we need to specify which one is wanted, which in turn
leads to the filename. We do have the concept of a boot phase in DT
(bootph-pre-ram for example), so I hope to integrate that at some
point, for runtime use. But for the purposes of assembling the image,
it doesn't matter when the phase runs...all that matters is being able
to read in the files which need to be assembled into the image.

>
> To be honest I still don't fully get where you want to go and I believe
> a more complete schema would probably help, with different examples, to
> catch what you need and why.

The full schema is described at [1] and [2]. Note that this may need
to change as I slowly upstream it. The top of [1] describes the
motivation for binman and there is a more detailed talk at [3].

So far I am just trying to describe two things:

- U-Boot (u-boot.bin)
- TF-A BL31 (bl31.elf)

I am doing things in baby steps because even that is quite a
challenge. But I think the linked docs should help explain where it is
heading.

>
> > > > +additionalProperties: false
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    partitions {
> > > > +        compatible = "binman";
> > > > +        #address-cells = <1>;
> > > > +        #size-cells = <1>;
> > > > +
> > > > +        partition@100000 {
> > > > +            compatible = "u-boot";
> > > > +            reg = <0x100000 0xf00000>;
> > > > +        };
> > > > +
> > > > +        partition@200000 {
> > > > +            compatible = "atf-bl31";
> > > > +            reg = <0x200000 0x100000>;
> > > > +        };
> > > > +    };
> > > > --
> > > > 2.42.0.609.gbb76f46606-goog
> > > >

Regards,
SImon

[1] https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
[2] https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#entry-documentation
[3] https://elinux.org/Boot_Loaders#U-Boot

