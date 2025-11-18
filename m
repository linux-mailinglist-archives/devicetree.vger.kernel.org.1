Return-Path: <devicetree+bounces-239815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E96F4C6993B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:22:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A02864EF0BF
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:22:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A989345CB9;
	Tue, 18 Nov 2025 13:22:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F84D34CFC4
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:22:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472130; cv=none; b=jgLcV7gfZ6i/tsKaXdWnuMKFfktd/nx9+8nTTgJ0AO4Bn1bEIKKYXIwqYoDwY/EL1sWX1CgNxKJ5xMlO9zHW1Bc+OdLDtuJ/2T0dzZFhUx5VoPKfX+e9NRcFz1MbyKPVu9q9nn99MPO37SPaMPQMqR6Qwn2Vzve6/heg6VpXAMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472130; c=relaxed/simple;
	bh=38bYLMu7gHJ/RFoIgWiK/ZMbze7jRQueT3UaNeabMJM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bGG+wfKlS/6fLq39v7Nl1oyZGnXleUcj5KqQrpbe9utCjNGB/jI2nPQv+16RNg1dWOxZzqNogCxOy5OnT55zBETXINAD2IOcSvrUXOBbPAHlS+mEK/PD1pVcxwAgpat6YoVD7GYdj1KUi7ZznBYpmjwdYzxEyfnYjEqVrbmvlLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-9351ed45fb8so1303265241.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:22:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763472126; x=1764076926;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHhCA9cigoUdPwap5WRlueW/Hs8cXSQrGektg/X2Gas=;
        b=RM3KtefZ84tLu++PuS95jESmLVvyE9vKmZhLzCuw2jsp0ow3i9dvDr9ovfDcgMabs/
         fet1RZl4EEEQ1F1qp2UTjC0IUmYIaTeBaVUjkQ/pdbFQCMvOXx3M5Z4/ruW2Sv/RFEmq
         PEzzrdDKFR+UpVKWghb32QnlgSj/uBpM4E9zQOlFpeggvc3WvIVxVwwSy81Y78AI0tPz
         Zc/MYafGVMwd6j7f28pYXj2HQkK1KKdjP1B5//1WRRE/6MVI7GQFi3fQM3wLuSNfpIJ+
         wOKLt7cWfR3gMe/OjOTHvuem821NuIaS4r8jBXYMt/92G8Xqt7l3tybFs9YCZFem6+j9
         iXzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVmyYLCc3F0bQkVFIkMYBcK2/ay25wLQw+VrIjtXcFxGoOaoVYMHm/COBe3+i0lL1zoBVueiniVcW0o@vger.kernel.org
X-Gm-Message-State: AOJu0YzjfJtntLl+wDz8qr5yZfVtRMNje8x5rxsY424HyjoJq0RjdLHx
	a9Q6lbJlXOmkbqHm3Y/qHH9TfcMtPpo9jjMcefwRyonA47MDSYYTc2kGbM9iThMG
X-Gm-Gg: ASbGncsR/WGNbSADR0PZt2hY3aaN1NhmMMddFCf6kfNsz3W02s0C3h1lT9wuAoIRl0c
	lzsh4u7QKQbbdftjB4SkdVxXvtahBEUH0u36G46hBn6byvyhhT4LDBACXAgEbij+Mlbh73Ax9gK
	qMQF0zmXvx4id5F3gheHDOLknTZ1PD0u8YXeC1J8jczxJbGsjlbqPQN8q6H6x3HLB46B8Bqm5Bs
	2/qmEuQtXLR9E+CzyIu+YHwSGRr9SP5n7MR0m1Hksjwq/zEzt2d5f8QLvaxl+7gfG/CbS8+fQqK
	jg4dPLUpPRyWURS6a2C3aPLspjRlwn3/EBtTK8llXfrbDQek6/qAeb4BofGjb6iNSowxKjbPULw
	NXnr9EUArPNihtFstPvVg1gcvKGvu4TAU2TS8GsgdWebWU+ljpX4rEqjHNm1xyCjWiE8/uS95Kw
	uGt02D2G5u13Koe2owoIUYh28TcxBtwrAJroz506KSNg3fJmM2ukxSR9xmSAk=
X-Google-Smtp-Source: AGHT+IEUWF9mZPC9cM1GuF9HXSJqmZulSXRbORP5JE+CibnCAQn5LkWWj23hYAGj9JgI4ANaWg8W5w==
X-Received: by 2002:a05:6102:38c9:b0:5de:8933:9d2a with SMTP id ada2fe7eead31-5dfc54ebc3cmr4628636137.3.1763472125618;
        Tue, 18 Nov 2025 05:22:05 -0800 (PST)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com. [209.85.222.42])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5dfb6ca9d47sm5906942137.0.2025.11.18.05.22.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:22:04 -0800 (PST)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-935356590ddso1324698241.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:22:04 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV7uYKSRGiey0ut/FWi1WTfnherdWTCPlaAZDulCi4w3ITNhv3FguKH/cxZELBVXI5dR+K6ldMjuRgR@vger.kernel.org
