Return-Path: <devicetree+bounces-278244-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oOYyCu03vWkN7wIAu9opvQ
	(envelope-from <devicetree+bounces-278244-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:05:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D7802D9E51
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 13:05:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35C17301DBB7
	for <lists+devicetree@lfdr.de>; Fri, 20 Mar 2026 12:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E2C397E7F;
	Fri, 20 Mar 2026 12:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlRC563Y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3DF91A6800;
	Fri, 20 Mar 2026 12:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774008297; cv=none; b=T1fUcqOqixKMqX6BZ+bueZZf3vfog8C8czEdhnHa6qmqE+YCXD8zYcPp5QklDjLLbpVMojb5LiT1+I3kYhTTH8Lbf1KV7gWNyEsPX1rowu9j7zt98nHSry9CQaTFiJGHYjj26pOk0ZUL/ME5uxVFfFnJmFpNE190F6dPscNkuwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774008297; c=relaxed/simple;
	bh=PEtVe0XP3Yy0m7adMQRU2WDLbqvQqWio1jNWvnoX4lY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=dkDRSEkN485qZTsXQJZ3sqNgtMUuBXGJTjQr/DvGvqFsJXJWn/wwESX4W8FtGYV9FSSnpOpyySA9vVuHhFekQtZ80jbb8oOry9MwW6TZlW2rMkNh44V49BOEOp9RC6xcM05yLp34kOKV6PLTaZnJRaI3snVHgQsXM2cAloO601U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlRC563Y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B0DC4CEF7;
	Fri, 20 Mar 2026 12:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774008297;
	bh=PEtVe0XP3Yy0m7adMQRU2WDLbqvQqWio1jNWvnoX4lY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=PlRC563YasevsgiVclZC/bBbLAaUVcMDM19PpLDduE/DppZ+VWTYu8kqchH0GFnhg
	 lZE+maaLsGWW06Vw3wa6T6iGP8pn2jifiEFUpUCuAPWSTb87Y3Z/UQaqcINMzHIeoy
	 qhxZqurfZPm/GmWDExV0unb1Y0B3nxBRGO6pghGlihsNDHVn4g6oDyqIxeAg6haBdm
	 X+BTTdQSg9o2UMLPr90Z4FvDbUrAZen5OIo9UouETfqqGY5AAVLzV/rQGP0OCcqUEm
	 56tu8YRBlMTvPJXb12VHRnudTG2Je8IsAB0B1QKDFTpLNhlqQjiCks+j8Z77ccvxBD
	 sTqafBEPYPpSg==
From: Thomas Gleixner <tglx@kernel.org>
To: Florian Eckert <fe@dev.tdt.de>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Florian Eckert
 <fe@dev.tdt.de>, Eckert.Florian@googlemail.com, ms@dev.tdt.de, Ricardo
 Neri <ricardo.neri-calderon@linux.intel.com>
Subject: Re: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
In-Reply-To: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
References: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
 <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
Date: Fri, 20 Mar 2026 13:04:44 +0100
Message-ID: <87v7eqk8pv.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	TAGGED_FROM(0.00)[bounces-278244-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com,linux.intel.com];
	RCVD_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	NEURAL_HAM(-0.00)[-0.126];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 7D7802D9E51
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Florian!

On Wed, Mar 18 2026 at 14:10, Florian Eckert wrote:
> The Lightning Mountain (LGM) has a MSI irqchip connected to the x86 vector
> domain. This commit adds the driver for this IP core, which is available on

git grep 'This patch' Documentation/process.

It doesn't make it better when you replace patch with commit.

> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Based on arch/x86/kernel/apic/msi.c and kernel/irq/msi.c
> + * Copyright (c) 2019 Intel Corporation.
> + * Copyright (c) 2020-2022, MaxLinear, Inc.
> + * Copyright (c) 2026 TDT AG.
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
> +
> +#include <linux/irq.h>
> +#include <linux/irqchip.h>
> +#include <linux/irqdomain.h>
> +#include <linux/msi.h>
> +#include <linux/platform_device.h>
> +
> +#include <asm/irqdomain.h>
> +#include <asm/apic.h>
> +
> +#define MSI_MSGA(x)	((x) << 2)
> +#define MSI_MSGD(x)	(0x200 + ((x) << 2))
> +#define MSI_CTRL	0x400
> +#define MSI_CTRL_EN	BIT(0)
> +#define MSI_MSK_L	0x404
> +#define MSI_MSK_H	0x408
> +
> +#define NMI_MSI_47	47
> +#define NMI_MSI_49	49
> +#define NMI_MSI_62	62
> +#define NMI_MSI_63	63
> +
> +#define MAX_SOC_MSI_IRQ_PINS	64
> +
> +struct soc_msi_dev {
> +	struct device		*dev;
> +	void __iomem		*base;
> +	raw_spinlock_t		lock; /* protect register handling */

No tail comments please

> +};
> +
> +struct soc_nmi_msi {
> +	irq_hw_number_t irq;
> +	int		cpuid;

unsigned int. We won't have negative CPU IDs in the forseeable future.

> +};
> +
> +static const struct soc_nmi_msi nmi_msi[] = {
> +	{NMI_MSI_47, 3},
> +	{NMI_MSI_49, 2},
> +	{NMI_MSI_62, 1},
> +	{NMI_MSI_63, 0},
> +	{ },

No C89 initializers and get rid of the pointless trailing {} entry.

> +};
> +
> +static bool soc_nmi_msi(irq_hw_number_t hwirq)
> +{
> +	if (hwirq == NMI_MSI_47 || hwirq == NMI_MSI_49 ||
> +	    hwirq == NMI_MSI_62 || hwirq == NMI_MSI_63)
> +		return true;
> +
> +	return false;
> +}
> +
> +static u32 nmi_irq_to_cpuid(irq_hw_number_t hwirq)
> +{
> +	int i;
> +	unsigned int nr_pcpus = num_possible_cpus();

Variable declaration ordering. See

https://www.kernel.org/doc/html/latest/process/maintainer-tip.html

> +	for (i = 0; i < ARRAY_SIZE(nmi_msi); i++) {

Now you use ARRAY_SIZE() which makes the trailing entry even more wrong.

> +		if (nmi_msi[i].irq == hwirq) {
> +			if (nmi_msi[i].cpuid >= nr_pcpus) {
> +				WARN(1, "NMI on invalid CPU: cpu: %d\n",
> +				     nmi_msi[i].cpuid);

No line break required. You have 100 characters. But aside of that
this WARN() is bogus as the code path is well known already, no?
pr_warn() is sufficient.

> +				return -EINVAL;
> +			}
> +			return nmi_msi[i].cpuid;
> +		}
> +	}
> +
> +	WARN((i >= ARRAY_SIZE(nmi_msi)), "Should never come");

Ditto

> +	return -EINVAL;
> +}
> +
> +static inline void
> +soc_msi_update_bits(struct soc_msi_dev *mdev, u32 clr, u32 set, u32 ofs)

s/ofs/offs/

> +{
> +	writel((readl(mdev->base +  ofs) & ~clr) | set, mdev->base + ofs);
> +}
> +
> +static void soc_msi_enable(struct soc_msi_dev *mdev)
> +{
> +	soc_msi_update_bits(mdev, MSI_CTRL_EN, MSI_CTRL_EN, MSI_CTRL);
> +}
> +
> +static void soc_msi_write_msg(struct irq_data *d, struct msi_msg *msg)
> +{
> +	struct soc_msi_dev *mdev = irq_data_get_irq_chip_data(d);
> +	unsigned long flag;
> +
> +	raw_spin_lock_irqsave(&mdev->lock, flag);

  guard(raw_spinlock)(&mdev->lock);

There is no reason for irqsave as irq_write_msi_msg() is invoked with
the interrupt descriptor lock held, which implies interrupts are disabled.

> +	writel(msg->address_lo, mdev->base + MSI_MSGA(d->hwirq));
> +	writel(msg->data, mdev->base + MSI_MSGD(d->hwirq));

As the comment on top claims this was modelled after apic/msi.c I have
to ask the obvious question how this MSI incarnation is magically not
affected by the problem described in great length in msi_set_affinity().

> +static void nmi_msi_compose_msg(struct soc_msi_dev *mdev, irq_hw_number_t hwirq)

x86 lacks NMI support for irq domain based allocations....

> +{
> +	struct msi_msg msg = {0};
> +	unsigned long flag;
> +	u32 cpuid, destid;
> +	u32 off;
> +
> +	cpuid = nmi_irq_to_cpuid(hwirq);
> +	if (cpuid < 0)
> +		return;
> +
> +	destid = apic->calc_dest_apicid(cpuid);
> +	off = hwirq < 32 ? MSI_MSK_L : MSI_MSK_H;
> +
> +	msg.arch_addr_lo.base_address = X86_MSI_BASE_ADDRESS_LOW;
> +	msg.arch_addr_lo.dest_mode_logical = apic->dest_mode_logical;
> +	msg.arch_addr_lo.redirect_hint = 0;
> +	msg.arch_addr_lo.destid_0_7 = destid & 0xFF;
> +
> +	msg.address_hi = X86_MSI_BASE_ADDRESS_HIGH;
> +
> +	/*
> +	 * On edge trigger, we don't care about assert level. Also,
> +	 * since delivery mode is NMI, no irq vector is needed.
> +	 */
> +	msg.arch_data.is_level = 0;
> +	msg.arch_data.delivery_mode = APIC_DELIVERY_MODE_NMI;
> +
> +	raw_spin_lock_irqsave(&mdev->lock, flag);
> +	writel(msg.address_lo, mdev->base + MSI_MSGA(hwirq));
> +	writel(msg.data, mdev->base + MSI_MSGD(hwirq));
> +	soc_msi_update_bits(mdev, BIT(hwirq % 32), 0, off);
> +	raw_spin_unlock_irqrestore(&mdev->lock, flag);

Writing the MSI message in compose_msg() smells more than fishy.

> +}
> +
> +
> +static int soc_msi_domain_alloc(struct irq_domain *domain, unsigned int virq,
> +				unsigned int nr_irqs, void *arg)
> +{
> +	struct msi_domain_info *msi_info = domain->host_data;
> +	struct irq_fwspec *fwspec = arg;
> +	struct irq_alloc_info info;
> +	irq_hw_number_t hwirq;
> +	unsigned int type;
> +	void *chip_data;
> +	int i, ret;
> +
> +	if (!msi_info)
> +		return -EINVAL;
> +
> +	chip_data = msi_info->chip_data;
> +
> +	ret = soc_msi_domain_xlate(domain, fwspec, &hwirq, &type);
> +	if (ret)
> +		return ret;
> +
> +	if (irq_find_mapping(domain, hwirq) > 0)
> +		return -EEXIST;
> +
> +	/*
> +	 * All NMI interrupts go to vector 2, no irq mapping needed.
> +	 * What we want is to configure hardware once, don't do anything else.
> +	 * 0 means it will continue to initialize other stuff in the irqdomain.
> +	 * We can just return other value after hw initialized. In this case,
> +	 * irqdomain will release all resources.

This comment is incomprehensible word salad. Aside of that ...

> +	 */
> +	if (soc_nmi_msi(hwirq)) {
> +		nmi_msi_compose_msg((struct soc_msi_dev *)chip_data, hwirq);
> +		return -EINVAL;

... this is a blatant violation of all layering rules known to mankind in
one go. Admittedly you get creativity points, but that's not making it
technically more correct.

> +static int soc_msi_domain_activate(struct irq_domain *domain,
> +				   struct irq_data *irq_data, bool early)
> +{
> +	struct msi_msg msg[2] = { [1] = { }, };
> +
> +	WARN_ON(irq_chip_compose_msi_msg(irq_data, msg));
> +	soc_msi_write_msg(irq_data, msg);
> +
> +	return 0;

That's just a copy of the corresponding kernel/irq/msi.c function.

> +}
> +
> +static void soc_msi_domain_deactivate(struct irq_domain *domain,
> +				      struct irq_data *irq_data)
> +{
> +	struct msi_msg msg[2];
> +
> +	memset(msg, 0, sizeof(msg));
> +	soc_msi_write_msg(irq_data, msg);

Ditto.

> +}
> +
> +static const struct irq_domain_ops soc_msi_domain_ops = {

Now it's obvious why you need them. You are using the wrong interrupt
domain type.

> +	.translate	= soc_msi_domain_xlate,
> +	.alloc		= soc_msi_domain_alloc,
> +	.free		= irq_domain_free_irqs_common,
> +	.activate	= soc_msi_domain_activate,
> +	.deactivate	= soc_msi_domain_deactivate,
> +};
> +
> +static int intel_soc_msi_probe(struct platform_device *pdev)
> +{
> +	struct device_node *node = pdev->dev.of_node;
> +	struct msi_domain_info *msi_info;
> +	struct irq_domain *domain;
> +	struct soc_msi_dev *mdev;
> +	struct resource *res;
> +
> +	mdev = devm_kzalloc(&pdev->dev, sizeof(*mdev), GFP_KERNEL);
> +	if (!mdev)
> +		return -ENOMEM;
> +
> +	msi_info = devm_kzalloc(&pdev->dev, sizeof(*msi_info), GFP_KERNEL);
> +	if (!msi_info)
> +		return -ENOMEM;
> +
> +	mdev->dev = &pdev->dev;
> +
> +	msi_info->flags = MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OPS;
> +	msi_info->chip_data = mdev;

Q: Does this magically create a MSI domain?
A: No

Q: Why?
A: Because irq_domain_create_hierarchy() will never reach the MSI code
   that handles this.

> +
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res)
> +		return -EINVAL;
> +
> +	mdev->base = devm_ioremap_resource(&pdev->dev, res);
> +	if (IS_ERR(mdev->base)) {
> +		dev_err(&pdev->dev, "failed to ioremap %pR\n", res);
> +		return PTR_ERR(mdev->base);
> +	}
> +
> +	domain = irq_domain_create_hierarchy(x86_vector_domain, 0,

So this is hardwired to the vector domain and does not allow the
interrupts to be remapped? Those SoCs have VT-x which implies interrupt
remapping support. But what do I know about the infinite wisdom of
hardware designers.

TBH, if they decided to hardwire it to the vector domain, then they are
begging for a cluebat treatment.


Let me summarize what I can crystal-ball out of your comprehensive
change log and the insane amount of comments in the code:

    1) The IP block converts 'wired' interrupts to MSI messages

    2) It needs to route four interrupts as NMI

Right?

#1 The implementation gets the MSI interrupt domain concept completely
   wrong

   X86 uses the MSI parent domain concept.

   [vector domain] -- [remap domain] -- [ device domain]

   The remap domain is optional, but both the vector domain and the
   remap domain act as MSI parent domains.

   So what you want to create for that chip is a MSI device domain and
   that domain needs to set the bus token to DOMAIN_BUS_WIRED_TO_MSI.

   See drivers/irqchip/irq-mbigen.c mbigen_create_device_domain() and
   related code as an example for a proper wired to MSI implementation.


#2 NMI routing

   There has been attempts to implement that before in a clean way. The
   patch set dried out, but the underlying changes for NMI support are
   still valid and Ricardo (CC'ed) is working on them again, IIRC. See:

      https://lore.kernel.org/lkml/20230301234753.28582-1-ricardo.neri-calderon@linux.intel.com/

Thanks,

        tglx

