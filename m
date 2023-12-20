Return-Path: <devicetree+bounces-27442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3782981A737
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 20:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F1B862873C4
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 19:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05BA3482F6;
	Wed, 20 Dec 2023 19:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hsJP9FXo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90929482F3
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 19:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dbdb01545f6so5036276.3
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 11:21:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703100062; x=1703704862; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ps3P/pvG74IGGnT8GqUmphrkn8oo7nKEcsYAKREB89c=;
        b=hsJP9FXowB9Go9/CUlXoDwre8bu3Ej24ZqEXSduvqsC47KX5v3WTHf50QCkcc7SQfb
         ajJiPHl/tNndtgdXZBVbzN7PDDBQrV0b3gXwoF7lypm0YWCZjiBjTmar/YpgL1Nga5gm
         vjEGReyWvXEXkIk+r+egyjLaZ8vmW/VRkln5MC5A71NKYTYQpnOnvuU1c0HqpF/C1396
         GFYJAV9GPf1+/UPMxx+BmLVP9SXPEOAUGM7G6j9x9KtZNMdbYAxDyxtWcvyr/Lqh3Icv
         t90E88kJ5A+zJNZ5/bJksfXbyYizKUEDGXG35IkxVGHBUU/TLiLVyYMOPFIikPJRwEN5
         I25w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703100062; x=1703704862;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ps3P/pvG74IGGnT8GqUmphrkn8oo7nKEcsYAKREB89c=;
        b=OZDmuOl0Bnq9V6NP0+vTNm+kEMDcgq3rkMKO5ZkjNoUToofFLF2kizRy+bm4UY4B7M
         iLqnSl2A3+tZE/e8hkc83Pbkng1ZLEz3AOh28S1ndOfU4VUc6EiD1UQ3HRQ090eaW4JX
         C3K3oJzpBS5mtUX6MAbz+3GKQc3FJWS94NXrDYQ31q/pjCbAOgiFrBTMXb0zD95eYf2O
         CcHJnHlB+PwIsFVJes4gstxfnXLUWGUoWrYAsWrHqqOmSzM5M96KlMtnUJYfB7E9osiQ
         VV4BX3PyUeNmbXVfBWjA+ya2Za4fEkveRFXHbRHtPimjPaS5myFF2YHW1BOdhetfH0np
         y6DQ==
X-Gm-Message-State: AOJu0YxGG7S1XXlhuOgTlAJiTyfNOLRMM8k/u1gBB+AQ6ptkLz+1ERLw
	xtbpXHIUf7FJ1k/fkl50NxNRqowQh63zquxQ0a8R6w==
X-Google-Smtp-Source: AGHT+IE0/lC2Cx520RUvUKQoxpsf0wmqJ8BQXaOwxQm86Cv5E07vosKnSijGbt5II7X94Q8Sms9uxQ9pRCNxE/GNr9k=
X-Received: by 2002:a25:1c1:0:b0:dbd:b165:43d with SMTP id 184-20020a2501c1000000b00dbdb165043dmr247285ybb.18.1703100062573;
 Wed, 20 Dec 2023 11:21:02 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com> <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
In-Reply-To: <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Dec 2023 20:20:51 +0100
Message-ID: <CACRpkdZf09uKr+ka0_rsw5kHMjjQbaGypn2fx2-QobLFBKYrtQ@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Emil,

thanks for your patch!

On Fri, Dec 15, 2023 at 3:39=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:

> +  The TH1520 has 3 groups of pads each controlled from different memory =
ranges.
> +  Confusingly the memory ranges are named
> +    PADCTRL_AOSYS  -> PAD Group 1
> +    PADCTRL1_APSYS -> PAD Group 2
> +    PADCTRL0_APSYS -> PAD Group 3

Really, even in the documentation? If you look at the layout on the actual
chip, does a pattern emerge?

I think some use the north/south/east/west as group names with the BGA
chip facing up with the package text correctly readable then it is a bit
like a map.

> +          function:
> +            $ref: /schemas/types.yaml#/definitions/string
> +            enum: [ "0", "1", "2", "3", "4", "5" ]
> +            description: The mux function to select for the given pins.

So why is the opaque names "0", "1" etc used, and they will be the same for
all pins I bet. Most drivers use a string identifying the actual function h=
ere.
Such as "i2c", "gpio", etc.

Names that are just figures are *impossible* to understand without access
to a datasheet.

The point of device trees sources are to be human readable, strings of
magic numbers are not human readable at all.

> +          bias-disable: true
> +
> +          bias-pull-up:
> +            type: boolean
> +
> +          bias-pull-down:
> +            type: boolean
> +
> +          drive-strength:
> +            enum: [ 1, 2, 3, 5, 7, 8, 10, 12, 13, 15, 16, 18, 20, 21, 23=
, 25 ]

milliamperes? Then use drive-strength-microamp.

If not, explain what each setting means, i.e. the number of max microamps.

At which point using drive-strength-microamp and a translation table in the
driver may be a better idea.

The only reason to use opaque numbers is if 1, 2 (etc) mean something like
"number of driver stages" with a current output that varies with technology=
.

> +          thead,strong-pull-up:
> +            oneOf:
> +              - type: boolean
> +              - $ref: /schemas/types.yaml#/definitions/uint32
> +                enum: [ 0, 2100 ]
> +            description: Enable or disable strong 2.1kOhm pull-up.

Just use bias-pull-up with an argument.

bias-pull-up =3D <2100000>;

No argument would be the default setting.

No need for custom bindings.

> +        uart0_pins: uart0-0 {
> +            tx-pins {
> +                pins =3D "UART0_TXD";

Pins have reasonable names, but...

> +                function =3D "0";

What about function =3D "uart_0" hmmm?

Yours,
Linus Walleij

