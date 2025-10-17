Return-Path: <devicetree+bounces-228314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBF3BEBCCF
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 23:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D24CB188DE1A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 21:22:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8637330307;
	Fri, 17 Oct 2025 21:21:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AuaSYjPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2FD432C94E
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760736110; cv=none; b=A0/iBUwifqU9gnjIOjFfRdXs0pO4zPK5p5KccnBMS69uL2fuOd3lSTs5/h6ODrkB2B8eiXb6qsz0jTGDoS9N1ppyxyHPgadNpPS6uSXUj94+lOVt++tk5MmWAWfLxcFqnhIcGiq+WW8KsEqxbPnAqZD5qf64vxgea3Sjazu7rNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760736110; c=relaxed/simple;
	bh=Cn3Jlknj2Rn1DMXRhvjH8yFWpbPn6ja5ktAPxv7Kg5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jYEzQQb7rlFkjxZ5cuYitIpCPjHm+c7nojf7Og3OOXmpkIC4oWsYCu0B7orXe0DVB//mq0RRfgVOJJypCJfRSDfSETLIAefrG0N47XtL7ZE/BZqBKtGHkbKkBG4xK5S8g7B3DwDqOzosNrOsKvoAXEg1eCxWDu95fIMUnh774WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AuaSYjPR; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-290a3a4c7ecso25378125ad.0
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 14:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760736108; x=1761340908; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zaGDoGIrtwoheNmYMesq5vBWUiuQlfTwhxsm08oVth8=;
        b=AuaSYjPR9NDcJ0fLZME/sjl1w/N3U3rYg8yzhi0GyZJ7CrTDgU6no5sTtevzvEaiPL
         EyHS2Ybz5LxJVnFvPXjfsHgZvGp1z0ugmuNdQYcgJJjbySLZE3rOXgp4/j++fhgzT8Wr
         n/E6LPLl6crxM/qbrcsZGLuHEBh+ydIIH9aPvJlJgF6aJrVMp4vC8w/yudcLfy2JJ6cH
         3SLIet2TyI7Bmvshi2GKm0uACUPzmDLc6EdxxQMm2eWQE2lvsz01FhaehWlyN/l4ca6M
         tzAXaPPS32DrrCWvXcDLH0WWdLMyz3QmKb23fdRpfUMBlKxu2pySI88ThOBvuuwOVR3L
         z9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760736108; x=1761340908;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zaGDoGIrtwoheNmYMesq5vBWUiuQlfTwhxsm08oVth8=;
        b=CVglVHwql2EaqQqC770/p5KuCbQUwSAsbqSepA3gYwobvGrx6Ml4/1cRC/UNN/ZFf6
         j3H++FJfrX58+QrooA0qmiSCXGxHS7JLl0994V98f2RKZzh5A+jFit9Q8XUQ03HFJjUG
         e9LrMYScRR+x2lHdEwC6bbO68wul7q8iy725vFY8G8vhg/jW/TrdyFsi81SXWjCFzClR
         J8in3VGYmvFXcN5yHqco6peFfRfFTSWHaMny1jJ+UiXkhPwOVzJ3x8DesrIGBYOCjwd5
         4FHngjiUp0H4AOT0sFWRIn3satvFunQRcf0NgpoD65RjTjen62F2J2mxSwVTzoSrAb0B
         0OCw==
X-Forwarded-Encrypted: i=1; AJvYcCVpH7AnXE0bUkq1/1vWjqabxxWkX7N7ZXSplsEYE4MgJCEOM+LZIQnoXBlmKpJtAAOPdub8iPGBgLEA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3YydVtNJdCH6eIHw3994Z3hGcNowVTBU9ca8/pYRbm8DupxkG
	dWTYXvBYMeXJcGht3iHfgJ4Gn82UzOVMmw2hvtTqTWFG2mRMuf/VMAb4
X-Gm-Gg: ASbGncuKaiJNKmiYQ9iY4oFAeBEap1DLw6mBaBfRlZiY2CxHSSOfjipmf6oD/0zDrou
	brQ9bgSefEAb5lub1nc8/9GlP+WZhMktIMC136Hd6gfJKKJUR8WhiTcOCHDvFaOcgYGTJ5GC14Q
	TWb8TM+lnEUyvxoHukhAJg0PrZKOMsn3OKi8+HNQBeVBn1jwm0buJhsHPj9uqWa2732kj7t8TCD
	V7TTuQEdIzHMZnBL8bbFBHch5B2MXkjqiNgj5avDtsL1xP8wnfaqfGJXU9rLgvdBoQWQbMWulCe
	sMm6KuDE3J9yaYjHLpvOEPffYlDU8T5vHQa5rL9LPFZWkM94VnfGhyUlTXx52kN8dwwDJ1FsF/2
	dwrRZm2is0jNnvASNZjp19GiA30QWil5htLidDCKz314EMLoWRA6yXHUQlxvAOWGa4KyyWcW+N6
	yql/P44Zdd+fmUUeWBnIRwCVMF
