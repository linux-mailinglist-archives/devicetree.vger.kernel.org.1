Return-Path: <devicetree+bounces-240172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBF4C6E247
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 12:08:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id 40B862E36D
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 11:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68292352F9E;
	Wed, 19 Nov 2025 11:06:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9C92FC010
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 11:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763550415; cv=none; b=dD/uRHg3opfZEFP2MAsa64jjaiJYKM5paezevxU33pfpz5ItvMC2/Ri47Ljc0CvEuZQKzYTEDuqH2UL69hmPytzPDXmc+vllu8w2xVIZ+9ZcT93QlgJOotGeovgNGlgRow7LLlQ5Xjev+zsP4iQQbXVQ2voGdyV3Myo2v0VZsFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763550415; c=relaxed/simple;
	bh=suLMms/cC5PWL/dT/dDRBxYiO9gO4357/Gv7VoKpjN4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cG5QcTQULpLQqvZU73VXAfEoJDazBzPM04L5fgQjNwY5UvaDblw/5K9zHDdh+xZz2w9EsSir/FfJtW8nnZ+AiG75pflEpvMxLDgQXm+72MB/EjHWWEV7gnAniHRwPU07tKmKwIAIfwitDNG6C5XCYKh8tbJhkQNSDmf70XbsIog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.161.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f53.google.com with SMTP id 006d021491bc7-656b4881f55so3193443eaf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:06:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763550412; x=1764155212;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01vJ+iTaEhlqFfqqNaTQ+Xj9o5ybGoOTheiB42bAFn0=;
        b=ixefhlCao2B0JNekeDI6YnWN0egyULyfrXIWfyYOGP6/Q6El4jzMRGQmCeVpggZ5ZH
         gs+Z37+nCP97KDUd4VB1xn4qz2K/6W3BB6UN4H2DmXPc/t+GkWgBA1I+6fmWk8sb8rTx
         LRdESrLjXPJ0dqatlqa4W9sLkUsX/MZuKH0wA74JuIeTTo2Yc7NfeIL21tN6aeGQ7f4k
         zKG0tjXedkZA1TmLuTk+jY0lB/uFMkJt+U9wawI5zW8JGHXzijj9ocE7fEg8S6iXFUXQ
         4nMy1zR6PppusKSsE47IdT5V6chSpMoos8lwmlOqGMm+ryfqbx80kIBcv8RiX3Fs4IDX
         lp7A==
X-Forwarded-Encrypted: i=1; AJvYcCUkMLZZirxw55Huri0rU6LmE2BMXNH2ureYWt12Zj9O23T8ddQPT9IQzcGjXQanjkEyiGfOdB7m8Usi@vger.kernel.org
X-Gm-Message-State: AOJu0YzVuWu8IwFZcPHjN5vHzMRJtfvWwrCt0n1ixnr/yDnD3hkPa8IL
	gwdMPS3Hotzkf8uNGs1GJNPYT+8HiA5T25azYTADTSIZTJm6IMhBg1QfV+nEOgcs
X-Gm-Gg: ASbGncuihqkZv6Z1tNgZt0rO4G9H8sbN9xR2l6khMyYzescK49lcZZ93eFPAScU7gjn
	pJlS0JtUAgf6o2VOKJPhnTEStV35MVayUcBySbmSajepptRMp6V/QCMRffjMqs/6WHT94b29jck
	VpktRKykIDcIE/fHRpH5P0ZhbovTDcE5PZfqV7kfDileFMiH1nftne5k7qpXs+rfJAkYDA5liP2
	Jn+CcEpyfpkxYJNc/nkcoqxodS/ag4ZfZ2bk8qOWa56TUH7wQPn+IxB9IcPILvXAvSALXyS51dv
	8NzG3gP/oBdBa4bnvw7jfWyhSz45VwbymB6K6+YiSXOBkXvwQQZayqIdU/Fp0OD6+DZAv5AQECm
	UcPbv3S5AWSKlcSHp7m/kA3s4D1ZCFaAzxNXvgDJ5BT56xBbPc5WKY0ZVTeNqzV3PMwKYcDa8zJ
	LdorYFhw5qOzcFxOypNVdJRzbNW7Cj0FVQw2GvDnXi7qbEQ3yypi83Z/6lJtBeXYk=
X-Google-Smtp-Source: AGHT+IHBHcAq5jyija2Y9EtpA3NzbbaTvfacIbI+C/XzPG8CB0bglsCehe5rR2seIeGnFEsilc+wLg==
X-Received: by 2002:a05:6808:1a25:b0:450:ccc6:4113 with SMTP id 5614622812f47-450ccc6539cmr4063826b6e.52.1763550412046;
        Wed, 19 Nov 2025 03:06:52 -0800 (PST)
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com. [209.85.160.43])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65751922d1csm2917015eaf.10.2025.11.19.03.06.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Nov 2025 03:06:51 -0800 (PST)
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-3e898ba2a03so1946103fac.0
        for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 03:06:51 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUSplKY+/HFChXAjJdId9RDQDTFf2Zn9TW7lQ/2s6csDvMNRIbKbZlelDEV76Htj9w+Una5Uwcyjye8@vger.kernel.org