X-Received: by 2002:a05:6102:390d:b0:5db:e0e6:1b47 with SMTP id
 ada2fe7eead31-5dfc55688c8mr4951691137.19.1763472124716; Tue, 18 Nov 2025
 05:22:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20251118115051eucas1p15f688883a4466dd7cabf3550a798c060@eucas1p1.samsung.com>
 <20251118115037.1866871-1-m.szyprowski@samsung.com>
In-Reply-To: <20251118115037.1866871-1-m.szyprowski@samsung.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 18 Nov 2025 14:21:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX7vCyC7c_Y6D=axajSfCmj7JBV3eXxLwHogbrVkM-_Hg@mail.gmail.com>
X-Gm-Features: AWmQ_bnjjds2ROTFY_LF0JjQ9CqJzRgGjh6ZD1fzHamlMqKfyof10aLGvuq8Ggo
Message-ID: <CAMuHMdX7vCyC7c_Y6D=axajSfCmj7JBV3eXxLwHogbrVkM-_Hg@mail.gmail.com>
Subject: Re: [PATCH] ARM: exynos: Rework system wakeup interrupts initialization
To: Marek Szyprowski <m.szyprowski@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, Marc Zyngier <maz@kernel.org>, 
	Rob Herring <robh@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

CC Robh

On Tue, 18 Nov 2025 at 12:50, Marek Szyprowski <m.szyprowski@samsung.com> wrote:
> Since commit 1b1f04d8271e ("of/irq: Ignore interrupt parent for nodes
> without interrupts") it is not possible to get parent interrupt device
> node when no 'interrupts' property is specified. Rework the hack used for
> initializing the Exynos system wakeup interrupts (PMU controller is a
> proxy for SoC RTC interrupts) to get the parent interrupt node by
> manually parsing 'interrupt-parent' property.
>
> Fixes: 8b283c025443 ("ARM: exynos4/5: convert pmu wakeup to stacked domains")
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Thanks for your patch!

> ---
> This fixes the following boot failure of allmost all ARM 32bit Exynos
> boards observed since next-20251118:
>
> /soc/system-controller@10020000: no parent, giving up
> OF: of_irq_init: Failed to init /soc/system-controller@10020000 ((ptrval)), parent 00000000

Oops...

> ...
> 8<--- cut here ---
> Unable to handle kernel paging request at virtual address 00002008 when read
> [00002008] *pgd=00000000
> Internal error: Oops: 5 [#1] SMP ARM
> Modules linked in:
> CPU: 0 UID: 0 PID: 1 Comm: swapper/0 Not tainted 6.18.0-rc1-00026-g1b1f04d8271e #16162 PREEMPT
> Hardware name: Samsung Exynos (Flattened Device Tree)
> PC is at exynos_set_delayed_reset_assertion+0x5c/0xb0
> LR is at exynos_set_delayed_reset_assertion+0x80/0xb0
> pc : [<c012b9a4>]    lr : [<c012b9c8>]    psr: 80000053
> ...
> Process swapper/0 (pid: 1, stack limit = 0x(ptrval))
> Stack: (0xf0825f30 to 0xf0826000)
> ...
> Call trace:
>  exynos_set_delayed_reset_assertion from exynos_smp_prepare_cpus+0x10/0x34
>  exynos_smp_prepare_cpus from kernel_init_freeable+0x94/0x234
>  kernel_init_freeable from kernel_init+0x1c/0x12c
>  kernel_init from ret_from_fork+0x14/0x28
> Exception stack(0xf0825fb0 to 0xf0825ff8)
> ...
> ---[ end trace 0000000000000000 ]---
> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> ---[ end Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b ]---
>
> Best regards
> Marek Szyprowski, PhD
> Samsung R&D Institute Poland
> ---
>  arch/arm/mach-exynos/suspend.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm/mach-exynos/suspend.c b/arch/arm/mach-exynos/suspend.c
> index 44811faaa4b4..02785342e0c7 100644
> --- a/arch/arm/mach-exynos/suspend.c
> +++ b/arch/arm/mach-exynos/suspend.c
> @@ -192,6 +192,7 @@ static int __init exynos_pmu_irq_init(struct device_node *node,
>  {
>         struct irq_domain *parent_domain, *domain;
>

Perhaps add a check:

    if (!parent)

just in case any of the pmu system controllers ever gets a real
interrupts or interrupts-extended property?

> +       parent = of_parse_phandle(node, "interrupt-parent", 0);

Or of_irq_find_parent(node)?

>         if (!parent) {
>                 pr_err("%pOF: no parent, giving up\n", node);
>                 return -ENODEV;

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

