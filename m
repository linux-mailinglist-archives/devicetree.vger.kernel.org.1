Return-Path: <devicetree+bounces-277215-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IBnKBoekummyZwIAu9opvQ
	(envelope-from <devicetree+bounces-277215-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA322BBFBD
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:11:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0A75B304C2E9
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC8C93D75C7;
	Wed, 18 Mar 2026 13:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b="m+e5ivPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mxout70.expurgate.net (mxout70.expurgate.net [194.37.255.70])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9E093D6CB8;
	Wed, 18 Mar 2026 13:11:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.37.255.70
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773839467; cv=none; b=GbFRjynqOrrdtbHnfWCaTpSCqnt8V/tAMrqMV6rsqkbxaZ8SJXlHw6pAHkfEPNkTZT67dLd80N4gaz1lZh9dDyO7ZsSfgMYHDEbOW1pYK8I+Im4YU9EexRUwk83o5wOAe84qGlDwi5loTPNUlls+ezIjrh2UYRrFV+olvjn7CUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773839467; c=relaxed/simple;
	bh=A6M8rVjY+iak4v2U7D8Ya/R5wowlPowmTldH39a7rrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:Cc; b=azPFeUK5dY8GHmJ468hni4UXvhp9n/42afSaYHaDnNLZAxOCTHY1muQJuB3e29kq2QKrJbMBY7nsrNo5PFvFslfG4f20a3n7v9LKZsh5T1Tf6RNR5CsbFunH4sN7inxb+vowbshQwmac63ODJDqh8Fhh5YXYDTLbSYSNWsi3OUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de; spf=pass smtp.mailfrom=dev.tdt.de; dkim=temperror (0-bit key) header.d=dev.tdt.de header.i=@dev.tdt.de header.b=m+e5ivPI; arc=none smtp.client-ip=194.37.255.70
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dev.tdt.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dev.tdt.de
Received: from [194.37.255.9] (helo=mxout.expurgate.net)
	by relay.expurgate.net with smtp (Exim 4.92)
	(envelope-from <prvs=5551b3f26e=fe@dev.tdt.de>)
	id 1w2qfp-004Xtx-GL; Wed, 18 Mar 2026 14:10:57 +0100
Received: from [195.243.126.94] (helo=securemail.tdt.de)
	by relay.expurgate.net with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <fe@dev.tdt.de>)
	id 1w2qfo-00DTyN-RQ; Wed, 18 Mar 2026 14:10:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dev.tdt.de;
	s=z1-selector1; t=1773839456;
	bh=QRpMAyirH3LQDrKYgJWqqZvxZH5NArPtWGOvJt1w5aY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=m+e5ivPIPi9vh5fX2qoiOvN8swGkd80cguezAlXP4Y08hZ4sJUd/MFLPcPUvjWYr7
	 HpGsy3Efopmic5Va4auREGhL5e481JsHJhjqtI5ScK2kOIZz+MEBYuW9GNcSbc+nAt
	 ti7RgLYgSry9rT3cRlRKI28qnWdCyVEvOJQe0Yeb3euXjpVyYiYYYq73WiaGavXPKm
	 EwnpHKAmreb98Pi4lNIqQ4WAzDDSCXE0Q/C5YNk+YAMDXESRc4oUZ3CyYHyDBT141r
	 JHd+EbRQ71TDHYbKC14qqLY2LyDNwH6O6TJCFQA5li8EnJqrP9mkfcYaJmzJnPGGWc
	 Ji2ZSDcBhidlA==
Received: from securemail.tdt.de (localhost [127.0.0.1])
	by securemail.tdt.de (Postfix) with ESMTP id 6BAC8240042;
	Wed, 18 Mar 2026 14:10:56 +0100 (CET)
Received: from mail.dev.tdt.de (unknown [10.2.4.42])
	by securemail.tdt.de (Postfix) with ESMTP id 6546B240036;
	Wed, 18 Mar 2026 14:10:56 +0100 (CET)
Received: from [10.2.3.40] (unknown [10.2.3.40])
	by mail.dev.tdt.de (Postfix) with ESMTPSA id 2268123640;
	Wed, 18 Mar 2026 14:10:56 +0100 (CET)
