Return-Path: <devicetree+bounces-145347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E91D1A30F98
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:23:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E893B7A2C87
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D791257AF3;
	Tue, 11 Feb 2025 15:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=intel.com header.i=@intel.com header.b="ndg3ewiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 112E1256C74;
	Tue, 11 Feb 2025 15:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739287290; cv=none; b=nC9xtjCbtWmmEyzl4P7rHbLXKyEoAHuxo+nlHa09KHIdLv4KRv/3cDcEm0ToyiwA2wRMiMZ/6xqtOtRE8JlBEFIWfnlmW8kXDN9gYUiwjgRVbYWUEiqTyjqOcptokio8DTb8c+wBLU4qBLFK5f0woCKwofd1FpQQOGCmUeAZSd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739287290; c=relaxed/simple;
	bh=mDKm0/HxHYS0Stl4nlWAD4C/9um26bolMF15XJYAh5k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cZvjOOwcYcZRs1zJNBt4WHhAA82GfhAH+wS0QiC8bPaE/Xsn5nWi03KHXFSiX+3hESEmT9sOuanBT4j525RmU+Xhzg7wESmbrXOXdq4RPzlVzPRIkdi4Aq7sXXJCGHZimTcP7/ex+j/Dmji9ugZXy6Z+Fc/ofufi1IQEZflquNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=none smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=ndg3ewiD; arc=none smtp.client-ip=192.198.163.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1739287288; x=1770823288;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=mDKm0/HxHYS0Stl4nlWAD4C/9um26bolMF15XJYAh5k=;
  b=ndg3ewiDgnKqJVmGkZnQSpZK3fRqGKN6S6Wsep6L+Q9CpSJEFoRTyhmT
   jCjqjEkSae5lsNGeEp78N/3DG9xyiMwgMqkITKWiVQ/9beeLR9QBdw7pT
   ZA+vSGM6O4teIsWAhH7tgbdSM5fT/bLEee1MXgHgx625hxKdzi9macVHs
   BtUGy/M9yk9rRmFfnrJfV/Zu8kLEf5QLPorX4kHpiV7y4EnvpsUM3Vd7k
   qUqmZFvjft9pUOEWG5FZJwA6QZv7Igy4DtVz1lmjjVhPo++rxpBlbk3vM
   IGQQQRRGBCEH+H6MXesgu4T45eHKbtLQSF/ViOBR/kEYA5/Bhhz2n4o0V
   w==;
X-CSE-ConnectionGUID: C4B8KyR6RQKrCNsF1Frc5A==
X-CSE-MsgGUID: Y/GL9VmDSZy+Qwl+q/ZUvg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50548338"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; 
   d="scan'208";a="50548338"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
  by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2025 07:21:28 -0800
X-CSE-ConnectionGUID: gUvWHY0HRQ6tIZgoMYzxQQ==
X-CSE-MsgGUID: uhOHyC4qRd+d3zrr+gu1rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; 
   d="scan'208";a="112392618"
Received: from test2-linux-lab.an.altera.com ([10.244.157.115])
  by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Feb 2025 07:21:26 -0800
From: Matthew Gerlach <matthew.gerlach@linux.intel.com>
To: lpieralisi@kernel.org,
	kw@linux.com,
	manivannan.sadhasivam@linaro.org,
	robh@kernel.org,
	bhelgaas@google.com,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dinguyen@kernel.org,
	joyce.ooi@intel.com,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: matthew.gerlach@altera.com, peter.colberg@altera.com,
	"D M, Sharath Kumar" <sharath.kumar.d.m@intel.com>,
	D@web.codeaurora.org, M@web.codeaurora.org,
	Matthew Gerlach <matthew.gerlach@linux.intel.com>
Subject: [PATCH v6 7/7] PCI: altera: Add Agilex support
Date: Tue, 11 Feb 2025 09:17:25 -0600
Message-Id: <20250211151725.4133582-8-matthew.gerlach@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250211151725.4133582-1-matthew.gerlach@linux.intel.com>
References: <20250211151725.4133582-1-matthew.gerlach@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: "D M, Sharath Kumar" <sharath.kumar.d.m@intel.com>

Add PCIe root port controller support for the Agilex family of chips.
The Agilex PCIe IP has three variants that are mostly sw compatible,
except for a couple register offsets. The P-Tile variant supports
Gen3/Gen4 1x16. The F-Tile variant supports Gen3/Gen4 4x4, 4x8, and 4x16.
The R-Tile variant improves on the F-Tile variant by adding Gen5 support.

