Return-Path: <devicetree+bounces-262410-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QLE1AeBfgmkzTQMAu9opvQ
	(envelope-from <devicetree+bounces-262410-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:51:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 661D4DEA75
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 21:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7EF7C30480AE
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 20:40:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19C3036829B;
	Tue,  3 Feb 2026 20:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/gE3uz/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EABA935BDD5;
	Tue,  3 Feb 2026 20:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770151251; cv=none; b=sxbaRalQ2/9jgtzJM0XNP763vxToH2xFTwH30GfjJvfUnJU7MAv0OIY48CJBUb4XiqIMT69UBO+cRfwBF0ViBi581UFFqvCSz12RCYCCsLUVUIAMstJOi7MStiBv7536Pk5cPK19iERW00gHuw7A2RleW68Z7UbcXCGg5tjHZ/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770151251; c=relaxed/simple;
	bh=WtHWhesjW/7AQMhd0EcPVr+rtp8ksekBPqv0g1ETa3M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=FqSjLPMUe0XQW462OuKH/TzV5mBENNrUkJwuisQBVSujXc0XPQW/7PPZdJLtOsHTWuqycXgrpvTWrAnAV3FDwCwayLEa/x1pgIDpS+5vQLelHZCX3wL7NsH9KywUpFXL8BuM+G9oUIyBsl6/BQpuR5XWiw+YRdmsSGtX64SIADs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/gE3uz/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEE49C116D0;
	Tue,  3 Feb 2026 20:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770151250;
	bh=WtHWhesjW/7AQMhd0EcPVr+rtp8ksekBPqv0g1ETa3M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:From;
	b=D/gE3uz/BpckJBJznUVybL13plg0F00fwqbUKVR9DSEJd1M35BU5CosJbLRhVook1
	 e6nI9ItZXg3MD5eLCVH78lpTy9NtsfIjyXsLHYk0oSTFzMPbza3h2voOwmzgb1dL80
	 EPXxBNbWwqnzVyDPkPqU99fezsZVf2RcMbUAJppeaPqlTKVuFnVGj7PTBv0FIT+J6x
	 oFrbgPIotL+1oHywiex5jbgzhAgiL+yX9mf/70X2PK91geINzPDuC3mfLEbxiTqsTT
	 V81et+wzjvQAJsLXjYyoDzvUCuWWuRO3Pg9gGlDUnrGk/y8gI5gZeMtKlQLig5ktS8
	 rbov/4Gfk4ZOA==
From: Thomas Gleixner <tglx@kernel.org>
To: Yangyu Chen <cyy@cyyself.name>, linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org, Anup Patel <anup.patel@oss.qualcomm.com>,
 Samuel Holland <samuel.holland@sifive.com>, Charles Mirabile
 <cmirabil@redhat.com>, Lucas Zampieri <lzampier@redhat.com>, Paul Walmsley
 <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Mason Huo
 <mason.huo@starfivetech.com>, Zhang Xincheng
 <zhangxincheng@ultrarisc.com>, Charlie Jenkins <charlie@rivosinc.com>,
 Marc Zyngier <maz@kernel.org>, Sia Jee Heng
 <jeeheng.sia@starfivetech.com>, Ley Foon Tan
 <leyfoon.tan@starfivetech.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Ghiti <alex@ghiti.fr>, devicetree@vger.kernel.org, Jia Wang
 <wangjia@ultrarisc.com>, Yangyu Chen <cyy@cyyself.name>
Subject: Re: [PATCH v3 1/2] irqchip/sifive-plic: Fix wrong nr_irqs handling
In-Reply-To: <tencent_3927462924B7319F8F4F90447BDC110FB705@qq.com>
References: <tencent_AEBB719FAF49D05B5BDF7118D729463F6405@qq.com>
 <tencent_3927462924B7319F8F4F90447BDC110FB705@qq.com>
Date: Tue, 03 Feb 2026 21:40:46 +0100
Message-ID: <87ikcd36i9.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262410-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	GREYLIST(0.00)[pass,body];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tglx@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,cyyself.name:email]
X-Rspamd-Queue-Id: 661D4DEA75
X-Rspamd-Action: no action

