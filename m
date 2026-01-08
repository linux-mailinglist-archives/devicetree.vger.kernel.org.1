Return-Path: <devicetree+bounces-252943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 21FCCD055DA
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 19:08:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 18ABF31F00D9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 17:31:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7036329BD95;
	Thu,  8 Jan 2026 17:31:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83AE22A4E8
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 17:31:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767893476; cv=none; b=urolOuGMJcxrfZVrzX8drX1vqouBm3N4TTtWN97yv40hphuHSsRuUoH6C1l2eXwtAZktuPW94B3nsNKVl1sl2ekcsGWNNsYsVi6EmOk3qguVXzeQkv09odQJzg2NRl/J8XSvXZFO67153wGZVk/AqOfxiye4z8d1cCNtU2Gy6dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767893476; c=relaxed/simple;
	bh=6Y/PEiuX8F2nfVedwNRlHLJB8LCK+B2XWyMnAPnOdcw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Y9196QxLg4d87Pr9UkzVdqP5PpRuFupFSXEJA5FtOrz8OJRtU9uKDihTk7l0pdVFDbED0O7iK9yI/8jYzocOiPPAoJltRhyFpfSr8N9m5HqK8Oz6S/WVI9Y031LP8Q4xayh4mSESa0vjbNPkJQmWYFmsgnhJGRfibMm4+U9TWTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5636470c344so5905e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:31:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767893474; x=1768498274;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ue0J1j0aj6DWC6mYUAkG3yhlZfjuLnCsNmeQNbfJJJs=;
        b=K0l+Oxp3qu35fFQHeBmyEsX3gS185BUGVafvrBt1eHv/f0kUI3bkNyeO5CLMhvkrxA
         +G9qQVvjjybUi+W/mm1jNN0HRqO36dvJOorIzJ0ECHCaxX+Sebs3z+l/JWkFEyzDIuUz
         ryFMVcEyi8I1qN5b7tn/YI2dPl/CRslPIr97md0vC/Ndxy4+hzzIYA/AinuZrkUgIdRL
         cg2fv6hN5Dq6/fSza0AqJuFebCt0GL9g9FNgrxfngs/O4z0j7p8jddg6pCsUkr3RbZNF
         KdGxDDZ+a8hlmgDOjnd4CacjK0RzR3zwZ4CpYtyc9I9AlMBnx1BEFrGriGV9fXzZqsQj
         wtmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWk45in2TDDQgGeI35dNiA/4JGp9UULgaHK3dSE0uNNtM4fnreRf1jW/jv1qj9/IARBTJ/1LFbBzBuV@vger.kernel.org
X-Gm-Message-State: AOJu0YzMYDVPYnEydXms1Ti2OKa6b7HYZdW3M22DI1eIJFZz7S5Rfqgx
	UWPkbF7makDoydzK7F4xfL3AUcmXy9YegpZJQ9eeCFQ0P3enGCg9AGG8u9VifR8h
X-Gm-Gg: AY/fxX4fG6L9idxqwSaocgT/Oi5CcIk8pPVqOiIjH6kGI9BYHPglfScUFcYSU7eWMp5
	3MHbJJiWzESsQxg/yXZFHI0DOCKPUc+vu5eC6nvH4uV8H1RFwMFwZr7ju1MIYMmKcCE2XoY9k9P
	T4F3HRTo6Xlbr2186Z3ZG7fw6kwOhmOBO+Sw3wwmv1v+KzQYdyyxBzgApvif9bvn6EnCPZS7svv
	tk4KmbMZv0jcCoRArN2taSFcQ5XRbBnWWP2u8CESWaanojE6R+GEgcrvI2DKS4SZQfaAsNKboho
	2uVzyHFyjuP6Qk478G2IWwY1N4Z/ah7Au3icc43fw8vbj+YI34DN4IBGX5yXmro6SdG2MZrTi9n
	E/+3bnImtgZTzeGgVc52g8lMM66/xCCEqEnN/KVrYQCtU5egAche5cBr6+iZtVHUu5jDrxJAUqX
	6AkO/XMuHvSdtSbmwG74MCmPoRL1EyG+M2cv3B6oiIUpMxdmpy