From: Florian Eckert <fe@dev.tdt.de>
Date: Wed, 18 Mar 2026 14:10:41 +0100
Subject: [PATCH 2/2] irqchip: Add Lightning Mountain irqchip support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Message-ID: <20260318-irq-intel-soc-msi-v1-2-0e8cdf844fa8@dev.tdt.de>
References: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
In-Reply-To: <20260318-irq-intel-soc-msi-v1-0-0e8cdf844fa8@dev.tdt.de>
To: Thomas Gleixner <tglx@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Florian Eckert <fe@dev.tdt.de>, Eckert.Florian@googlemail.com,
	ms@dev.tdt.de
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773839451; l=11458;
 i=fe@dev.tdt.de; s=20260205; h=from:subject:message-id;
 bh=C+T5Rty8Jw68jUTCRR3pB9lwqq4IWMb+M1b/fw454gA=;
 b=0Vfbv+iuDPGJa3+yhaUeb2YVQij3gh5GUFHQmzNAsi+/50dKNy4nvW31Wi6YCHVoCz2qSm8Gh
 W/Zrca0Cy8uD23S0CjZS7xdjSDHzvCG8Cn7ZHpJ8av8+XFXHSUVbcJE
X-Developer-Key: i=fe@dev.tdt.de; a=ed25519;
 pk=q7Pvv3Au2sAVRhBz5UF7ZqUPNxUwXQ78Jdqu8E6Negk=
