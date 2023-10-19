Return-Path: <devicetree+bounces-9997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F3B7CF4D9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DE24B281F25
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED393179AA;
	Thu, 19 Oct 2023 10:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31DF11798C
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:13:25 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9F8FAB;
	Thu, 19 Oct 2023 03:13:24 -0700 (PDT)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-5a84204e7aeso65014587b3.0;
        Thu, 19 Oct 2023 03:13:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697710404; x=1698315204;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ueVyERLupOWZhKoj+SNssW24wTSLCgkYTKYz8h4y1RM=;
        b=YnOCKMQiD9C/Sel+jbYLet+aQK3GhU58LTfeboSleJeiAbNaZEkgiA6UdkBGsVQwLh
         ZU4qwGMxaJF2SvjRMl+8nzcZV9uLzqn2wLwvXaxmky/Mi0arvySpkeIFjwvZeGzcCEYL
         HxkPWhxNJTSVwSycZDpb8feVHE1AIXHQbZirM4F+OiVTYU6v1jQayLvMvQC0OJ5HkBEc
         5KHsnHI2+Ow7HwJ0s8RTq27XIFrauSi2tvMVm8qWEyF6p6Es8zPTWtOm086K+cny5pDv
         oxHEAvsAT7W75bfQRlz4o8zZMAgQaRsRog1wwn2gv2jdztocVggKdlSgBzdSuVWU8KOv
         6JMg==
X-Gm-Message-State: AOJu0YxuMQ0vvLWRC5Fp1mb2NRUeRJMqx0qPjC5cMR84jBYbrs3OclmM
	ewLB1JGIuYFM4w69q7p8AFFE8cvhyhpUSw==
X-Google-Smtp-Source: AGHT+IG9PLqA1Eo4NcE78tIWBOofiVo6xqgWFcEzka+pJQ8yHbhjef1YhW25nooaN1vznww+fP333g==
X-Received: by 2002:a05:690c:f0f:b0:5a7:fcae:f3e2 with SMTP id dc15-20020a05690c0f0f00b005a7fcaef3e2mr2516003ywb.43.1697710403897;
        Thu, 19 Oct 2023 03:13:23 -0700 (PDT)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com. [209.85.128.180])
        by smtp.gmail.com with ESMTPSA id i83-20020a819156000000b005a7bf9749c8sm2326246ywg.4.2023.10.19.03.13.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 03:13:23 -0700 (PDT)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5a7c93507d5so93135847b3.2;
        Thu, 19 Oct 2023 03:13:23 -0700 (PDT)
X-Received: by 2002:a81:4948:0:b0:5a8:d86b:7469 with SMTP id
 w69-20020a814948000000b005a8d86b7469mr2016094ywa.8.1697710401858; Thu, 19 Oct
 2023 03:13:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230619122212.304962-1-tomi.valkeinen@ideasonboard.com> <20230619122212.304962-6-tomi.valkeinen@ideasonboard.com>
In-Reply-To: <20230619122212.304962-6-tomi.valkeinen@ideasonboard.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 12:13:05 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV9aRup14BwD9Do2hpiu=m2tjy14-VwVbSe1ckAbQQ-kw@mail.gmail.com>
Message-ID: <CAMuHMdV9aRup14BwD9Do2hpiu=m2tjy14-VwVbSe1ckAbQQ-kw@mail.gmail.com>
Subject: Re: [PATCH v15 5/8] dt-bindings: media: add TI DS90UB960 FPD-Link III Deserializer
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Andy Shevchenko <andriy.shevchenko@intel.com>, 
	Matti Vaittinen <Matti.Vaittinen@fi.rohmeurope.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, Wolfram Sang <wsa@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Michael Tretter <m.tretter@pengutronix.de>, Hans Verkuil <hverkuil@xs4all.nl>, 
	Mike Pagano <mpagano@gentoo.org>, =?UTF-8?Q?Krzysztof_Ha=C5=82asa?= <khalasa@piap.pl>, 
	Marek Vasut <marex@denx.de>, Satish Nagireddy <satish.nagireddy@getcruise.com>, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tomi,

On Mon, Jun 19, 2023 at 2:27=E2=80=AFPM Tomi Valkeinen
<tomi.valkeinen@ideasonboard.com> wrote:
> Add DT bindings for TI DS90UB960 FPD-Link III Deserializer.
>
> Signed-off-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Thanks for your patch, which is now commit 313e8b32c6166853 ("media:
dt-bindings: media: add TI DS90UB960 FPD-Link III Deserializer")
in v6.6-rc1.

> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml

> +  i2c-alias-pool:
> +    minItems: 1
> +    maxItems: 32
> +
> +  links:
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      '#address-cells':
> +        const: 1
> +
> +      '#size-cells':
> +        const: 0
> +
> +      ti,manual-strobe:
> +        type: boolean
> +        description:
> +          Enable manual strobe position and EQ level
> +
> +    patternProperties:
> +      '^link@[0-3]$':
> +        type: object
> +        additionalProperties: false
> +        properties:
> +          reg:
> +            description: The link number
> +            maxItems: 1
> +
> +          i2c-alias:
> +            description:
> +              The I2C address used for the serializer. Transactions to t=
his
> +              address on the I2C bus where the deserializer resides are
> +              forwarded to the serializer.

make dt_binding_check:

Documentation/devicetree/bindings/media/i2c/ti,ds90ub960.yaml:
i2c-alias: missing type definition


Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