X-Google-Smtp-Source: AGHT+IFDWh1JZqvL1kjzEr/uAKXjDhndncS5wEbDXmroecnmyn/iz1gLLgp5uIKucU5ZGAx+5BvF2w==
X-Received: by 2002:a05:6122:421b:b0:55e:452f:7af0 with SMTP id 71dfb90a1353d-56347d63649mr2452003e0c.2.1767893473836;
        Thu, 08 Jan 2026 09:31:13 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633a1ea48bsm6756741e0c.3.2026.01.08.09.31.12
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 09:31:13 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5eeaae0289bso114573137.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 09:31:12 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXYYaIysiI4PSgxjX052ws6ghSyEzY+yXJjhPGcDG6ShY+a+JGjYxGu9c7fWv8yy2IvmfF3tjFZutvg@vger.kernel.org
X-Received: by 2002:a05:6102:2acd:b0:5df:a98f:ca85 with SMTP id
 ada2fe7eead31-5ecb68d3054mr2835192137.21.1767893472628; Thu, 08 Jan 2026
 09:31:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251205150234.2958140-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251205150234.2958140-5-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251205150234.2958140-5-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 18:31:01 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX_ezZMYc3BRJRLFVwir6NPnxNUPw1Z0+oQDZjx_unJjA@mail.gmail.com>
X-Gm-Features: AQt7F2qqDC6QTfmP9u1liaa7gLEyyN7-59wLYd5yvmPeQ7bjaUsCdlwPUmuKCIA
Message-ID: <CAMuHMdX_ezZMYc3BRJRLFVwir6NPnxNUPw1Z0+oQDZjx_unJjA@mail.gmail.com>
Subject: Re: [PATCH v2 4/8] pinctrl: renesas: rzt2h: add GPIO IRQ chip to
 handle interrupts
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, linux-renesas-soc@vger.kernel.org, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Cosmin,

On Fri, 5 Dec 2025 at 16:03, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> The Renesas RZ/T2H (R9A09G077) and Renesas RZ/N2H (R9A09G087) SoCs have
> IRQ-capable pins handled by the ICU, which forwards them to the GIC.
>
> The ICU supports 16 IRQ lines, the pins map to these lines arbitrarily,
> and the mapping is not configurable.
>
> Add a GPIO IRQ chip to the pin controller that can be used to configure
> these pins as IRQ lines.
>
> The pin controller places the requested pins into IRQ function,
> disabling GPIO mode. A hierarchical IRQ domain is used to forward other
> functionality to the parent IRQ domain, the ICU. The ICU does level
> translation and then forwards other functionality to the GIC.
>
> Wakeup capability is implemented by placing the entire pin controller on
> the wakeup path if any pins are requested to be wakeup-capable.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Thanks for your patch!

> --- a/drivers/pinctrl/renesas/pinctrl-rzt2h.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzt2h.c

> @@ -644,14 +650,194 @@ static const char * const rzt2h_gpio_names[] = {
>         "P35_0", "P35_1", "P35_2", "P35_3", "P35_4", "P35_5", "P35_6", "P35_7",
>  };
>
> +/*
> + * Interrupts 0-15 are for INTCPUn, which are not exposed externally.
> + * Interrupts 16-31 are for IRQn. SEI is 32.

Isn't SEI 406, and DMAC0_INT0 32?

> + * This table matches the information found in User Manual's Table 17.2,
> + * List of multiplexed pin configurations (5 of 51).

3-6 of 51

However, the mapping is much easier to derive from the "Interrupt" rows
in the various tables in Section 17.5 ("Multiplexed Pin Configurations"),
as these match the order in rzt2h_gpio_irq_map[].

> + * RZ/N2H has the same GPIO to IRQ mapping, except for the pins which
> + * are not present.
> + */
> +static const u8 rzt2h_gpio_irq_map[] = {
> +       32, 16, 17, 18, 19,  0, 20, 21,

s/32/406/, but that doesn't fit in u8, and would overflow .used_irqs[],
so you probably should translate it in the code instead.

> +       22,  0,  0,  0,  0,  0,  0,  0,
> +       23, 24, 25, 26, 27,  0,  0,  0,
> +        0,  0, 28, 29, 30, 31,  0,  0,
> +        0,  0,  0,  0,  0, 32, 16, 17,
> +       18, 19, 20, 21, 22,  0,  0,  0,
> +        0,  0, 24, 25, 26, 27,  0, 28,
> +       29, 30, 31,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0,  0, 24, 32, 16,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +       20, 23, 17, 18, 19,  0, 16, 25,
> +       29, 20, 21, 22, 23,  0,  0,  0,
> +        0,  0,  0,  0, 17,  0,  0, 18,
> +        0,  0, 19,  0,  0, 20,  0, 30,
> +       21,  0,  0, 22,  0,  0, 24, 25,
> +        0,  0,  0,  0,  0, 16, 17,  0,
> +       18,  0,  0, 26, 27,  0,  0,  0,
> +       28, 29, 30, 31,  0,  0,  0,  0,
> +       23, 31, 32, 16, 17, 18, 19, 20,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +       27,  0,  0, 21, 22, 23, 24, 25,
> +       26,  0,  0,  0,  0,  0,  0,  0,
> +       27, 28, 29, 30, 31,  0,  0,  0,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0,  0, 28, 32, 16,
> +       17, 18, 19,  0,  0,  0,  0, 20,
> +       21, 22, 23,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0, 24, 25,  0,  0,
> +        0,  0, 26, 27,  0,  0,  0, 30,
> +        0, 29,  0,  0,  0,  0,  0,  0,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +        0,  0,  0, 28, 29, 30, 31,  0,
> +        0,  0,  0,  0,  0,  0,  0, 30,
> +        0,  0,  0,  0,  0,  0,  0,  0,
> +};

