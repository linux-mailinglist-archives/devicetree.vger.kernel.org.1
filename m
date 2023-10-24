Return-Path: <devicetree+bounces-11466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C6A7D5D5C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 23:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9952AB20F57
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 21:41:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 799613D399;
	Tue, 24 Oct 2023 21:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Rrx1myZZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940C73C682
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 21:41:11 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69AE8A3
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:08 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-5079f3f3d7aso7863199e87.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 14:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1698183666; x=1698788466; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8/l3iCnOIbHxgn209fI6Ue3Dyqs1H9WjYDgBhKPc4nY=;
        b=Rrx1myZZxr6WTSJOyLzrBRa77/qO7kSqRvhLCzgtpCwtf3m8QHZ0VxKGn8PuadDVNa
         5MtGgJLINumg344vQxOIMAGbgOGIbnCBzrRYATyErR5ddApbyqP7kvqHAm2aCxFDWF+J
         NJtrlKivCxq4gkDR2OY43l5Ez2vrxXp26pLFw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698183666; x=1698788466;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8/l3iCnOIbHxgn209fI6Ue3Dyqs1H9WjYDgBhKPc4nY=;
        b=YQowpWj1Qs4CPWZPB4eoq1Q4aYY0rKsIBB4dvXZi8b+tkPRlGg2vY9RMZ8bpQeigJ1
         f3FjMq7mm9+cVJvIVnq9PAAaaHLMWYpmeobLfaOMKOVw2li+RtRB2XV0BPj3EZl98eui
         hxKkHt/gALDxl2ZLvXhbywXaab9ON69Dv5UT1n0EpWAwgyKuNoXbl9VLlu0ShiCFa/8B
         gemTWxspqFB74Ox3lWfdfR4QTpQX4qNaTfXDF9nmbyXxu08UPcq2LWTbWAweEBx0gkvO
         V6fCH1V2ZmAi/zkCeQRQT4lLbhLEseHy+wkfO8syz8Jp3IE8YXZha776Z5vua2dG74+G
         N/PA==
X-Gm-Message-State: AOJu0YwiAVAxDnW5UGpBkbmnPXoz7YtBSEGXvWAQVBuQt1yMkQqeVu1Z
	LIpFb4GNwOiunMIL6Vuk8I0+DWyN+r/OX4v3vC++mQ==
X-Google-Smtp-Source: AGHT+IFScWIum/OTHr5wNhT1S/G7FDAmrtGJXwLdpLF1M/LYqy7vRAiXQHkkcwQgTLFDVP6Hd+bZsDD/O+/8wNKhQNw=
X-Received: by 2002:a05:6512:3a8e:b0:507:a1e5:74fe with SMTP id
 q14-20020a0565123a8e00b00507a1e574femr11574219lfu.54.1698183666243; Tue, 24
 Oct 2023 14:41:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231009220436.2164245-1-sjg@chromium.org> <20231009220436.2164245-2-sjg@chromium.org>
 <20231024161644.GB3707756-robh@kernel.org>
In-Reply-To: <20231024161644.GB3707756-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Tue, 24 Oct 2023 14:40:54 -0700
Message-ID: <CAPnjgZ0G3W0a1T5TMuS_8L+4OwqFU3xXBKPnTs+MDDFBWYP_VA@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-mtd@lists.infradead.org, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Michael Walle <mwalle@kernel.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>, Tom Rini <trini@konsulko.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Weinberger <richard@nod.at>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

On Tue, 24 Oct 2023 at 09:16, Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Oct 09, 2023 at 04:04:14PM -0600, Simon Glass wrote:
> > Add two compatible for binman entries, as a starting point for the
> > schema.
> >
> > Note that, after discussion on v2, we decided to keep the existing
> > meaning of label so as not to require changes to existing userspace
> > software when moving to use binman nodes to specify the firmware
> > layout.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > Changes in v4:
> > - Correct selection of multiple compatible strings
> >
> > Changes in v3:
> > - Drop fixed-partitions from the example
> > - Use compatible instead of label
> >
> > Changes in v2:
> > - Use plain partition@xxx for the node name
> >
> >  .../mtd/partitions/binman-partition.yaml      | 49 +++++++++++++++++++
> >  1 file changed, 49 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > new file mode 100644
> > index 000000000000..35a320359ec1
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
> > @@ -0,0 +1,49 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2023 Google LLC
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/partitions/binman-partition.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman partition
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +select: false
>
> So this schema is never used. 'select: false' is only useful if
> something else if referencing the schema.

OK. Is there a user guide to this somewhere? I really don't understand
it very well.

>
> > +
> > +description: |
> > +  This corresponds to a binman 'entry'. It is a single partition which holds
> > +  data of a defined type.
> > +
> > +allOf:
> > +  - $ref: /schemas/mtd/partitions/partition.yaml#
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - const: binman,entry     # generic binman entry
>
> 'binman' is not a vendor. You could add it if you think that's useful.
> Probably not with only 1 case...

I think it is best to use this for generic things implemented by
binman, rather than some other project. For example, binman supports a
'fill' region. It also supports sections which are groups of
sub-entries. So we will likely start with half a dozen of these and it
will likely grow: binman,fill, binman,section, binman,files

If we don't use 'binman', what do you suggest?

>
> > +      - items:
> > +          - const: u-boot       # u-boot.bin from U-Boot project
> > +          - const: atf-bl31     # bl31.bin or bl31.elf from TF-A project
>
> Probably should use the new 'tfa' rather than old 'atf'. Is this the
> only binary for TFA? The naming seems inconsistent in that every image
> goes in (or can go in) a bl?? section. Why does TFA have it but u-boot
> doesn't? Perhaps BL?? is orthogonal to defining what is in each
> partition. Perhaps someone more familar with all this than I am can
> comment.

From what I can tell TF-A can produce all sorts of binaries, of which
bl31 is one. U-Boot can also produce lots of binaries, but its naming
is different (u-boot, u-boot-spl, etc.). Bear in mind that U-Boot is
used on ARM, where this terminology is defined, and on x86 (for
example), where it is not.

>
> Once you actually test this, you'll find you are specifying:
>
> compatible = "u-boot", "atf-bl31";

I don't understand that, sorry. I'll send a v5 and see if the problem goes away.

>
>
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    partitions {
> > +        compatible = "binman";
> > +        #address-cells = <1>;
> > +        #size-cells = <1>;
> > +
> > +        partition@100000 {
> > +            compatible = "u-boot";
> > +            reg = <0x100000 0xf00000>;
> > +        };
> > +
> > +        partition@200000 {
> > +            compatible = "atf-bl31";
> > +            reg = <0x200000 0x100000>;
> > +        };
> > +    };
> > --
> > 2.42.0.609.gbb76f46606-goog
> >

Regards,
Simon

