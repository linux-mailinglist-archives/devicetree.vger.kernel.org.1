Return-Path: <devicetree+bounces-230643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EEAC04B65
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 09:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DFD5C4006D7
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:24:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 071A22C3768;
	Fri, 24 Oct 2025 07:24:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3D42BEFEF
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 07:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761290681; cv=none; b=dIQuzMk0LqlfyE3mYshZMOw9iYOhbThCT2IHjrmizvq/ZrYkIl55nDX8SIHkU41ybvB66JE5kmmbhUn+nhjKuL2fxK+KI8n6JoyPBVX17gAljoGZh4Mt+9pzQEH2N9+8ouW2skaJZ/e58ELSDr3Wm3O+Yah/gc8/p9eRIWFDG8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761290681; c=relaxed/simple;
	bh=TYYDo+7DxkUKjmm+P+3sxJh+gjqzjUwg71o/dX7xBWQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oRE1YsfewHJywjdD/seF4zpXgbG+xVXU8QNBciLKT6f73PV1GFCkIE2UjcIQlF5CD39wAi93JeEoNnhY2gnenG9ehOins/diiHVMhIzrXW2muAWbkgCArFy+43GzKgCG+aDxA2/sYbiSyObfipQpy43Orb6zUoXlr+PS5oE+kJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-551b9d94603so547906e0c.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:24:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761290679; x=1761895479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3WV+VoszRFKObS+2w1jR5z8x4F6hvRxXouyKsJGXVw=;
        b=WufmdWinE5sCaBEcLP5EUrqi4vkYBOHyVnIcCq8IrCeRlEJPJmtycwbxbGk6wc/hHS
         ifYGUbjOQJn4x2rVDNpl1oK7lKdejRN7IE1TcU6VOoZHUvyVKA8oKUkk5UCcD1WY5gDf
         EvBwtQWq1rEdeKS4GTGFfjtgk5QYBggHhkiXXsOnZWP3CEYxOJykAPUZo4NH7Yh3+sGv
         ztqEZDESnrTME6fhtvgqxjd2XRkC1GBGIfGFkGLHj0Su/CJsBNAoNUZ9fRAYd5FUXR+c
         6trd6vNuxLBvf0XjS+lEo96vUwAOEJ3wHgQtakn7jjVO/pb6U13HJaAO0gKj6DEUIZ8x
         kiWA==
X-Forwarded-Encrypted: i=1; AJvYcCW+ZWd0ETP2dJdw60Gf1lzi5Tg2dDN2JVJMK1OmURAerSPhoNI6KckYEL1geVzrxU2FMUqaC0JSEZyL@vger.kernel.org
X-Gm-Message-State: AOJu0YwpzUe5LJnUzI4WpJWtSqKWfAhCS4+br13aIF6fMQc1hQNd12tl
	ZpeOhl9kyyZSMDq98IappZQq+Bbxv/V6smSu74yenHH3vHbeUFkbCwpHirz7+j5C
X-Gm-Gg: ASbGncs0NpVeIXmQnm5i9HvFP6GwWQ4Hw8JSQ90VUeWNJit84zPLHVep1CJGDVZcWDw
	XxyWxsWrptqjpY+5Ur25FYjThzpKxT06KfqUlZ+M/4cofi8YWaacr2qm+5X1YuZPs1yy8ISx6tn
	/G30ljDJtpkByvDXmb5DrldnofDZQH/+XhRSxI8vLQJ5KKuM7QEOD7YdN5AWyQAIAmj5ymIAdLS
	OWM5su61eFxS49EQdDeqX3PnvZlOsAjf9cA8pdRUJmun0YQEhMIJrmXjFB/4iblyLBGSoqnhTRk
	s1F8s1LvlbJJ/2D6JF6sEwSxO50tRbFgYM3qcyI/DW90olbLUuChAXgkSuCaAqXFurGnEfvSZt6
	ndPM4AgQZn2Ns09SW/T0huAhEzJE0xrY8tDq56r6S9D5zVSuMdhuZbygsF5Vc6WewnqnGRf9zm/
	LTkNzvxC1zY9qJ+6+owE6l+crX86OODJmUZF2Yyw==
X-Google-Smtp-Source: AGHT+IG8w6SEZC7khXK0f4h9xnI7WyPZx5J5AYTW0A7i7mUdg98QRPNYS0qYQFIpq7+XCZz/7AwSPg==
X-Received: by 2002:a05:6102:d94:b0:538:9b66:7655 with SMTP id ada2fe7eead31-5db3f8eaf0emr263429137.18.1761290678675;
        Fri, 24 Oct 2025 00:24:38 -0700 (PDT)
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com. [209.85.222.48])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2cca3dc6sm1847215137.12.2025.10.24.00.24.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 00:24:37 -0700 (PDT)
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-91bdf1a4875so597281241.1
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 00:24:37 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU9LCRNNDx+f5XI5YK+eG4goCKJrKRnKwYK+CCrfMQakn/14Yr7dNmeFhsT8I0s/od+fJpKML/yzeMh@vger.kernel.org
X-Received: by 2002:a05:6102:3581:b0:5d7:dec5:a464 with SMTP id
 ada2fe7eead31-5db3f8bbd6dmr232329137.10.1761290676888; Fri, 24 Oct 2025
 00:24:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020080648.13452-1-herve.codina@bootlin.com>
 <20251020080648.13452-8-herve.codina@bootlin.com> <CAMuHMdV03D_3b_JA2vzW4tE_QbkkT1bN1dm+zLLLX24oDHMj0Q@mail.gmail.com>
 <20251022150339.4c48649e@bootlin.com> <CAMuHMdWY=FbO6YG1jrd0OWfrpPpBzrqmBVcWnw7TnnsKPGgr8A@mail.gmail.com>
 <20251023152048.0e70a362@bootlin.com>
