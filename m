Return-Path: <devicetree+bounces-227900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD6ABE5A14
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 00:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id AD5C8356746
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 22:01:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C867A2DE6F4;
	Thu, 16 Oct 2025 22:01:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="A3gYDrJm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D886C1E1C02
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:01:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760652092; cv=none; b=KXI1bRiHFgyLo3KvT5qhrR2oD2XEs/R3O5GOIWtJCK/hCzNSuJ0vbzyUB4luMw/36v3Sei1cdRhZoHOmla28SIHydugrc922dH6WP03V+Xv6oiOXHpHcUXjuvGcdIJotKUIq1ym2gUGRpIAqSm7L19VCGkJP6pkVOiAkEyK6OOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760652092; c=relaxed/simple;
	bh=tdPjClI262Zm5tYMT3cr/OeRgdo7FymAe1OpdlIo1tg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=guwbv2fNIt0j0F/v4gP7UUTtuSbkFsN1bSOp6tkbtXyWdK0ApVaJLVUyt3VOA75AUm0mGZyRI4cW0yy/CCS9oN/BUMsyS/Te/CYyNoc54Pua0QJwfvDyeB3AYKVzoZ0MyDASspKhzV5YIgNzifpQCtctCVODdNaHmS1ftzGy2MY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=A3gYDrJm; arc=none smtp.client-ip=209.85.166.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f41.google.com with SMTP id ca18e2360f4ac-91fbba9a8f5so101782639f.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1760652090; x=1761256890; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dMl38ifpHYx95j3NO3+X1dV6A44ciq5yhWKFujz48Ms=;
        b=A3gYDrJmpGuoMvTvekyXRcVcG5cC3vIdNjbWS9JrGad769t/h0qEvI0NTdujQwTMXL
         v50m8AICnpnlZvMJdCU6ktzKJDihmme33brRyBbp1UWzb/aKXWWXKR+NLeXna249IJh+
         UJim+jSnZ1EaYcuw1ARHPngqjEtmg63BUS6/NljKskJEPy24U/fk3pUQjW4uieyOdz9w
         5WlC8ufIH1YpSFnqCSpyP1KxDYa49Mf2zOzD+rho8nB1RkwTbyKYsxU2T+SGWpRnfjfP
         eeDiXi21Kcq8NxWcV7gRqBJzHLwk5l0xdQ54mv+U9QM085fqpYb8cX0HF57CtpUSDuZa
         VvnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760652090; x=1761256890;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dMl38ifpHYx95j3NO3+X1dV6A44ciq5yhWKFujz48Ms=;
        b=cGgItVz2B/1bX9UJxewFGrV2PyfyPh0cxQA3Gw/wOoLhhJJb41FU3rIZdafpmFWWUi
         KMdGr/MyijSUMgjVZ+GHSXXehEo855Y/XASGl7NtuFPTfM0/Cp195f0//7eIIhXAUQmy
         fLoXfXgkdkiqQ7puPuM4dR+GZ81CgkgP1Kw34xmnflydG87JUKbYwgofQfn4Hh5ZvFnI
         qoaDG760yZkwfY+JDftTzbXR7fHJz2wWBF4UUj3s3AP5DwA56inwgtUBEx6lSRuLAK/9
         0AYXDvNlWvcwo7SKyV4FLQfqd7ixUuvLjzpKk+vUfmiviVkMhH7+FCp0kTT8JbCkhATu
         cl2A==
X-Forwarded-Encrypted: i=1; AJvYcCW/Zf1FvB84kbc6xC+9fCciviHqI0W8lvy9aZcvP4bZgQ2Zc05zDk0hogPsNtS38umpXF+L3dk5vmXm@vger.kernel.org
X-Gm-Message-State: AOJu0YzXszNsq8jF4oheFx0/ikyILhvhuL4ToR3OnYB6RUO5gFhKTV1o
	uv+ekgfWYpI7SZG1BckBzyllrbbUEiFnaTpyir1OC7m4Xs9QWHtNRqAGjojN3/7oqB4=
X-Gm-Gg: ASbGncuuV7H7c4NRvtHD28vLre5MJM/w+agblN/5SXl7Dfs+NyHa9un1/qg7xX24kby
	5TjwdtZQF0KhfbeUVDleYaYyiIOZ77S5aBL4NoUIUcTsSpKL66VlXNwVrIuyWKq7WbRtHkIA37S
	fuAlSF5+ONzWzTRLHLAFrHDEyg3ARrf46KsnDTG1RX8MJS1emaDNg2a2mhOL7ZbTEnSRikcGKpz
	diAyRBtkO0QqZUefZSIgQeAq0Hmz1bfdR3Z1kqpqZ6bkdomorDPldJoEZrX8l1TCOvavKIYgRXy
	V3S9FeZXGto7CjOF8nEW3rC8teeSsBIYp1eIgDuxhoCt2fAbGsjW0GbTL/jAXQHYl05qEwfawPs
	UA2phAlhngXpGCZaceiD5ps2aeDiwwmInNTrHPrLSUAMPzs6QRJ1ekXhVIlj5DB6UOZnl6BXj17
	+EhvQBIe8hs9lZ7LEYTf5ZEGimjeM=
