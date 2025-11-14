Return-Path: <devicetree+bounces-238566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 91ABEC5C5AA
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 10:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F12A1352BB2
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACCD3306D52;
	Fri, 14 Nov 2025 09:37:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com [209.85.217.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBD003081DE
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 09:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113074; cv=none; b=GEkgMQtrHm5v46MOXUjik6ShqENwwvlFRHlRr6myzLrv1K0fprpS7dnhlSsJ2An7Mg5Y0vuYbDXAtXmkf9aZsPRtKSQmmF3TBeE+G55b4E0OK+kVqxbD7Wnp8mk3prPShbSR5/QHtfdaEYSupXrTD+5scjaLz1hJ9mx85rmCJAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113074; c=relaxed/simple;
	bh=wTzVYr5CLMbxZcELo4IOLIgxiHBUFwH2iRqyR1aLWAI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZDCeONk9rykL9xtRodzSZhQ1yqC5xAY0MPYgLCukUZQvNaLcLMW2DDSWtfBlKEkhH9NokcR0/9lWYwRN6IsTLRX8SRVxQyzy+Ooime4+ivVS8al1TE3nWbAUCJ68Poy7CuczEjGz48WZpFQNy53PYhsZAi7OY9hISJrfaMiNPnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f46.google.com with SMTP id ada2fe7eead31-5dbd8bb36fcso1381322137.1
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:37:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763113072; x=1763717872;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dAUhmj06/ScrYHjhgghrsX3axL4gTCjs2QTqxYaasK8=;
        b=jAt1+C1rvcqHF0qyk5CrFtFBnNK+M9lZ/dg2hzK7ZjcS8jHtA6p13RZxvbVm5AYpN/
         xeyYa3LPto+dKKTUIr/mq8ehupEBYTqE/kHY5jhoKcEgPRoxJkqb9Fxx1d2zMtE+5I8C
         cXRjIY3W0PnLeUVKh8n7uLOZLlhN4R84nH/oSgZZMDpaZClj0VMrvqLygBsyp/YzJ/WF
         j5jyi7xsHZ89uZmeITyL8ZB/hLrQVvWbPloZqROCuwRDFPaK1UCAV6kZu9cavObRBlu/
         QadqIQOx0opP7Qp7Be7BQY0yqI3wGdOO4GrKUPR4/1FQ9tJFWqY+khMKEfJFfpheFNfu
         W8Qg==
X-Forwarded-Encrypted: i=1; AJvYcCWth/kynHh9uCNt/EMojjlKzKFxSvMWsjCW4Es1AEUq0PdJMlBeI5rK5EemaKbRbLv8QZe3gV6AegBF@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5OM7fenuKPeczcCRaBAbRAvicw5WLYUxgANNybLj2lMThHsN7
	O5EqkzwCdZYgfhwEBkniktH8FVmTlosN0OP0cQWwLuDWiFqB94dap8QSunEwSozq
X-Gm-Gg: ASbGncs+0fJTSJePLPsd8OsOkDUhbjJqdtTVR38QyT2sxQGnILTwxOYhCs+oXR6E54R
	S1J9eowGNU0+Q9wjoTPM76YY+zzxeaVKnM4HZj8h+SAFnBh+FP6hW4DN66LQPrQ1FJZp7EH3R6P
	iLuJJk8TE8lW7yNl80W2bg37lY6Z1buO/+Yd5VXgYM30bFIuaUKvBR0cBjtGKf8r5l3Q7HionBi
	0u0h5LHeb9lG32QmFS0VuuEY4kvOSXmqK5peTOrs3CChU30y1TrA4nzwsOaXJZe/vdxqxjamOzy
	Yzsum2sC6T/pzYUWFp0NtRWp63x8jAG/qywuUP+oEQL/PcuK6Bo1zqb6YsqMMM41stR0RRLvsXc
	oyVZCgQzytjq2HuIdLjcOE9G6vA7ffui0qP6mbYDuiO9Ugy5vqblfQddo+m06Eph/CM7n2DTvY+
	QeH88ub5NrXMPf4EGgkR9ZKyG5MXygf5vJ+upOmEYAU7z9N6Nk
X-Google-Smtp-Source: AGHT+IHXSkbWGjRZEeZ1Fag+kDgQSmB9Wn1X+TM3sPg5W6ruiDMsYQ1lOJP0u0Ss3N8ZpUhn2QvMuw==
X-Received: by 2002:a05:6102:5109:b0:5dd:a08e:5bac with SMTP id ada2fe7eead31-5dfb40ab9f8mr2879231137.6.1763113071836;
        Fri, 14 Nov 2025 01:37:51 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-937611964f5sm1428804241.10.2025.11.14.01.37.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 01:37:51 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-9372164d768so1594843241.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 01:37:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUGzqwxl6VFFf87g0HMdWRGqmOzkodYW/fzbO/GPhyzjiu/zmJzO6ko8DSGEQcfBCYK6MhM0hxRmAPA@vger.kernel.org
X-Received: by 2002:a05:6102:800d:b0:5db:f897:59f0 with SMTP id
 ada2fe7eead31-5dfb41e268cmr2558400137.11.1763113071580; Fri, 14 Nov 2025
 01:37:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027123601.77216-1-herve.codina@bootlin.com> <20251027123601.77216-9-herve.codina@bootlin.com>
In-Reply-To: <20251027123601.77216-9-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 14 Nov 2025 10:37:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdULa3Myv5M13mZnBfGRfpnCasRbDFSFsh-Yji+Gw3gycA@mail.gmail.com>
X-Gm-Features: AWmQ_bllwARgosfbTXod6oIXQrjpImVz4Lng-lsiZr7z4SHhmighCo7rwlxoBpU
Message-ID: <CAMuHMdULa3Myv5M13mZnBfGRfpnCasRbDFSFsh-Yji+Gw3gycA@mail.gmail.com>
Subject: Re: [PATCH v6 8/8] ARM: dts: r9a06g032: Add support for GPIO interrupts
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Hoan Tran <hoan@os.amperecomputing.com>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@google.com>, 
	Serge Semin <fancer.lancer@gmail.com>, Phil Edworthy <phil.edworthy@renesas.com>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Pascal Eberhard <pascal.eberhard@se.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Mon, 27 Oct 2025 at 13:36, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> In the RZ/N1 SoC, the GPIO interrupts are multiplexed using the GPIO
> Interrupt Multiplexer.
>
> Add the multiplexer node and connect GPIO interrupt lines to the
> multiplexer.
>
> The interrupt-map available in the multiplexer node has to be updated in
> dts files depending on the GPIO usage. Indeed, the usage of an interrupt
> for a GPIO is board dependent.
>
> Up to 8 GPIOs can be used as an interrupt line (one per multiplexer
> output interrupt).
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Thanks for your patch!

> --- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> +++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
> @@ -534,6 +534,14 @@ gpio0a: gpio-port@0 {
>                                 #gpio-cells =3D <2>;
>                                 snps,nr-gpios =3D <32>;
>                                 reg =3D <0>;
> +
> +                               interrupt-controller;
> +                               interrupt-parent =3D <&gpioirqmux>;
> +                               interrupts =3D < 0  1  2  3  4  5  6  7
> +                                              8  9 10 11 12 13 14 15
> +                                             16 17 18 19 20 21 22 23
> +                                             24 25 26 27 28 29 30 31 >;

I would drop the spaces after/before the angle brackets.

> +                               #interrupt-cells =3D <2>;
>                         };
>
>                         /* GPIO0b[0..1]   connected to pins GPIO1..2   */

> @@ -620,6 +644,23 @@ gpio2b: gpio-port@1 {
>                         };
>                 };
>
> +               gpioirqmux: interrupt-controller@51000480 {
> +                       compatible =3D "renesas,r9a06g032-gpioirqmux", "r=
enesas,rzn1-gpioirqmux";
> +                       reg =3D <0x51000480 0x20>;
> +                       #interrupt-cells =3D <1>;
> +                       #address-cells =3D <0>;
> +                       interrupt-map-mask =3D <0x7f>;
> +
> +                       /*
> +                        * Example mapping entry. Board DTs need to overw=
rite
> +                        * 'interrupt-map' with their specific mapping. C=
heck
> +                        * the irqmux binding documentation for details.
> +                        */
> +                       interrupt-map =3D <0 &gic GIC_SPI 103 IRQ_TYPE_LE=
VEL_HIGH>;
> +
> +                       status =3D "disabled";

So this is disabled by default (despite the driver being enabled by
default), because the board has to provide the proper real interrupt-map
anyway.  Makes sense.

> +               };
> +
>                 can0: can@52104000 {
>                         compatible =3D "renesas,r9a06g032-sja1000", "rene=
sas,rzn1-sja1000";
>                         reg =3D <0x52104000 0x800>;

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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

