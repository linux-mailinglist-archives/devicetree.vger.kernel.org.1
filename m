Return-Path: <devicetree+bounces-229373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1965BF6A9C
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0E87E18844BD
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CC433509D;
	Tue, 21 Oct 2025 13:05:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421C929ACD7
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761051957; cv=none; b=pidbhgWGqvAWk9qMP3OKuhrqYhVf6rCz0Mqn5ucPmEPaPaHttz2Pelxmiqcm3O5zf6K3ZNiXlg+7SFNdnUyeTvF34znKCjJuqCNnTGnLqSxNN6PMxt1sLuBD/zxmXblycqHm8FBZF11osdYy/t0gdssGshAj0jWczGcUWuZWEEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761051957; c=relaxed/simple;
	bh=Q1RZe4eaNh7MwrmMBQ7FwMrDLkohnjS8UmB/443+xYc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=eb0ThuwMN407XljwNuSEUuYqai8i/YJvvu3X55IM+4UZDiinarMeiGWgE1nnqCwpFai/sPbVGQKnXIys8/iK910bQKEXDZltl1AwoM9VJ4a/s1RdnPFxoGEPnTHrJUc+mAxb1yDOXNVK+1ocU2fQZdvSQ7/tnyVLi+gCA77DRC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5d6266f1a33so2465766137.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761051954; x=1761656754;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eonbC2VlgxUdqhXCyRQKUYPV5tl9WpWc7iwEwuNOPtM=;
        b=QxZa+WynP29bpYMPRt6t4FLCaXwVNa31/nb/LaW09uuXs3m3P6CAIxMCSPafBeK6tS
         AfnbAum4id1k7iSTrPCU44K2raZXHtGkR2rnBW6UmizLS5n02poieysHwhGKaBZHQ9d/
         GyHWsM9+80RFTFXCgNPniEMzZIb34kwVL4BWU80tAKV8Xk+g3aKrIbRqNfFVJ32kU2mG
         lFaZuL/UoGDu3Sy6eNmuvlXVDhl3M+jdOoIrxMOmd/72hKJW/Vp013VHT9yKHo0vi6w5
         LxBFDc9CyThDFq7eWLcacrPqMyF7XOmUVpK8N4c/bjkqsI3S0nnA+VOivB2iyXfFs8ZE
         zJiw==
X-Forwarded-Encrypted: i=1; AJvYcCWhQSg8vz/kuiL1Hv8X4VTZzZ1IlSALt5yS0pQJhoLqDkMfIvoq756suMyoHpQMDlKtW8CCzDXNbjRs@vger.kernel.org
X-Gm-Message-State: AOJu0YxIqY6cJz0OzW5wK2qt4Rb2xH87ZTRxUyNiAjNMz/wRbzSw631b
	ZlZI2KkOue+ECyZ5YvzQzS6ajSkxd5yNKSWvOmQ6mLM46UEa2MbPTbQpyhXLtYdE
X-Gm-Gg: ASbGncvWvmD9AHWFT4SEoiVZ5HLKNlz69bYN/S3YEjV2sqE8Rk4xuPtcGex9gh7L7Mc
	HoVXERkJtx0mbVIRVxUNgUYHdAmC8vIPea0tgm9ITPBytAiRrutN/kPLUUpz1jIUaf6KkJGWbA0
	pWWMj6RBag1xqXs1RbJ3iPaLGbDLItn6oNkuMav652G2rHDAi+4KQqG/ewgWaUDQpDsO4Zb97Aj
	hLa2p2FiS6bu9efe7Qr54xDq/pmq8ADSkJrl+rgi81sM1dqKGHTBhLnq3vSiIyyNkDLcei2UjX3
	/QgSQT6y4XR4u3LsPJzOkQz9Mcf93oZE/2sk4CRxNkyAT0jqRYve9UhpD0xbdmKTcLMune7A4mX
	kKUGFwE2/aWQm4kthQhQRw7WDnXBQ4Azv7uFL9iey5pnkcZn9bS/2vH2xKdRLfhvdrStBMXAP4b
	2Qa4vEQWN6NXDJDO9PwvYMBUM419BkMCj9bSH/HDEUBdXP8cXQ