X-Google-Smtp-Source: AGHT+IEpHdQzMerjWdBXorJoGsR/H2Zsez6Tl7azsD2lDQq/RwaDAfjdaA+AF4wBT4wi6aeIVjSUPQ==
X-Received: by 2002:a05:6e02:2291:b0:42f:9187:f6e0 with SMTP id e9e14a558f8ab-430c5270233mr29240445ab.13.1760652089394;
        Thu, 16 Oct 2025 15:01:29 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.207])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-430b512c03esm16138215ab.25.2025.10.16.15.01.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 15:01:28 -0700 (PDT)
Message-ID: <95a777a7-4998-4451-b271-8450a5b674bb@sifive.com>
Date: Thu, 16 Oct 2025 17:01:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] irqchip/plic: add support for UltraRISC DP1000
 PLIC
To: Bo Gan <ganboing@gmail.com>, Lucas Zampieri <lzampier@redhat.com>
Cc: Charles Mirabile <cmirabil@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Vivian Wang <dramforever@live.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Zhang Xincheng <zhangxincheng@ultrarisc.com>, linux-kernel@vger.kernel.org
References: <20251016084301.27670-1-lzampier@redhat.com>
 <20251016084301.27670-4-lzampier@redhat.com>
 <831744c6-ba89-4029-a035-9a70c3f57465@gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <831744c6-ba89-4029-a035-9a70c3f57465@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Bo,

On 2025-10-16 4:28 PM, Bo Gan wrote:
> Hi Lucas, Charles,
> 
> I just realized your last reply and sorry about the messy formatting.
> Please disregard the previous one from me and use this one.
> 
> On 10/16/25 01:42, Lucas Zampieri wrote:
>> From: Charles Mirabile <cmirabil@redhat.com>
>>
>> Add a new compatible for the plic found in UltraRISC DP1000 with a quirk to
>> work around a known hardware bug with IRQ claiming in the UR-CP100 cores.
>>
>> When claiming an interrupt on UR-CP100 cores, all other interrupts must be
>> disabled before the claim register is accessed to prevent incorrect
>> handling of the interrupt. This is a hardware bug in the CP100 core
>> implementation, not specific to the DP1000 SoC.
>>
>> When the PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM flag is present, a specialized
>> handler (plic_handle_irq_cp100) saves the enable state of all interrupts,
>> disables all interrupts except for the first pending one before reading the
>> claim register, and then restores the interrupts before further processing of
>> the claimed interrupt continues.
>>
>> The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
>> SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
>> This has no impact on other platforms.
>>
>> Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
>> Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
>> Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
>> Acked-by: Samuel Holland <samuel.holland@sifive.com>
>> Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
>> ---
>>   drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
>>   1 file changed, 93 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-
>> plic.c
>> index bf69a4802b71..0428e9f3423d 100644
>> --- a/drivers/irqchip/irq-sifive-plic.c
>> +++ b/drivers/irqchip/irq-sifive-plic.c
>> @@ -49,6 +49,8 @@
>>   #define CONTEXT_ENABLE_BASE        0x2000
>>   #define     CONTEXT_ENABLE_SIZE        0x80
>>   +#define PENDING_BASE                    0x1000
>> +
>>   /*
>>    * Each hart context has a set of control registers associated with it.  Right
>>    * now there's only two: a source priority threshold over which the hart will
>> @@ -63,6 +65,7 @@
>>   #define    PLIC_ENABLE_THRESHOLD        0
>>     #define PLIC_QUIRK_EDGE_INTERRUPT    0
>> +#define PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM    1
>>     struct plic_priv {
>>       struct fwnode_handle *fwnode;
>> @@ -394,6 +397,89 @@ static void plic_handle_irq(struct irq_desc *desc)
>>       chained_irq_exit(chip, desc);
>>   }
>>   +static bool cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
>> +                       void __iomem *pending,
>> +                       void __iomem *enable)
>> +{
>> +    u32 pending_irqs = 0;
>> +    int i, j;
>> +
>> +    /* Look for first pending interrupt */
>> +    for (i = 0; i < nr_irq_groups; i++) {
>> +        pending_irqs = ie[i] & readl_relaxed(pending + i * sizeof(u32));
>> +        if (pending_irqs)
>> +            break;
> 
> No need to start from group 0. Only readl on the group with ie[i] != 0
> 
>> +    }
>> +
>> +    if (!pending_irqs)
>> +        return false;
>> +
>> +    /* Disable all interrupts but the first pending one */
>> +    for (j = 0; j < nr_irq_groups; j++) {
>> +        u32 new_mask = 0;
>> +
>> +        if (j == i) {
>> +            /* Extract mask with lowest set bit */
>> +            new_mask = (pending_irqs & -pending_irqs);
>> +        }
>> +
>> +        writel_relaxed(new_mask, enable + j * sizeof(u32));
> 
> 
> There's no need to write the register if the value isn't changing. You can
> check new_mask with the value in ie[].
> 
>> +    }
>> +
>> +    return true;
>> +}
>> +
>> +static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
>> +                    void __iomem *claim)
>> +{
>> +    int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
>> +    void __iomem *pending = handler->priv->regs + PENDING_BASE;
>> +    void __iomem *enable = handler->enable_base;
>> +    irq_hw_number_t hwirq = 0;
>> +    int i;
>> +
>> +    guard(raw_spinlock)(&handler->enable_lock);
>> +
>> +    /* Save current interrupt enable state */
>> +    for (i = 0; i < nr_irq_groups; i++)
>> +        handler->enable_save[i] = readl_relaxed(enable + i * sizeof(u32));
> 
> 
> I see that you start to use handler->enable_save to track HW in the last reply.
> I'm about to suggest that. Please send out a new patch, so people can properly
> review it. There's change to common code path.
> 
>> +
>> +    if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save,
>> pending, enable))
>> +        return 0;
>> +
>> +    hwirq = readl(claim);
> 
> Possibly missing a io barrier. readl isn't going to enforce the ordering of
> readl/writel_relaxed above and itself. There could be other barriers missing.
> Please check.