To simplify the implementation of pci_ops read/write functions,
ep_{read/write}_cfg() callbacks were added to struct altera_pci_ops
to easily distinguish between hardware variants.

Signed-off-by: D M, Sharath Kumar <sharath.kumar.d.m@intel.com>
Signed-off-by: Matthew Gerlach <matthew.gerlach@linux.intel.com>
Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
v6:
 - Removed duplicate Signed-off-by:
 - Add Reviewed-by: Manivannan Sadhasivam.

v5:
 - remove unnecessary !!
 - Improve macro usage to make comment unnecessary.

v4:
 - Add info to commit message.
 - Use {read/write}?_relaxed where appropriate.
 - Use BIT(12) instead of (1 << 12).
 - Clear IRQ before handling it.
 - add interrupt number to unexpected IRQ messge.

v3:
 - Remove accepted patches from patch set.

v2:
 - Match historical style of subject.
 - Remove unrelated changes.
 - Fix indentation.
---
 drivers/pci/controller/pcie-altera.c | 253 ++++++++++++++++++++++++++-
 1 file changed, 244 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
index eb55a7f8573a..42ea9960b9da 100644
--- a/drivers/pci/controller/pcie-altera.c
+++ b/drivers/pci/controller/pcie-altera.c
@@ -6,6 +6,7 @@
  * Description: Altera PCIe host controller driver
  */
 
+#include <linux/bitfield.h>
 #include <linux/delay.h>
 #include <linux/interrupt.h>
 #include <linux/irqchip/chained_irq.h>
@@ -77,9 +78,25 @@
 #define S10_TLP_FMTTYPE_CFGWR0		0x45
 #define S10_TLP_FMTTYPE_CFGWR1		0x44
 