On Wed, Feb 04 2026 at 01:21, Yangyu Chen wrote:
> @@ -351,7 +351,7 @@ static int plic_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
>  	if (ret)
>  		return ret;
>  
> -	for (i = 0; i < nr_irqs; i++) {
> +	for (i = 1; i <= nr_irqs; i++) {
>  		ret = plic_irqdomain_map(domain, virq + i, hwirq + i);

That's just wrong and clearly untested.

@virq and @nr_irqs are provided by the core code and you cannot
manipulate them just because.

This instance of nr_irqs has absolutely nothing to do with the problem
you are trying to solve. The core invokes this to map

    $N (@nr_irqs) Linux interrupt numbers starting from @virq to
    hardware interrupt numbers.

The fwspec argument (@arg) is used to retrieve the hardware interrupt
number from the device tree:

    plic_irq_domain_translate(....);

The device tree better contains the real hardware interrupt number and
not a 0 based enumeration.

>  static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler, void __iomem *claim)
>  {
> -	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
> +	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs + 1, 32);

Requiring this '+1' muck all over the place is a guarantee for more
disaster.

It's not really hard to sit back and think about it instead of
mindlessly changing things until it looks about right. I'm tired of
wasting my time with reviewing botched up stuff like that.

Untested, but defintely correct patch below. If you find a bug, I owe
you a beer at the next conference.

Thanks,

        tglx
---
Subject: irqchip/sifive-plic: Handle number of hardware interrupts correctly
From: Thomas Gleixner <tglx@kernel.org>
Date: Tue, 03 Feb 2026 20:16:12 +0100

The driver is inconsistently handling the number of hardware interrupts.

The reason is that the firmware enumerates the maximum number of device
interrupts, but the actual number of hardware interrupts is one more
because hardware interrupt 0 is reserved.

There are two loop variants where this matters:

  1) Iterating over the device interrupts

     for (irq = 1; irq < total_irqs; irq++)

  2) Iterating over the number of interrupt register groups

     for (grp = 0; grp < irq_groups; grp++)

The current code stores the number of device interrupts and that requires
to write the loops as:

  1) for (irq = 1; irq <= device_irqs; irq++)

  2) for (grp = 0; grp < DIV_ROUND_UP(device_irqs + 1); grp++)

But the code gets it wrong all over the place. Just fixing up the
conditions and off by ones is not a sustainable solution as the next changes
will reintroduce the same bugs over and over.

Sanitize it by storing the total number of hardware interrupts during probe
and precalculating the number of groups. To future proof it mark
priv::total_irqs __private, provide a correct iterator macro and adjust the
code to this.

Marking it private allows sparse (C=1 build) to catch direct access to this
member:

  drivers/irqchip/irq-sifive-plic.c:270:9: warning: dereference of noderef expression

That should prevent at least the most obvious future damage in that area.

Fixes: e80f0b6a2cf3 ("irqchip/irq-sifive-plic: Add syscore callbacks for hibernation")
Reported-by: Yangyu Chen <cyy@cyyself.name>
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
---
 drivers/irqchip/irq-sifive-plic.c |   82 ++++++++++++++++++++------------------
 1 file changed, 45 insertions(+), 37 deletions(-)