X-Received: by 2002:a05:6122:4582:b0:549:f04a:6eb3 with SMTP id
 71dfb90a1353d-55b1be64f5amr6929551e0c.9.1763549959520; Wed, 19 Nov 2025
 02:59:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <fbe6fc3657070fe2df7f0529043542b52b827449.1763116833.git.geert+renesas@glider.be>
 <b037f67a-b241-4689-9914-57ff578c1454@sirena.org.uk> <1a4d2276-75e1-4aa0-8ff2-c932ce5d6edc@kernel.org>
 <CGME20251119085902eucas1p223cb580bdd4cef2698382835c77210e8@eucas1p2.samsung.com>
 <CAMuHMdXgq=Zv3GQes_d_eyCcB7m--PaEGSQJtUWiRjj-7gBVkw@mail.gmail.com> <765d114d-6a03-4535-a644-5e7581dfbccc@samsung.com>
In-Reply-To: <765d114d-6a03-4535-a644-5e7581dfbccc@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 19 Nov 2025 11:59:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU5ixRpE+yPbggBG91+516YD+ARkaCLN-gM8bQLvtqrYg@mail.gmail.com>
X-Gm-Features: AWmQ_bmyj7uEfaaHTRs_Dlhmh8ug_B799_bBc6DeLqXxY0jfIRw0Qy-WNEKxB9g
Message-ID: <CAMuHMdU5ixRpE+yPbggBG91+516YD+ARkaCLN-gM8bQLvtqrYg@mail.gmail.com>
Subject: Re: [PATCH v2] of/irq: Ignore interrupt parent for nodes without interrupts
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel@sholland.org>, Marc Zyngier <maz@kernel.org>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Magnus Damm <magnus.damm@gmail.com>, devicetree@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	linux-samsung-soc <linux-samsung-soc@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Wed, 19 Nov 2025 at 10:55, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> On 19.11.2025 09:53, Geert Uytterhoeven wrote:
> > On Tue, 18 Nov 2025 at 20:55, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> >> On 18/11/2025 20:34, Mark Brown wrote:
> >>> On Fri, Nov 14, 2025 at 11:47:54AM +0100, Geert Uytterhoeven wrote:
> >>>> The Devicetree Specification states:
> >>>>
> >>>>      The root of the interrupt tree is determined when traversal of the
> >>>>      interrupt tree reaches an interrupt controller node without an
> >>>>      interrupts property and thus no explicit interrupt parent.
> >>>>
> >>>> However, of_irq_init() gratuitously assumes that a node without
> >>>> interrupts has an actual interrupt parent if it finds an
> >>>> interrupt-parent property higher up in the device tree.  Hence when such
> >>>> a property is present (e.g. in the root node), the root interrupt
> >>>> controller may not be detected as such, causing a panic:
> >>> I'm seeing a boot regression on the TI x15 platform in -next which
> >>> bisects to this patch in -next, unfortunately even with earlycon (though
> >>> just earlycon, I don't know the platform specific runes) the board just
> >>> dies with no output:
> >>>
> >>>    https://protect2.fireeye.com/v1/url?k=7efe2b91-216202bb-7effa0de-000babe598f7-79b85fd5422be185&q=1&e=a2b4aea0-c947-472b-ae80-9160750f84a2&u=https%3A%2F%2Fvalidation.linaro.org%2Fscheduler%2Fjob%2F4252918%23L409
> >>>
> >>> It does seem like a plausible patch for this sort of issue though, and
> >>> the bisect converges smoothly:
> >> All Samsung platforms fail as well. I was waiting with bisection but
> >> Marek was as usually very fast:
> >>
> >> https://lore.kernel.org/all/20251118115037.1866871-1-m.szyprowski@samsung.com/
> > Yeah, the various ti,omap[45]-wugen-mpu nodes have interrupt-parent
> > properties, but no interrupts{-extended} properties.
> >
> > Does the following (whitespace-damaged) patch, to restore finding an
> > explicit interrupt-parent, fix the issue?
>
> This also fixes Exynos case without any need for the changes in

Thanks for testing!

> arch/arm/mach-exynos/suspend.c. The question is which approach is preferred?

It looks like several other drivers are affected.  So I think it
makes sense to handle the presence of an explicit "interrupt-parent"
in an interrupt-less interrupt controller node in the core, instead
of in each affected driver.

> > --- a/drivers/of/irq.c
> > +++ b/drivers/of/irq.c
> > @@ -685,6 +685,8 @@ void __init of_irq_init(const struct of_device_id *matches)
> >                  desc->interrupt_parent = of_parse_phandle(np, "interrupts-extended", 0);
> >                  if (!desc->interrupt_parent && of_property_present(np, "interrupts"))
> >                          desc->interrupt_parent = of_irq_find_parent(np);
> > +               if (!desc->interrupt_parent)

Or "else if (!desc->interrupt_parent)", to avoid repeating part of
of_irq_find_parent() when an "interrupts" property is present?

> > +                       desc->interrupt_parent = of_parse_phandle(np, "interrupt-parent", 0);
> >                  if (desc->interrupt_parent == np) {
> >                          of_node_put(desc->interrupt_parent);
> >                          desc->interrupt_parent = NULL;

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

