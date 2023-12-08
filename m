Return-Path: <devicetree+bounces-23363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A83AD80B004
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 23:58:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6364F281B3D
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 22:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F291359B7D;
	Fri,  8 Dec 2023 22:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LomAtTtg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0C8C1986
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 14:58:28 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-54f4f7d082cso1574940a12.0
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 14:58:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702076307; x=1702681107; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BMpCWLXMXRBTKeWVwSpx26nw2WRYoXe/hUgsW8+MXwY=;
        b=LomAtTtg8QE/ULkePZYJXz8kGVnDhRj9W/YvjLj18IjtEPVSyc8gGXxunXwNftqGIG
         8LVc0+wGvpH2B3p6HafLIxeHvD0WE6oIm5zZGiAReP7NDZQnOqUsdQaYRiUsAjW7KnQF
         eZiCe0Zvbdog7Z/x5t7ohCZ26QcUAjY/f+e+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702076307; x=1702681107;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BMpCWLXMXRBTKeWVwSpx26nw2WRYoXe/hUgsW8+MXwY=;
        b=RVfAgxWdOBtGGYj+r3KY4AmI1k3WalIxbOH40KMsxQRtYc2FBtA1eC1lIRSp2y6E9y
         hAgVgMZ8GxR3yovKA6J2jP+qWkCWDdxRboNXr8q+cw73L249S7zCSnQg0ME13PGEC4lV
         DAANBJOgNDwpaHzZ1lmrJoozjijhbpRONzi6XqDpalyRYAkAihr9KKayZHbK5MzVcAMC
         DeINvGWryPxbS93JGoGYzYzH4hExYC3Kvrh7+PcVPfPu5LEMXq7lAM1YvMixMr9vwS8h
         gXWbVfem67DYBhHxHlQG5E+SlgZU/We+tduBU94apd4tL/opypUmR5AnMcr6tD5E6fgR
         LCzA==
X-Gm-Message-State: AOJu0YxmMxBXesdRZjsGZznjChD6wexmTlVrWqV1T1UxQlTOzFDm1p82
	TzOXSVihrJahyW0cW1ANeB3uvif69LdEP9gzh8wZXw==
X-Google-Smtp-Source: AGHT+IEC8IAkzhTxZXuXzT95S1oMy3pZuNhKwqQHQUOi0m7PW3dUxcRvZffwon3Pu+gLtvShq4pNOM+wjcjn7p2b8d8=
X-Received: by 2002:a17:906:2b53:b0:a19:a19b:78c2 with SMTP id
 b19-20020a1709062b5300b00a19a19b78c2mr408985ejg.133.1702076307046; Fri, 08
 Dec 2023 14:58:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116172859.393744-1-sjg@chromium.org> <20231208150042.GA1278773-robh@kernel.org>
 <CAPnjgZ2i4gvgiUeHPOfHuOdBooV4e=QQEq6iMo0JbDwOS6dCwA@mail.gmail.com> <CAL_Jsq+xMZ8yz4H9D59uCSyX4h5W+4ruGF++=wVA=msXz+Y01A@mail.gmail.com>
In-Reply-To: <CAL_Jsq+xMZ8yz4H9D59uCSyX4h5W+4ruGF++=wVA=msXz+Y01A@mail.gmail.com>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 8 Dec 2023 15:58:10 -0700
Message-ID: <CAPnjgZ1uW8T6woXSqFUNm301=W3zBYOrADREkrz=DuwSW87qZg@mail.gmail.com>
Subject: Re: [PATCH v6 1/3] dt-bindings: mtd: partitions: Add binman compatible
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>, 
	linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, 
	Michael Walle <mwalle@kernel.org>, U-Boot Mailing List <u-boot@lists.denx.de>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Pratyush Yadav <ptyadav@amazon.de>, 
	=?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Fri, 8 Dec 2023 at 14:56, Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Dec 8, 2023 at 11:47=E2=80=AFAM Simon Glass <sjg@chromium.org> wr=
