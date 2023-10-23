Return-Path: <devicetree+bounces-10806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8529A7D2C48
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 10:12:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E5C41B20CC6
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 08:12:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0369111A2;
	Mon, 23 Oct 2023 08:12:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZioSy2MF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D794A1119A
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:12:49 +0000 (UTC)
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8450170D
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:12:34 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-d9a7a3e17d1so2751742276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698048754; x=1698653554; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOXl3zXklTx9wCua1qCqiebuh4VwsRY3XD6ewu+wjFQ=;
        b=ZioSy2MFMKiDfxY4LAACQLtfERaN46XQrEIqIk7alIHhPrxg4u1+Ru9+hYcN4jK9sm
         sQigmk7m2poHDqdANTEn4tnzHWnbaTW1x6t5tfEmE+mV4mmYcMGXlDY0sUO5ATMPrLno
         Ka5KXtwQqVwwHqUKGVFPjFBmTzoQFQOMsHl6J2eFx3mjLLiksXRfTiownLf6PaHlP5L8
         lORk6QpC+nqwQ7y3TCGM6wI9ZqicRhuwAtc+dLo6L0IU1ewXf43Wtj2vUtPlBcEQhF7r
         cki34jucVJPr1K0DPTI2tlgR27yZYMznirQsypeQr1TpHbnu/GHOjgqbdVI1UKDikgHr
         xG0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698048754; x=1698653554;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOXl3zXklTx9wCua1qCqiebuh4VwsRY3XD6ewu+wjFQ=;
        b=q51zwjBgDYh90AqXZJXp9bDozeqeehpzGT37hom6a+h+KedExj2hv50Fz/BzPao/qI
         l/mRN6aWgsPPjb7ndXlIunb4RqcUU31ncAelldYNs5yqQ2m8jWc0O5TbgD4Crqbs2lwF
         7iYHVWbqnHVc3qDA0NxVxrZdFWTb4cbpoItd3DMqUVY2O6daGIboBCR/pOR7FF4dyLWz
         L9qMwAX1vdsmJQnPJmHnvSb8apiNC4CZD+QA9mVApuxWDgIFJXDBkYzlenT6m17gASJy
         kdHuifCUQib9by0S0tTKRRdNdY4eovAIuK88wnWbPahWkrl4pmEoX+01LHrRCasHVyCM
         CEvg==
X-Gm-Message-State: AOJu0YzAxROl/lzO81Zo7qaHhaQawMiQxXUAl9J/dnIxn0j8Q+EfjxGn
	r5wuBNIvaFU0hupRVnnXR72p+40+TmvCe5eYh9NDrA==
X-Google-Smtp-Source: AGHT+IFXX0nvmPQFS5PyZqKJz1HMNh/MzcEwcEmsEUeQld3hNYTdxItm6I8zeBAdbTNsZXsNtjg2DeR9/VfiwNASl7c=
X-Received: by 2002:a25:455:0:b0:d7b:9211:51a5 with SMTP id
 82-20020a250455000000b00d7b921151a5mr7215623ybe.44.1698048753902; Mon, 23 Oct
 2023 01:12:33 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org> <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com>
 <ZSTgTC4cFFpofYAk@octopus> <CACRpkdYD6pkccYoy90AfzV3KT7oYkBPD2_4ZW-AXzT1eUVpchA@mail.gmail.com>
 <ZS3yK/f12Mxw9rXe@octopus>
In-Reply-To: <ZS3yK/f12Mxw9rXe@octopus>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 23 Oct 2023 10:12:21 +0200
Message-ID: <CACRpkdarDrVkPmyDawhZ+H94S4F=dtDSDVuKegi-eNfQNDY3rg@mail.gmail.com>
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Rob Herring <robh@kernel.org>, sudeep.holla@arm.com, cristian.marussi@arm.com, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Takashi,

sorry for slow response :(

On Tue, Oct 17, 2023 at 4:32=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> > > > We can probably mandate that this has to be inside a pin controller
> > > > since it is a first.
> > >
> > > Yeah, my U-Boot implementation tentatively supports both (inside and
> > > outside pin controller). But it is not a user's choice, but we should
> > > decide which way to go.
> >
> > OK I have decided we are going to put it inside the pin control node,
> > as a subnode. (I don't expect anyone to object.)
>
> While I'm still thinking of how I can modify my current implementation
> to fit into 'inside' syntax, there are a couple of concerns:
>
> 1) invoke gpiochip_add_data() at probe function
> Probably we no longer need "compatible" property,

The DT binding people made it clear to me that they really
like compatibles for this kind of stuff so we should probably
keep it.

> but instead we need to
> call gpiochip_add_data() explicitly in SCMI pin controller's probe
> as follows:
>
> scmi_pinctrl_probe()
>     ...
>     devm_pinctrl_register_and_init(dev, ..., pctrldev);
>     pinctrl_enable(pctrldev);
>
>     device_for_each_child_node(dev, fwnode)
>         if (fwnode contains "gpio-controller") {
>             /* what pin_control_gpio_probe() does */
>             gc->get_direction =3D ...;
>             ...
>             devm_gpiochip_data_add(dev, gc, ...);
>         }

I think it is better of the pin controller just parse and add any
subdevices (GPIO or other) using of_platform_default_populate()
(just grep for this function and you will see how many device
drivers use that).

What is good with this approach is that if you place this call
last in the probe() we know the GPIO driver has all resources
it needs when it probes so it won't defer.

> 2) gpio-by-pinctrl.c
> While this file is SCMI-independent now, due to a change at (1),
> it would be better to move the whole content inside SCMI pin controller
> driver (because there is no other user for now).

That works, too. I have no strong opinion on this subject.

> 3) Then, pin-control-gpio.yaml may also be put into SCMI binding
> (i.e. firmware/arm,scmi.yaml). Can we leave the gpio binding outside?

There is no clear pattern whether to put subdevice bindings into
the parent device binding or not. Maybe? A lot of MFD devices does
this for sure.

> 4) phandle in "gpio-ranges" property
> (As you mentioned)
> The first element in a tuple of "gpio-ranges" is a phandle to a pin
> controller node. Now that the gpio node is a sub node of pin controller,
> the phandle is trivial. But there is no easier way to represent it
> than using an explicit label:
> (My U-Boot implementation does this.)
>
> scmi {
>     ...
>     scmi_pinctrl: protocol@19 {
>         ...
>         gpio {
>             gpio-controller;
>             ...
>             gpio-ranges =3D <&scmi_pinctrl ... >;
>         }
>     }
> }
>
> I tried:
>     gpio-ranges =3D <0 ...>; // dtc passed, but '0' might be illegal by s=
pec.
>     gpio-ranges =3D <(-1) ...>; // dtc passed, but ...
>     gpio-ranges =3D <&{..} ...>; // dtc error because it's not a full pat=
h.
>
> Do you have any other idea? Otherwise, I will modify my RFC
> with the changes above.

If you have the GPIO node inside the pin controller node
and have all the details of the existing ranges available, there
is no need to put that into the device tree at all, just omit it?

Instead just call gpiochip_add_pin_range() directly in Linux
after adding the pin controller and gpio_chip.
C.f. drivers/pinctrl/pinctrl-sx150x.c for an example of a driver
doing this. In this case the SX150X is hot-plugged (on a slow
bus) so it needs to figure out all ranges at runtime anyway.

Yours,
Linus Walleij