In-Reply-To: <20251023152048.0e70a362@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 09:24:25 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX=_6MGgti2NEL6FaChBhefFLBdjeam5Zts3+Yf-Ps3Gg@mail.gmail.com>
X-Gm-Features: AWmQ_bkc6C0U89yGzgj449WFrjiYqIBguZky57fXbpHAfhiWelGeFgRG-a9YogQ
Message-ID: <CAMuHMdX=_6MGgti2NEL6FaChBhefFLBdjeam5Zts3+Yf-Ps3Gg@mail.gmail.com>
Subject: Re: [PATCH v5 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
To: Herve Codina <herve.codina@bootlin.com>
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
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Thu, 23 Oct 2025 at 15:21, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Thu, 23 Oct 2025 13:30:53 +0200
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > I have in mind a use case that can lead to a non-contiguous mapping.
> > >
> > > The RZ/N1 SoC embeds a Cortex-M3 CPU. This CPU can use GPIOs and
> > > some of them for interrupt purpose. In that case, those GPIOs have
> > > to be routed to the interrupt line expected by the Cortex-M3.
> > >
> > > And so, we have some interrupts reserved for CPUs running Linux and
> > > some others for the Cortex-M3.
> > >
> > > Among those reserved interrupts may some are not used.
> > >
> > > for instance:
> > >   Interrupt 103, 102: Reserved and used by Linux
> > >   Interrupt 103: Reserved for Linux but not used -> Hole in the mappi=
ng
> > >   Interrupt 104: Reserved and used my Cortex-M3 (need to be routed by=
 Linux)
> >
> > 102 does not seem to  be correct?
>
> My bad, my example was wrong.
>    Interrupt 103, 104: Reserved and used by Linux
>    Interrupt 105: Reserved for Linux but not used -> Hole in the mapping
>    Interrupt 106: Reserved and used my Cortex-M3 (need to be routed by Li=
nux)

OK, much better!

> > > I don't know if this use case is relevant but I think we should be to=
o restrictive
> > > on the mapping and so accept holes.
> > >
> > > With that in mind, I let you confirm that you still prefer to have a =
mapping
> > > without any holes. A future patch to support that is always possible.
> >
> > While that would indeed be a non-discontiguous mapping, I do not see ho=
w
> > it is related to rzn1_irqmux_output_lines[] in the driver.  That array
> > would still contain the same contiguous values 103..110, right?
>
> The array rzn1_irqmux_output_lines is still contiguous yes but the mappin=
g
> defined in irq-map property no.
>
> Looking back again at your proposal, indeed I can remove the following lo=
op:
>         for (i =3D 0; i < output_lines_count; i++) {
>                if (parent_args->args[1] =3D=3D output_lines[i])
>                        return i;
>         }
>
> With just
>         if (parent_args->args[1] >=3D RZN1_IRQMUX_SPI_BASE &&
>             parent_args->args[1] < RZN1_IRQMUX_SPI_BASE + RZN1_IRQMUX_NUM=
_IRQS) {
>                 return parent_args->args[1] - RZN1_IRQMUX_SPI_BASE;
>
>         dev_err(dev, "Invalid GIC interrupt %u\n", parent_args->args[1]);
>         return -EINVAL;

Good. I like simpler code ;-)

BTW, please invert the logic, i.e. bail out early in case of error.

> > Sorry, I haven't been following the development of this driver that
> > closely (RZ/N1 is completely different from e.g. R-Car, and I never
> > had access to an RZ/N1 platform), so perhaps I am missing something.
> > Why does the user have to specify an interrupt-map in DT? Can't the
> > driver create the mapping dynamically, based actual usage of the
> > GPIOs? I.e. the first 8 GPIOs that ask for interrupt functionality
> > receive it, and are mapped to an available GIC interrupt?
> > I believe this is how rzg2l-irqc works, mapping up to 32 GPIO interrupt=
s
> > to 32 GIC (TINT) interrupts.
>
> I think the main difference with rzg2l-irqc is that the RZ/N1 irq mux is
> clearly not an interrupt controller.
>
> It is just a mux with 96 inputs (GPIO lines coming from several GPIO
> controller) and 8 outputs (connected to the GIC).
>
> It is represented as an interrupt nexus node and has an interrupt-map pro=
perty.
> to describe the routing.
>
> The interrupt-map property cannot be dynamically created.
>
> Also, the routing is necessary even if the related GPIO is not used by Li=
nux.
> This GPIO can be used as a GPIO input interrupt line by the Cortex M3.
>
> If the irq mux driver performs the routing only on Linux GPIO usage, it w=
ill
> not route GPIOs depending on Cortex M3 internal usage.

Thanks, makes sense!

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

