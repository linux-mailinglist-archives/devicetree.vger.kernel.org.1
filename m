Return-Path: <devicetree+bounces-11224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B0D7D4CA8
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 863B41C20BC2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:40:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55EF424A05;
	Tue, 24 Oct 2023 09:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="v01xorbj"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF86A24A03
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 09:40:18 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B48412B
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:13 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a7c7262d5eso44021117b3.1
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698140412; x=1698745212; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrczhLGD57ThZZUAC+aPmJYkJuVGn0gGizSYS9IZ/6k=;
        b=v01xorbj2vmZyjz9Rj3CPHBIV7wt17LnkRj58c/9qqkOTe50XFHd8P4ADFnUKxerpe
         RFmDuMFq4jBB7hxX14M/Q+/55PUVGnuzOUX4ev9I8YauKRjT5ROYX3COc901GAOPV3/0
         2M0/zlmH1AAIrPKja7YymH7a9Ldxfvc/k9P3Jy106hSgsBKwV0XBdVQI0nQTrzoHjyyq
         2bl09BqWn1REMeIRamilUfr2RlfDVXNU4oG2Z1HXmJsSofgXOvepzNdfMVmykCwbA3Q1
         eTR3h84GDKk9V4U4HlB46ufjMhodhzwMtex85Bpqc4YPM99wn+656+hPPl4gVpsQpbP1
         EFmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698140412; x=1698745212;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nrczhLGD57ThZZUAC+aPmJYkJuVGn0gGizSYS9IZ/6k=;
        b=uY96bh9GBmncnbyARF6FgIjClKKW0r0VnzQXmlWskIn5OoPkU98wYDTJd3xZOjLJYy
         U9lvo3jGaD+CEOJ9kDueMDHk9Tr+em4VN7D3YBwmp+qDFzdGRQWYIeLd0VtwD3KAYd1W
         OZmppfa8qyykDKznKKnxFVVKrEJ0MoCNuiDv8XnRmdOW+9MmY1B74O5iWIKooa9U/plp
         QKIzRLbXXfFvWPERLwtInH8nfLuUQdZ89oVgQgoKy/8usWbgxD6fcj3Pobjo4zf2yVEU
         wTF74ZmT+YUjcHiu49botno4S5Lt8tOTvzYEY8fAwaL4iXjd655aPvKbhuD3TbQMIpk+
         vQew==
X-Gm-Message-State: AOJu0Yw4jA9sjq1iNNEKGxjHxyTGARX67RwQ7EU7askcPSt4JbJKgl0p
	s2MAyyJA62WrMT1mkcSIjBOKpv3iN0ZuwDxT6+wz3A==
X-Google-Smtp-Source: AGHT+IEBUnte3cbamxmESNlJIBXSuCRqI8PlmjdcCiUugmIDijJyrb7FLwNcmIUw9OQ4VyjnZgimIJ0DGWbebl3BoME=
X-Received: by 2002:a05:690c:f87:b0:59f:b0d9:5df2 with SMTP id
 df7-20020a05690c0f8700b0059fb0d95df2mr15122020ywb.0.1698140412349; Tue, 24
 Oct 2023 02:40:12 -0700 (PDT)
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
 <ZS3yK/f12Mxw9rXe@octopus> <CACRpkdarDrVkPmyDawhZ+H94S4F=dtDSDVuKegi-eNfQNDY3rg@mail.gmail.com>
 <ZTduWx7CH1ifI5Uc@octopus>
In-Reply-To: <ZTduWx7CH1ifI5Uc@octopus>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 24 Oct 2023 11:40:00 +0200
Message-ID: <CACRpkdba=echR=rZYKVbROfaOp4mzjTQ9RphHFyzqSNgE1jZqg@mail.gmail.com>
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

Hi Takahiro,

On Tue, Oct 24, 2023 at 9:12=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> > I think it is better of the pin controller just parse and add any
> > subdevices (GPIO or other) using of_platform_default_populate()
> > (just grep for this function and you will see how many device
> > drivers use that).
>
> IICU, then, we will have to add a "compatible" to pinctrl node
> to make of_platform_default_populate() work as expected. That is:
>
> scmi {
>     ...
>     protocol@19 {
>         compatible =3D "simple-bus"; // <- added

Hm right, but you could also use
of_platform_populate(np, NULL, NULL, dev);

Then the compatible match is of no concern.

Sorry for my lack of attention to details :/

If you want to restrict the population to a few select compatibles
(maybe only "pin-control-gpio") then you can do
that with

const struct of_device_id of_scmi_protocol_19_match_table[] =3D {
        { .compatible =3D "pin-control-gpio", },
        {}
};
of_platform_populate(np, of_scmi_protocol_19_match_table, NULL, dev);

> Is this what you meant?
> In this case, however, "protocol@19" has a mixture of sub-nodes,
> most are pinconf definitions which are the properties of the pin
> controller, while "scmi_gpio" is a separate device.

That looks good to me, it makes sense to have the GPIO as a subnode
here and mandate it with a compatible to match.

> The code will work, but is it sane from DT binding pov?

Let's let the DT people jump in on that.

> > Instead just call gpiochip_add_pin_range() directly in Linux
> > after adding the pin controller and gpio_chip.
> > C.f. drivers/pinctrl/pinctrl-sx150x.c for an example of a driver
> > doing this. In this case the SX150X is hot-plugged (on a slow
> > bus) so it needs to figure out all ranges at runtime anyway.
>
> Are you suggesting implementing a custom function for parsing "gpio-range=
s"
> and calling it in pin_control_gpio_probe() instead of a generic helper?

The generic helper will always be attempted but if there are
no ranges in the device tree, it will just continue without adding
any ranges. I suggest putting *no* ranges into the device tree.

> Or do you want to always map all the pin controller's pins to
> gpio pins as sx150x does?

I think since the SCMI firmware knows about the available line
and pins etc, it makes sense that the driver comes up with the
applicable ranges on its own (derived from the information from
the SCMI firmware) and add them, instead of trying to put that
information into the device tree at all. Just omit it, and make your
own ranges, and add them in the Linux driver with
gpiochip_add_pin_range() without involving DT at all when defining
the ranges.

I'm sorry if I'm unclear sometimes.

Yours,
Linus Walleij