X-Google-Smtp-Source: AGHT+IEjBe7f1a1fjqsmXlmBJ3KVb+qOR1ARPnjuMfFR8V0F77LF5fFhoNtR/C8LnL7otaOvvPEfpw==
X-Received: by 2002:a05:6102:e06:b0:5d5:ff84:a9f3 with SMTP id ada2fe7eead31-5d7dd634d44mr5089231137.28.1761051953679;
        Tue, 21 Oct 2025 06:05:53 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-932c3cd56d4sm3529708241.0.2025.10.21.06.05.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Oct 2025 06:05:51 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-5d758dba570so2749810137.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:05:47 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVPHowgP2HkAgEcoBp5ejBXkgs2wCvJtuL9Q3ihcZ/ZDDM62pj679sjh5M4ie+xrks/fM5ROT27nJ9b@vger.kernel.org
X-Received: by 2002:a05:6102:32d3:b0:5d5:f912:f891 with SMTP id
 ada2fe7eead31-5d7dd5698efmr4572794137.19.1761051947101; Tue, 21 Oct 2025
 06:05:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251020080648.13452-1-herve.codina@bootlin.com> <20251020080648.13452-8-herve.codina@bootlin.com>
In-Reply-To: <20251020080648.13452-8-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 21 Oct 2025 15:05:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV03D_3b_JA2vzW4tE_QbkkT1bN1dm+zLLLX24oDHMj0Q@mail.gmail.com>
X-Gm-Features: AS18NWDjAG4aijeipPHaID1cVN2ka14-uHYH7CPeT_DzHMmVdCqMU2sk8q9lr4k
Message-ID: <CAMuHMdV03D_3b_JA2vzW4tE_QbkkT1bN1dm+zLLLX24oDHMj0Q@mail.gmail.com>
Subject: Re: [PATCH v5 7/8] soc: renesas: Add support for Renesas RZ/N1 GPIO
 Interrupt Multiplexer
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
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Herv=C3=A9,

On Mon, 20 Oct 2025 at 10:08, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> On the Renesas RZ/N1 SoC, GPIOs can generate interruptions. Those
> interruption lines are multiplexed by the GPIO Interrupt Multiplexer in
> order to map 32 * 3 GPIO interrupt lines to 8 GIC interrupt lines.
>
> The GPIO interrupt multiplexer IP does nothing but select 8 GPIO
> IRQ lines out of the 96 available to wire them to the GIC input lines.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.co=
m>

Thanks for your patch!

> --- a/drivers/soc/renesas/Makefile
> +++ b/drivers/soc/renesas/Makefile
> @@ -14,4 +14,5 @@ obj-$(CONFIG_SYS_R9A09G057)   +=3D r9a09g057-sys.o
>  # Family
>  obj-$(CONFIG_PWC_RZV2M)                +=3D pwc-rzv2m.o
>  obj-$(CONFIG_RST_RCAR)         +=3D rcar-rst.o
> +obj-$(CONFIG_RZN1_IRQMUX)              +=3D rzn1_irqmux.o

One TAB too much.

> --- /dev/null
> +++ b/drivers/soc/renesas/rzn1_irqmux.c
> @@ -0,0 +1,150 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * RZ/N1 GPIO Interrupt Multiplexer
> + *
> + * Copyright 2025 Schneider Electric
> + * Author: Herve Codina <herve.codina@bootlin.com>
> + */
> +
> +#include <linux/bitops.h>
> +#include <linux/build_bug.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/of.h>
> +#include <linux/of_irq.h>
> +#include <linux/platform_device.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/*
> + * The array index is the output line index, the value at the index is t=
he
> + * GIC SPI interrupt number the output line is connected to.
> + */
> +static const u32 rzn1_irqmux_output_lines[] =3D {
> +       103, 104, 105, 106, 107, 108, 109, 110
> +};

I did read the discussion with Wolfram, but the flexibility (and
overhead) provided by this array sounds a bit overkill to me.

What about just defining:

    #define RZN1_IRQMUX_SPI_BASE    103
    #define RZN1_IRQMUX_NUM_IRQS    8

?