> +static int rzt2h_pinctrl_suspend_noirq(struct device *dev)
> +{
> +       struct rzt2h_pinctrl *pctrl = dev_get_drvdata(dev);
> +
> +       if (atomic_read(&pctrl->wakeup_path))
> +               device_set_wakeup_path(dev);
> +
> +       return 0;
> +}

Please move this function closer to the location where it is used,
i.e. just above rzt2h_pinctrl_pm_ops.

>+ static int rzt2h_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
>+                                            unsigned int child,
>+                                            unsigned int child_type,
>+                                            unsigned int *parent,
>+                                            unsigned int *parent_type)
>+ {
>+        struct rzt2h_pinctrl *pctrl = gpiochip_get_data(gc);
>+        u8 port = RZT2H_PIN_ID_TO_PORT(child);
>+        u8 pin = RZT2H_PIN_ID_TO_PIN(child);
>+        u8 parent_irq;
>+
>+        parent_irq = rzt2h_gpio_irq_map[child];
>+        if (parent_irq < RZT2H_INTERRUPTS_START)

Or !parent_irq, cfr. the check in rzt2h_gpio_init_irq_valid_mask()?

>+                return -EINVAL;
>+
>+        if (test_and_set_bit(parent_irq - RZT2H_INTERRUPTS_START,
>+                             pctrl->used_irqs))
>+                return -EBUSY;
>+
>+        rzt2h_pinctrl_set_pfc_mode(pctrl, port, pin, PFC_FUNC_INTERRUPT);
>+
>+        *parent = parent_irq;
>+        *parent_type = child_type;
>+
>+        return 0;
>+ }

> +
>  static int rzt2h_gpio_register(struct rzt2h_pinctrl *pctrl)
>  {
>         struct pinctrl_gpio_range *range = &pctrl->gpio_range;
>         struct gpio_chip *chip = &pctrl->gpio_chip;
> +       struct device_node *np = pctrl->dev->of_node;
> +       struct irq_domain *parent_domain;
>         struct device *dev = pctrl->dev;
>         struct of_phandle_args of_args;
> +       struct device_node *parent_np;
> +       struct gpio_irq_chip *girq;
>         int ret;
>
> +       parent_np = of_irq_find_parent(np);
> +       if (!parent_np)
> +               return -ENXIO;

Despite your claim that the interrupts properties are optional,
I think  this will abort probing when they are actually missing?

> +
> +       parent_domain = irq_find_host(parent_np);
> +       of_node_put(parent_np);
> +       if (!parent_domain)
> +               return -EPROBE_DEFER;
> +
>         ret = of_parse_phandle_with_fixed_args(dev->of_node, "gpio-ranges", 3, 0, &of_args);
>         if (ret)
>                 return dev_err_probe(dev, ret, "Unable to parse gpio-ranges\n");

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