+#define AGLX_RP_CFG_ADDR(pcie, reg)	(((pcie)->hip_base) + (reg))
+#define AGLX_RP_SECONDARY(pcie)		\
+	readb(AGLX_RP_CFG_ADDR(pcie, PCI_SECONDARY_BUS))
+
+#define AGLX_BDF_REG			0x00002004
+#define AGLX_ROOT_PORT_IRQ_STATUS	0x14c
+#define AGLX_ROOT_PORT_IRQ_ENABLE	0x150
+#define CFG_AER				BIT(4)
+
+#define AGLX_CFG_TARGET			GENMASK(13, 12)
+#define AGLX_CFG_TARGET_TYPE0		0
+#define AGLX_CFG_TARGET_TYPE1		1
+#define AGLX_CFG_TARGET_LOCAL_2000	2
+#define AGLX_CFG_TARGET_LOCAL_3000	3
+
 enum altera_pcie_version {
 	ALTERA_PCIE_V1 = 0,
 	ALTERA_PCIE_V2,
+	ALTERA_PCIE_V3,
 };
 
 struct altera_pcie {
@@ -102,6 +119,11 @@ struct altera_pcie_ops {
 			   int size, u32 *value);
 	int (*rp_write_cfg)(struct altera_pcie *pcie, u8 busno,
 			    int where, int size, u32 value);
+	int (*ep_read_cfg)(struct altera_pcie *pcie, u8 busno,
+			   unsigned int devfn, int where, int size, u32 *value);
+	int (*ep_write_cfg)(struct altera_pcie *pcie, u8 busno,
+			    unsigned int devfn, int where, int size, u32 value);
+	void (*rp_isr)(struct irq_desc *desc);
 };
 
 struct altera_pcie_data {
@@ -112,6 +134,9 @@ struct altera_pcie_data {
 	u32 cfgrd1;
 	u32 cfgwr0;
 	u32 cfgwr1;
+	u32 port_conf_offset;
+	u32 port_irq_status_offset;
+	u32 port_irq_enable_offset;
 };
 
 struct tlp_rp_regpair_t {
@@ -131,6 +156,28 @@ static inline u32 cra_readl(struct altera_pcie *pcie, const u32 reg)
 	return readl_relaxed(pcie->cra_base + reg);
 }
 
+static inline void cra_writew(struct altera_pcie *pcie, const u32 value,
+			      const u32 reg)
+{
+	writew_relaxed(value, pcie->cra_base + reg);
+}
+
+static inline u32 cra_readw(struct altera_pcie *pcie, const u32 reg)
+{
+	return readw_relaxed(pcie->cra_base + reg);
+}
+
+static inline void cra_writeb(struct altera_pcie *pcie, const u32 value,
+			      const u32 reg)
+{
+	writeb_relaxed(value, pcie->cra_base + reg);
+}
+
+static inline u32 cra_readb(struct altera_pcie *pcie, const u32 reg)
+{
+	return readb_relaxed(pcie->cra_base + reg);
+}
+
 static bool altera_pcie_link_up(struct altera_pcie *pcie)
 {
 	return !!((cra_readl(pcie, RP_LTSSM) & RP_LTSSM_MASK) == LTSSM_L0);
@@ -145,6 +192,15 @@ static bool s10_altera_pcie_link_up(struct altera_pcie *pcie)
 	return !!(readw(addr) & PCI_EXP_LNKSTA_DLLLA);
 }
 
+static bool aglx_altera_pcie_link_up(struct altera_pcie *pcie)
+{
+	void __iomem *addr = AGLX_RP_CFG_ADDR(pcie,
+				   pcie->pcie_data->cap_offset +
+				   PCI_EXP_LNKSTA);
+
+	return (readw_relaxed(addr) & PCI_EXP_LNKSTA_DLLLA);
+}
+
 /*
  * Altera PCIe port uses BAR0 of RC's configuration space as the translation
  * from PCI bus to native BUS.  Entire DDR region is mapped into PCIe space
@@ -425,6 +481,103 @@ static int s10_rp_write_cfg(struct altera_pcie *pcie, u8 busno,
 	return PCIBIOS_SUCCESSFUL;
 }
 
+static int aglx_rp_read_cfg(struct altera_pcie *pcie, int where,
+			    int size, u32 *value)
+{
+	void __iomem *addr = AGLX_RP_CFG_ADDR(pcie, where);
+
+	switch (size) {
+	case 1:
+		*value = readb_relaxed(addr);
+		break;
+	case 2:
+		*value = readw_relaxed(addr);
+		break;
+	default:
+		*value = readl_relaxed(addr);
+		break;
+	}
+
+	/* interrupt pin not programmed in hardware, set to INTA */
+	if (where == PCI_INTERRUPT_PIN && size == 1 && !(*value))
+		*value = 0x01;
+	else if (where == PCI_INTERRUPT_LINE && !(*value & 0xff00))
+		*value |= 0x0100;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int aglx_rp_write_cfg(struct altera_pcie *pcie, u8 busno,
+			     int where, int size, u32 value)
+{
+	void __iomem *addr = AGLX_RP_CFG_ADDR(pcie, where);
+
+	switch (size) {
+	case 1:
+		writeb_relaxed(value, addr);
+		break;
+	case 2:
+		writew_relaxed(value, addr);
+		break;
+	default:
+		writel_relaxed(value, addr);
+		break;
+	}
+
+	/*
+	 * Monitor changes to PCI_PRIMARY_BUS register on root port
+	 * and update local copy of root bus number accordingly.
+	 */
+	if (busno == pcie->root_bus_nr && where == PCI_PRIMARY_BUS)
+		pcie->root_bus_nr = value & 0xff;
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int aglx_ep_write_cfg(struct altera_pcie *pcie, u8 busno,
+			     unsigned int devfn, int where, int size, u32 value)
+{
+	cra_writel(pcie, ((busno << 8) | devfn), AGLX_BDF_REG);
+	if (busno > AGLX_RP_SECONDARY(pcie))
+		where |= FIELD_PREP(AGLX_CFG_TARGET, AGLX_CFG_TARGET_TYPE1);
+
+	switch (size) {
+	case 1:
+		cra_writeb(pcie, value, where);
+		break;
+	case 2:
+		cra_writew(pcie, value, where);
+		break;
+	default:
+		cra_writel(pcie, value, where);
+			break;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int aglx_ep_read_cfg(struct altera_pcie *pcie, u8 busno,
+			    unsigned int devfn, int where, int size, u32 *value)
+{
+	cra_writel(pcie, ((busno << 8) | devfn), AGLX_BDF_REG);
+	if (busno > AGLX_RP_SECONDARY(pcie))
+		where |= FIELD_PREP(AGLX_CFG_TARGET, AGLX_CFG_TARGET_TYPE1);
+
+	switch (size) {
+	case 1:
+		*value = cra_readb(pcie, where);
+		break;
+	case 2:
+		*value = cra_readw(pcie, where);
+		break;
+	default:
+		*value = cra_readl(pcie, where);
+		break;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
 static int _altera_pcie_cfg_read(struct altera_pcie *pcie, u8 busno,
 				 unsigned int devfn, int where, int size,
 				 u32 *value)
@@ -437,6 +590,10 @@ static int _altera_pcie_cfg_read(struct altera_pcie *pcie, u8 busno,
 		return pcie->pcie_data->ops->rp_read_cfg(pcie, where,
 							 size, value);
 
+	if (pcie->pcie_data->ops->ep_read_cfg)
+		return pcie->pcie_data->ops->ep_read_cfg(pcie, busno, devfn,
+							where, size, value);
+
 	switch (size) {
 	case 1:
 		byte_en = 1 << (where & 3);
@@ -481,6 +638,10 @@ static int _altera_pcie_cfg_write(struct altera_pcie *pcie, u8 busno,
 		return pcie->pcie_data->ops->rp_write_cfg(pcie, busno,
 						     where, size, value);
 
+	if (pcie->pcie_data->ops->ep_write_cfg)
+		return pcie->pcie_data->ops->ep_write_cfg(pcie, busno, devfn,
+						     where, size, value);
+
 	switch (size) {
 	case 1:
 		data32 = (value & 0xff) << shift;
@@ -659,7 +820,30 @@ static void altera_pcie_isr(struct irq_desc *desc)
 				dev_err_ratelimited(dev, "unexpected IRQ, INT%d\n", bit);
 		}
 	}
+	chained_irq_exit(chip, desc);
+}
+
+static void aglx_isr(struct irq_desc *desc)
+{
+	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct altera_pcie *pcie;
+	struct device *dev;
+	u32 status;
+	int ret;
+
+	chained_irq_enter(chip, desc);
+	pcie = irq_desc_get_handler_data(desc);
+	dev = &pcie->pdev->dev;
 
+	status = readl(pcie->hip_base + pcie->pcie_data->port_conf_offset +
+		       pcie->pcie_data->port_irq_status_offset);
+	if (status & CFG_AER) {
+		writel(CFG_AER, (pcie->hip_base + pcie->pcie_data->port_conf_offset +
+				 pcie->pcie_data->port_irq_status_offset));
+		ret = generic_handle_domain_irq(pcie->irq_domain, 0);
+		if (ret)
+			dev_err_ratelimited(dev, "unexpected IRQ %d\n", pcie->irq);
+	}
 	chained_irq_exit(chip, desc);
 }
 
@@ -694,9 +878,9 @@ static int altera_pcie_parse_dt(struct altera_pcie *pcie)
 	if (IS_ERR(pcie->cra_base))
 		return PTR_ERR(pcie->cra_base);
 
-	if (pcie->pcie_data->version == ALTERA_PCIE_V2) {
-		pcie->hip_base =
-			devm_platform_ioremap_resource_byname(pdev, "Hip");
+	if (pcie->pcie_data->version == ALTERA_PCIE_V2 ||
+	    pcie->pcie_data->version == ALTERA_PCIE_V3) {
+		pcie->hip_base = devm_platform_ioremap_resource_byname(pdev, "Hip");
 		if (IS_ERR(pcie->hip_base))
 			return PTR_ERR(pcie->hip_base);
 	}
@@ -706,7 +890,7 @@ static int altera_pcie_parse_dt(struct altera_pcie *pcie)
 	if (pcie->irq < 0)
 		return pcie->irq;
 
-	irq_set_chained_handler_and_data(pcie->irq, altera_pcie_isr, pcie);
+	irq_set_chained_handler_and_data(pcie->irq, pcie->pcie_data->ops->rp_isr, pcie);
 	return 0;
 }
 
@@ -719,6 +903,7 @@ static const struct altera_pcie_ops altera_pcie_ops_1_0 = {
 	.tlp_read_pkt = tlp_read_packet,
 	.tlp_write_pkt = tlp_write_packet,
 	.get_link_status = altera_pcie_link_up,
+	.rp_isr = altera_pcie_isr,
 };
 
 static const struct altera_pcie_ops altera_pcie_ops_2_0 = {
@@ -727,6 +912,16 @@ static const struct altera_pcie_ops altera_pcie_ops_2_0 = {
 	.get_link_status = s10_altera_pcie_link_up,
 	.rp_read_cfg = s10_rp_read_cfg,
 	.rp_write_cfg = s10_rp_write_cfg,
+	.rp_isr = altera_pcie_isr,
+};
+
+static const struct altera_pcie_ops altera_pcie_ops_3_0 = {
+	.rp_read_cfg = aglx_rp_read_cfg,
+	.rp_write_cfg = aglx_rp_write_cfg,
+	.get_link_status = aglx_altera_pcie_link_up,
+	.ep_read_cfg = aglx_ep_read_cfg,
+	.ep_write_cfg = aglx_ep_write_cfg,
+	.rp_isr = aglx_isr,
 };
 
 static const struct altera_pcie_data altera_pcie_1_0_data = {
@@ -749,11 +944,44 @@ static const struct altera_pcie_data altera_pcie_2_0_data = {
 	.cfgwr1 = S10_TLP_FMTTYPE_CFGWR1,
 };
 
+static const struct altera_pcie_data altera_pcie_3_0_f_tile_data = {
+	.ops = &altera_pcie_ops_3_0,
+	.version = ALTERA_PCIE_V3,
+	.cap_offset = 0x70,
+	.port_conf_offset = 0x14000,
+	.port_irq_status_offset = AGLX_ROOT_PORT_IRQ_STATUS,
+	.port_irq_enable_offset = AGLX_ROOT_PORT_IRQ_ENABLE,
+};
+
+static const struct altera_pcie_data altera_pcie_3_0_p_tile_data = {
+	.ops = &altera_pcie_ops_3_0,
+	.version = ALTERA_PCIE_V3,
+	.cap_offset = 0x70,
+	.port_conf_offset = 0x104000,
+	.port_irq_status_offset = AGLX_ROOT_PORT_IRQ_STATUS,
+	.port_irq_enable_offset = AGLX_ROOT_PORT_IRQ_ENABLE,
+};
+
+static const struct altera_pcie_data altera_pcie_3_0_r_tile_data = {
+	.ops = &altera_pcie_ops_3_0,
+	.version = ALTERA_PCIE_V3,
+	.cap_offset = 0x70,
+	.port_conf_offset = 0x1300,
+	.port_irq_status_offset = 0x0,
+	.port_irq_enable_offset = 0x4,
+};
+
 static const struct of_device_id altera_pcie_of_match[] = {
 	{.compatible = "altr,pcie-root-port-1.0",
 	 .data = &altera_pcie_1_0_data },
 	{.compatible = "altr,pcie-root-port-2.0",
 	 .data = &altera_pcie_2_0_data },
+	{.compatible = "altr,pcie-root-port-3.0-f-tile",
+	 .data = &altera_pcie_3_0_f_tile_data },
+	{.compatible = "altr,pcie-root-port-3.0-p-tile",
+	 .data = &altera_pcie_3_0_p_tile_data },
+	{.compatible = "altr,pcie-root-port-3.0-r-tile",
+	 .data = &altera_pcie_3_0_r_tile_data },
 	{},
 };
 
@@ -791,11 +1019,18 @@ static int altera_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	/* clear all interrupts */
-	cra_writel(pcie, P2A_INT_STS_ALL, P2A_INT_STATUS);
-	/* enable all interrupts */
-	cra_writel(pcie, P2A_INT_ENA_ALL, P2A_INT_ENABLE);
-	altera_pcie_host_init(pcie);
+	if (pcie->pcie_data->version == ALTERA_PCIE_V1 ||
+	    pcie->pcie_data->version == ALTERA_PCIE_V2) {
+		/* clear all interrupts */
+		cra_writel(pcie, P2A_INT_STS_ALL, P2A_INT_STATUS);
+		/* enable all interrupts */
+		cra_writel(pcie, P2A_INT_ENA_ALL, P2A_INT_ENABLE);
+		altera_pcie_host_init(pcie);
+	} else if (pcie->pcie_data->version == ALTERA_PCIE_V3) {
+		writel(CFG_AER,
+		       pcie->hip_base + pcie->pcie_data->port_conf_offset +
+		       pcie->pcie_data->port_irq_enable_offset);
+	}
 
 	bridge->sysdata = pcie;
 	bridge->busnr = pcie->root_bus_nr;
-- 
2.34.1