If/when a new SoC with a similar setup ever arrives, you can probably
just replace the constants above by variables inside SoC-specific
match data.  And if the new mapping would be non-contiguous, you can
still revive this array ;-)

More about this below...

> +
> +static int rzn1_irqmux_parent_args_to_line_index(struct device *dev,
> +                                                const struct of_phandle_=
args *parent_args,
> +                                                const u32 output_lines[]=
,
> +                                                unsigned int output_line=
s_count)
> +{
> +       unsigned int i;
> +
> +       /*
> +        * The parent interrupt should be one of the GIC controller.
> +        * Three arguments must be provided.
> +        *  - args[0]: GIC_SPI
> +        *  - args[1]: The GIC interrupt number
> +        *  - args[2]: The interrupt flags
> +        *
> +        * We retrieve the line index based on the GIC interrupt number
> +        * provided and rzn1_irqmux_output_line[] mapping array.
> +        */
> +
> +       if (parent_args->args_count !=3D 3 ||
> +           parent_args->args[0] !=3D GIC_SPI) {
> +               dev_err(dev, "Invalid interrupt-map item\n");
> +               return -EINVAL;
> +       }
> +
> +       for (i =3D 0; i < output_lines_count; i++) {
> +               if (parent_args->args[1] =3D=3D output_lines[i])
> +                       return i;
> +       }

... then this loop can be replaced by two simple comparisons.

> +
> +       dev_err(dev, "Invalid GIC interrupt %u\n", parent_args->args[1]);
> +       return -EINVAL;
> +}
> +
> +static int rzn1_irqmux_setup(struct device *dev, struct device_node *np,=
 u32 __iomem *regs)
> +{
> +       struct of_imap_parser imap_parser;
> +       struct of_imap_item imap_item;
> +       unsigned long index_done =3D 0;

Perhaps "DECLARE_BITMAP(index_done, RZN1_IRQMUX_NUM_IRQS)",
so the BITS_PER_LONG limit can be lifted, without any cost?

> +       int index;
> +       int ret;
> +       u32 tmp;
> +
> +       /* We support only #interrupt-cells =3D <1> and #address-cells =
=3D <0> */
> +       ret =3D of_property_read_u32(np, "#interrupt-cells", &tmp);
> +       if (ret)
> +               return ret;
> +       if (tmp !=3D 1)
> +               return -EINVAL;
> +
> +       ret =3D of_property_read_u32(np, "#address-cells", &tmp);
> +       if (ret)
> +               return ret;
> +       if (tmp !=3D 0)
> +               return -EINVAL;
> +
> +       ret =3D of_imap_parser_init(&imap_parser, np, &imap_item);
> +       if (ret)
> +               return ret;
> +
> +       /* 8 output lines are available */
> +       BUILD_BUG_ON(ARRAY_SIZE(rzn1_irqmux_output_lines) !=3D 8);

... then this check can be removed, too.

> +
> +       /*
> +        * index_done is an unsigned long integer. Be sure that no buffer
> +        * overflow can occur.
> +        */
> +       BUILD_BUG_ON(ARRAY_SIZE(rzn1_irqmux_output_lines) > BITS_PER_LONG=
);

Currently this is less strict than the check above, so a bit useless?

> +
> +       for_each_of_imap_item(&imap_parser, &imap_item) {
> +               index =3D rzn1_irqmux_parent_args_to_line_index(dev,
> +                                                             &imap_item.=
parent_args,
> +                                                             rzn1_irqmux=
_output_lines,
> +                                                             ARRAY_SIZE(=
rzn1_irqmux_output_lines));
> +               if (index < 0) {
> +                       of_node_put(imap_item.parent_args.np);
> +                       return index;
> +               }
> +
> +               if (test_and_set_bit(index, &index_done)) {
> +                       of_node_put(imap_item.parent_args.np);
> +                       dev_err(dev, "Mux output line already defined\n")=
;
> +                       return -EINVAL;
> +               }
> +
> +               /*
> +                * The child #address-cells is 0 (already checked). The f=
irst
> +                * value in imap item is the src hwirq.
> +                */
> +               writel(imap_item.child_imap[0], regs + index);
> +       }
> +
> +       return 0;
> +}

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