There is no missing barrier. Linux requires the hardware to enforce this
ordering. See the comment in asm/mmio.h:

/*
 * Relaxed I/O memory access primitives. These follow the Device memory
 * ordering rules but do not guarantee any ordering relative to Normal memory
 * accesses.  These are defined to order the indicated access (either a read or
 * write) with all other I/O memory accesses to the same peripheral. Since the
 * platform specification defines that all I/O regions are strongly ordered on
 * channel 0, no explicit fences are required to enforce this ordering.
 */

where "strongly ordered" is defined by the privileged ISA: "accesses to an I/O
region with strong ordering are generally observed by other harts and bus
mastering devices in program order."

Barriers are only needed if there are ordering requirements between I/O accesses
to multiple MMIO regions, or between I/O and normal memory (e.g. locks and DMA).

Regards,
Samuel

>> +
>> +    /* Restore previous state */
>> +    for (i = 0; i < nr_irq_groups; i++)
>> +        writel_relaxed(handler->enable_save[i], enable + i * sizeof(u32));
>> +
>> +    return hwirq;
>> +}
>> +
>> +static void plic_handle_irq_cp100(struct irq_desc *desc)
>> +{
>> +    struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>> +    struct irq_chip *chip = irq_desc_get_chip(desc);
>> +    void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
>> +    irq_hw_number_t hwirq;
>> +
>> +    WARN_ON_ONCE(!handler->present);
>> +
>> +    chained_irq_enter(chip, desc);
>> +
>> +    while ((hwirq = cp100_get_hwirq(handler, claim))) {
>> +        int err = generic_handle_domain_irq(handler->priv->irqdomain, hwirq);
>> +
>> +        if (unlikely(err)) {
>> +            pr_warn_ratelimited("%pfwP: can't find mapping for hwirq %lu\n",
>> +                        handler->priv->fwnode, hwirq);
>> +        }
>> +    }
>> +
>> +    chained_irq_exit(chip, desc);
>> +}
>> +
>>   static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
>>   {
>>       /* priority must be > threshold to trigger an interrupt */
>> @@ -430,6 +516,8 @@ static const struct of_device_id plic_match[] = {
>>         .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
>>       { .compatible = "thead,c900-plic",
>>         .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
>> +    { .compatible = "ultrarisc,cp100-plic",
>> +      .data = (const void *)BIT(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM) },
>>       {}
>>   };
>>   @@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnode)
>>           }
>>             if (global_setup) {
>> +            void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
>> +
>> +            if (test_bit(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM, &handler-
>> >priv->plic_quirks))
>> +                handler_fn = plic_handle_irq_cp100;
>> +
>>               /* Find parent domain and register chained handler */
>>               domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(),
>> DOMAIN_BUS_ANY);
>>               if (domain)
>>                   plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
>>               if (plic_parent_irq)
>> -                irq_set_chained_handler(plic_parent_irq, plic_handle_irq);
>> +                irq_set_chained_handler(plic_parent_irq, handler_fn);
>>                 cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>>                         "irqchip/sifive/plic:starting",
> 
> My rationale of the above comments is to achieve minimal overhead with this
> "read pending[] -> disable IE[] -> claim -> enable IE[]" approach. In general,
> the fewer interrupts enabled on a hart, the lower the overhead. If there's only
> 1 interrupt enabled for a give hart, then there's zero reading/writing of IE[],
> and you can further optimize away the reading of pending register.
> 
> I'd imagine that if the user truly want to avoid the overhead of this quirk,
> they can chose to spread out the irq groups onto different harts to alleviate
> the slow down, or better isolate a single irq to a given hart, and we should
> make it possible.
> 
> Feel free to point out any of my misunderstandings.
> 
> Bo


