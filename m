Return-Path: <devicetree+bounces-2551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 958CF7AB4BC
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:27:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 02BE81F22C28
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 15:27:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E430405D8;
	Fri, 22 Sep 2023 15:27:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AED41EA9A
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 15:27:00 +0000 (UTC)
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85A9D100
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:26:58 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-5230a22cfd1so2712930a12.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695396417; x=1696001217; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ehhS94nOYDx67I5UrhN7dvh/Dlk6jqSDrmSSvlfrbig=;
        b=FK+fR5P8nkt9huqrgibuOxwp4Wbtbmm0+PxAJ+FAtIAhsTpsnlOpR4Q2clSlOYaSID
         6CpxIv3hDrOj2enX8lMzq1zSEzlZXJ4i+xOtDjsxrpD6k1X1JxI4Zq2nZmeJLaOaR/p2
         f4KB7rTmdNNIvT+sjWq/oyPAlOk2f4Lst3BWw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695396417; x=1696001217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ehhS94nOYDx67I5UrhN7dvh/Dlk6jqSDrmSSvlfrbig=;
        b=PeP/GsxLldiMALfxypZ8KxcZUYSCcKeXttMIV+PsFOHtwC8OGdevKAXrzbP4mvQmj2
         xwgpLtcwfTitUVOYBAT3V5xJXQckGwuVDwdOComMPpppObLNYGz+Ga8M+PVO5gyzWbmO
         jP9NnBImIEetin39oeWH9d9kpVt0VkfZw3et8W3nsxXMGy34MBYNh7Au18DzufYw9GAZ
         OeM4VAu53Jqp711utq1haucmPCwWrfrO3oj2SQzQYDJFWNqCOrqL4SYRHQGlHzZs637D
         NBjAtknfyZGYVQnHkC+XOordJGBd73wQl30R/KAz66IqlODpLu7uaHp+yD7+DP9M6LYK
         94aQ==
X-Gm-Message-State: AOJu0YwiAALOZOxSp3IWoIyowj8bEg2rpU9Ol+/PCUCI9UMA4HBlL/hC
	Bs4d5ajPec0ZpQQ7NNblI8ETrd0nLKLYSGcNQBRV+RDQU4SYbbx7HnQ=
X-Google-Smtp-Source: AGHT+IFoGrL2e/v7oEth7xaYwVHjp41m5T5R1E9Jh7pwjgOEp/hjouucyihvUHkWO43wehoYyZSTEdxlA2dO6pUlS5M=
X-Received: by 2002:aa7:cd18:0:b0:530:c880:9171 with SMTP id
 b24-20020aa7cd18000000b00530c8809171mr8099822edw.27.1695396416625; Fri, 22
 Sep 2023 08:26:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921124459.1.I91ddcfacf9b234af5cc3eabea4b62edb31153317@changeid>
 <da77e965-2893-097a-b438-85787c43dcb0@linaro.org>
In-Reply-To: <da77e965-2893-097a-b438-85787c43dcb0@linaro.org>
From: Simon Glass <sjg@chromium.org>
Date: Fri, 22 Sep 2023 09:26:38 -0600
Message-ID: <CAPnjgZ2EyWxwCfUi6vHby4tYUfH0Dw6nfC7tOo-g4ahKhTMRjg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: mtd: Add a schema for binman
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, U-Boot Mailing List <u-boot@lists.denx.de>, 
	linux-mtd@lists.infradead.org, Tom Rini <trini@konsulko.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Dhruva Gole <d-gole@ti.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Richard Weinberger <richard@nod.at>, Rob Herring <robh+dt@kernel.org>, 
	Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-9.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_IN_DEF_SPF_WL autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Krzysztof,

On Fri, 22 Sept 2023 at 01:02, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 21/09/2023 20:45, Simon Glass wrote:
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
> > [2] https://lore.kernel.org/u-boot/20230821180220.2724080-3-sjg@chromium.org/
> > [3] https://www.spinics.net/lists/devicetree/msg626149.html
> >
> > Signed-off-by: Simon Glass <sjg@chromium.org>
> > ---
> >
> >  .../bindings/mtd/partitions/binman.yaml       | 50 +++++++++++++++
> >  .../bindings/mtd/partitions/binman/entry.yaml | 61 +++++++++++++++++++
> >  .../bindings/mtd/partitions/partitions.yaml   |  1 +
> >  MAINTAINERS                                   |  5 ++
> >  4 files changed, 117 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> >  create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > new file mode 100644
> > index 00000000000000..c792d5a37b700a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman.yaml
> > @@ -0,0 +1,50 @@
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
> > +  from multiple projects. For now it just supports a very simple set of
> > +  features, as a starting point for discussion.
> > +
> > +  Documentation for Binman is available at:
> > +
> > +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html
> > +
> > +  with the current image-description format at:
> > +
> > +  https://u-boot.readthedocs.io/en/latest/develop/package/binman.html#image-description-format
> > +
> > +properties:
> > +  compatible:
> > +    const: u-boot,binman
> > +
> > +required:
> > +  - compatible
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    firmware {
> > +      binman {
> > +        compatible = "u-boot,binman";
> > +
> > +        u-boot {
>
> It does not look like you tested the bindings, at least after quick
> look. Please run `make dt_binding_check` (see
> Documentation/devicetree/bindings/writing-schema.rst for instructions).
> Maybe you need to update your dtschema and yamllint.

Yes this came out of dt-schema and I assumed it was similar. I will rework it.

>
>
> > +          size = <0xa0000>;
> > +        };
> > +
> > +        atf-bl31 {
> > +          offset = <0x100000>;
> > +        };
> > +      };
> > +    };
> > diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> > new file mode 100644
> > index 00000000000000..8003eb4f1a994f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mtd/partitions/binman/entry.yaml
> > @@ -0,0 +1,61 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2023 Google LLC
> > +
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mtd/partitions/binman/entry.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Binman entry
> > +
> > +maintainers:
> > +  - Simon Glass <sjg@chromium.org>
> > +
> > +description: |
> > +  The entry node specifies a single entry in the firmware.
> > +
> > +  Entries have a specific type, such as "u-boot" or "atf-bl31". If the type
> > +  is missing, the name is used as the type.
> > +
> > +  Note: This definition is intended to be hierarchical, so that entries can
> > +  appear in other entries. Schema for that is TBD.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^[-a-z]+(-[0-9]+)?$"
>
> Why do you need this?

It seemed to be needed in dt-schema. I will drop it.
Regards,
Simon