X-Google-Smtp-Source: AGHT+IEWai7jkHxxbDOF17QXZE+elmA5R0CbR/kP4fSofDd1N3XwvLp+NOIsKKm7/cuKC6brS8QWZA==
X-Received: by 2002:a17:902:d503:b0:290:91b0:def4 with SMTP id d9443c01a7336-290ca21635emr65491335ad.29.1760736107998;
        Fri, 17 Oct 2025 14:21:47 -0700 (PDT)
Received: from [172.16.0.242] ([192.19.161.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471fd9e8sm4768555ad.85.2025.10.17.14.21.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 14:21:47 -0700 (PDT)
Message-ID: <8052c86d-0258-497b-a2b4-79b65d347a86@gmail.com>
Date: Fri, 17 Oct 2025 14:25:25 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] irqchip/plic: add support for UltraRISC DP1000
 PLIC
To: Charles Mirabile <cmirabil@redhat.com>, Bo Gan <ganboing@gmail.com>
Cc: Lucas Zampieri <lzampier@redhat.com>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Samuel Holland <samuel.holland@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Vivian Wang <dramforever@live.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Zhang Xincheng <zhangxincheng@ultrarisc.com>
References: <20251016084301.27670-1-lzampier@redhat.com>
 <20251016084301.27670-4-lzampier@redhat.com>
 <831744c6-ba89-4029-a035-9a70c3f57465@gmail.com>
 <CABe3_aGjCBX2VVdV5dLwQ2g+N+c6mMf-eFqkViD2BhMaxRvq6Q@mail.gmail.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <CABe3_aGjCBX2VVdV5dLwQ2g+N+c6mMf-eFqkViD2BhMaxRvq6Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Charles,

On 10/16/25 16:25, Charles Mirabile wrote:
> Hi Bo—
> 
> On Thu, Oct 16, 2025 at 5:25 PM Bo Gan <ganboing@gmail.com> wrote:
>>
>> Hi Lucas, Charles,
>>
>> I just realized your last reply and sorry about the messy formatting.
>> Please disregard the previous one from me and use this one.
>>
>> On 10/16/25 01:42, Lucas Zampieri wrote:
>>> From: Charles Mirabile <cmirabil@redhat.com>
>>>
>>> Add a new compatible for the plic found in UltraRISC DP1000 with a quirk to
>>> work around a known hardware bug with IRQ claiming in the UR-CP100 cores.
>>>
>>> When claiming an interrupt on UR-CP100 cores, all other interrupts must be
>>> disabled before the claim register is accessed to prevent incorrect
>>> handling of the interrupt. This is a hardware bug in the CP100 core
>>> implementation, not specific to the DP1000 SoC.
>>>
>>> When the PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM flag is present, a specialized
>>> handler (plic_handle_irq_cp100) saves the enable state of all interrupts,
>>> disables all interrupts except for the first pending one before reading the
>>> claim register, and then restores the interrupts before further processing of
>>> the claimed interrupt continues.
>>>
>>> The driver matches on "ultrarisc,cp100-plic" to apply the quirk to all
>>> SoCs using UR-CP100 cores, regardless of the specific SoC implementation.
>>> This has no impact on other platforms.
>>>
>>> Co-developed-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
>>> Signed-off-by: Zhang Xincheng <zhangxincheng@ultrarisc.com>
>>> Signed-off-by: Charles Mirabile <cmirabil@redhat.com>
>>> Acked-by: Samuel Holland <samuel.holland@sifive.com>
>>> Signed-off-by: Lucas Zampieri <lzampier@redhat.com>
>>> ---
>>>    drivers/irqchip/irq-sifive-plic.c | 94 ++++++++++++++++++++++++++++++-
>>>    1 file changed, 93 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
>>> index bf69a4802b71..0428e9f3423d 100644
>>> --- a/drivers/irqchip/irq-sifive-plic.c
>>> +++ b/drivers/irqchip/irq-sifive-plic.c
>>> @@ -49,6 +49,8 @@
>>>    #define CONTEXT_ENABLE_BASE         0x2000
>>>    #define     CONTEXT_ENABLE_SIZE             0x80
>>>
>>> +#define PENDING_BASE                    0x1000
>>> +
>>>    /*
>>>     * Each hart context has a set of control registers associated with it.  Right
>>>     * now there's only two: a source priority threshold over which the hart will
>>> @@ -63,6 +65,7 @@
>>>    #define     PLIC_ENABLE_THRESHOLD           0
>>>
>>>    #define PLIC_QUIRK_EDGE_INTERRUPT   0
>>> +#define PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM      1
>>>
>>>    struct plic_priv {
>>>        struct fwnode_handle *fwnode;
>>> @@ -394,6 +397,89 @@ static void plic_handle_irq(struct irq_desc *desc)
>>>        chained_irq_exit(chip, desc);
>>>    }
>>>
>>> +static bool cp100_isolate_pending_irq(int nr_irq_groups, u32 ie[],
>>> +                                    void __iomem *pending,
>>> +                                    void __iomem *enable)
>>> +{
>>> +     u32 pending_irqs = 0;
>>> +     int i, j;
>>> +
>>> +     /* Look for first pending interrupt */
>>> +     for (i = 0; i < nr_irq_groups; i++) {
>>> +             pending_irqs = ie[i] & readl_relaxed(pending + i * sizeof(u32));
>>> +             if (pending_irqs)
>>> +                     break;
>>
>> No need to start from group 0. Only readl on the group with ie[i] != 0
> 
> You mean put something like `if (!ie[i]) continue;` to avoid the readl
> if the mask is going to obliterate it?
> 

Yes.

> Sounds reasonable.
>>
>>> +     }
>>> +
>>> +     if (!pending_irqs)
>>> +             return false;
>>> +
>>> +     /* Disable all interrupts but the first pending one */
>>> +     for (j = 0; j < nr_irq_groups; j++) {
>>> +             u32 new_mask = 0;
>>> +
>>> +             if (j == i) {
>>> +                     /* Extract mask with lowest set bit */
>>> +                     new_mask = (pending_irqs & -pending_irqs);
>>> +             }
>>> +
>>> +             writel_relaxed(new_mask, enable + j * sizeof(u32));
>>
>>
>> There's no need to write the register if the value isn't changing. You can
>> check new_mask with the value in ie[].
> 
> Something similar like `if (!ie[j]) continue;` in this loop too? We

Better to have:

	if (new_mask != ie[j])
		writel_relaxed(...)

> know that this will not interact poorly with the i == j case because
> ie[i] is by definition nonzero if we hit this code path and so when i
> ==j ie[j] == ie[j] != 0 so we will hit the rest of the logic. Also
> sounds sane.
>  >>
>>> +     }
>>> +
>>> +     return true;
>>> +}
>>> +
>>> +static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler,
>>> +                                     void __iomem *claim)
>>> +{
>>> +     int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
>>> +     void __iomem *pending = handler->priv->regs + PENDING_BASE;
>>> +     void __iomem *enable = handler->enable_base;
>>> +     irq_hw_number_t hwirq = 0;
>>> +     int i;
>>> +
>>> +     guard(raw_spinlock)(&handler->enable_lock);
>>> +
>>> +     /* Save current interrupt enable state */
>>> +     for (i = 0; i < nr_irq_groups; i++)
>>> +             handler->enable_save[i] = readl_relaxed(enable + i * sizeof(u32));
>>
>>
>> I see that you start to use handler->enable_save to track HW in the last reply.
>> I'm about to suggest that. Please send out a new patch, so people can properly
>> review it. There's change to common code path.
> 
> Yes, a proper patch will come soon, just have to respin the whole
> series. Two separate commits, one for refactoring the common code,
> another for adding the quirk.
> 
> The changes do not overlap - the first patch will be hunks 3, 4, & 5
> of the tentative diff I sent to Thomas, and patch two will be hunks 1,
> 2, 6, 7, 8.
> 
> If you have any concerns about the changes to common code, do let us know.
> 
> I will also pick up your feedback about avoiding the mmio by checking
> ie[] in the loops.
> 
>>
>>> +
>>> +     if (!cp100_isolate_pending_irq(nr_irq_groups, handler->enable_save, pending, enable))
>>> +             return 0;
>>> +
>>> +     hwirq = readl(claim);
>>
>> Possibly missing a io barrier. readl isn't going to enforce the ordering of
>> readl/writel_relaxed above and itself. There could be other barriers missing.
>> Please check.
>>
>>> +
>>> +     /* Restore previous state */
>>> +     for (i = 0; i < nr_irq_groups; i++)
>>> +             writel_relaxed(handler->enable_save[i], enable + i * sizeof(u32));

You can also:

	if (!handler->enable_save[i])
		// enable_save[i] has never changed, it's 0,
		// so we can't remove any more bits
		continue;

	if (i == hwirq / 32 && handler->enable_save[i] == (1UL << (hwirq %32)))
		// enable_save[i] has never changed,
		// because the enable bit of hwirq must have been enabled to
		// be able to claim this hwirq, and there were no more bits to remove
		continue;

	writel_relaxed(...)

>>> +
>>> +     return hwirq;
>>> +}
>>> +
>>> +static void plic_handle_irq_cp100(struct irq_desc *desc)
>>> +{
>>> +     struct plic_handler *handler = this_cpu_ptr(&plic_handlers);
>>> +     struct irq_chip *chip = irq_desc_get_chip(desc);
>>> +     void __iomem *claim = handler->hart_base + CONTEXT_CLAIM;
>>> +     irq_hw_number_t hwirq;
>>> +
>>> +     WARN_ON_ONCE(!handler->present);
>>> +
>>> +     chained_irq_enter(chip, desc);
>>> +
>>> +     while ((hwirq = cp100_get_hwirq(handler, claim))) {
>>> +             int err = generic_handle_domain_irq(handler->priv->irqdomain, hwirq);
>>> +
>>> +             if (unlikely(err)) {
>>> +                     pr_warn_ratelimited("%pfwP: can't find mapping for hwirq %lu\n",
>>> +                                         handler->priv->fwnode, hwirq);
>>> +             }
>>> +     }
>>> +
>>> +     chained_irq_exit(chip, desc);
>>> +}
>>> +
>>>    static void plic_set_threshold(struct plic_handler *handler, u32 threshold)
>>>    {
>>>        /* priority must be > threshold to trigger an interrupt */
>>> @@ -430,6 +516,8 @@ static const struct of_device_id plic_match[] = {
>>>          .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
>>>        { .compatible = "thead,c900-plic",
>>>          .data = (const void *)BIT(PLIC_QUIRK_EDGE_INTERRUPT) },
>>> +     { .compatible = "ultrarisc,cp100-plic",
>>> +       .data = (const void *)BIT(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM) },
>>>        {}
>>>    };
>>>
>>> @@ -664,12 +752,16 @@ static int plic_probe(struct fwnode_handle *fwnode)
>>>                }
>>>
>>>                if (global_setup) {
>>> +                     void (*handler_fn)(struct irq_desc *) = plic_handle_irq;
>>> +
>>> +                     if (test_bit(PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM, &handler->priv->plic_quirks))
>>> +                             handler_fn = plic_handle_irq_cp100;
>>> +
>>>                        /* Find parent domain and register chained handler */
>>>                        domain = irq_find_matching_fwnode(riscv_get_intc_hwnode(), DOMAIN_BUS_ANY);
>>>                        if (domain)
>>>                                plic_parent_irq = irq_create_mapping(domain, RV_IRQ_EXT);
>>>                        if (plic_parent_irq)
>>> -                             irq_set_chained_handler(plic_parent_irq, plic_handle_irq);
>>> +                             irq_set_chained_handler(plic_parent_irq, handler_fn);
>>>
>>>                        cpuhp_setup_state(CPUHP_AP_IRQ_SIFIVE_PLIC_STARTING,
>>>                                          "irqchip/sifive/plic:starting",
>>
>> My rationale of the above comments is to achieve minimal overhead with this
>> "read pending[] -> disable IE[] -> claim -> enable IE[]" approach. In general,
>> the fewer interrupts enabled on a hart, the lower the overhead. If there's only
>> 1 interrupt enabled for a give hart, then there's zero reading/writing of IE[],
>> and you can further optimize away the reading of pending register.
>>
>> I'd imagine that if the user truly want to avoid the overhead of this quirk,
>> they can chose to spread out the irq groups onto different harts to alleviate
>> the slow down, or better isolate a single irq to a given hart, and we should
>> make it possible.
>>
>> Feel free to point out any of my misunderstandings.
>>
>> Bo
>>
> 
> Best—Charlie
> 

Bo


