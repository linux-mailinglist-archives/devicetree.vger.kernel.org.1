Return-Path: <devicetree+bounces-23310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A576880AB14
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 18:47:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A64521C208D8
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 17:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B8E23B783;
	Fri,  8 Dec 2023 17:47:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="LTwXfJgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21255123
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 09:47:10 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a196f84d217so281813866b.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 09:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702057628; x=1702662428; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hAJ1WnEzjSjmEz7f7Ppx70QG1I8gsBXxVNcDVYzxKYo=;
        b=LTwXfJgY06011nfwetny3418IDU9SmQu68Z+vVTqd21Es/g1WV9tau8qHFZydGC26X
         CQxaF5IeGGgqeZ35BrN+nVFyjfhmWhDJpWPghW5sTxbhmCkHseS0uTN9J9G9o7Ossn/9
         PIKQoKjwSrflsJHzvG5nrBwdtGMRl7GJ//qEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702057628; x=1702662428;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hAJ1WnEzjSjmEz7f7Ppx70QG1I8gsBXxVNcDVYzxKYo=;
        b=tm5HV6u6xMti55NeTtjuQ+MNmMMlOyqI4SEYd85gMKwUPzItguHveS2/MmRtwyJObA
         Ii/YkID/dA6bzLCXWcRZ5DA4wfGln0zMcxmOiKss2ge8Z+BnYTA8hDv3zga4XS8o+JIV
         DPENzMMjwkX/d6FZHfJcWRd5Fz135oUQD/TTyYgLGNQ0UCTBXYUBOyJgeW0RUUXD/iMH
         cqjGQjYmJJo3h4XEwfalC2hn7k9PACyg1Iz6zaAQKvoTqo27L6aHmQENbkatfiT/Gphq
         Aot9+M8oZ7hcFvyHYzPAFdfq2/WKlCJwQrIUeIH6z7ZvLcGtuq9kyyplLaEVmQ0wLCmd
         Imuw==
X-Gm-Message-State: AOJu0YxscknpBVu65aK1rnNrKkXo9bzvbFxxEc0dePG2s2FLeaB/pLwM
	YfIRC7ZtDQUcmcnQJJUa7DGvtMMYXOv4yHiQWfNLPQ==
X-Google-Smtp-Source: AGHT+IHVlaS5EYXTYlrQruZM+vx0QSh6/N3o/eDY14hRk0UBFA1FHofU1ZiRsQbF3VqXkzoInBKqIDKTJzp/jsjqxTU=
X-Received: by 2002:a17:906:68d9:b0:a19:a1ba:8cfa with SMTP id
 y25-20020a17090668d900b00a19a1ba8cfamr158447ejr.152.1702057628271; Fri, 08
 Dec 2023 09:47:08 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231116172859.393744-1-sjg@chromium.org> <20231208150042.GA1278773-robh@kernel.org>
In-Reply-To: <20231208150042.GA1278773-robh@kernel.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 8 Dec 2023 10:46:51 -0700
Message-ID: <CAPnjgZ2i4gvgiUeHPOfHuOdBooV4e=QQEq6iMo0JbDwOS6dCwA@mail.gmail.com>
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

Hi Rob,

On Fri, 8 Dec 2023 at 08:00, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Nov 16, 2023 at 10:28:50AM -0700, Simon Glass wrote:
> > Add a compatible string for binman, so we can extend fixed-partitions
> > in various ways.
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> > (no changes since v5)
> >
> > Changes in v5:
> > - Add #address/size-cells and parternProperties
> > - Drop $ref to fixed-partitions.yaml
> > - Drop 'select: false'
> >
> > Changes in v4:
> > - Change subject line
> >
> > Changes in v3:
> > - Drop fixed-partition additional compatible string
> > - Drop fixed-partitions from the example
> > - Mention use of compatible instead of label
> >
> > Changes in v2:
> > - Drop mention of 'enhanced features' in fixed-partitions.yaml
> > - Mention Binman input and output properties
> > - Use plain partition@xxx for the node name
> >
> >  .../bindings/mtd/partitions/binman.yaml       | 68 +++++++++++++++++++
> >  .../bindings/mtd/partitions/partitions.yaml   |  1 +
> >  MAINTAINERS                                   |  5 ++
> >  3 files changed, 74 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > new file mode 100644
> > index 000000000000..329217550a98
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > @@ -0,0 +1,68 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2023 Google LLC
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/partitions/binman.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman firmware layout
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description: |
> > +  The binman node provides a layout for firmware, used when packaging firmware
> > +  from multiple projects. It is based on fixed-partitions, with some
> > +  extensions, but uses 'compatible' to indicate the contents of the node, to
> > +  avoid perturbing or confusing existing installations which use 'label' for a
> > +  particular purpose.
> > +
> > +  Binman supports properties used as inputs to the firmware-packaging process,
> > +  such as those which control alignment of partitions. This binding addresses
> > +  these 'input' properties. For example, it is common for the 'reg' property
> > +  (an 'output' property) to be set by Binman, based on the alignment requested
> > +  in the input.
> > +
> > +  Once processing is complete, input properties have mostly served their
> > +  purpose, at least until the firmware is repacked later, e.g. due to a
> > +  firmware update. The 'fixed-partitions' binding should provide enough
> > +  information to read the firmware at runtime, including decompression if
> > +  needed.
>
> How is this going to work exactly? binman reads these nodes and then
> writes out 'fixed-partitions' nodes. But then you've lost the binman
> specifc parts needed for repacking.

No, they are the same node. I do want the extra information to stick
around. So long as it is compatible with fixed-partition as well, this
should work OK.

Regards,
SImon

