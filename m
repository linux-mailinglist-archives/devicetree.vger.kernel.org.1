Return-Path: <devicetree+bounces-93698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B37B4951F18
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 17:51:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0B4EB213BA
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 15:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC62D1B4C2E;
	Wed, 14 Aug 2024 15:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="BiMKBE88";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="5Moz64Hw"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA2C828DC3
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 15:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723650697; cv=none; b=PcGJ2JOXW2w3Y43QQ3++AWNdQAMtE0nwRmDDJVN//Ob6T+04DIYG0OxKReFsAIVXa6EltNZo5diLVy9D00HH7K5sT8Dafl1gUTaSTNaWyjc+aBXH30M/Y/Aj3defAnPfCAbwYXHmGbdqUjucKReuKCIX+b4jjDkWgdLX15CCPXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723650697; c=relaxed/simple;
	bh=U5ZP+4t54HGLkwQLHMN8qVYiePZ3xhJmq7zkEhVXiho=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=P0v/W/uE/xirqz3oKe/eaUCAZN+3Y5kPA/rWa6TZhTIhQppzN+PZZSsdmwzqoXO1e2lA8l7W3fhXRjoNHTgWX7EceEjmTHGGNNyQuvLK9Ne7IkXL3XIYrssrA0Gjd6ZU9IaglHDYQnDQQOwgZg8Ae069OAllvfMWX91G4TspSmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=BiMKBE88; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=5Moz64Hw; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1723650694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DCdVq6YBa4xH1rxhnPE36dT7kkqKXwn28c5qEoHmwn0=;
	b=BiMKBE888RUERuudsOY1rhgFrr5FZdv1bKRM09xh62SWjjg2QH5UoTcx2xUMtu39dkT3qH
	t4IQubrJUsRjj1OLpL+NG/vFqyDJNx2FPQ/kk/aWxYydFMMYWU0FjjOn66Tioa1oN8dwQn
	BQNGIRIfIjmHD1gmL3dlbnH/S0aGMBSBRjqs8YMeN7CJgesEecURO0ER4xjE0hYxdf0XjQ
	8RR6nG53/YRslFsIya0V5CcGDnjSKri9oPZ//JAxAvHGAV5CDR4RYLdXshEUo63d1iQBWq
	+ZkWTa7KZ521zoqBpOVaWjfWbKg/Q60/1j1Ukc4YzaqJq3bp/xw/SWsnXAvS9g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1723650694;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DCdVq6YBa4xH1rxhnPE36dT7kkqKXwn28c5qEoHmwn0=;
	b=5Moz64HwSg+hc/rcqqRrQq9eWsYiH/WzQA8JPC+ezhufmhY0bNMV3Lb8+1xHny+SfYFtJ6
	r1QzAbbWMfFsgiDA==
To: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>, Andrew Lunn
 <andrew@lunn.ch>, Gregory
 Clement <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, linux-arm-kernel@lists.infradead.org,
 arm@kernel.org, Andy Shevchenko <andy@kernel.org>, Hans de Goede
 <hdegoede@redhat.com>, Ilpo =?utf-8?Q?J=C3=A4rvinen?=
 <ilpo.jarvinen@linux.intel.com>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org
Cc: Marek =?utf-8?Q?Beh=C3=BAn?= <kabel@kernel.org>
Subject: Re: [PATCH] irqchip/armada-370-xp: Implement SoC Error interrupts
In-Reply-To: <20240814124537.29847-1-kabel@kernel.org>
References: <20240814124537.29847-1-kabel@kernel.org>
Date: Wed, 14 Aug 2024 17:51:33 +0200
Message-ID: <87mslfnlve.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14 2024 at 14:45, Marek Beh=C3=BAn wrote:

Cc+ device tree people.