Content-Transfer-Encoding: quoted-printable
X-purgate-ID: 151534::1773839457-014BC118-2F236FC7/0/0
X-purgate: clean
X-purgate-type: clean
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[tdt.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[dev.tdt.de:s=z1-selector1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dev.tdt.de:dkim,dev.tdt.de:mid,tdt.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	DKIM_TRACE(0.00)[dev.tdt.de:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,dev.tdt.de,googlemail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277215-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fe@dev.tdt.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 8BA322BBFBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The Lightning Mountain (LGM) has a MSI irqchip connected to the x86 vecto=
r
domain. This commit adds the driver for this IP core, which is available =
on
the following SoCs from Maxlinear

* URX850
* URX851

Signed-off-by: Florian Eckert <fe@dev.tdt.de>
---
 drivers/irqchip/Kconfig             |  12 ++
 drivers/irqchip/Makefile            |   1 +
 drivers/irqchip/irq-intel-soc-msi.c | 338 ++++++++++++++++++++++++++++++=
++++++
 3 files changed, 351 insertions(+)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index f07b00d7fef9078369a1dffb7ce414d37806d1c1..0acda52f65816ad85ee0a8b34=
2aefdee12213716 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -826,4 +826,16 @@ config SUNPLUS_SP7021_INTC
 	  chained controller, routing all interrupt source in P-Chip to
 	  the primary controller on C-Chip.
=20
+config INTEL_SOC_MSI
+	bool "Intel Lightning Mountain SoC MSI Support"
+	depends on OF && HAS_IOMEM
+	depends on ARCH_X86_64 || COMPILE_TEST
+	select GENERIC_MSI_IRQ_DOMAIN
+	help
+	  Support for the Intel Lightning Mountain (LGM) SoC interrupt
+	  controller. This is used as a chained controller. It=C2=B4s parent is
+	  the x86 vector domain.
+
+	  If unsure, say N
+
 endmenu
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 26aa3b6ec99fd4b45a0bfd8a934752d7295bfe8c..a2378d3ce298ea017733cc59b=
5b7441d8dac7b98 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -107,6 +107,7 @@ obj-$(CONFIG_RISCV_APLIC)		+=3D irq-riscv-aplic-main.=
o irq-riscv-aplic-direct.o
 obj-$(CONFIG_RISCV_APLIC_MSI)		+=3D irq-riscv-aplic-msi.o
 obj-$(CONFIG_RISCV_IMSIC)		+=3D irq-riscv-imsic-state.o irq-riscv-imsic-=
early.o irq-riscv-imsic-platform.o
 obj-$(CONFIG_RISCV_RPMI_SYSMSI)		+=3D irq-riscv-rpmi-sysmsi.o
+obj-$(CONFIG_INTEL_SOC_MSI)		+=3D irq-intel-soc-msi.o
 obj-$(CONFIG_SIFIVE_PLIC)		+=3D irq-sifive-plic.o
 obj-$(CONFIG_STARFIVE_JH8100_INTC)	+=3D irq-starfive-jh8100-intc.o
 obj-$(CONFIG_ACLINT_SSWI)		+=3D irq-aclint-sswi.o
diff --git a/drivers/irqchip/irq-intel-soc-msi.c b/drivers/irqchip/irq-in=
tel-soc-msi.c
new file mode 100644
index 0000000000000000000000000000000000000000..a9cde15cf1247b75f145ef836=
8996ef3e1a9c21e
--- /dev/null
+++ b/drivers/irqchip/irq-intel-soc-msi.c
@@ -0,0 +1,338 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Based on arch/x86/kernel/apic/msi.c and kernel/irq/msi.c
+ * Copyright (c) 2019 Intel Corporation.
+ * Copyright (c) 2020-2022, MaxLinear, Inc.
+ * Copyright (c) 2026 TDT AG.
+ */
+
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+
+#include <linux/irq.h>
+#include <linux/irqchip.h>
+#include <linux/irqdomain.h>
+#include <linux/msi.h>
+#include <linux/platform_device.h>
+
+#include <asm/irqdomain.h>
+#include <asm/apic.h>
+
+#define MSI_MSGA(x)	((x) << 2)
+#define MSI_MSGD(x)	(0x200 + ((x) << 2))
+#define MSI_CTRL	0x400
+#define MSI_CTRL_EN	BIT(0)
+#define MSI_MSK_L	0x404
+#define MSI_MSK_H	0x408
+
+#define NMI_MSI_47	47
+#define NMI_MSI_49	49
+#define NMI_MSI_62	62
+#define NMI_MSI_63	63
+
+#define MAX_SOC_MSI_IRQ_PINS	64
+
+struct soc_msi_dev {
+	struct device		*dev;
+	void __iomem		*base;
+	raw_spinlock_t		lock; /* protect register handling */
+};
+
+struct soc_nmi_msi {
+	irq_hw_number_t irq;
+	int		cpuid;
+};
+
+static const struct soc_nmi_msi nmi_msi[] =3D {
+	{NMI_MSI_47, 3},
+	{NMI_MSI_49, 2},
+	{NMI_MSI_62, 1},
+	{NMI_MSI_63, 0},
+	{ },
+};
+
+static bool soc_nmi_msi(irq_hw_number_t hwirq)
+{
+	if (hwirq =3D=3D NMI_MSI_47 || hwirq =3D=3D NMI_MSI_49 ||
+	    hwirq =3D=3D NMI_MSI_62 || hwirq =3D=3D NMI_MSI_63)
+		return true;
+
+	return false;
+}
+
+static u32 nmi_irq_to_cpuid(irq_hw_number_t hwirq)
+{
+	int i;
+	unsigned int nr_pcpus =3D num_possible_cpus();
+
+	for (i =3D 0; i < ARRAY_SIZE(nmi_msi); i++) {
+		if (nmi_msi[i].irq =3D=3D hwirq) {
+			if (nmi_msi[i].cpuid >=3D nr_pcpus) {
+				WARN(1, "NMI on invalid CPU: cpu: %d\n",
+				     nmi_msi[i].cpuid);
+				return -EINVAL;
+			}
+			return nmi_msi[i].cpuid;
+		}
+	}
+
+	WARN((i >=3D ARRAY_SIZE(nmi_msi)), "Should never come");
+
+	return -EINVAL;
+}
+
+static inline void
+soc_msi_update_bits(struct soc_msi_dev *mdev, u32 clr, u32 set, u32 ofs)
+{
+	writel((readl(mdev->base +  ofs) & ~clr) | set, mdev->base + ofs);
+}
+
+static void soc_msi_enable(struct soc_msi_dev *mdev)
+{
+	soc_msi_update_bits(mdev, MSI_CTRL_EN, MSI_CTRL_EN, MSI_CTRL);
+}
+
+static void soc_msi_write_msg(struct irq_data *d, struct msi_msg *msg)
+{
+	struct soc_msi_dev *mdev =3D irq_data_get_irq_chip_data(d);
+	unsigned long flag;
+
+	raw_spin_lock_irqsave(&mdev->lock, flag);
+	writel(msg->address_lo, mdev->base + MSI_MSGA(d->hwirq));
+	writel(msg->data, mdev->base + MSI_MSGD(d->hwirq));
+	raw_spin_unlock_irqrestore(&mdev->lock, flag);
+}
+
+static void soc_msi_mask(struct irq_data *d)
+{
+	struct soc_msi_dev *mdev =3D irq_data_get_irq_chip_data(d);
+	unsigned long flag;
+	u32 off =3D d->hwirq < 32 ? MSI_MSK_L : MSI_MSK_H;
+
+	raw_spin_lock_irqsave(&mdev->lock, flag);
+	soc_msi_update_bits(mdev, 0, BIT(d->hwirq % 32), off);
+	raw_spin_unlock_irqrestore(&mdev->lock, flag);
+}
+
+static void soc_msi_unmask(struct irq_data *d)
+{
+	struct soc_msi_dev *mdev =3D irq_data_get_irq_chip_data(d);
+	unsigned long flag;
+	u32 off =3D d->hwirq < 32 ? MSI_MSK_L : MSI_MSK_H;
+
+	raw_spin_lock_irqsave(&mdev->lock, flag);
+	soc_msi_update_bits(mdev, BIT(d->hwirq % 32), 0, off);
+	raw_spin_unlock_irqrestore(&mdev->lock, flag);
+}
+
+static void nmi_msi_compose_msg(struct soc_msi_dev *mdev, irq_hw_number_=
t hwirq)
+{
+	struct msi_msg msg =3D {0};
+	unsigned long flag;
+	u32 cpuid, destid;
+	u32 off;
+
+	cpuid =3D nmi_irq_to_cpuid(hwirq);
+	if (cpuid < 0)
+		return;
+
+	destid =3D apic->calc_dest_apicid(cpuid);
+	off =3D hwirq < 32 ? MSI_MSK_L : MSI_MSK_H;
+
+	msg.arch_addr_lo.base_address =3D X86_MSI_BASE_ADDRESS_LOW;
+	msg.arch_addr_lo.dest_mode_logical =3D apic->dest_mode_logical;
+	msg.arch_addr_lo.redirect_hint =3D 0;
+	msg.arch_addr_lo.destid_0_7 =3D destid & 0xFF;
+
+	msg.address_hi =3D X86_MSI_BASE_ADDRESS_HIGH;
+
+	/*
+	 * On edge trigger, we don't care about assert level. Also,
+	 * since delivery mode is NMI, no irq vector is needed.
+	 */
+	msg.arch_data.is_level =3D 0;
+	msg.arch_data.delivery_mode =3D APIC_DELIVERY_MODE_NMI;
+
+	raw_spin_lock_irqsave(&mdev->lock, flag);
+	writel(msg.address_lo, mdev->base + MSI_MSGA(hwirq));
+	writel(msg.data, mdev->base + MSI_MSGD(hwirq));
+	soc_msi_update_bits(mdev, BIT(hwirq % 32), 0, off);
+	raw_spin_unlock_irqrestore(&mdev->lock, flag);
+}
+
+static void soc_msi_compose_msg(struct irq_data *data, struct msi_msg *m=
sg)
+{
+	__irq_msi_compose_msg(irqd_cfg(data), msg, false);
+}
+
+static struct irq_chip soc_msi_irq_chip =3D {
+	.name			=3D "SOC-MSI",
+	.irq_unmask		=3D soc_msi_unmask,
+	.irq_mask		=3D soc_msi_mask,
+	.irq_ack		=3D irq_chip_ack_parent,
+	.irq_set_affinity	=3D msi_domain_set_affinity,
+	.irq_retrigger		=3D irq_chip_retrigger_hierarchy,
+	.irq_compose_msi_msg	=3D soc_msi_compose_msg,
+	.irq_write_msi_msg	=3D soc_msi_write_msg,
+	.flags			=3D IRQCHIP_SKIP_SET_WAKE,
+};
+
+static int soc_msi_domain_xlate(struct irq_domain *d, struct irq_fwspec =
*fwspec,
+				unsigned long *hwirq, unsigned int *type)
+{
+	if (fwspec->param_count !=3D 1)
+		return -EINVAL;
+
+	if (fwspec->param[0] > MAX_SOC_MSI_IRQ_PINS - 1)
+		return -EINVAL;
+
+	*hwirq =3D fwspec->param[0];
+
+	return 0;
+}
+
+static int soc_msi_domain_alloc(struct irq_domain *domain, unsigned int =
virq,
+				unsigned int nr_irqs, void *arg)
+{
+	struct msi_domain_info *msi_info =3D domain->host_data;
+	struct irq_fwspec *fwspec =3D arg;
+	struct irq_alloc_info info;
+	irq_hw_number_t hwirq;
+	unsigned int type;
+	void *chip_data;
+	int i, ret;
+
+	if (!msi_info)
+		return -EINVAL;
+
+	chip_data =3D msi_info->chip_data;
+
+	ret =3D soc_msi_domain_xlate(domain, fwspec, &hwirq, &type);
+	if (ret)
+		return ret;
+
+	if (irq_find_mapping(domain, hwirq) > 0)
+		return -EEXIST;
+
+	/*
+	 * All NMI interrupts go to vector 2, no irq mapping needed.
+	 * What we want is to configure hardware once, don't do anything else.
+	 * 0 means it will continue to initialize other stuff in the irqdomain.
+	 * We can just return other value after hw initialized. In this case,
+	 * irqdomain will release all resources.
+	 */
+	if (soc_nmi_msi(hwirq)) {
+		nmi_msi_compose_msg((struct soc_msi_dev *)chip_data, hwirq);
+		return -EINVAL;
+	}
+
+	/* Translate to X86 favorite arguments */
+	init_irq_alloc_info(&info, NULL);
+
+	/* Need to allocate from x86 vector domain */
+	ret =3D irq_domain_alloc_irqs_parent(domain, virq, nr_irqs, &info);
+	if (ret < 0)
+		return ret;
+
+	for (i =3D 0; i < nr_irqs; i++) {
+		irq_domain_set_info(domain, virq + i, hwirq + i,
+				    &soc_msi_irq_chip, chip_data,
+				    handle_edge_irq, chip_data, "edge");
+	}
+
+	return 0;
+}
+
+static int soc_msi_domain_activate(struct irq_domain *domain,
+				   struct irq_data *irq_data, bool early)
+{
+	struct msi_msg msg[2] =3D { [1] =3D { }, };
+
+	WARN_ON(irq_chip_compose_msi_msg(irq_data, msg));
+	soc_msi_write_msg(irq_data, msg);
+
+	return 0;
+}
+
+static void soc_msi_domain_deactivate(struct irq_domain *domain,
+				      struct irq_data *irq_data)
+{
+	struct msi_msg msg[2];
+
+	memset(msg, 0, sizeof(msg));
+	soc_msi_write_msg(irq_data, msg);
+}
+
+static const struct irq_domain_ops soc_msi_domain_ops =3D {
+	.translate	=3D soc_msi_domain_xlate,
+	.alloc		=3D soc_msi_domain_alloc,
+	.free		=3D irq_domain_free_irqs_common,
+	.activate	=3D soc_msi_domain_activate,
+	.deactivate	=3D soc_msi_domain_deactivate,
+};
+
+static int intel_soc_msi_probe(struct platform_device *pdev)
+{
+	struct device_node *node =3D pdev->dev.of_node;
+	struct msi_domain_info *msi_info;
+	struct irq_domain *domain;
+	struct soc_msi_dev *mdev;
+	struct resource *res;
+
+	mdev =3D devm_kzalloc(&pdev->dev, sizeof(*mdev), GFP_KERNEL);
+	if (!mdev)
+		return -ENOMEM;
+
+	msi_info =3D devm_kzalloc(&pdev->dev, sizeof(*msi_info), GFP_KERNEL);
+	if (!msi_info)
+		return -ENOMEM;
+
+	mdev->dev =3D &pdev->dev;
+
+	msi_info->flags =3D MSI_FLAG_USE_DEF_DOM_OPS | MSI_FLAG_USE_DEF_CHIP_OP=
S;
+	msi_info->chip_data =3D mdev;
+
+	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -EINVAL;
+
+	mdev->base =3D devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(mdev->base)) {
+		dev_err(&pdev->dev, "failed to ioremap %pR\n", res);
+		return PTR_ERR(mdev->base);
+	}
+
+	domain =3D irq_domain_create_hierarchy(x86_vector_domain, 0,
+					     MAX_SOC_MSI_IRQ_PINS,
+					     of_fwnode_handle(node),
+					     &soc_msi_domain_ops, msi_info);
+
+	if (!domain) {
+		dev_err(&pdev->dev, "Failed to create soc_msi@%p irqdomain",
+			mdev->base);
+		return -ENOMEM;
+	}
+
+	raw_spin_lock_init(&mdev->lock);
+
+	platform_set_drvdata(pdev, mdev);
+
+	soc_msi_enable(mdev);
+
+	dev_info(&pdev->dev, "Intel SoC MSI init done\n");
+
+	return 0;
+}
+
+static const struct of_device_id of_intel_soc_msi_match[] =3D {
+	{ .compatible =3D "intel,soc-msi" },
+	{}
+};
+
+static struct platform_driver intel_soc_msi_driver =3D {
+	.probe			=3D intel_soc_msi_probe,
+	.driver =3D {
+		.name		=3D "intel soc-msi",
+		.of_match_table	=3D of_intel_soc_msi_match,
+	},
+};
+builtin_platform_driver(intel_soc_msi_driver);

--=20
2.47.3


