Return-Path: <devicetree+bounces-8504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B116E7C8657
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4FAFBB209A8
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 13:04:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A726C15492;
	Fri, 13 Oct 2023 13:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JCy9AsMh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B085914ABD
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 13:04:26 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1038E5
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 06:04:22 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a7c011e113so27784927b3.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 06:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697202261; x=1697807061; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zTDB06WuV7DXLenpqB3BP0igc3WK0O/XPFiYBVmb3IU=;
        b=JCy9AsMhCsEJpZNLPuzbxfnYI5o/ucSnolkreMMh8kvmLAYgwppmTzYB8GmjDfSAj0
         2RssITkwLF3FShl5r7I0drYyO++Ea/+CmWaCD8hm/CzQmLqIUJdfKoX0rcivhPs/d+7m
         OWrhdZ5vfCDS99xOUscuzWm8MIlSuc36mdlpTZxeZsWB630kyvHu3T+HSu/cjVos0EYG
         qlQnKnvZp0aYud9mXQKivhC1EQd0On6KDEsxeifr/vy5zXrKBzC3P5rIXteujSHN/8FM
         /JdOdn+A/6j+5rPYWA22KxJ1AqhV858YslVI5S2Hora6ubk+34RFeqwT7A+bbLAFRe33
         xh/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697202261; x=1697807061;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zTDB06WuV7DXLenpqB3BP0igc3WK0O/XPFiYBVmb3IU=;
        b=F607b8jyHKzI5DrGzbT2xXXDJBA4UHgXYTRlLpruHm67kdz/k0XmmJ/5YV1hK5QUsk
         VCB5F0sMrFUYW1I8fgFq9nd5JjZFf8e3nWpBzfm2OkXy7Ls3Gu8YC4bGCuyDdXZ3zjKz
         Vv8f77KkZPeXtTKQjSxlPxYbOz/fizqntQamwl3Ubotad4ZfA2KzoSuZUQk4slJeUk6f
         bEnqWIHA3oxqvD9s/E6Xma5cwj5My6gssvWM+s9gf2K7ClZtZIxndZPKjOe2reAsD/zd
         wZ87wq/u/Bir7c5hxyf6GvM1xNfn+jW5eLf1EdsNoj8wgrMNDqYZ7uZw7n2POc41+Uge
         XezQ==
X-Gm-Message-State: AOJu0YzMEHa10FK0+pza2VjQ3z5t5ZR6QnF929s8ZmqewUqsFdSQkEzh
	i5D2ZkswUhvKxtOFP24wfW1OQvsTBTjEjGh8mAbwnA==
X-Google-Smtp-Source: AGHT+IH8FM/iWk8oBbKZNdvfP7rzi0aGHHvSU3/uiwbyENQSYy2btpQIq4hLmrd+2uOljN+UDzs8nEi0TOWfys/whVM=
X-Received: by 2002:a0d:d183:0:b0:59b:5170:a0f3 with SMTP id
 t125-20020a0dd183000000b0059b5170a0f3mr30546187ywd.36.1697202261559; Fri, 13
 Oct 2023 06:04:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013-marvell-88e6152-wan-led-v1-0-0712ba99857c@linaro.org>
 <20231013-marvell-88e6152-wan-led-v1-2-0712ba99857c@linaro.org> <d971d7c1-c6b5-44a4-81cf-4f634e760e87@lunn.ch>
In-Reply-To: <d971d7c1-c6b5-44a4-81cf-4f634e760e87@lunn.ch>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 13 Oct 2023 15:04:10 +0200
Message-ID: <CACRpkdYocdsrsydHwe_FF--6g-Y_YwxHXF6GUTe3wRY0suSCCg@mail.gmail.com>
Subject: Re: [PATCH 2/3] RFC: dt-bindings: marvell: Rewrite in schema
To: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Russell King <linux@armlinux.org.uk>, Florian Fainelli <f.fainelli@gmail.com>, 
	Vladimir Oltean <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Christian Marangi <ansuelsmth@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Andrew,

thanks for reviewing!

On Fri, Oct 13, 2023 at 2:43=E2=80=AFPM Andrew Lunn <andrew@lunn.ch> wrote:

> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - enum:
> > +          - marvell,mv88e6060
>
> The 6060 is a separate driver. Its not part of mv88e6xxx. So it should
> have a binding document of its own.

It really doesn't matter to the DT bindings.
It is not the job of DT to reflect the state of Linux.

In another operating system they might all be the same driver.
Or all four variants have their own driver.

If the hardware is distinctly different so a lot of the properties
are unique then it may be warranted with a separate DT
binding, for the sake of keeping bindings simpler and
coherent.

> > +  '#interrupt-cells':
> > +    description: The internal interrupt controller only supports trigg=
ering
> > +      on IRQ_TYPE_LEVEL_HIGH
> > +      # FIXME: what is this? this should be one cell should it not?
> > +      # the Linux mv88e6xxx driver does not implement .irq_set_type in=
 its irq_chip
> > +      # so at least in that implementation the type is flat out ignore=
d.
> > +    const: 2
>
> This interrupt controller is for the embedded PHYs. Its is hard wired
> active high.

Hmm.... I need feedback from the DT people here. It does have a
polarity, but the polarity cannot be changed. So shall we encode this
always the same polarity in the flags cell or skip it altogether?

I'm uncertain. The currens scheme does reflect a reality.

> > +  mdio1:
> > +    $ref: /schemas/net/mdio.yaml#
> > +    unevaluatedProperties: false
> > +    description: Older version of mdio-external
> > +    deprecated: true
> > +    properties:
> > +      compatible:
> > +        const: marvell,mv88e6xxx-mdio-external
>
> The driver only looks at the compatible. It does not care what the
> node is called. So you are going to need to change the driver if you
> want this in the schema.

Yeah, thats what patch 3/3 does :D

Yours,
Linus Walleij