ote:
> >
> > Hi Rob,
> >
> > On Fri, 8 Dec 2023 at 08:00, Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, Nov 16, 2023 at 10:28:50AM -0700, Simon Glass wrote:
> > > > Add a compatible string for binman, so we can extend fixed-partitio=
ns
> > > > in various ways.
> > > >
> > > > Signed-off-by: Simon Glass <sjg@chromium.org>
> > > > ---
> > > >
> > > > (no changes since v5)
> > > >
> > > > Changes in v5:
> > > > - Add #address/size-cells and parternProperties
> > > > - Drop $ref to fixed-partitions.yaml
> > > > - Drop 'select: false'
> > > >
> > > > Changes in v4:
> > > > - Change subject line
> > > >
> > > > Changes in v3:
> > > > - Drop fixed-partition additional compatible string
> > > > - Drop fixed-partitions from the example
> > > > - Mention use of compatible instead of label
> > > >
> > > > Changes in v2:
> > > > - Drop mention of 'enhanced features' in fixed-partitions.yaml
> > > > - Mention Binman input and output properties
> > > > - Use plain partition@xxx for the node name
> > > >
> > > >  .../bindings/mtd/partitions/binman.yaml       | 68 +++++++++++++++=
++++
> > > >  .../bindings/mtd/partitions/partitions.yaml   |  1 +
> > > >  MAINTAINERS                                   |  5 ++
> > > >  3 files changed, 74 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/mtd/partition=
s/binman.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binma=
n.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > > > new file mode 100644
> > > > index 000000000000..329217550a98
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > > > @@ -0,0 +1,68 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > > +# Copyright 2023 Google LLC
> > > > +
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Binman firmware layout
> > > > +
> > > > +maintainers:
> > > > +  - Simon Glass <sjg@chromium.org>
> > > > +
> > > > +description: |
> > > > +  The binman node provides a layout for firmware, used when packag=
ing firmware
> > > > +  from multiple projects. It is based on fixed-partitions, with so=
me
> > > > +  extensions, but uses 'compatible' to indicate the contents of th=
e node, to
> > > > +  avoid perturbing or confusing existing installations which use '=
label' for a
> > > > +  particular purpose.
> > > > +
> > > > +  Binman supports properties used as inputs to the firmware-packag=
ing process,
> > > > +  such as those which control alignment of partitions. This bindin=
g addresses
> > > > +  these 'input' properties. For example, it is common for the 'reg=
' property
> > > > +  (an 'output' property) to be set by Binman, based on the alignme=
nt requested
> > > > +  in the input.
> > > > +
> > > > +  Once processing is complete, input properties have mostly served=
 their
> > > > +  purpose, at least until the firmware is repacked later, e.g. due=
 to a
> > > > +  firmware update. The 'fixed-partitions' binding should provide e=
nough
> > > > +  information to read the firmware at runtime, including decompres=
sion if
> > > > +  needed.
> > >
> > > How is this going to work exactly? binman reads these nodes and then
> > > writes out 'fixed-partitions' nodes. But then you've lost the binman
> > > specifc parts needed for repacking.
> >
> > No, they are the same node. I do want the extra information to stick
> > around. So long as it is compatible with fixed-partition as well, this
> > should work OK.
>
> How can it be both? The partitions node compatible can be either
> 'fixed-partitions' or 'binman'.

Can we not allow it to be both? I have tried to adjust things in
response to feedback but perhaps the feedback was leading me down the
wrong path?

But if not, then whatever works is fine for now. I just want to make
some progress on this very, very old series.

>
> In the partition nodes, 'align' for example is allowed for a binman
> partition but not a fixed-partition.
>
> Note that the schema may not actually warn on extra properties ATM
> because there are some issues with the schema structure. Since there
> can be nested partittions, that complicates matters. It's been on my
> todo list to fix.

OK.

Regards,
Simon