--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -68,15 +68,17 @@
 #define PLIC_QUIRK_CP100_CLAIM_REGISTER_ERRATUM	1
 
 struct plic_priv {
-	struct fwnode_handle *fwnode;
-	struct cpumask lmask;
-	struct irq_domain *irqdomain;
-	void __iomem *regs;
-	unsigned long plic_quirks;
-	unsigned int nr_irqs;
-	unsigned long *prio_save;
-	u32 gsi_base;
-	int acpi_plic_id;
+	struct fwnode_handle	*fwnode;
+	struct cpumask		lmask;
+	struct irq_domain	*irqdomain;
+	void __iomem		*regs;
+	unsigned long		plic_quirks;
+	/* @device_irqs + 1 to compensate for the reserved hwirq 0 */
+	unsigned int __private	total_irqs;
+	unsigned int		irq_groups;
+	unsigned long		*prio_save;
+	u32			gsi_base;
+	int			acpi_plic_id;
 };
 
 struct plic_handler {
@@ -91,6 +93,12 @@ struct plic_handler {
 	u32			*enable_save;
 	struct plic_priv	*priv;
 };
+
+/*
+ * Macro to deal with the insanity of hardware interrupt 0 being reserved */
+#define for_each_device_irq(iter, priv)	\
+	for (unsigned int iter = 1; iter < ACCESS_PRIVATE(priv, total_irqs); iter++)
+
 static int plic_parent_irq __ro_after_init;
 static bool plic_global_setup_done __ro_after_init;
 static DEFINE_PER_CPU(struct plic_handler, plic_handlers);
@@ -257,14 +265,11 @@ static int plic_irq_set_type(struct irq_
 
 static int plic_irq_suspend(void *data)
 {
-	struct plic_priv *priv;
-
-	priv = per_cpu_ptr(&plic_handlers, smp_processor_id())->priv;
+	struct plic_priv *priv = this_cpu_ptr(&plic_handlers)->priv;
 
-	/* irq ID 0 is reserved */
-	for (unsigned int i = 1; i < priv->nr_irqs; i++) {
-		__assign_bit(i, priv->prio_save,
-			     readl(priv->regs + PRIORITY_BASE + i * PRIORITY_PER_ID));
+	for_each_device_irq(irq, priv) {
+		__assign_bit(irq, priv->prio_save,
+			     readl(priv->regs + PRIORITY_BASE + irq * PRIORITY_PER_ID));
 	}
 
 	return 0;
@@ -272,18 +277,15 @@ static int plic_irq_suspend(void *data)
 
 static void plic_irq_resume(void *data)
 {
-	unsigned int i, index, cpu;
+	struct plic_priv *priv = this_cpu_ptr(&plic_handlers)->priv;
+	unsigned int index, cpu;
 	unsigned long flags;
 	u32 __iomem *reg;
-	struct plic_priv *priv;
-
-	priv = per_cpu_ptr(&plic_handlers, smp_processor_id())->priv;
 
-	/* irq ID 0 is reserved */
-	for (i = 1; i < priv->nr_irqs; i++) {
-		index = BIT_WORD(i);
-		writel((priv->prio_save[index] & BIT_MASK(i)) ? 1 : 0,
-		       priv->regs + PRIORITY_BASE + i * PRIORITY_PER_ID);
+	for_each_device_irq(irq, priv) {
+		index = BIT_WORD(irq);
+		writel((priv->prio_save[index] & BIT_MASK(irq)) ? 1 : 0,
+		       priv->regs + PRIORITY_BASE + irq * PRIORITY_PER_ID);
 	}
 
 	for_each_present_cpu(cpu) {
@@ -293,7 +295,7 @@ static void plic_irq_resume(void *data)
 			continue;
 
 		raw_spin_lock_irqsave(&handler->enable_lock, flags);
-		for (i = 0; i < DIV_ROUND_UP(priv->nr_irqs, 32); i++) {
+		for (unsigned int i = 0; i < priv->irq_groups; i++) {
 			reg = handler->enable_base + i * sizeof(u32);
 			writel(handler->enable_save[i], reg);
 		}
@@ -431,7 +433,7 @@ static u32 cp100_isolate_pending_irq(int
 
 static irq_hw_number_t cp100_get_hwirq(struct plic_handler *handler, void __iomem *claim)
 {
-	int nr_irq_groups = DIV_ROUND_UP(handler->priv->nr_irqs, 32);
+	int nr_irq_groups = handler->priv->irq_groups;
 	u32 __iomem *enable = handler->enable_base;
 	irq_hw_number_t hwirq = 0;
 	u32 iso_mask;
@@ -614,7 +616,6 @@ static int plic_probe(struct fwnode_hand
 	struct plic_handler *handler;
 	u32 nr_irqs, parent_hwirq;
 	struct plic_priv *priv;
-	irq_hw_number_t hwirq;
 	void __iomem *regs;
 	int id, context_id;
 	u32 gsi_base;
@@ -647,7 +648,16 @@ static int plic_probe(struct fwnode_hand
 
 	priv->fwnode = fwnode;
 	priv->plic_quirks = plic_quirks;
-	priv->nr_irqs = nr_irqs;
+	/*
+	 * The firmware provides the number of device interrupts. As
+	 * hardware interrupt 0 is reserved, the number of total interrupts
+	 * is nr_irqs + 1.
+	 */
+	nr_irqs++;
+	ACCESS_PRIVATE(priv, total_irqs) = nr_irqs;
+	/* Precalculate the number of register groups */
+	priv->irq_groups = DIV_ROUND_UP(nr_irqs, 32);
+
 	priv->regs = regs;
 	priv->gsi_base = gsi_base;
 	priv->acpi_plic_id = id;
@@ -686,7 +696,7 @@ static int plic_probe(struct fwnode_hand
 				u32 __iomem *enable_base = priv->regs +	CONTEXT_ENABLE_BASE +
 							   i * CONTEXT_ENABLE_SIZE;
 
-				for (int j = 0; j <= nr_irqs / 32; j++)
+				for (int j = 0; j < priv->irq_groups; j++)
 					writel(0, enable_base + j);
 			}
 			continue;
@@ -718,23 +728,21 @@ static int plic_probe(struct fwnode_hand
 			context_id * CONTEXT_ENABLE_SIZE;
 		handler->priv = priv;
 
-		handler->enable_save = kcalloc(DIV_ROUND_UP(nr_irqs, 32),
-					       sizeof(*handler->enable_save), GFP_KERNEL);
+		handler->enable_save = kcalloc(priv->irq_groups, sizeof(*handler->enable_save),
+					       GFP_KERNEL);
 		if (!handler->enable_save) {
 			error = -ENOMEM;
 			goto fail_cleanup_contexts;
 		}
 done:
-		for (hwirq = 1; hwirq <= nr_irqs; hwirq++) {
+		for_each_device_irq(hwirq, priv) {
 			plic_toggle(handler, hwirq, 0);
-			writel(1, priv->regs + PRIORITY_BASE +
-				  hwirq * PRIORITY_PER_ID);
+			writel(1, priv->regs + PRIORITY_BASE + hwirq * PRIORITY_PER_ID);
 		}
 		nr_handlers++;
 	}
 
-	priv->irqdomain = irq_domain_create_linear(fwnode, nr_irqs + 1,
-						   &plic_irqdomain_ops, priv);
+	priv->irqdomain = irq_domain_create_linear(fwnode, nr_irqs, &plic_irqdomain_ops, priv);
 	if (WARN_ON(!priv->irqdomain)) {
 		error = -ENOMEM;
 		goto fail_cleanup_contexts;