> + The code binds this new interrupt domain to the same device-tree node as
> + the main interrupt domain. The main interrupt controller has its
> + interrupts described by one argument in device-tree
> + (#interrupt-cells =3D <1>), i.e.:
> +=20
> +   interrupts-extended =3D <&mpic 8>;
> +=20
> + Because of backwards compatibility we cannot change this number of
> + arguments, and so the SoC Error interrupts must also be described by
> + this one number.
> +=20
> + Thus, to describe a SoC Error interrupt, one has to add the an offset
> + to the SoC Error interrupt number. Offset 0x400 was chosen because the
> + main controller supports at most 1024 interrupts (in theory; in practice
> + it seems to be 116 interrupts on all supported platforms). An example of
> + describing a SoC Error interrupt is
> +=20
> +   interrupts-extended =3D <&mpic 0x404>;

This looks like a horrible hack and I don't understand why this can't be
a separate interrupt controller, which it is in the hardware. That
controller utilizes interrupt 4 from the MPIC.

But then my DT foo is limited, so I let the DT folks comment on that.

> +static int mpic_soc_err_irq_set_affinity(struct irq_data *d, const struc=
t cpumask *mask, bool force)
> +{
> +	unsigned int cpu;
> +
> +	/*
> +	 * TODO: The mpic->per_cpu region accesses CPU Local IC registers for C=
PU n when accessed
> +	 * from CPU n. Thus if we want to access this registers from another CP=
U, we need to request
> +	 * a function to be executed on CPU n. This is what we do here by calli=
ng smp_call_on_cpu().
> +	 *
> +	 * Instead, we could access CPU Local IC registers by having CPU Local =
region of each CPU
> +	 * mapped in the MPIC private data structure. We could do this either b=
y extending the
> +	 * register resource in the device-tree, or by computing the physical b=
ase address of those
> +	 * regions relative to the main MPIC base address.

That requires locking for those registers obviously.

> +	 */
> +
> +	cpus_read_lock();

This code was clearly never tested with any debug enabled.

set_affinity() is invoked with interrupts disabled and irq_desc::lock
held. cpus_read_lock() can sleep... The mandatory debug options would
have told you loud and clearly.

> +	/* First, disable the ERR IRQ on all cores */
> +	for_each_online_cpu(cpu)
> +		smp_call_on_cpu(cpu, mpic_soc_err_irq_mask_on_cpu, d, true);

Again. smp_call_on_cpu() invokes wait_for_completion(), which obviously
can sleep.

Also why do you want to do that on _ALL_ CPUs if there is only one you
pick from the effective affinity mask?

> +	/* Then enable on one online core from the affinity mask */
> +	cpu =3D cpumask_any_and(mask, cpu_online_mask);
> +	smp_call_on_cpu(cpu, mpic_soc_err_irq_unmask_on_cpu, d, true);

Ditto.

So you really want to map the registers so they are accessible cross CPU
including locking. Alternatively pin the error interrupts to CPU0 which
cannot be unplugged and be done with it.

> +static int mpic_soc_err_irq_map(struct irq_domain *domain, unsigned int =
virq, irq_hw_number_t hwirq)
> +{
> +	struct mpic *mpic =3D domain->host_data;
> +
> +	irq_set_chip_data(virq, mpic);
> +
> +	mpic_soc_err_irq_mask(irq_get_irq_data(virq));

What for? It should be masked if it's not mapped, no?

> +	irq_set_status_flags(virq, IRQ_LEVEL);
> +	irq_set_chip_and_handler(virq, &mpic_soc_err_irq_chip, handle_level_irq=
);
> +	irq_set_probe(virq);
> +
> +	return 0;
> +}

> +static int mpic_soc_err_xlate(struct irq_domain *domain, struct device_n=
ode *np,
> +			      const u32 *spec, unsigned int count,
> +			      unsigned long *hwirq, unsigned int *type)
> +{
> +	int err =3D irq_domain_xlate_onecell(domain, np, spec, count, hwirq, ty=
pe);
> +
> +	if (err)
> +		return err;
> +
> +	*hwirq -=3D MPIC_SOC_ERR_IRQS_OFFSET;
> +	return 0;
> +}

> +static int __init mpic_soc_err_init(struct mpic *mpic, struct device_nod=
e *np)
> +{
> +	unsigned int nr_irqs;
> +
> +	if (of_machine_is_compatible("marvell,armada-370-xp"))
> +		nr_irqs =3D 32;
> +	else
> +		nr_irqs =3D 64;
> +
> +	mpic->soc_err_domain =3D irq_domain_add_hierarchy(mpic->domain, 0, nr_i=
rqs, np,
> +							&mpic_soc_err_irq_ops, mpic);

Why is this a hierarchical domain? That does not make any sense at
all. The MPIC domain provides only the demultiplexing interrupt and is
not involved in a domain hierarchy. Hierarchical domains are required
when the top level domain depends on resources from the parent domain
which need to be allocated when mapping an interrupt. e.g. on x86:

      vector - remap - PCI/MSI

So the top level PCI/MSI domain requires resources from the remap domain
and the remap domain requires a vector from the vector domain. These
resources are per interrupt.

During runtime there are also irq_*() callbacks which utilize callbacks
from the parent domains. I.e. mask() invokes mask(parent) ...

But that has nothing to do with demultiplexed interrupts because the
underlying demultiplex interrupt is already there and the same for all
interrupts in the demultiplexed domain. There is no callback dependency
and no resource dependency at all.

Thanks,

        tglx

