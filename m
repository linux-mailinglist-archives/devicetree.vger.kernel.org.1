Return-Path: <devicetree+bounces-76869-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0A290C66F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 12:20:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B64D51F228DD
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2024 10:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9350185E46;
	Tue, 18 Jun 2024 07:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaC38AoD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6833C14E2CF;
	Tue, 18 Jun 2024 07:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718696994; cv=none; b=bjrFH1gJO0KKr+ptFSwan3xrhZhoHltV9c0AXzg81JK8qUbWtjegxTnZoSa7/01rCGTMOKaRm3G2rZdvknXX9uyWryExmmWCokzZv0nXKI2SmcNjHoMLpxJdWSJSbxfq+68MhHPqeSIWoRDTvk1Yf+nmz9zrIA529py9BW2/yIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718696994; c=relaxed/simple;
	bh=Wk6EpMu9Ls33fli9rMIjvq67UD4JPISukPtIyGDf0Kg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=i1r7jtGnTkSz1oPh2jNf98JlFVl08GBzkzmpQalmPZGcAVFu1Ubd0zldRlOgK5T8I18wqyqHIRU6VXEqKooF7kk6G5lO+meTbpRfrmQe45nteULk8cdRy52tdrdIqFGlLA9Gyx3DYdoRT2+fyp3esUZifP//5Y7KiFajoYpY++k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaC38AoD; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90A99C3277B;
	Tue, 18 Jun 2024 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718696994;
	bh=Wk6EpMu9Ls33fli9rMIjvq67UD4JPISukPtIyGDf0Kg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RaC38AoDp1S78CMcVIR5HlyQwiKb1S5k8Y7AaYApmCig1E6pvO7H8urlFXA9WeBAT
	 OC83iVwBEhvH2Sr7R2NQrQKnlE76ufys42O5br7FE/Rn0ZhcA46wSzvZbUfiRw49Dq
	 VA+bssQ+nCMxil8sM423cYmEr+opwpKVmZaEoX/BlyvdApJ0NmMuJYjexd9dPGvZK1
	 M7PjCKyQkIg52atSrhgfMVi0HHEtXJ2qlrpSh3mAC6tv6F9ZRs6dIvfDW3DWHpU32z
	 nPaCYZBo6XBFBGXfOKezP4ByHEYMl8EKzXHUkLla9C6DKgEUNuIEFrn2ZtFzW2ThIt
	 VFQnsb3jQtsbg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: netdev@vger.kernel.org
Cc: nbd@nbd.name,
	lorenzo.bianconi83@gmail.com,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	conor@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	catalin.marinas@arm.com,
	will@kernel.org,
	upstream@airoha.com,
	angelogioacchino.delregno@collabora.com,
	benjamin.larsson@genexis.eu,
	linux-clk@vger.kernel.org,
	rkannoth@marvell.com,
	sgoutham@marvell.com,
	andrew@lunn.ch
Subject: [PATCH v2 net-next 2/2] net: airoha: Introduce ethernet support for EN7581 SoC
Date: Tue, 18 Jun 2024 09:49:03 +0200
Message-ID: <f146a6f58492394a77f7d159f3c650a268fbe489.1718696209.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <cover.1718696209.git.lorenzo@kernel.org>
References: <cover.1718696209.git.lorenzo@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add airoha_eth driver in order to introduce ethernet support for
Airoha EN7581 SoC available on EN7581 development board (en7581-evb).
en7581-evb networking architecture is composed by airoha_eth as mac
controller (cpu port) and a mt7530 dsa based switch.
EN7581 mac controller is mainly composed by Frame Engine (FE) and
QoS-DMA (QDMA) modules. FE is used for traffic offloading (just basic
functionalities are supported now) while QDMA is used for DMA operation
and QOS functionalities between mac layer and the dsa switch (hw QoS is
not available yet and it will be added in the future).
Currently only hw lan features are available, hw wan will be added with
subsequent patches.

Tested-by: Benjamin Larsson <benjamin.larsson@genexis.eu>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 MAINTAINERS                                |   10 +
 drivers/net/ethernet/mediatek/Kconfig      |   11 +-
 drivers/net/ethernet/mediatek/Makefile     |    1 +
 drivers/net/ethernet/mediatek/airoha_eth.c | 1804 ++++++++++++++++++++
 drivers/net/ethernet/mediatek/airoha_eth.h |  793 +++++++++
 5 files changed, 2618 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/mediatek/airoha_eth.c
 create mode 100644 drivers/net/ethernet/mediatek/airoha_eth.h

diff --git a/MAINTAINERS b/MAINTAINERS
index e66b7d4324ae..5fac9e3a8577 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -682,6 +682,16 @@ S:	Supported
 F:	fs/aio.c
 F:	include/linux/*aio*.h
 
+AIROHA ETHERNET DRIVER
+M:	Lorenzo Bianconi <lorenzo@kernel.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-mediatek@lists.infradead.org (moderated for non-subscribers)
+L:	netdev@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/net/airoha,en7581.yaml
+F:	drivers/net/ethernet/mediatek/airoha_eth.c
+F:	drivers/net/ethernet/mediatek/airoha_eth.h
+
 AIROHA SPI SNFI DRIVER
 M:	Lorenzo Bianconi <lorenzo@kernel.org>
 M:	Ray Liu <ray.liu@airoha.com>
diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
index da0db417ab69..e16d0ea5d418 100644
--- a/drivers/net/ethernet/mediatek/Kconfig
+++ b/drivers/net/ethernet/mediatek/Kconfig
@@ -1,12 +1,21 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config NET_VENDOR_MEDIATEK
 	bool "MediaTek devices"
-	depends on ARCH_MEDIATEK || SOC_MT7621 || SOC_MT7620 || COMPILE_TEST
+	depends on ARCH_MEDIATEK || ARCH_AIROHA || SOC_MT7621 || SOC_MT7620 || COMPILE_TEST
 	help
 	  If you have a Mediatek SoC with ethernet, say Y.
 
 if NET_VENDOR_MEDIATEK
 
+config NET_AIROHA
+	tristate "Airoha SoC Gigabit Ethernet support"
+	depends on NET_DSA || !NET_DSA
+	select PAGE_POOL
+	select PAGE_POOL_STATS
+	help
+	  This driver supports the gigabit ethernet MACs in the
+	  Airoha SoC family.
+
 config NET_MEDIATEK_SOC_WED
 	depends on ARCH_MEDIATEK || COMPILE_TEST
 	def_bool NET_MEDIATEK_SOC != n
diff --git a/drivers/net/ethernet/mediatek/Makefile b/drivers/net/ethernet/mediatek/Makefile
index 03e008fbc859..ddbb7f4a516c 100644
--- a/drivers/net/ethernet/mediatek/Makefile
+++ b/drivers/net/ethernet/mediatek/Makefile
@@ -11,3 +11,4 @@ mtk_eth-$(CONFIG_NET_MEDIATEK_SOC_WED) += mtk_wed_debugfs.o
 endif
 obj-$(CONFIG_NET_MEDIATEK_SOC_WED) += mtk_wed_ops.o
 obj-$(CONFIG_NET_MEDIATEK_STAR_EMAC) += mtk_star_emac.o
+obj-$(CONFIG_NET_AIROHA) += airoha_eth.o
diff --git a/drivers/net/ethernet/mediatek/airoha_eth.c b/drivers/net/ethernet/mediatek/airoha_eth.c
new file mode 100644
index 000000000000..5a2a7c610848
--- /dev/null
+++ b/drivers/net/ethernet/mediatek/airoha_eth.c
@@ -0,0 +1,1804 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024 AIROHA Inc
+ * Author: Lorenzo Bianconi <lorenzo@kernel.org>
+ */
+#include <linux/debugfs.h>
+#include <linux/etherdevice.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/netdevice.h>
+#include <linux/of.h>
+#include <linux/of_net.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/tcp.h>
+#include <net/dsa.h>
+#include <net/page_pool/helpers.h>
+#include <uapi/linux/ppp_defs.h>
+#include "airoha_eth.h"
+
+static u32 airoha_rr(void __iomem *base, u32 offset)
+{
+	return readl(base + offset);
+}
+
+static void airoha_wr(void __iomem *base, u32 offset, u32 val)
+{
+	writel(val, base + offset);
+}
+
+static u32 airoha_rmw(void __iomem *base, u32 offset, u32 mask, u32 val)
+{
+	val |= (airoha_rr(base, offset) & ~mask);
+	airoha_wr(base, offset, val);
+
+	return val;
+}
+
+#define airoha_fe_rr(eth, offset)		airoha_rr((eth)->fe_regs, (offset))
+#define airoha_fe_wr(eth, offset, val)		airoha_wr((eth)->fe_regs, (offset), (val))
+#define airoha_fe_rmw(eth, offset, mask, val)	airoha_rmw((eth)->fe_regs, (offset), (mask), (val))
+#define airoha_fe_set(eth, offset, val)		airoha_rmw((eth)->fe_regs, (offset), 0, (val))
+#define airoha_fe_clear(eth, offset, val)	airoha_rmw((eth)->fe_regs, (offset), (val), 0)
+
+#define airoha_qdma_rr(eth, offset)		airoha_rr((eth)->qdma_regs, (offset))
+#define airoha_qdma_wr(eth, offset, val)	airoha_wr((eth)->qdma_regs, (offset), (val))
+#define airoha_qdma_rmw(eth, offset, mask, val)	airoha_rmw((eth)->qdma_regs, (offset), (mask), (val))
+#define airoha_qdma_set(eth, offset, val)	airoha_rmw((eth)->qdma_regs, (offset), 0, (val))
+#define airoha_qdma_clear(eth, offset, val)	airoha_rmw((eth)->qdma_regs, (offset), (val), 0)
+
+static void airoha_qdma_set_irqmask(struct airoha_eth *eth, int index,
+				    u32 clear, u32 set)
+{
+	unsigned long flags;
+
+	if (WARN_ON_ONCE(index >= ARRAY_SIZE(eth->irqmask)))
+		return;
+
+	spin_lock_irqsave(&eth->irq_lock, flags);
+
+	eth->irqmask[index] &= ~clear;
+	eth->irqmask[index] |= set;
+	airoha_qdma_wr(eth, REG_INT_ENABLE(index), eth->irqmask[index]);
+
+	spin_unlock_irqrestore(&eth->irq_lock, flags);
+}
+
+static void airoha_qdma_irq_enable(struct airoha_eth *eth, int index,
+				   u32 mask)
+{
+	airoha_qdma_set_irqmask(eth, index, 0, mask);
+}
+
+static void airoha_qdma_irq_disable(struct airoha_eth *eth, int index,
+				    u32 mask)
+{
+	airoha_qdma_set_irqmask(eth, index, mask, 0);
+}
+
+static void airoha_set_macaddr(struct airoha_eth *eth, const u8 *addr)
+{
+	u32 val;
+
+	val = (addr[0] << 16) | (addr[1] << 8) | addr[2];
+	airoha_fe_wr(eth, REG_FE_LAN_MAC_H, val);
+
+	val = (addr[3] << 16) | (addr[4] << 8) | addr[5];
+	airoha_fe_wr(eth, REG_FE_LAN_MAC_LMIN, val);
+	airoha_fe_wr(eth, REG_FE_LAN_MAC_LMAX, val);
+}
+
+static void airoha_set_port_fwd_cfg(struct airoha_eth *eth, u32 addr, u32 val)
+{
+	airoha_fe_rmw(eth, addr, GDM1_OCFQ_MASK,
+		      FIELD_PREP(GDM1_OCFQ_MASK, val));
+	airoha_fe_rmw(eth, addr, GDM1_MCFQ_MASK,
+		      FIELD_PREP(GDM1_MCFQ_MASK, val));
+	airoha_fe_rmw(eth, addr, GDM1_BCFQ_MASK,
+		      FIELD_PREP(GDM1_BCFQ_MASK, val));
+	airoha_fe_rmw(eth, addr, GDM1_UCFQ_MASK,
+		      FIELD_PREP(GDM1_UCFQ_MASK, val));
+}
+
+static int airoha_set_gdma_port(struct airoha_eth *eth, int port, bool enable)
+{
+	u32 vip_port, cfg_addr, val = enable ? FE_DP_PPE : FE_DP_DROP;
+
+	switch (port) {
+	case XSI_PCIE0_PORT:
+		vip_port = XSI_PCIE0_VIP_PORT_MASK;
+		cfg_addr = REG_GDM3_FWD_CFG;
+		break;
+	case XSI_PCIE1_PORT:
+		vip_port = XSI_PCIE1_VIP_PORT_MASK;
+		cfg_addr = REG_GDM3_FWD_CFG;
+		break;
+	case XSI_USB_PORT:
+		vip_port = XSI_USB_VIP_PORT_MASK;
+		cfg_addr = REG_GDM4_FWD_CFG;
+		break;
+	case XSI_ETH_PORT:
+		vip_port = XSI_ETH_VIP_PORT_MASK;
+		cfg_addr = REG_GDM4_FWD_CFG;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (enable) {
+		airoha_fe_set(eth, REG_FE_VIP_PORT_EN, vip_port);
+		airoha_fe_set(eth, REG_FE_IFC_PORT_EN, vip_port);
+	} else {
+		airoha_fe_clear(eth, REG_FE_VIP_PORT_EN, vip_port);
+		airoha_fe_clear(eth, REG_FE_IFC_PORT_EN, vip_port);
+	}
+
+	airoha_set_port_fwd_cfg(eth, cfg_addr, val);
+
+	return 0;
+}
+
+static int airoha_set_gdma_ports(struct airoha_eth *eth, bool enable)
+{
+	const int port_list[] = {
+		XSI_PCIE0_PORT,
+		XSI_PCIE1_PORT,
+		XSI_USB_PORT,
+		XSI_ETH_PORT
+	};
+	int i, err;
+
+	for (i = 0; i < ARRAY_SIZE(port_list); i++) {
+		err = airoha_set_gdma_port(eth, port_list[i], enable);
+		if (err)
+			goto error;
+	}
+
+	return 0;
+
+error:
+	for (i--; i >= 0; i++)
+		airoha_set_gdma_port(eth, port_list[i], false);
+
+	return err;
+}
+
+static void airoha_fe_maccr_init(struct airoha_eth *eth)
+{
+	airoha_fe_set(eth, REG_GDM1_FWD_CFG,
+		      GDM1_TCP_CKSUM | GDM1_UDP_CKSUM | GDM1_IP4_CKSUM |
+		      GDM1_DROP_CRC_ERR);
+	airoha_set_port_fwd_cfg(eth, REG_GDM1_FWD_CFG, FE_DP_CPU);
+
+	airoha_fe_set(eth, REG_FE_CPORT_CFG, FE_CPORT_PAD);
+	airoha_fe_rmw(eth, REG_CDM1_VLAN_CTRL, CDM1_VLAN_MASK,
+		      FIELD_PREP(CDM1_VLAN_MASK, 0x8100));
+	airoha_fe_rmw(eth, REG_GDM1_LEN_CFG,
+		      GDM1_SHORT_LEN_MASK | GDM1_LONG_LEN_MASK,
+		      FIELD_PREP(GDM1_SHORT_LEN_MASK, 60) |
+		      FIELD_PREP(GDM1_LONG_LEN_MASK, 4004));
+}
+
+static void airoha_fe_vip_setup(struct airoha_eth *eth)
+{
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(3), ETH_P_PPP_DISC);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(3), PATN_FCPU_EN_MASK | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(4), PPP_LCP);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(4),
+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
+		     PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(6), PPP_IPCP);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(6),
+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
+		     PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(7), PPP_CHAP);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(7),
+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
+		     PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(8), 0x43); /* BOOTP (0x43) */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(8),
+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(9), 0x44); /* BOOTP (0x44) */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(9),
+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(10), 0x1f401f4); /* ISAKMP */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(10),
+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK | PATN_SP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(11), 0xc057); /* PPP->IPv6CP (0xc057) */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(11),
+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
+		     PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(12), 0x2220223); /* DHCPv6 */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(12),
+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK | PATN_SP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 4) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(17), 0x1ae0);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(17),
+		     PATN_FCPU_EN_MASK | PATN_SP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 3) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(18), 0x1ae00000);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(18),
+		     PATN_FCPU_EN_MASK | PATN_DP_EN_MASK |
+		     FIELD_PREP(PATN_TYPE_MASK, 3) | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(19), PPP_PAP);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(19),
+		     PATN_FCPU_EN_MASK | FIELD_PREP(PATN_TYPE_MASK, 1) |
+		     PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(20), 0x893a); /* ETH->ETH_P_1905 (0x893a) */
+	airoha_fe_wr(eth, REG_FE_VIP_EN(20),
+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(21), ETH_P_LLDP);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(21),
+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
+
+	airoha_fe_wr(eth, REG_FE_VIP_PATN(22), 0xaaaa);
+	airoha_fe_wr(eth, REG_FE_VIP_EN(22),
+		     PATN_FCPU_EN_MASK | PATN_EN_MASK);
+}
+
+static u32 airoha_fe_get_oq_rsv(struct airoha_eth *eth,
+				u32 port, u32 queue)
+{
+	u32 val;
+
+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_WR,
+		      PSE_CFG_PORT_ID_MASK | PSE_CFG_QUEUE_ID_MASK,
+		      FIELD_PREP(PSE_CFG_PORT_ID_MASK, port) |
+		      FIELD_PREP(PSE_CFG_QUEUE_ID_MASK, queue));
+	val = airoha_fe_rr(eth, REG_FE_PSE_QUEUE_CFG_VAL);
+
+	return FIELD_GET(PSE_CFG_OQ_RSV_MASK, val);
+}
+
+static void airoha_fe_set_oq_rsv(struct airoha_eth *eth,
+				 u32 port, u32 queue, u32 val)
+{
+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_VAL, PSE_CFG_OQ_RSV_MASK,
+		      FIELD_PREP(PSE_CFG_OQ_RSV_MASK, val));
+	airoha_fe_rmw(eth, REG_FE_PSE_QUEUE_CFG_WR,
+		      PSE_CFG_PORT_ID_MASK | PSE_CFG_QUEUE_ID_MASK |
+		      PSE_CFG_WR_EN_MASK | PSE_CFG_OQRSV_SEL_MASK,
+		      FIELD_PREP(PSE_CFG_PORT_ID_MASK, port) |
+		      FIELD_PREP(PSE_CFG_QUEUE_ID_MASK, queue) |
+		      PSE_CFG_WR_EN_MASK | PSE_CFG_OQRSV_SEL_MASK);
+}
+
+static int airoha_fe_set_pse_oq_rsv(struct airoha_eth *eth,
+				    u32 port, u32 queue, u32 val)
+{
+	u32 orig_val, tmp, all_rsv, fq_limit;
+	const u32 pse_port_oq_id[] = {
+		PSE_PORT0_QUEUE,
+		PSE_PORT1_QUEUE,
+		PSE_PORT2_QUEUE,
+		PSE_PORT3_QUEUE,
+		PSE_PORT4_QUEUE,
+		PSE_PORT5_QUEUE,
+		PSE_PORT6_QUEUE,
+		PSE_PORT7_QUEUE,
+		PSE_PORT8_QUEUE,
+		PSE_PORT9_QUEUE,
+		PSE_PORT10_QUEUE
+	};
+
+	if (port >= ARRAY_SIZE(pse_port_oq_id))
+		return -EINVAL;
+
+	if (queue >= pse_port_oq_id[port])
+		return -EINVAL;
+
+	airoha_fe_set_oq_rsv(eth, port, queue, val);
+
+	/* modify all rsv */
+	orig_val = airoha_fe_get_oq_rsv(eth, port, queue);
+	tmp = airoha_fe_rr(eth, REG_FE_PSE_BUF_SET);
+	all_rsv = FIELD_GET(PSE_ALLRSV_MASK, tmp);
+	all_rsv += (val - orig_val);
+	airoha_fe_rmw(eth, REG_FE_PSE_BUF_SET, PSE_ALLRSV_MASK,
+		      FIELD_PREP(PSE_ALLRSV_MASK, all_rsv));
+
+	/* modify hthd */
+	tmp = airoha_fe_rr(eth, PSE_FQ_CFG);
+	fq_limit = FIELD_GET(PSE_FQ_LIMIT_MASK, tmp);
+	tmp = fq_limit - all_rsv - 0x20;
+	airoha_fe_rmw(eth, REG_PSE_SHARE_USED_THD,
+		      PSE_SHARE_USED_HTHD_MASK,
+		      FIELD_PREP(PSE_SHARE_USED_HTHD_MASK, tmp));
+
+	tmp = fq_limit - all_rsv - 0x100;
+	airoha_fe_rmw(eth, REG_PSE_SHARE_USED_THD,
+		      PSE_SHARE_USED_MTHD_MASK,
+		      FIELD_PREP(PSE_SHARE_USED_MTHD_MASK, tmp));
+	tmp = (3 * tmp) >> 2;
+	airoha_fe_rmw(eth, REG_FE_PSE_BUF_SET,
+		      PSE_SHARE_USED_LTHD_MASK,
+		      FIELD_PREP(PSE_SHARE_USED_LTHD_MASK, tmp));
+
+	return 0;
+}
+
+static void airoha_fe_oq_rsv_init(struct airoha_eth *eth)
+{
+	int i;
+
+	/* hw misses PPE2 oq rsv */
+	airoha_fe_set(eth, REG_FE_PSE_BUF_SET,
+		      PSE_DEF_RSV_PAGE * PSE_PORT8_QUEUE);
+
+	for (i = 0; i < PSE_PORT0_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 0, i, 0x40);
+	for (i = 0; i < PSE_PORT1_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 1, i, 0x40);
+
+	for (i = 6; i < PSE_PORT2_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 2, i, 0);
+
+	for (i = 0; i < PSE_PORT3_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 3, i, 0x40);
+
+	airoha_fe_set_pse_oq_rsv(eth, 4, 0, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 4, 1, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 4, 2, 0);
+	airoha_fe_set_pse_oq_rsv(eth, 4, 3, 0);
+	airoha_fe_set_pse_oq_rsv(eth, 8, 0, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 8, 1, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 8, 2, 0);
+	airoha_fe_set_pse_oq_rsv(eth, 8, 3, 0);
+
+	for (i = 0; i < PSE_PORT5_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 5, i, 0x40);
+
+	for (i = 0; i < PSE_PORT6_QUEUE - 1; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 6, i, 0);
+
+	for (i = 4; i < PSE_PORT7_QUEUE; i++)
+		airoha_fe_set_pse_oq_rsv(eth, 7, i, 0x40);
+
+	airoha_fe_set_pse_oq_rsv(eth, 9, 0, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 9, 1, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 10, 0, 0x40);
+	airoha_fe_set_pse_oq_rsv(eth, 10, 1, 0x40);
+}
+
+static int airoha_fe_mc_vlan_clear(struct airoha_eth *eth)
+{
+	int i;
+
+	for (i = 0; i < AIROHA_FE_MC_MAX_VLAN_TABLE; i++) {
+		int err, j;
+		u32 val;
+
+		airoha_fe_wr(eth, REG_MC_VLAN_DATA, 0x0);
+
+		val = FIELD_PREP(MC_VLAN_CFG_TABLE_ID_MASK, i) |
+		      MC_VLAN_CFG_TABLE_SEL_MASK | MC_VLAN_CFG_RW_MASK;
+		airoha_fe_wr(eth, REG_MC_VLAN_CFG, val);
+		err = read_poll_timeout(airoha_fe_rr, val,
+					val & MC_VLAN_CFG_CMD_DONE_MASK,
+					USEC_PER_MSEC, 5 * USEC_PER_MSEC,
+					false, eth, REG_MC_VLAN_CFG);
+		if (err)
+			return err;
+
+		for (j = 0; j < AIROHA_FE_MC_MAX_VLAN_PORT; j++) {
+			airoha_fe_wr(eth, REG_MC_VLAN_DATA, 0x0);
+
+			val = FIELD_PREP(MC_VLAN_CFG_TABLE_ID_MASK, i) |
+			      FIELD_PREP(MC_VLAN_CFG_PORT_ID_MASK, j) |
+			      MC_VLAN_CFG_RW_MASK;
+			airoha_fe_wr(eth, REG_MC_VLAN_CFG, val);
+			err = read_poll_timeout(airoha_fe_rr, val,
+						val & MC_VLAN_CFG_CMD_DONE_MASK,
+						USEC_PER_MSEC, 5 * USEC_PER_MSEC,
+						false, eth, REG_MC_VLAN_CFG);
+			if (err)
+				return err;
+		}
+	}
+
+	return 0;
+}
+
+static void airoha_fe_crsn_qsel_init(struct airoha_eth *eth)
+{
+	/* CDM1_CRSN_QSEL */
+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_22 >> 2),
+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_22),
+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_22),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_08 >> 2),
+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_08),
+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_08),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_21 >> 2),
+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_21),
+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_21),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_24 >> 2),
+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_24),
+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_24),
+				 CDM_CRSN_QSEL_Q6));
+	airoha_fe_rmw(eth, REG_CDM1_CRSN_QSEL(CRSN_25 >> 2),
+		      CDM1_CRSN_QSEL_REASON_MASK(CRSN_25),
+		      FIELD_PREP(CDM1_CRSN_QSEL_REASON_MASK(CRSN_25),
+				 CDM_CRSN_QSEL_Q1));
+	/* CDM2_CRSN_QSEL */
+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_08 >> 2),
+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_08),
+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_08),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_21 >> 2),
+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_21),
+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_21),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_22 >> 2),
+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_22),
+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_22),
+				 CDM_CRSN_QSEL_Q1));
+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_24 >> 2),
+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_24),
+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_24),
+				 CDM_CRSN_QSEL_Q6));
+	airoha_fe_rmw(eth, REG_CDM2_CRSN_QSEL(CRSN_25 >> 2),
+		      CDM2_CRSN_QSEL_REASON_MASK(CRSN_25),
+		      FIELD_PREP(CDM2_CRSN_QSEL_REASON_MASK(CRSN_25),
+				 CDM_CRSN_QSEL_Q1));
+}
+
+static int airoha_fe_init(struct airoha_eth *eth)
+{
+	airoha_fe_maccr_init(eth);
+
+	/* PSE IQ reserve */
+	airoha_fe_rmw(eth, REG_PSE_IQ_REV1, PSE_IQ_RES1_P2_MASK,
+		      FIELD_PREP(PSE_IQ_RES1_P2_MASK, 0x10));
+	airoha_fe_rmw(eth, REG_PSE_IQ_REV2,
+		      PSE_IQ_RES2_P5_MASK | PSE_IQ_RES2_P4_MASK,
+		      FIELD_PREP(PSE_IQ_RES2_P5_MASK, 0x40) |
+		      FIELD_PREP(PSE_IQ_RES2_P4_MASK, 0x34));
+
+	/* enable FE copy engine for MC/KA/DPI */
+	airoha_fe_wr(eth, REG_FE_PCE_CFG,
+		     PCE_DPI_EN_MASK | PCE_KA_EN_MASK | PCE_MC_EN_MASK);
+	/* set vip queue selection to ring 1 */
+	airoha_fe_rmw(eth, REG_CDM1_FWD_CFG, CDM1_VIP_QSEL_MASK,
+		      FIELD_PREP(CDM1_VIP_QSEL_MASK, 0x4));
+	airoha_fe_rmw(eth, REG_CDM2_FWD_CFG, CDM2_VIP_QSEL_MASK,
+		      FIELD_PREP(CDM2_VIP_QSEL_MASK, 0x4));
+	/* set GDM4 source interface offset to 8 */
+	airoha_fe_rmw(eth, REG_GDM4_SRC_PORT_SET,
+		      GDM4_SPORT_OFF2_MASK |
+		      GDM4_SPORT_OFF1_MASK |
+		      GDM4_SPORT_OFF0_MASK,
+		      FIELD_PREP(GDM4_SPORT_OFF2_MASK, 8) |
+		      FIELD_PREP(GDM4_SPORT_OFF1_MASK, 8) |
+		      FIELD_PREP(GDM4_SPORT_OFF0_MASK, 8));
+
+	/* set PSE Page as 128B */
+	airoha_fe_rmw(eth, REG_FE_DMA_GLO_CFG,
+		      FE_DMA_GLO_L2_SPACE_MASK | FE_DMA_GLO_PG_SZ_MASK,
+		      FIELD_PREP(FE_DMA_GLO_L2_SPACE_MASK, 2) |
+		      FE_DMA_GLO_PG_SZ_MASK);
+	airoha_fe_wr(eth, REG_FE_RST_GLO_CFG,
+		     FE_RST_CORE_MASK | FE_RST_GDM3_MBI_ARB_MASK |
+		     FE_RST_GDM4_MBI_ARB_MASK);
+	usleep_range(1000, 2000);
+
+	/* connect RxRing1 and RxRing15 to PSE Port0 OQ-1
+	 * connect other rings to PSE Port0 OQ-0
+	 */
+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP0, BIT(4));
+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP1, BIT(28));
+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP2, BIT(4));
+	airoha_fe_wr(eth, REG_FE_CDM1_OQ_MAP3, BIT(28));
+
+	airoha_fe_vip_setup(eth);
+	airoha_fe_oq_rsv_init(eth);
+
+	airoha_fe_set(eth, REG_GDM_MISC_CFG,
+		      GDM2_RDM_ACK_WAIT_PREF_MASK |
+		      GDM2_CHN_VLD_MODE_MASK);
+	airoha_fe_rmw(eth, REG_CDM2_FWD_CFG, CDM2_OAM_QSEL_MASK, 15);
+
+	/* init fragment and assemble Force Port */
+	/* NPU Core-3, NPU Bridge Channel-3 */
+	airoha_fe_rmw(eth, REG_IP_FRAG_FP,
+		      IP_FRAGMENT_PORT_MASK | IP_FRAGMENT_NBQ_MASK,
+		      FIELD_PREP(IP_FRAGMENT_PORT_MASK, 6) |
+		      FIELD_PREP(IP_FRAGMENT_NBQ_MASK, 3));
+	/* QDMA LAN, RX Ring-22 */
+	airoha_fe_rmw(eth, REG_IP_FRAG_FP,
+		      IP_ASSEMBLE_PORT_MASK | IP_ASSEMBLE_NBQ_MASK,
+		      FIELD_PREP(IP_ASSEMBLE_PORT_MASK, 0) |
+		      FIELD_PREP(IP_ASSEMBLE_NBQ_MASK, 22));
+
+	airoha_fe_set(eth, REG_GDM3_FWD_CFG, GDM3_PAD_EN_MASK);
+	airoha_fe_set(eth, REG_GDM4_FWD_CFG, GDM4_PAD_EN_MASK);
+
+	airoha_fe_crsn_qsel_init(eth);
+
+	airoha_fe_clear(eth, REG_FE_CPORT_CFG, FE_CPORT_QUEUE_XFC_MASK);
+	airoha_fe_set(eth, REG_FE_CPORT_CFG, FE_CPORT_PORT_XFC_MASK);
+
+	/* default aging mode for mbi unlock issue */
+	airoha_fe_rmw(eth, REG_GDM2_CHN_RLS,
+		      MBI_RX_AGE_SEL_MASK | MBI_TX_AGE_SEL_MASK,
+		      FIELD_PREP(MBI_RX_AGE_SEL_MASK, 3) |
+		      FIELD_PREP(MBI_TX_AGE_SEL_MASK, 3));
+
+	/* disable IFC by default */
+	airoha_fe_clear(eth, REG_FE_CSR_IFC_CFG, FE_IFC_EN_MASK);
+
+	/* enable 1:N vlan action, init vlan table */
+	airoha_fe_set(eth, REG_MC_VLAN_EN, MC_VLAN_EN_MASK);
+
+	return airoha_fe_mc_vlan_clear(eth);
+}
+
+static int airoha_qdma_fill_rx_queue(struct airoha_queue *q)
+{
+	enum dma_data_direction dir = page_pool_get_dma_dir(q->page_pool);
+	struct airoha_eth *eth = q->eth;
+	int qid, nframes = 0;
+	struct device *dev;
+
+	dev = eth->net_dev->dev.parent;
+	qid = q - &eth->q_rx[0];
+
+	while (q->queued < q->ndesc - 1) {
+		struct airoha_queue_entry *e = &q->entry[q->head];
+		struct airoha_qdma_desc *desc = &q->desc[q->head];
+		struct page *page;
+		int offset;
+		u32 val;
+
+		page = page_pool_dev_alloc_frag(q->page_pool, &offset,
+						q->buf_size);
+		if (!page)
+			break;
+
+		q->head = (q->head + 1) % q->ndesc;
+		q->queued++;
+		nframes++;
+
+		e->buf = page_address(page) + offset;
+		e->dma_addr = page_pool_get_dma_addr(page) + offset;
+		e->dma_len = SKB_WITH_OVERHEAD(q->buf_size);
+
+		dma_sync_single_for_device(dev, e->dma_addr, e->dma_len, dir);
+
+		val = FIELD_PREP(QDMA_DESC_LEN_MASK, e->dma_len);
+		WRITE_ONCE(desc->ctrl, cpu_to_le32(val));
+		WRITE_ONCE(desc->addr, cpu_to_le32(e->dma_addr));
+		val = FIELD_PREP(QDMA_DESC_NEXT_ID_MASK, q->head);
+		WRITE_ONCE(desc->data, cpu_to_le32(val));
+		WRITE_ONCE(desc->msg0, 0);
+		WRITE_ONCE(desc->msg1, 0);
+		WRITE_ONCE(desc->msg2, 0);
+		WRITE_ONCE(desc->msg3, 0);
+
+		wmb();
+		airoha_qdma_rmw(eth, REG_RX_CPU_IDX(qid), RX_RING_CPU_IDX_MASK,
+				FIELD_PREP(RX_RING_CPU_IDX_MASK, q->head));
+	}
+
+	return nframes;
+}
+
+static int airoha_qdma_rx_process(struct airoha_queue *q, int budget)
+{
+	enum dma_data_direction dir = page_pool_get_dma_dir(q->page_pool);
+	struct airoha_eth *eth = q->eth;
+	struct device *dev;
+	int done = 0, qid;
+
+	dev = eth->net_dev->dev.parent;
+	qid = q - &eth->q_rx[0];
+
+	while (done < budget) {
+		struct airoha_queue_entry *e = &q->entry[q->tail];
+		struct airoha_qdma_desc *desc = &q->desc[q->tail];
+		dma_addr_t dma_addr = le32_to_cpu(desc->addr);
+		u32 desc_ctrl = le32_to_cpu(desc->ctrl);
+		struct sk_buff *skb;
+		int len;
+
+		if (!(desc_ctrl & QDMA_DESC_DONE_MASK))
+			break;
+
+		if (!dma_addr)
+			break;
+
+		len = FIELD_GET(QDMA_DESC_LEN_MASK, desc_ctrl);
+		if (!len)
+			break;
+
+		q->tail = (q->tail + 1) % q->ndesc;
+		q->queued--;
+
+		dma_sync_single_for_cpu(dev, dma_addr,
+					SKB_WITH_OVERHEAD(q->buf_size), dir);
+
+		skb = napi_build_skb(e->buf, q->buf_size);
+		if (!skb) {
+			page_pool_put_full_page(q->page_pool,
+						virt_to_head_page(e->buf),
+						true);
+			break;
+		}
+
+		skb_reserve(skb, 2);
+		__skb_put(skb, len);
+
+		skb_mark_for_recycle(skb);
+		skb->dev = eth->net_dev;
+		skb->protocol = eth_type_trans(skb, eth->net_dev);
+		skb->ip_summed = CHECKSUM_UNNECESSARY;
+		skb_record_rx_queue(skb, qid);
+		napi_gro_receive(&q->napi, skb);
+
+		done++;
+	}
+	airoha_qdma_fill_rx_queue(q);
+
+	return done;
+}
+
+static int airoha_qdma_rx_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct airoha_queue *q = container_of(napi, struct airoha_queue, napi);
+	struct airoha_eth *eth = q->eth;
+	int cur, done = 0;
+
+	do {
+		cur = airoha_qdma_rx_process(q, budget - done);
+		done += cur;
+	} while (cur && done < budget);
+
+	if (done < budget && napi_complete(napi))
+		airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX1,
+				       RX_DONE_INT_MASK);
+
+	return done;
+}
+
+static int airoha_qdma_init_rx_queue(struct airoha_eth *eth,
+				     struct airoha_queue *q, int ndesc)
+{
+	struct device *dev = eth->net_dev->dev.parent;
+	struct page_pool_params pp_params = {
+		.order = 0,
+		.pool_size = 256,
+		.flags = PP_FLAG_DMA_MAP | PP_FLAG_DMA_SYNC_DEV,
+		.dma_dir = DMA_FROM_DEVICE,
+		.max_len = PAGE_SIZE,
+		.nid = NUMA_NO_NODE,
+		.dev = dev,
+		.napi = &q->napi,
+	};
+	int qid = q - &eth->q_rx[0], thr;
+	dma_addr_t dma_addr;
+
+	q->buf_size = PAGE_SIZE / 2;
+	q->ndesc = ndesc;
+	q->eth = eth;
+
+	q->entry = devm_kzalloc(dev, q->ndesc * sizeof(*q->entry),
+				GFP_KERNEL);
+	if (!q->entry)
+		return -ENOMEM;
+
+	q->page_pool = page_pool_create(&pp_params);
+	if (IS_ERR(q->page_pool)) {
+		int err = PTR_ERR(q->page_pool);
+
+		q->page_pool = NULL;
+		return err;
+	}
+
+	q->desc = dmam_alloc_coherent(dev, q->ndesc * sizeof(*q->desc),
+				      &dma_addr, GFP_KERNEL);
+	if (!q->desc)
+		return -ENOMEM;
+
+	netif_napi_add(eth->net_dev, &q->napi, airoha_qdma_rx_napi_poll);
+
+	airoha_qdma_wr(eth, REG_RX_RING_BASE(qid), dma_addr);
+	airoha_qdma_rmw(eth, REG_RX_RING_SIZE(qid), RX_RING_SIZE_MASK,
+			FIELD_PREP(RX_RING_SIZE_MASK, ndesc));
+
+	thr = clamp(ndesc >> 3, 1, 32);
+	airoha_qdma_rmw(eth, REG_RX_RING_SIZE(qid), RX_RING_THR_MASK,
+			FIELD_PREP(RX_RING_THR_MASK, thr));
+	airoha_qdma_rmw(eth, REG_RX_DMA_IDX(qid), RX_RING_DMA_IDX_MASK,
+			FIELD_PREP(RX_RING_DMA_IDX_MASK, q->head));
+
+	airoha_qdma_fill_rx_queue(q);
+
+	return 0;
+}
+
+static void airoha_qdma_clenaup_rx_queue(struct airoha_queue *q)
+{
+	enum dma_data_direction dir = page_pool_get_dma_dir(q->page_pool);
+	struct airoha_eth *eth = q->eth;
+	struct device *dev;
+
+	dev = eth->net_dev->dev.parent;
+
+	while (q->queued) {
+		struct airoha_queue_entry *e = &q->entry[q->tail];
+		struct page *page = virt_to_head_page(e->buf);
+
+		dma_sync_single_for_cpu(dev, e->dma_addr, e->dma_len, dir);
+		page_pool_put_full_page(q->page_pool, page, false);
+		q->tail = (q->tail + 1) % q->ndesc;
+		q->queued--;
+	}
+}
+
+static int airoha_qdma_init_rx(struct airoha_eth *eth)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(eth->q_rx); i++) {
+		int err;
+
+		if (!(RX_DONE_INT_MASK & BIT(i))) {
+			/* rx-queue not binded to irq */
+			continue;
+		}
+
+		err = airoha_qdma_init_rx_queue(eth, &eth->q_rx[i],
+						RX_DSCP_NUM(i));
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static int airoha_qdma_tx_napi_poll(struct napi_struct *napi, int budget)
+{
+	struct airoha_tx_irq_queue *irq_q;
+	struct airoha_eth *eth;
+	struct device *dev;
+	int id, done = 0;
+
+	irq_q = container_of(napi, struct airoha_tx_irq_queue, napi);
+	eth = irq_q->eth;
+	id = irq_q - &eth->q_tx_irq[0];
+	dev = eth->net_dev->dev.parent;
+
+	while (irq_q->queued > 0 && done < budget) {
+		u32 qid, last, val = irq_q->q[irq_q->head];
+		u32 n_pkts = 0, n_bytes = 0;
+		struct netdev_queue *txq;
+		struct airoha_queue *q;
+
+		if (val == 0xff)
+			break;
+
+		irq_q->q[irq_q->head] = 0xff; /* mark as done */
+		irq_q->head = (irq_q->head + 1) % irq_q->size;
+		irq_q->queued--;
+		done++;
+
+		last = FIELD_GET(IRQ_DESC_IDX_MASK, val);
+		qid = FIELD_GET(IRQ_RING_IDX_MASK, val);
+
+		if (qid >= ARRAY_SIZE(eth->q_tx))
+			continue;
+
+		q = &eth->q_tx[qid];
+		if (!q->ndesc)
+			continue;
+
+		spin_lock_bh(&q->lock);
+
+		while (q->queued > 0) {
+			struct airoha_qdma_desc *desc = &q->desc[q->tail];
+			struct airoha_queue_entry *e = &q->entry[q->tail];
+			u32 desc_ctrl = le32_to_cpu(desc->ctrl);
+			u16 index = q->tail;
+
+			if (!(desc_ctrl & QDMA_DESC_DONE_MASK) &&
+			    !(desc_ctrl & QDMA_DESC_DROP_MASK))
+				break;
+
+			q->tail = (q->tail + 1) % q->ndesc;
+			q->queued--;
+
+			dma_unmap_single(dev, e->dma_addr, e->dma_len,
+					 DMA_TO_DEVICE);
+
+			if (e->skb) {
+				n_bytes += e->skb->len;
+				n_pkts++;
+			}
+
+			dev_kfree_skb_any(e->skb);
+			e->skb = NULL;
+
+			WRITE_ONCE(desc->msg0, 0);
+			WRITE_ONCE(desc->msg1, 0);
+
+			if (index == last)
+				break;
+		}
+
+		txq = netdev_get_tx_queue(eth->net_dev, qid);
+		netdev_tx_completed_queue(txq, n_pkts, n_bytes);
+
+		if (netif_tx_queue_stopped(txq) &&
+		    q->ndesc - q->queued >= q->free_thr)
+			netif_tx_wake_queue(txq);
+
+		spin_unlock_bh(&q->lock);
+	}
+
+	if (done) {
+		int i, len = done >> 7;
+
+		for (i = 0; i < len; i++)
+			airoha_qdma_rmw(eth, REG_IRQ_CLEAR_LEN(id),
+					IRQ_CLEAR_LEN_MASK, 0x80);
+		airoha_qdma_rmw(eth, REG_IRQ_CLEAR_LEN(id),
+				IRQ_CLEAR_LEN_MASK, (done & 0x7f));
+	}
+
+	if (done < budget && napi_complete(napi))
+		airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX0,
+				       TX_DONE_INT_MASK(id));
+
+	return done;
+}
+
+static int airoha_qdma_init_tx_queue(struct airoha_eth *eth,
+				     struct airoha_queue *q, int size)
+{
+	struct device *dev = eth->net_dev->dev.parent;
+	int i, qid = q - &eth->q_tx[0];
+	dma_addr_t dma_addr;
+
+	spin_lock_init(&q->lock);
+	q->ndesc = size;
+	q->eth = eth;
+	q->free_thr = MAX_SKB_FRAGS;
+
+	q->entry = devm_kzalloc(dev, q->ndesc * sizeof(*q->entry),
+				GFP_KERNEL);
+	if (!q->entry)
+		return -ENOMEM;
+
+	q->desc = dmam_alloc_coherent(dev, q->ndesc * sizeof(*q->desc),
+				      &dma_addr, GFP_KERNEL);
+	if (!q->desc)
+		return -ENOMEM;
+
+	for (i = 0; i < q->ndesc; i++) {
+		u32 val;
+
+		val = FIELD_PREP(QDMA_DESC_DONE_MASK, 1);
+		WRITE_ONCE(q->desc[i].ctrl, cpu_to_le32(val));
+	}
+
+	airoha_qdma_wr(eth, REG_TX_RING_BASE(qid), dma_addr);
+	airoha_qdma_rmw(eth, REG_TX_CPU_IDX(qid), TX_RING_CPU_IDX_MASK,
+			FIELD_PREP(TX_RING_CPU_IDX_MASK, q->head));
+	airoha_qdma_rmw(eth, REG_TX_DMA_IDX(qid), TX_RING_DMA_IDX_MASK,
+			FIELD_PREP(TX_RING_DMA_IDX_MASK, q->head));
+
+	return 0;
+}
+
+static int airoha_qdma_tx_irq_init(struct airoha_eth *eth,
+				   struct airoha_tx_irq_queue *irq_q,
+				   int size)
+{
+	struct device *dev = eth->net_dev->dev.parent;
+	int id = irq_q - &eth->q_tx_irq[0];
+	dma_addr_t dma_addr;
+
+	netif_napi_add(eth->net_dev, &irq_q->napi, airoha_qdma_tx_napi_poll);
+	irq_q->q = dmam_alloc_coherent(dev, size * sizeof(u32), &dma_addr,
+				       GFP_KERNEL);
+	if (!irq_q->q)
+		return -ENOMEM;
+
+	memset(irq_q->q, 0xff, size * sizeof(u32));
+	irq_q->size = size;
+	irq_q->eth = eth;
+
+	airoha_qdma_wr(eth, REG_TX_IRQ_BASE(id), dma_addr);
+	airoha_qdma_rmw(eth, REG_TX_IRQ_CFG(id), TX_IRQ_DEPTH_MASK,
+			FIELD_PREP(TX_IRQ_DEPTH_MASK, size));
+	airoha_qdma_rmw(eth, REG_TX_IRQ_CFG(id), TX_IRQ_THR_MASK,
+			FIELD_PREP(TX_IRQ_THR_MASK, 1));
+
+	return 0;
+}
+
+static int airoha_qdma_init_tx(struct airoha_eth *eth)
+{
+	int i, err;
+
+	for (i = 0; i < ARRAY_SIZE(eth->q_tx_irq); i++) {
+		err = airoha_qdma_tx_irq_init(eth, &eth->q_tx_irq[i],
+					      IRQ_QUEUE_LEN(i));
+		if (err)
+			return err;
+	}
+
+	for (i = 0; i < ARRAY_SIZE(eth->q_tx); i++) {
+		err = airoha_qdma_init_tx_queue(eth, &eth->q_tx[i],
+						TX_DSCP_NUM);
+		if (err)
+			return err;
+	}
+
+	return 0;
+}
+
+static void airoha_qdma_clenaup_tx_queue(struct airoha_queue *q)
+{
+	struct airoha_eth *eth = q->eth;
+	struct device *dev;
+
+	dev = eth->net_dev->dev.parent;
+
+	spin_lock_bh(&q->lock);
+	while (q->queued) {
+		struct airoha_queue_entry *e = &q->entry[q->tail];
+
+		dma_unmap_single(dev, e->dma_addr, e->dma_len, DMA_TO_DEVICE);
+		dev_kfree_skb_any(e->skb);
+		e->skb = NULL;
+
+		q->tail = (q->tail + 1) % q->ndesc;
+		q->queued--;
+	}
+	spin_unlock_bh(&q->lock);
+}
+
+static int airoha_qdma_init_hfwd_queues(struct airoha_eth *eth)
+{
+	struct device *dev = eth->net_dev->dev.parent;
+	dma_addr_t dma_addr;
+	u32 status;
+	int size;
+
+	size = HW_DSCP_NUM * sizeof(struct airoha_qdma_fwd_desc);
+	eth->hfwd.desc = dmam_alloc_coherent(dev, size, &dma_addr,
+					     GFP_KERNEL);
+	if (!eth->hfwd.desc)
+		return -ENOMEM;
+
+	airoha_qdma_wr(eth, REG_FWD_DSCP_BASE, dma_addr);
+
+	size = AIROHA_MAX_PACKET_SIZE * HW_DSCP_NUM;
+	eth->hfwd.q = dmam_alloc_coherent(dev, size, &dma_addr, GFP_KERNEL);
+	if (!eth->hfwd.q)
+		return -ENOMEM;
+
+	airoha_qdma_wr(eth, REG_FWD_BUF_BASE, dma_addr);
+
+	airoha_qdma_rmw(eth, REG_HW_FWD_DSCP_CFG,
+			HW_FWD_DSCP_PAYLOAD_SIZE_MASK,
+			FIELD_PREP(HW_FWD_DSCP_PAYLOAD_SIZE_MASK, 0));
+	airoha_qdma_rmw(eth, REG_FWD_DSCP_LOW_THR, FWD_DSCP_LOW_THR_MASK,
+			FIELD_PREP(FWD_DSCP_LOW_THR_MASK, 128));
+	airoha_qdma_rmw(eth, REG_LMGR_INIT_CFG,
+			LMGR_INIT_START | LMGR_SRAM_MODE_MASK |
+			HW_FWD_DESC_NUM_MASK,
+			FIELD_PREP(HW_FWD_DESC_NUM_MASK, HW_DSCP_NUM) |
+			LMGR_INIT_START);
+
+	return read_poll_timeout(airoha_qdma_rr, status,
+				 !(status & LMGR_INIT_START), USEC_PER_MSEC,
+				 30 * USEC_PER_MSEC, true, eth,
+				 REG_LMGR_INIT_CFG);
+}
+
+static void airoha_qdma_init_qos(struct airoha_eth *eth)
+{
+	airoha_qdma_clear(eth, REG_TXWRR_MODE_CFG, TWRR_WEIGHT_SCALE_MASK);
+	airoha_qdma_set(eth, REG_TXWRR_MODE_CFG, TWRR_WEIGHT_BASE_MASK);
+
+	airoha_qdma_clear(eth, REG_PSE_BUF_USAGE_CFG,
+			  PSE_BUF_ESTIMATE_EN_MASK);
+
+	airoha_qdma_set(eth, REG_EGRESS_RATE_METER_CFG,
+			EGRESS_RATE_METER_EN_MASK |
+			EGRESS_RATE_METER_EQ_RATE_EN_MASK);
+	/* 2047us x 31 = 63.457ms */
+	airoha_qdma_rmw(eth, REG_EGRESS_RATE_METER_CFG,
+			EGRESS_RATE_METER_WINDOW_SZ_MASK,
+			FIELD_PREP(EGRESS_RATE_METER_WINDOW_SZ_MASK, 0x1f));
+	airoha_qdma_rmw(eth, REG_EGRESS_RATE_METER_CFG,
+			EGRESS_RATE_METER_TIMESLICE_MASK,
+			FIELD_PREP(EGRESS_RATE_METER_TIMESLICE_MASK, 0x7ff));
+
+	/* ratelimit init */
+	airoha_qdma_set(eth, REG_GLB_TRTCM_CFG, GLB_TRTCM_EN_MASK);
+	airoha_qdma_rmw(eth, REG_GLB_TRTCM_CFG, GLB_FAST_TICK_MASK,
+			FIELD_PREP(GLB_FAST_TICK_MASK, 25)); /* fast-tick 25us */
+	airoha_qdma_rmw(eth, REG_GLB_TRTCM_CFG, GLB_SLOW_TICK_RATIO_MASK,
+			FIELD_PREP(GLB_SLOW_TICK_RATIO_MASK, 40));
+
+	airoha_qdma_set(eth, REG_EGRESS_TRTCM_CFG, EGRESS_TRTCM_EN_MASK);
+	airoha_qdma_rmw(eth, REG_EGRESS_TRTCM_CFG, EGRESS_FAST_TICK_MASK,
+			FIELD_PREP(EGRESS_FAST_TICK_MASK, 25));
+	airoha_qdma_rmw(eth, REG_EGRESS_TRTCM_CFG,
+			EGRESS_SLOW_TICK_RATIO_MASK,
+			FIELD_PREP(EGRESS_SLOW_TICK_RATIO_MASK, 40));
+
+	airoha_qdma_set(eth, REG_INGRESS_TRTCM_CFG, INGRESS_TRTCM_EN_MASK);
+	airoha_qdma_clear(eth, REG_INGRESS_TRTCM_CFG,
+			  INGRESS_TRTCM_MODE_MASK);
+	airoha_qdma_rmw(eth, REG_INGRESS_TRTCM_CFG, INGRESS_FAST_TICK_MASK,
+			FIELD_PREP(INGRESS_FAST_TICK_MASK, 125));
+	airoha_qdma_rmw(eth, REG_INGRESS_TRTCM_CFG,
+			INGRESS_SLOW_TICK_RATIO_MASK,
+			FIELD_PREP(INGRESS_SLOW_TICK_RATIO_MASK, 8));
+
+	airoha_qdma_set(eth, REG_SLA_TRTCM_CFG, SLA_TRTCM_EN_MASK);
+	airoha_qdma_rmw(eth, REG_SLA_TRTCM_CFG, SLA_FAST_TICK_MASK,
+			FIELD_PREP(SLA_FAST_TICK_MASK, 25));
+	airoha_qdma_rmw(eth, REG_SLA_TRTCM_CFG, SLA_SLOW_TICK_RATIO_MASK,
+			FIELD_PREP(SLA_SLOW_TICK_RATIO_MASK, 40));
+}
+
+static int airoha_qdma_hw_init(struct airoha_eth *eth)
+{
+	int i;
+
+	/* clear pending irqs */
+	for (i = 0; i < ARRAY_SIZE(eth->irqmask); i++)
+		airoha_qdma_wr(eth, REG_INT_STATUS(i), 0xffffffff);
+
+	/* setup irqs */
+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX0, INT_IDX0_MASK);
+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX1, INT_IDX1_MASK);
+	airoha_qdma_irq_enable(eth, QDMA_INT_REG_IDX4, INT_IDX4_MASK);
+
+	/* setup irq binding */
+	airoha_qdma_for_each_q_tx(eth, i) {
+		if (TX_RING_IRQ_BLOCKING_MAP_MASK & BIT(i))
+			airoha_qdma_set(eth, REG_TX_RING_BLOCKING(i),
+					TX_RING_IRQ_BLOCKING_CFG_MASK);
+		else
+			airoha_qdma_clear(eth, REG_TX_RING_BLOCKING(i),
+					  TX_RING_IRQ_BLOCKING_CFG_MASK);
+	}
+
+	airoha_qdma_wr(eth, REG_QDMA_GLOBAL_CFG,
+		       GLOBAL_CFG_RX_2B_OFFSET_MASK |
+		       FIELD_PREP(GLOBAL_CFG_DMA_PREFERENCE_MASK, 3) |
+		       GLOBAL_CFG_CPU_TXR_RR_MASK |
+		       GLOBAL_CFG_PAYLOAD_BYTE_SWAP_MASK |
+		       GLOBAL_CFG_MULTICAST_MODIFY_FP_MASK |
+		       GLOBAL_CFG_MULTICAST_EN_MASK |
+		       GLOBAL_CFG_IRQ0_EN_MASK | GLOBAL_CFG_IRQ1_EN_MASK |
+		       GLOBAL_CFG_TX_WB_DONE_MASK |
+		       FIELD_PREP(GLOBAL_CFG_MAX_ISSUE_NUM_MASK, 2));
+
+	airoha_qdma_init_qos(eth);
+
+	/* disable qdma rx delay interrupt */
+	airoha_qdma_for_each_q_rx(eth, i)
+		airoha_qdma_clear(eth, REG_RX_DELAY_INT_IDX(i),
+				  RX_DELAY_INT_MASK);
+
+	airoha_qdma_set(eth, REG_TXQ_CNGST_CFG,
+			TXQ_CNGST_DROP_EN | TXQ_CNGST_DEI_DROP_EN);
+
+	return 0;
+}
+
+static irqreturn_t airoha_irq_handler(int irq, void *dev_instance)
+{
+	struct airoha_eth *eth = dev_instance;
+	u32 intr[ARRAY_SIZE(eth->irqmask)];
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(eth->irqmask); i++) {
+		intr[i] = airoha_qdma_rr(eth, REG_INT_STATUS(i));
+		intr[i] &= eth->irqmask[i];
+		airoha_qdma_wr(eth, REG_INT_STATUS(i), intr[i]);
+	}
+
+	if (!test_bit(DEV_STATE_INITIALIZED, &eth->state))
+		return IRQ_NONE;
+
+	if (intr[1] & RX_DONE_INT_MASK) {
+		airoha_qdma_irq_disable(eth, QDMA_INT_REG_IDX1,
+					RX_DONE_INT_MASK);
+		airoha_qdma_for_each_q_rx(eth, i) {
+			if (intr[1] & BIT(i))
+				napi_schedule(&eth->q_rx[i].napi);
+		}
+	}
+
+	if (intr[0] & INT_TX_MASK) {
+		for (i = 0; i < ARRAY_SIZE(eth->q_tx_irq); i++) {
+			struct airoha_tx_irq_queue *irq_q = &eth->q_tx_irq[i];
+			u32 status, head;
+
+			if (!(intr[0] & TX_DONE_INT_MASK(i)))
+				continue;
+
+			airoha_qdma_irq_disable(eth, QDMA_INT_REG_IDX0,
+						TX_DONE_INT_MASK(i));
+
+			status = airoha_qdma_rr(eth, REG_IRQ_STATUS(i));
+			head = FIELD_GET(IRQ_HEAD_IDX_MASK, status);
+			irq_q->head = head % irq_q->size;
+			irq_q->queued = FIELD_GET(IRQ_ENTRY_LEN_MASK, status);
+
+			napi_schedule(&eth->q_tx_irq[i].napi);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static int airoha_qdma_init(struct airoha_eth *eth)
+{
+	struct device *dev = eth->net_dev->dev.parent;
+	int err;
+
+	err = devm_request_irq(dev, eth->irq, airoha_irq_handler,
+			       IRQF_SHARED, KBUILD_MODNAME, eth);
+	if (err)
+		return err;
+
+	err = airoha_qdma_init_rx(eth);
+	if (err)
+		return err;
+
+	err = airoha_qdma_init_tx(eth);
+	if (err)
+		return err;
+
+	err = airoha_qdma_init_hfwd_queues(eth);
+	if (err)
+		return err;
+
+	err = airoha_qdma_hw_init(eth);
+	if (err)
+		return err;
+
+	set_bit(DEV_STATE_INITIALIZED, &eth->state);
+
+	return 0;
+}
+
+static int airoha_hw_init(struct airoha_eth *eth)
+{
+	int err;
+
+	/* disable xsi */
+	reset_control_bulk_assert(ARRAY_SIZE(eth->xsi_rsts), eth->xsi_rsts);
+
+	reset_control_bulk_assert(ARRAY_SIZE(eth->rsts), eth->rsts);
+	msleep(20);
+	reset_control_bulk_deassert(ARRAY_SIZE(eth->rsts), eth->rsts);
+	msleep(20);
+
+	err = airoha_fe_init(eth);
+	if (err)
+		return err;
+
+	return airoha_qdma_init(eth);
+}
+
+static void airoha_hw_cleanup(struct airoha_eth *eth)
+{
+	int i;
+
+	airoha_qdma_for_each_q_rx(eth, i) {
+		struct airoha_queue *q = &eth->q_rx[i];
+
+		netif_napi_del(&q->napi);
+		airoha_qdma_clenaup_rx_queue(q);
+		if (q->page_pool)
+			page_pool_destroy(q->page_pool);
+	}
+
+	for (i = 0; i < ARRAY_SIZE(eth->q_tx_irq); i++)
+		netif_napi_del(&eth->q_tx_irq[i].napi);
+
+	airoha_qdma_for_each_q_tx(eth, i)
+		airoha_qdma_clenaup_tx_queue(&eth->q_tx[i]);
+}
+
+static void airoha_qdma_start_napi(struct airoha_eth *eth)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(eth->q_tx_irq); i++)
+		napi_enable(&eth->q_tx_irq[i].napi);
+
+	airoha_qdma_for_each_q_rx(eth, i)
+		napi_enable(&eth->q_rx[i].napi);
+}
+
+static int airoha_dev_open(struct net_device *dev)
+{
+	struct airoha_eth *eth = netdev_priv(dev);
+	int err;
+
+	if (netdev_uses_dsa(dev))
+		airoha_fe_set(eth, REG_GDM1_INGRESS_CFG, GDM1_STAG_EN_MASK);
+	else
+		airoha_fe_clear(eth, REG_GDM1_INGRESS_CFG, GDM1_STAG_EN_MASK);
+
+	netif_tx_start_all_queues(dev);
+	err = airoha_set_gdma_ports(eth, true);
+	if (err)
+		return err;
+
+	airoha_qdma_set(eth, REG_QDMA_GLOBAL_CFG, GLOBAL_CFG_TX_DMA_EN_MASK);
+	airoha_qdma_set(eth, REG_QDMA_GLOBAL_CFG, GLOBAL_CFG_RX_DMA_EN_MASK);
+
+	return 0;
+}
+
+static int airoha_dev_stop(struct net_device *dev)
+{
+	struct airoha_eth *eth = netdev_priv(dev);
+	int err;
+
+	netif_tx_disable(dev);
+	err = airoha_set_gdma_ports(eth, false);
+	if (err)
+		return err;
+
+	airoha_qdma_clear(eth, REG_QDMA_GLOBAL_CFG, GLOBAL_CFG_TX_DMA_EN_MASK);
+	airoha_qdma_clear(eth, REG_QDMA_GLOBAL_CFG, GLOBAL_CFG_RX_DMA_EN_MASK);
+
+	return 0;
+}
+
+static int airoha_dev_set_macaddr(struct net_device *dev, void *p)
+{
+	struct airoha_eth *eth = netdev_priv(dev);
+	int err;
+
+	err = eth_mac_addr(dev, p);
+	if (err)
+		return err;
+
+	airoha_set_macaddr(eth, dev->dev_addr);
+
+	return 0;
+}
+
+static int airoha_dev_init(struct net_device *dev)
+{
+	struct airoha_eth *eth = netdev_priv(dev);
+
+	airoha_set_macaddr(eth, dev->dev_addr);
+
+	return 0;
+}
+
+static netdev_tx_t airoha_dev_xmit(struct sk_buff *skb,
+				   struct net_device *dev)
+{
+	struct skb_shared_info *sinfo = skb_shinfo(skb);
+	struct airoha_eth *eth = netdev_priv(dev);
+	int i, qid = skb_get_queue_mapping(skb);
+	u32 nr_frags, msg0 = 0, msg1;
+	u32 len = skb_headlen(skb);
+	struct netdev_queue *txq;
+	struct airoha_queue *q;
+	void *data = skb->data;
+	u16 index;
+
+	if (skb->ip_summed == CHECKSUM_PARTIAL)
+		msg0 |= FIELD_PREP(QDMA_ETH_TXMSG_TCO_MASK, 1) |
+			FIELD_PREP(QDMA_ETH_TXMSG_UCO_MASK, 1) |
+			FIELD_PREP(QDMA_ETH_TXMSG_ICO_MASK, 1);
+
+	/* TSO: fill MSS info in tcp checksum field */
+	if (skb_is_gso(skb)) {
+		if (skb_cow_head(skb, 0))
+			goto error;
+
+		if (sinfo->gso_type & (SKB_GSO_TCPV4 | SKB_GSO_TCPV6)) {
+			tcp_hdr(skb)->check = cpu_to_be16(sinfo->gso_size);
+			msg0 |= FIELD_PREP(QDMA_ETH_TXMSG_TSO_MASK, 1);
+		}
+	}
+
+	msg1 = FIELD_PREP(QDMA_ETH_TXMSG_FPORT_MASK, DPORT_GDM1) |
+	       FIELD_PREP(QDMA_ETH_TXMSG_METER_MASK, 0x7f);
+
+	if (WARN_ON_ONCE(qid >= ARRAY_SIZE(eth->q_tx)))
+		qid = 0;
+
+	q = &eth->q_tx[qid];
+	if (WARN_ON_ONCE(!q->ndesc))
+		goto error;
+
+	spin_lock_bh(&q->lock);
+
+	nr_frags = 1 + sinfo->nr_frags;
+	if (q->queued + nr_frags > q->ndesc) {
+		/* not enough space in the queue */
+		spin_unlock_bh(&q->lock);
+		return NETDEV_TX_BUSY;
+	}
+
+	index = q->head;
+	for (i = 0; i < nr_frags; i++) {
+		struct airoha_qdma_desc *desc = &q->desc[index];
+		struct airoha_queue_entry *e = &q->entry[index];
+		skb_frag_t *frag = &sinfo->frags[i];
+		dma_addr_t addr;
+		u32 val;
+
+		addr = dma_map_single(dev->dev.parent, data, len,
+				      DMA_TO_DEVICE);
+		if (unlikely(dma_mapping_error(dev->dev.parent, addr)))
+			goto error_unmap;
+
+		index = (index + 1) % q->ndesc;
+
+		val = FIELD_PREP(QDMA_DESC_LEN_MASK, len);
+		if (i < nr_frags - 1)
+			val |= FIELD_PREP(QDMA_DESC_MORE_MASK, 1);
+		WRITE_ONCE(desc->ctrl, cpu_to_le32(val));
+		WRITE_ONCE(desc->addr, cpu_to_le32(addr));
+		val = FIELD_PREP(QDMA_DESC_NEXT_ID_MASK, index);
+		WRITE_ONCE(desc->data, cpu_to_le32(val));
+		WRITE_ONCE(desc->msg0, cpu_to_le32(msg0));
+		WRITE_ONCE(desc->msg1, cpu_to_le32(msg1));
+		WRITE_ONCE(desc->msg2, cpu_to_le32(0xffff));
+
+		e->skb = i ? NULL : skb;
+		e->dma_addr = addr;
+		e->dma_len = len;
+
+		wmb();
+		airoha_qdma_rmw(eth, REG_TX_CPU_IDX(qid), TX_RING_CPU_IDX_MASK,
+				FIELD_PREP(TX_RING_CPU_IDX_MASK, index));
+
+		data = skb_frag_address(frag);
+		len = skb_frag_size(frag);
+	}
+
+	q->head = index;
+	q->queued += i;
+
+	txq = netdev_get_tx_queue(dev, qid);
+	netdev_tx_sent_queue(txq, skb->len);
+	skb_tx_timestamp(skb);
+
+	if (q->ndesc - q->queued < q->free_thr)
+		netif_tx_stop_queue(txq);
+
+	spin_unlock_bh(&q->lock);
+
+	return NETDEV_TX_OK;
+
+error_unmap:
+	for (i--; i >= 0; i++)
+		dma_unmap_single(dev->dev.parent, q->entry[i].dma_addr,
+				 q->entry[i].dma_len, DMA_TO_DEVICE);
+
+	spin_unlock_bh(&q->lock);
+error:
+	dev_kfree_skb_any(skb);
+	dev->stats.tx_dropped++;
+
+	return NETDEV_TX_OK;
+}
+
+static int airoha_dev_change_mtu(struct net_device *dev, int new_mtu)
+{
+	dev->mtu = new_mtu;
+
+	return 0;
+}
+
+static const struct airoha_ethtool_stats airoha_hw_stats[] = {
+	{
+		"tx_eth_pkt_cnt",
+		REG_FE_GDM1_TX_ETH_PKT_CNT_L,
+		REG_FE_GDM1_TX_ETH_PKT_CNT_H,
+	}, {
+		"tx_eth_byte_cnt",
+		REG_FE_GDM1_TX_ETH_BYTE_CNT_L,
+		REG_FE_GDM1_TX_ETH_BYTE_CNT_H,
+	}, {
+		"tx_ok_pkt_cnt",
+		REG_FE_GDM1_TX_OK_PKT_CNT_L,
+		REG_FE_GDM1_TX_OK_PKT_CNT_H,
+	}, {
+		"tx_ok_byte_cnt",
+		REG_FE_GDM1_TX_OK_BYTE_CNT_L,
+		REG_FE_GDM1_TX_OK_BYTE_CNT_H,
+	}, {
+		"tx_eth_drop_cnt",
+		REG_FE_GDM1_TX_ETH_DROP_CNT,
+	}, {
+		"tx_eth_bc_cnt",
+		REG_FE_GDM1_TX_ETH_BC_CNT,
+	}, {
+		"tx_eth_mc_cnt",
+		REG_FE_GDM1_TX_ETH_MC_CNT,
+	}, {
+		"tx_eth_lt64_cnt",
+		REG_FE_GDM1_TX_ETH_RUNT_CNT,
+	}, {
+		"tx_eth_eq64_cnt",
+		REG_FE_GDM1_TX_ETH_E64_CNT_L,
+		REG_FE_GDM1_TX_ETH_E64_CNT_H,
+	}, {
+		"tx_eth_65_127_cnt",
+		REG_FE_GDM1_TX_ETH_L64_CNT_L,
+		REG_FE_GDM1_TX_ETH_L64_CNT_H,
+	}, {
+		"tx_eth_128_255_cnt",
+		REG_FE_GDM1_TX_ETH_L127_CNT_L,
+		REG_FE_GDM1_TX_ETH_L127_CNT_H,
+	}, {
+		"tx_eth_256_511_cnt",
+		REG_FE_GDM1_TX_ETH_L255_CNT_L,
+		REG_FE_GDM1_TX_ETH_L255_CNT_H,
+	}, {
+		"tx_eth_512_1023_cnt",
+		REG_FE_GDM1_TX_ETH_L511_CNT_L,
+		REG_FE_GDM1_TX_ETH_L511_CNT_H,
+	}, {
+		"tx_eth_1024_1518_cnt",
+		REG_FE_GDM1_TX_ETH_L1023_CNT_L,
+		REG_FE_GDM1_TX_ETH_L1023_CNT_H,
+	}, {
+		"tx_eth_gt1518_cnt",
+		REG_FE_GDM1_TX_ETH_LONG_CNT,
+	}, {
+		"rx_eth_pkt_cnt",
+		REG_FE_GDM1_RX_ETH_PKT_CNT_L,
+		REG_FE_GDM1_RX_ETH_PKT_CNT_H,
+	}, {
+		"rx_eth_byte_cnt",
+		REG_FE_GDM1_RX_ETH_BYTE_CNT_L,
+		REG_FE_GDM1_RX_ETH_BYTE_CNT_H,
+	}, {
+		"rx_ok_pkt_cnt",
+		REG_FE_GDM1_RX_OK_PKT_CNT_L,
+		REG_FE_GDM1_RX_OK_PKT_CNT_H,
+	}, {
+		"rx_ok_byte_cnt",
+		REG_FE_GDM1_RX_OK_BYTE_CNT_L,
+		REG_FE_GDM1_RX_OK_BYTE_CNT_H,
+	}, {
+		"rx_eth_drop_cnt",
+		REG_FE_GDM1_RX_ETH_DROP_CNT,
+	}, {
+		"rx_eth_bc_cnt",
+		REG_FE_GDM1_RX_ETH_BC_CNT,
+	}, {
+		"rx_eth_mc_cnt",
+		REG_FE_GDM1_RX_ETH_MC_CNT,
+	}, {
+		"rx_eth_crc_drop_cnt",
+		REG_FE_GDM1_RX_ETH_CRC_ERR_CNT,
+	}, {
+		"rx_eth_frag_cnt",
+		REG_FE_GDM1_RX_ETH_FRAG_CNT,
+	}, {
+		"rx_eth_jabber_cnt",
+		REG_FE_GDM1_RX_ETH_JABBER_CNT,
+	}, {
+		"rx_eth_lt64_cnt",
+		REG_FE_GDM1_RX_ETH_RUNT_CNT,
+	}, {
+		"rx_eth_eq64_cnt",
+		REG_FE_GDM1_RX_ETH_E64_CNT_L,
+		REG_FE_GDM1_RX_ETH_E64_CNT_H,
+	}, {
+		"rx_eth_65_127_cnt",
+		REG_FE_GDM1_RX_ETH_L64_CNT_L,
+		REG_FE_GDM1_RX_ETH_L64_CNT_H,
+	}, {
+		"rx_eth_128_255_cnt",
+		REG_FE_GDM1_RX_ETH_L127_CNT_L,
+		REG_FE_GDM1_RX_ETH_L127_CNT_H,
+	}, {
+		"rx_eth_256_511_cnt",
+		REG_FE_GDM1_RX_ETH_L255_CNT_L,
+		REG_FE_GDM1_RX_ETH_L255_CNT_H,
+	}, {
+		"rx_eth_512_1023_cnt",
+		REG_FE_GDM1_RX_ETH_L511_CNT_L,
+		REG_FE_GDM1_RX_ETH_L511_CNT_H,
+	}, {
+		"rx_eth_1024_1518_cnt",
+		REG_FE_GDM1_RX_ETH_L1023_CNT_L,
+		REG_FE_GDM1_RX_ETH_L1023_CNT_H,
+	}, {
+		"rx_eth_gt1518_cnt",
+		REG_FE_GDM1_RX_ETH_LONG_CNT,
+	},
+};
+
+static void airoha_ethtool_get_strings(struct net_device *dev, u32 sset,
+				       u8 *data)
+{
+	int i;
+
+	if (sset != ETH_SS_STATS)
+		return;
+
+	for (i = 0; i < ARRAY_SIZE(airoha_hw_stats); i++) {
+		memcpy(data + i * ETH_GSTRING_LEN,
+		       airoha_hw_stats[i].name, ETH_GSTRING_LEN);
+	}
+
+	data += ETH_GSTRING_LEN * ARRAY_SIZE(airoha_hw_stats);
+	page_pool_ethtool_stats_get_strings(data);
+}
+
+static int airoha_ethtool_get_sset_count(struct net_device *dev, int sset)
+{
+	if (sset != ETH_SS_STATS)
+		return -EOPNOTSUPP;
+
+	return ARRAY_SIZE(airoha_hw_stats) +
+	       page_pool_ethtool_stats_get_count();
+}
+
+static void airoha_ethtool_get_stats(struct net_device *dev,
+				     struct ethtool_stats *stats, u64 *data)
+{
+	struct airoha_eth *eth = netdev_priv(dev);
+	struct page_pool_stats pp_stats = {};
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(airoha_hw_stats); i++) {
+		u32 val;
+
+		if (airoha_hw_stats[i].h_offset) {
+			val = airoha_fe_rr(eth, airoha_hw_stats[i].h_offset);
+			eth->hw_stats[i] += ((u64)val << 32);
+		}
+		val = airoha_fe_rr(eth, airoha_hw_stats[i].l_offset);
+		eth->hw_stats[i] += val;
+
+		*data++ = eth->hw_stats[i];
+	}
+
+	airoha_qdma_for_each_q_rx(eth, i)
+		page_pool_get_stats(eth->q_rx[i].page_pool, &pp_stats);
+	page_pool_ethtool_stats_get(data, &pp_stats);
+
+	/* reset mib counters */
+	airoha_fe_set(eth, REG_FE_GDM1_MIB_CLEAR,
+		      FE_GDM1_MIB_RX_CLEAR_MASK | FE_GDM1_MIB_TX_CLEAR_MASK);
+}
+
+static const struct net_device_ops airoha_netdev_ops = {
+	.ndo_init		= airoha_dev_init,
+	.ndo_open		= airoha_dev_open,
+	.ndo_stop		= airoha_dev_stop,
+	.ndo_start_xmit		= airoha_dev_xmit,
+	.ndo_change_mtu		= airoha_dev_change_mtu,
+	.ndo_set_mac_address	= airoha_dev_set_macaddr,
+};
+
+static const struct ethtool_ops airoha_ethtool_ops = {
+	.get_strings		= airoha_ethtool_get_strings,
+	.get_sset_count		= airoha_ethtool_get_sset_count,
+	.get_ethtool_stats	= airoha_ethtool_get_stats,
+};
+
+static int airoha_rx_queues_show(struct seq_file *s, void *data)
+{
+	struct airoha_eth *eth = s->private;
+	int i;
+
+	seq_puts(s, "     queue | hw-queued |      head |      tail |\n");
+	airoha_qdma_for_each_q_rx(eth, i) {
+		struct airoha_queue *q = &eth->q_rx[i];
+
+		seq_printf(s, " %9d | %9d | %9d | %9d |\n",
+			   i, q->queued, q->head, q->tail);
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(airoha_rx_queues);
+
+static int airoha_xmit_queues_show(struct seq_file *s, void *data)
+{
+	struct airoha_eth *eth = s->private;
+	int i;
+
+	seq_puts(s, "     queue | hw-queued |      head |      tail |\n");
+	airoha_qdma_for_each_q_tx(eth, i) {
+		struct airoha_queue *q = &eth->q_tx[i];
+
+		seq_printf(s, " %9d | %9d | %9d | %9d |\n",
+			   i, q->queued, q->head, q->tail);
+	}
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(airoha_xmit_queues);
+
+static void airoha_register_debugfs(struct airoha_eth *eth)
+{
+	eth->debugfs_dir = debugfs_create_dir(KBUILD_MODNAME, NULL);
+	debugfs_create_file("rx-queues", 0400, eth->debugfs_dir, eth,
+			    &airoha_rx_queues_fops);
+	debugfs_create_file("xmit-queues", 0400, eth->debugfs_dir, eth,
+			    &airoha_xmit_queues_fops);
+}
+
+static int airoha_probe(struct platform_device *pdev)
+{
+	struct device_node *np = pdev->dev.of_node;
+	struct net_device *dev;
+	struct airoha_eth *eth;
+	int err;
+
+	dev = devm_alloc_etherdev_mqs(&pdev->dev, sizeof(*eth),
+				      AIROHA_NUM_TX_RING, AIROHA_NUM_RX_RING);
+	if (!dev) {
+		dev_err(&pdev->dev, "alloc_etherdev failed\n");
+		return -ENOMEM;
+	}
+
+	eth = netdev_priv(dev);
+	eth->net_dev = dev;
+
+	err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
+	if (err) {
+		dev_err(&pdev->dev, "failed configuring DMA mask\n");
+		return err;
+	}
+
+	eth->fe_regs = devm_platform_ioremap_resource_byname(pdev, "fe");
+	if (IS_ERR(eth->fe_regs))
+		return dev_err_probe(&pdev->dev, PTR_ERR(eth->fe_regs),
+				     "failed to iomap fe regs\n");
+
+	eth->qdma_regs = devm_platform_ioremap_resource_byname(pdev, "qdma0");
+	if (IS_ERR(eth->qdma_regs))
+		return dev_err_probe(&pdev->dev, PTR_ERR(eth->qdma_regs),
+				     "failed to iomap qdma regs\n");
+
+	eth->rsts[0].id = "fe";
+	eth->rsts[1].id = "pdma";
+	eth->rsts[2].id = "qdma";
+	err = devm_reset_control_bulk_get_exclusive(&pdev->dev,
+						    ARRAY_SIZE(eth->rsts),
+						    eth->rsts);
+	if (err) {
+		dev_err(&pdev->dev, "failed to get bulk reset lines\n");
+		return err;
+	}
+
+	eth->xsi_rsts[0].id = "xsi-mac";
+	eth->xsi_rsts[1].id = "hsi0-mac";
+	eth->xsi_rsts[2].id = "hsi1-mac";
+	eth->xsi_rsts[3].id = "hsi-mac";
+	err = devm_reset_control_bulk_get_exclusive(&pdev->dev,
+						    ARRAY_SIZE(eth->xsi_rsts),
+						    eth->xsi_rsts);
+	if (err) {
+		dev_err(&pdev->dev, "failed to get bulk xsi reset lines\n");
+		return err;
+	}
+
+	spin_lock_init(&eth->irq_lock);
+	eth->irq = platform_get_irq(pdev, 0);
+	if (eth->irq < 0) {
+		dev_err(&pdev->dev, "failed reading irq line\n");
+		return eth->irq;
+	}
+
+	dev->netdev_ops = &airoha_netdev_ops;
+	dev->ethtool_ops = &airoha_ethtool_ops;
+	dev->max_mtu = AIROHA_MAX_MTU;
+	dev->watchdog_timeo = 5 * HZ;
+	dev->hw_features = NETIF_F_IP_CSUM | NETIF_F_RXCSUM |
+			   NETIF_F_TSO6 | NETIF_F_IPV6_CSUM |
+			   NETIF_F_SG | NETIF_F_TSO;
+	dev->features |= dev->hw_features;
+	dev->dev.of_node = np;
+	dev->irq = eth->irq;
+	SET_NETDEV_DEV(dev, &pdev->dev);
+
+	err = of_get_ethdev_address(np, dev);
+	if (err) {
+		if (err == -EPROBE_DEFER)
+			return err;
+
+		eth_hw_addr_random(dev);
+		dev_info(&pdev->dev, "generated random MAC address %pM\n",
+			 dev->dev_addr);
+	}
+
+	eth->hw_stats = devm_kzalloc(&pdev->dev,
+				     ARRAY_SIZE(airoha_hw_stats) * sizeof(u64),
+				     GFP_KERNEL);
+	if (!eth->hw_stats)
+		return -ENOMEM;
+
+	err = airoha_hw_init(eth);
+	if (err)
+		goto error;
+
+	platform_set_drvdata(pdev, eth);
+	airoha_qdma_start_napi(eth);
+
+	err = register_netdev(dev);
+	if (err) {
+		platform_set_drvdata(pdev, NULL);
+		goto error;
+	}
+
+	airoha_register_debugfs(eth);
+
+	return 0;
+
+error:
+	airoha_hw_cleanup(eth);
+
+	return err;
+}
+
+static void airoha_remove(struct platform_device *pdev)
+{
+	struct airoha_eth *eth = platform_get_drvdata(pdev);
+
+	debugfs_remove(eth->debugfs_dir);
+
+	airoha_dev_stop(eth->net_dev);
+	airoha_hw_cleanup(eth);
+
+	unregister_netdev(eth->net_dev);
+	platform_set_drvdata(pdev, NULL);
+}
+
+const struct of_device_id of_airoha_match[] = {
+	{ .compatible = "airoha,en7581-eth" },
+	{ /* sentinel */ }
+};
+
+static struct platform_driver airoha_driver = {
+	.probe = airoha_probe,
+	.remove_new = airoha_remove,
+	.driver = {
+		.name = KBUILD_MODNAME,
+		.of_match_table = of_airoha_match,
+	},
+};
+module_platform_driver(airoha_driver);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Lorenzo Bianconi <lorenzo@kernel.org>");
+MODULE_DESCRIPTION("Ethernet driver for Airoha SoC");
diff --git a/drivers/net/ethernet/mediatek/airoha_eth.h b/drivers/net/ethernet/mediatek/airoha_eth.h
new file mode 100644
index 000000000000..fcd684e1418a
--- /dev/null
+++ b/drivers/net/ethernet/mediatek/airoha_eth.h
@@ -0,0 +1,793 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2024 Lorenzo Bianconi <lorenzo@kernel.org>
+ */
+
+#define AIROHA_MAX_NUM_RSTS		3
+#define AIROHA_MAX_NUM_XSI_RSTS		4
+#define AIROHA_MAX_MTU			2000
+#define AIROHA_MAX_PACKET_SIZE		2048
+#define AIROHA_NUM_TX_RING		32
+#define AIROHA_NUM_RX_RING		32
+#define AIROHA_FE_MC_MAX_VLAN_TABLE	64
+#define AIROHA_FE_MC_MAX_VLAN_PORT	16
+#define AIROHA_NUM_TX_IRQ		2
+#define HW_DSCP_NUM			2048
+#define IRQ_QUEUE_LEN(_n)		((_n) ? 1024 : 2048)
+#define TX_DSCP_NUM			1024
+#define RX_DSCP_NUM(_n)			\
+	((_n) ==  2 ? 128 :		\
+	 (_n) == 11 ? 128 :		\
+	 (_n) == 15 ? 128 :		\
+	 (_n) ==  0 ? 1024 : 16)
+
+/* FE */
+#define PSE_BASE			0x0100
+#define CSR_IFC_BASE			0x0200
+#define CDM1_BASE			0x0400
+#define GDM1_BASE			0x0500
+#define PPE1_BASE			0x0c00
+
+#define CDM2_BASE			0x1400
+#define GDM2_BASE			0x1500
+
+#define GDM3_BASE			0x1100
+#define GDM4_BASE			0x2400
+
+#define REG_FE_DMA_GLO_CFG		0x0000
+#define FE_DMA_GLO_L2_SPACE_MASK	GENMASK(7, 4)
+#define FE_DMA_GLO_PG_SZ_MASK		BIT(3)
+
+#define REG_FE_RST_GLO_CFG		0x0004
+#define FE_RST_GDM4_MBI_ARB_MASK	BIT(3)
+#define FE_RST_GDM3_MBI_ARB_MASK	BIT(2)
+#define FE_RST_CORE_MASK		BIT(0)
+
+#define REG_FE_LAN_MAC_H		0x0040
+#define REG_FE_LAN_MAC_LMIN		0x0044
+#define REG_FE_LAN_MAC_LMAX		0x0048
+
+#define REG_FE_CDM1_OQ_MAP0		0x0050
+#define REG_FE_CDM1_OQ_MAP1		0x0054
+#define REG_FE_CDM1_OQ_MAP2		0x0058
+#define REG_FE_CDM1_OQ_MAP3		0x005c
+
+#define REG_FE_PCE_CFG			0x0070
+#define PCE_DPI_EN_MASK			BIT(2)
+#define PCE_KA_EN_MASK			BIT(1)
+#define PCE_MC_EN_MASK			BIT(0)
+
+#define PSE_DEF_RSV_PAGE		0x80
+
+#define PSE_PORT0_QUEUE			6
+#define PSE_PORT1_QUEUE			6
+#define PSE_PORT2_QUEUE			32
+#define PSE_PORT3_QUEUE			6
+#define PSE_PORT4_QUEUE			4
+#define PSE_PORT5_QUEUE			6
+#define PSE_PORT6_QUEUE			8
+#define PSE_PORT7_QUEUE			10
+#define PSE_PORT8_QUEUE			4
+#define PSE_PORT9_QUEUE			2
+#define PSE_PORT10_QUEUE		2
+#define PSE_PORT11_QUEUE		0
+#define PSE_PORT12_QUEUE		0
+#define PSE_PORT13_QUEUE		0
+#define PSE_PORT14_QUEUE		0
+#define PSE_PORT15_QUEUE		0
+
+#define REG_FE_PSE_QUEUE_CFG_WR		0x0080
+#define PSE_CFG_PORT_ID_MASK		GENMASK(27, 24)
+#define PSE_CFG_QUEUE_ID_MASK		GENMASK(20, 16)
+#define PSE_CFG_WR_EN_MASK		BIT(8)
+#define PSE_CFG_OQRSV_SEL_MASK		BIT(0)
+
+#define REG_FE_PSE_QUEUE_CFG_VAL	0x0084
+#define PSE_CFG_OQ_RSV_MASK		GENMASK(13, 0)
+
+#define PSE_FQ_CFG			0x008c
+#define PSE_FQ_LIMIT_MASK		GENMASK(14, 0)
+
+#define REG_FE_PSE_BUF_SET		0x0090
+#define PSE_SHARE_USED_LTHD_MASK	GENMASK(31, 16)
+#define PSE_ALLRSV_MASK			GENMASK(14, 0)
+
+#define REG_PSE_SHARE_USED_THD		0x0094
+#define PSE_SHARE_USED_MTHD_MASK	GENMASK(31, 16)
+#define PSE_SHARE_USED_HTHD_MASK	GENMASK(15, 0)
+
+#define REG_GDM_MISC_CFG		0x0148
+#define GDM2_RDM_ACK_WAIT_PREF_MASK	BIT(9)
+#define GDM2_CHN_VLD_MODE_MASK		BIT(5)
+
+#define REG_FE_CSR_IFC_CFG		CSR_IFC_BASE
+#define FE_IFC_EN_MASK			BIT(0)
+
+#define REG_FE_VIP_PORT_EN		0x01f0
+#define REG_FE_IFC_PORT_EN		0x01f4
+
+#define REG_PSE_IQ_REV1			(PSE_BASE + 0x08)
+#define PSE_IQ_RES1_P2_MASK		GENMASK(23, 16)
+
+#define REG_PSE_IQ_REV2			(PSE_BASE + 0x0c)
+#define PSE_IQ_RES2_P5_MASK		GENMASK(15, 8)
+#define PSE_IQ_RES2_P4_MASK		GENMASK(7, 0)
+
+#define REG_FE_VIP_EN(_n)		(0x0300 + ((_n) << 3))
+#define PATN_FCPU_EN_MASK		BIT(7)
+#define PATN_SWP_EN_MASK		BIT(6)
+#define PATN_DP_EN_MASK			BIT(5)
+#define PATN_SP_EN_MASK			BIT(4)
+#define PATN_TYPE_MASK			GENMASK(3, 1)
+#define PATN_EN_MASK			BIT(0)
+
+#define REG_FE_VIP_PATN(_n)		(0x0304 + ((_n) << 3))
+#define PATN_DP_MASK			GENMASK(31, 16)
+#define PATN_SP_MASK			GENMASK(15, 0)
+
+#define REG_CDM1_VLAN_CTRL		CDM1_BASE
+#define CDM1_VLAN_MASK			GENMASK(31, 16)
+
+#define REG_CDM1_FWD_CFG		(CDM1_BASE + 0x08)
+#define CDM1_VIP_QSEL_MASK		GENMASK(24, 20)
+
+#define REG_CDM1_CRSN_QSEL(_n)		(CDM1_BASE + 0x10 + ((_n) << 2))
+#define CDM1_CRSN_QSEL_REASON_MASK(_n)	\
+	GENMASK(4 + (((_n) % 4) << 3), (((_n) % 4 ) << 3))
+
+#define REG_CDM2_FWD_CFG		(CDM2_BASE + 0x08)
+#define CDM2_OAM_QSEL_MASK		GENMASK(31, 27)
+#define CDM2_VIP_QSEL_MASK		GENMASK(24, 20)
+
+#define REG_CDM2_CRSN_QSEL(_n)		(CDM2_BASE + 0x10 + ((_n) << 2))
+#define CDM2_CRSN_QSEL_REASON_MASK(_n)	\
+	GENMASK(4 + (((_n) % 4) << 3), (((_n) % 4 ) << 3))
+
+#define REG_GDM1_FWD_CFG		GDM1_BASE
+#define GDM1_DROP_CRC_ERR		BIT(23)
+#define GDM1_IP4_CKSUM			BIT(22)
+#define GDM1_TCP_CKSUM			BIT(21)
+#define GDM1_UDP_CKSUM			BIT(20)
+#define GDM1_UCFQ_MASK			GENMASK(15, 12)
+#define GDM1_BCFQ_MASK			GENMASK(11, 8)
+#define GDM1_MCFQ_MASK			GENMASK(7, 4)
+#define GDM1_OCFQ_MASK			GENMASK(3, 0)
+
+#define REG_GDM1_INGRESS_CFG		(GDM1_BASE + 0x10)
+#define GDM1_INGRESS_FC_EN_MASK		BIT(1)
+#define GDM1_STAG_EN_MASK		BIT(0)
+
+#define REG_GDM1_LEN_CFG		(GDM1_BASE + 0x14)
+#define GDM1_SHORT_LEN_MASK		GENMASK(13, 0)
+#define GDM1_LONG_LEN_MASK		GENMASK(29, 16)
+
+#define REG_FE_CPORT_CFG		(GDM1_BASE + 0x40)
+#define FE_CPORT_PAD			BIT(26)
+#define FE_CPORT_PORT_XFC_MASK		BIT(25)
+#define FE_CPORT_QUEUE_XFC_MASK		BIT(24)
+
+#define REG_FE_GDM1_MIB_CLEAR		(GDM1_BASE + 0xf0)
+#define FE_GDM1_MIB_RX_CLEAR_MASK	BIT(1)
+#define FE_GDM1_MIB_TX_CLEAR_MASK	BIT(1)
+
+#define REG_FE_GDM1_MIB_CFG		(GDM1_BASE + 0xf4)
+#define FE_STRICT_RFC2819_MODE_MASK	BIT(31)
+#define FE_GDM1_TX_MIB_SPLIT_EN_MASK	BIT(17)
+#define FE_GDM1_RX_MIB_SPLIT_EN_MASK	BIT(16)
+#define FE_TX_MIB_ID_MASK		GENMASK(15, 8)
+#define FE_RX_MIB_ID_MASK		GENMASK(7, 0)
+
+#define REG_FE_GDM1_TX_OK_PKT_CNT_L	(GDM1_BASE + 0x104)
+#define REG_FE_GDM1_TX_OK_BYTE_CNT_L	(GDM1_BASE + 0x10c)
+#define REG_FE_GDM1_TX_ETH_PKT_CNT_L	(GDM1_BASE + 0x110)
+#define REG_FE_GDM1_TX_ETH_BYTE_CNT_L	(GDM1_BASE + 0x114)
+#define REG_FE_GDM1_TX_ETH_DROP_CNT	(GDM1_BASE + 0x118)
+#define REG_FE_GDM1_TX_ETH_BC_CNT	(GDM1_BASE + 0x11c)
+#define REG_FE_GDM1_TX_ETH_MC_CNT	(GDM1_BASE + 0x120)
+#define REG_FE_GDM1_TX_ETH_RUNT_CNT	(GDM1_BASE + 0x124)
+#define REG_FE_GDM1_TX_ETH_LONG_CNT	(GDM1_BASE + 0x128)
+#define REG_FE_GDM1_TX_ETH_E64_CNT_L	(GDM1_BASE + 0x12c)
+#define REG_FE_GDM1_TX_ETH_L64_CNT_L	(GDM1_BASE + 0x130)
+#define REG_FE_GDM1_TX_ETH_L127_CNT_L	(GDM1_BASE + 0x134)
+#define REG_FE_GDM1_TX_ETH_L255_CNT_L	(GDM1_BASE + 0x138)
+#define REG_FE_GDM1_TX_ETH_L511_CNT_L	(GDM1_BASE + 0x13c)
+#define REG_FE_GDM1_TX_ETH_L1023_CNT_L	(GDM1_BASE + 0x140)
+
+#define REG_FE_GDM1_RX_OK_PKT_CNT_L	(GDM1_BASE + 0x148)
+#define REG_FE_GDM1_RX_OK_BYTE_CNT_L	(GDM1_BASE + 0x15c)
+#define REG_FE_GDM1_RX_ETH_PKT_CNT_L	(GDM1_BASE + 0x160)
+#define REG_FE_GDM1_RX_ETH_BYTE_CNT_L	(GDM1_BASE + 0x164)
+#define REG_FE_GDM1_RX_ETH_DROP_CNT	(GDM1_BASE + 0x168)
+#define REG_FE_GDM1_RX_ETH_BC_CNT	(GDM1_BASE + 0x16c)
+#define REG_FE_GDM1_RX_ETH_MC_CNT	(GDM1_BASE + 0x170)
+#define REG_FE_GDM1_RX_ETH_CRC_ERR_CNT	(GDM1_BASE + 0x174)
+#define REG_FE_GDM1_RX_ETH_FRAG_CNT	(GDM1_BASE + 0x178)
+#define REG_FE_GDM1_RX_ETH_JABBER_CNT	(GDM1_BASE + 0x17c)
+#define REG_FE_GDM1_RX_ETH_RUNT_CNT	(GDM1_BASE + 0x180)
+#define REG_FE_GDM1_RX_ETH_LONG_CNT	(GDM1_BASE + 0x184)
+#define REG_FE_GDM1_RX_ETH_E64_CNT_L	(GDM1_BASE + 0x188)
+#define REG_FE_GDM1_RX_ETH_L64_CNT_L	(GDM1_BASE + 0x18c)
+#define REG_FE_GDM1_RX_ETH_L127_CNT_L	(GDM1_BASE + 0x190)
+#define REG_FE_GDM1_RX_ETH_L255_CNT_L	(GDM1_BASE + 0x194)
+#define REG_FE_GDM1_RX_ETH_L511_CNT_L	(GDM1_BASE + 0x198)
+#define REG_FE_GDM1_RX_ETH_L1023_CNT_L	(GDM1_BASE + 0x19c)
+
+#define REG_PPE1_TB_HASH_CFG		(PPE1_BASE + 0x250)
+#define PPE1_SRAM_TABLE_EN_MASK		BIT(0)
+#define PPE1_SRAM_HASH1_EN_MASK		BIT(8)
+#define PPE1_DRAM_TABLE_EN_MASK		BIT(16)
+#define PPE1_DRAM_HASH1_EN_MASK		BIT(24)
+
+#define REG_FE_GDM1_TX_OK_PKT_CNT_H	(GDM1_BASE + 0x280)
+#define REG_FE_GDM1_TX_OK_BYTE_CNT_H	(GDM1_BASE + 0x284)
+#define REG_FE_GDM1_TX_ETH_PKT_CNT_H	(GDM1_BASE + 0x288)
+#define REG_FE_GDM1_TX_ETH_BYTE_CNT_H	(GDM1_BASE + 0x28c)
+
+#define REG_FE_GDM1_RX_OK_PKT_CNT_H	(GDM1_BASE + 0x290)
+#define REG_FE_GDM1_RX_OK_BYTE_CNT_H	(GDM1_BASE + 0x294)
+#define REG_FE_GDM1_RX_ETH_PKT_CNT_H	(GDM1_BASE + 0x298)
+#define REG_FE_GDM1_RX_ETH_BYTE_CNT_H	(GDM1_BASE + 0x29c)
+#define REG_FE_GDM1_TX_ETH_E64_CNT_H	(GDM1_BASE + 0x2B8)
+#define REG_FE_GDM1_TX_ETH_L64_CNT_H	(GDM1_BASE + 0x2Bc)
+#define REG_FE_GDM1_TX_ETH_L127_CNT_H	(GDM1_BASE + 0x2C0)
+#define REG_FE_GDM1_TX_ETH_L255_CNT_H	(GDM1_BASE + 0x2C4)
+#define REG_FE_GDM1_TX_ETH_L511_CNT_H	(GDM1_BASE + 0x2C8)
+#define REG_FE_GDM1_TX_ETH_L1023_CNT_H	(GDM1_BASE + 0x2CC)
+#define REG_FE_GDM1_RX_ETH_E64_CNT_H	(GDM1_BASE + 0x2E8)
+#define REG_FE_GDM1_RX_ETH_L64_CNT_H	(GDM1_BASE + 0x2EC)
+#define REG_FE_GDM1_RX_ETH_L127_CNT_H	(GDM1_BASE + 0x2F0)
+#define REG_FE_GDM1_RX_ETH_L255_CNT_H	(GDM1_BASE + 0x2F4)
+#define REG_FE_GDM1_RX_ETH_L511_CNT_H	(GDM1_BASE + 0x2F8)
+#define REG_FE_GDM1_RX_ETH_L1023_CNT_H	(GDM1_BASE + 0x2FC)
+
+#define REG_GDM2_CHN_RLS		(GDM2_BASE + 0x20)
+#define MBI_RX_AGE_SEL_MASK		GENMASK(18, 17)
+#define MBI_TX_AGE_SEL_MASK		GENMASK(18, 17)
+
+#define REG_GDM3_FWD_CFG		GDM3_BASE
+#define GDM3_PAD_EN_MASK		BIT(28)
+
+#define REG_GDM4_FWD_CFG		(GDM4_BASE + 0x100)
+#define GDM4_PAD_EN_MASK		BIT(28)
+#define GDM4_SPORT_OFFSET0_MASK		GENMASK(11, 8)
+
+#define REG_GDM4_SRC_PORT_SET		(GDM4_BASE + 0x33c)
+#define GDM4_SPORT_OFF2_MASK		GENMASK(19, 16)
+#define GDM4_SPORT_OFF1_MASK		GENMASK(15, 12)
+#define GDM4_SPORT_OFF0_MASK		GENMASK(11, 8)
+
+#define REG_IP_FRAG_FP			0x2010
+#define IP_ASSEMBLE_PORT_MASK		GENMASK(24, 21)
+#define IP_ASSEMBLE_NBQ_MASK		GENMASK(20, 16)
+#define IP_FRAGMENT_PORT_MASK		GENMASK(8, 5)
+#define IP_FRAGMENT_NBQ_MASK		GENMASK(4, 0)
+
+#define REG_MC_VLAN_EN			0x2100
+#define MC_VLAN_EN_MASK			BIT(0)
+
+#define REG_MC_VLAN_CFG			0x2104
+#define MC_VLAN_CFG_CMD_DONE_MASK	BIT(31)
+#define MC_VLAN_CFG_TABLE_ID_MASK	GENMASK(21, 16)
+#define MC_VLAN_CFG_PORT_ID_MASK	GENMASK(11, 8)
+#define MC_VLAN_CFG_TABLE_SEL_MASK	BIT(4)
+#define MC_VLAN_CFG_RW_MASK		BIT(0)
+
+#define REG_MC_VLAN_DATA		0x2108
+
+#define REG_CDM5_RX_OQ1_DROP_CNT	0x29d4
+
+/* QDMA */
+#define REG_QDMA_GLOBAL_CFG			0x0004
+#define GLOBAL_CFG_RX_2B_OFFSET_MASK		BIT(31)
+#define GLOBAL_CFG_DMA_PREFERENCE_MASK		GENMASK(30, 29)
+#define GLOBAL_CFG_CPU_TXR_RR_MASK		BIT(28)
+#define GLOBAL_CFG_DSCP_BYTE_SWAP_MASK		BIT(27)
+#define GLOBAL_CFG_PAYLOAD_BYTE_SWAP_MASK	BIT(26)
+#define GLOBAL_CFG_MULTICAST_MODIFY_FP_MASK	BIT(25)
+#define GLOBAL_CFG_OAM_MODIFY_MASK		BIT(24)
+#define GLOBAL_CFG_RESET_MASK			BIT(23)
+#define GLOBAL_CFG_RESET_DONE_MASK		BIT(22)
+#define GLOBAL_CFG_MULTICAST_EN_MASK		BIT(21)
+#define GLOBAL_CFG_IRQ1_EN_MASK			BIT(20)
+#define GLOBAL_CFG_IRQ0_EN_MASK			BIT(19)
+#define GLOBAL_CFG_LOOPCNT_EN_MASK		BIT(18)
+#define GLOBAL_CFG_RD_BYPASS_WR_MASK		BIT(17)
+#define GLOBAL_CFG_QDMA_LOOPBACK_MASK		BIT(16)
+#define GLOBAL_CFG_LPBK_RXQ_SEL_MASK		GENMASK(13, 8)
+#define GLOBAL_CFG_CHECK_DONE_MASK		BIT(7)
+#define GLOBAL_CFG_TX_WB_DONE_MASK		BIT(6)
+#define GLOBAL_CFG_MAX_ISSUE_NUM_MASK		GENMASK(5, 4)
+#define GLOBAL_CFG_RX_DMA_BUSY_MASK		BIT(3)
+#define GLOBAL_CFG_RX_DMA_EN_MASK		BIT(2)
+#define GLOBAL_CFG_TX_DMA_BUSY_MASK		BIT(1)
+#define GLOBAL_CFG_TX_DMA_EN_MASK		BIT(0)
+
+#define REG_FWD_DSCP_BASE		0x0010
+#define REG_FWD_BUF_BASE		0x0014
+
+#define REG_HW_FWD_DSCP_CFG			0x0018
+#define HW_FWD_DSCP_PAYLOAD_SIZE_MASK		GENMASK(29, 28)
+#define HW_FWD_DSCP_SCATTER_LEN_MASK		GENMASK(17, 16)
+#define HW_FWD_DSCP_MIN_SCATTER_LEN_MASK	GENMASK(15, 0)
+
+#define REG_INT_STATUS(_n)		\
+	(((_n) == 4) ? 0x0730 :		\
+	 ((_n) == 3) ? 0x0724 :		\
+	 ((_n) == 2) ? 0x0720 :		\
+	 ((_n) == 1) ? 0x0024 : 0x0020)
+
+#define REG_INT_ENABLE(_n)		\
+	(((_n) == 4) ? 0x0750 :		\
+	 ((_n) == 3) ? 0x0744 :		\
+	 ((_n) == 2) ? 0x0740 :		\
+	 ((_n) == 1) ? 0x002c : 0x0028)
+
+/* QDMA_CSR_INT_ENABLE1 */
+#define RX15_COHERENT_INT_MASK		BIT(31)
+#define RX14_COHERENT_INT_MASK		BIT(30)
+#define RX13_COHERENT_INT_MASK		BIT(29)
+#define RX12_COHERENT_INT_MASK		BIT(28)
+#define RX11_COHERENT_INT_MASK		BIT(27)
+#define RX10_COHERENT_INT_MASK		BIT(26)
+#define RX9_COHERENT_INT_MASK		BIT(25)
+#define RX8_COHERENT_INT_MASK		BIT(24)
+#define RX7_COHERENT_INT_MASK		BIT(23)
+#define RX6_COHERENT_INT_MASK		BIT(22)
+#define RX5_COHERENT_INT_MASK		BIT(21)
+#define RX4_COHERENT_INT_MASK		BIT(20)
+#define RX3_COHERENT_INT_MASK		BIT(19)
+#define RX2_COHERENT_INT_MASK		BIT(18)
+#define RX1_COHERENT_INT_MASK		BIT(17)
+#define RX0_COHERENT_INT_MASK		BIT(16)
+#define TX7_COHERENT_INT_MASK		BIT(15)
+#define TX6_COHERENT_INT_MASK		BIT(14)
+#define TX5_COHERENT_INT_MASK		BIT(13)
+#define TX4_COHERENT_INT_MASK		BIT(12)
+#define TX3_COHERENT_INT_MASK		BIT(11)
+#define TX2_COHERENT_INT_MASK		BIT(10)
+#define TX1_COHERENT_INT_MASK		BIT(9)
+#define TX0_COHERENT_INT_MASK		BIT(8)
+#define CNT_OVER_FLOW_INT_MASK		BIT(7)
+#define IRQ1_FULL_INT_MASK		BIT(5)
+#define IRQ1_INT_MASK			BIT(4)
+#define HWFWD_DSCP_LOW_INT_MASK		BIT(3)
+#define HWFWD_DSCP_EMPTY_INT_MASK	BIT(2)
+#define IRQ0_FULL_INT_MASK		BIT(1)
+#define IRQ0_INT_MASK			BIT(0)
+
+#define TX_DONE_INT_MASK(_n)					\
+	((_n) ? IRQ1_INT_MASK | IRQ1_FULL_INT_MASK		\
+	      : IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
+
+#define INT_TX_MASK						\
+	(IRQ1_INT_MASK | IRQ1_FULL_INT_MASK |			\
+	 IRQ0_INT_MASK | IRQ0_FULL_INT_MASK)
+
+#define INT_IDX0_MASK						\
+	(TX0_COHERENT_INT_MASK | TX1_COHERENT_INT_MASK |	\
+	 TX2_COHERENT_INT_MASK | TX3_COHERENT_INT_MASK |	\
+	 TX4_COHERENT_INT_MASK | TX5_COHERENT_INT_MASK |	\
+	 TX6_COHERENT_INT_MASK | TX7_COHERENT_INT_MASK |	\
+	 RX0_COHERENT_INT_MASK | RX1_COHERENT_INT_MASK |	\
+	 RX2_COHERENT_INT_MASK | RX3_COHERENT_INT_MASK |	\
+	 RX4_COHERENT_INT_MASK | RX7_COHERENT_INT_MASK |	\
+	 RX8_COHERENT_INT_MASK | RX9_COHERENT_INT_MASK |	\
+	 RX15_COHERENT_INT_MASK | INT_TX_MASK)
+
+/* QDMA_CSR_INT_ENABLE2 */
+#define RX15_NO_CPU_DSCP_INT_MASK	BIT(31)
+#define RX14_NO_CPU_DSCP_INT_MASK	BIT(30)
+#define RX13_NO_CPU_DSCP_INT_MASK	BIT(29)
+#define RX12_NO_CPU_DSCP_INT_MASK	BIT(28)
+#define RX11_NO_CPU_DSCP_INT_MASK	BIT(27)
+#define RX10_NO_CPU_DSCP_INT_MASK	BIT(26)
+#define RX9_NO_CPU_DSCP_INT_MASK	BIT(25)
+#define RX8_NO_CPU_DSCP_INT_MASK	BIT(24)
+#define RX7_NO_CPU_DSCP_INT_MASK	BIT(23)
+#define RX6_NO_CPU_DSCP_INT_MASK	BIT(22)
+#define RX5_NO_CPU_DSCP_INT_MASK	BIT(21)
+#define RX4_NO_CPU_DSCP_INT_MASK	BIT(20)
+#define RX3_NO_CPU_DSCP_INT_MASK	BIT(19)
+#define RX2_NO_CPU_DSCP_INT_MASK	BIT(18)
+#define RX1_NO_CPU_DSCP_INT_MASK	BIT(17)
+#define RX0_NO_CPU_DSCP_INT_MASK	BIT(16)
+#define RX15_DONE_INT_MASK		BIT(15)
+#define RX14_DONE_INT_MASK		BIT(14)
+#define RX13_DONE_INT_MASK		BIT(13)
+#define RX12_DONE_INT_MASK		BIT(12)
+#define RX11_DONE_INT_MASK		BIT(11)
+#define RX10_DONE_INT_MASK		BIT(10)
+#define RX9_DONE_INT_MASK		BIT(9)
+#define RX8_DONE_INT_MASK		BIT(8)
+#define RX7_DONE_INT_MASK		BIT(7)
+#define RX6_DONE_INT_MASK		BIT(6)
+#define RX5_DONE_INT_MASK		BIT(5)
+#define RX4_DONE_INT_MASK		BIT(4)
+#define RX3_DONE_INT_MASK		BIT(3)
+#define RX2_DONE_INT_MASK		BIT(2)
+#define RX1_DONE_INT_MASK		BIT(1)
+#define RX0_DONE_INT_MASK		BIT(0)
+
+#define RX_DONE_INT_MASK					\
+	(RX0_DONE_INT_MASK | RX1_DONE_INT_MASK |		\
+	 RX2_DONE_INT_MASK | RX3_DONE_INT_MASK |		\
+	 RX4_DONE_INT_MASK | RX7_DONE_INT_MASK |		\
+	 RX8_DONE_INT_MASK | RX9_DONE_INT_MASK |		\
+	 RX15_DONE_INT_MASK)
+#define INT_IDX1_MASK						\
+	(RX_DONE_INT_MASK |					\
+	 RX0_NO_CPU_DSCP_INT_MASK | RX1_NO_CPU_DSCP_INT_MASK |	\
+	 RX2_NO_CPU_DSCP_INT_MASK | RX3_NO_CPU_DSCP_INT_MASK |	\
+	 RX4_NO_CPU_DSCP_INT_MASK | RX7_NO_CPU_DSCP_INT_MASK |	\
+	 RX8_NO_CPU_DSCP_INT_MASK | RX9_NO_CPU_DSCP_INT_MASK |	\
+	 RX15_NO_CPU_DSCP_INT_MASK)
+
+/* QDMA_CSR_INT_ENABLE5 */
+#define TX31_COHERENT_INT_MASK		BIT(31)
+#define TX30_COHERENT_INT_MASK		BIT(30)
+#define TX29_COHERENT_INT_MASK		BIT(29)
+#define TX28_COHERENT_INT_MASK		BIT(28)
+#define TX27_COHERENT_INT_MASK		BIT(27)
+#define TX26_COHERENT_INT_MASK		BIT(26)
+#define TX25_COHERENT_INT_MASK		BIT(25)
+#define TX24_COHERENT_INT_MASK		BIT(24)
+#define TX23_COHERENT_INT_MASK		BIT(23)
+#define TX22_COHERENT_INT_MASK		BIT(22)
+#define TX21_COHERENT_INT_MASK		BIT(21)
+#define TX20_COHERENT_INT_MASK		BIT(20)
+#define TX19_COHERENT_INT_MASK		BIT(19)
+#define TX18_COHERENT_INT_MASK		BIT(18)
+#define TX17_COHERENT_INT_MASK		BIT(17)
+#define TX16_COHERENT_INT_MASK		BIT(16)
+#define TX15_COHERENT_INT_MASK		BIT(15)
+#define TX14_COHERENT_INT_MASK		BIT(14)
+#define TX13_COHERENT_INT_MASK		BIT(13)
+#define TX12_COHERENT_INT_MASK		BIT(12)
+#define TX11_COHERENT_INT_MASK		BIT(11)
+#define TX10_COHERENT_INT_MASK		BIT(10)
+#define TX9_COHERENT_INT_MASK		BIT(9)
+#define TX8_COHERENT_INT_MASK		BIT(8)
+
+#define INT_IDX4_MASK						\
+	(TX8_COHERENT_INT_MASK | TX9_COHERENT_INT_MASK |	\
+	 TX10_COHERENT_INT_MASK | TX11_COHERENT_INT_MASK |	\
+	 TX12_COHERENT_INT_MASK | TX13_COHERENT_INT_MASK |	\
+	 TX14_COHERENT_INT_MASK | TX15_COHERENT_INT_MASK |	\
+	 TX16_COHERENT_INT_MASK | TX17_COHERENT_INT_MASK |	\
+	 TX18_COHERENT_INT_MASK | TX19_COHERENT_INT_MASK |	\
+	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
+	 TX20_COHERENT_INT_MASK | TX21_COHERENT_INT_MASK |	\
+	 TX22_COHERENT_INT_MASK | TX23_COHERENT_INT_MASK |	\
+	 TX24_COHERENT_INT_MASK | TX25_COHERENT_INT_MASK |	\
+	 TX26_COHERENT_INT_MASK | TX27_COHERENT_INT_MASK |	\
+	 TX28_COHERENT_INT_MASK | TX29_COHERENT_INT_MASK |	\
+	 TX30_COHERENT_INT_MASK | TX31_COHERENT_INT_MASK)
+
+#define REG_TX_IRQ_BASE(_n)		((_n) ? 0x0048 : 0x0050)
+
+#define REG_TX_IRQ_CFG(_n)		((_n) ? 0x004c : 0x0054)
+#define TX_IRQ_THR_MASK			GENMASK(27, 16)
+#define TX_IRQ_DEPTH_MASK		GENMASK(11, 0)
+
+#define REG_IRQ_CLEAR_LEN(_n)		((_n) ? 0x0064 : 0x0058)
+#define IRQ_CLEAR_LEN_MASK		GENMASK(7, 0)
+
+#define REG_IRQ_STATUS(_n)		((_n) ? 0x0068 : 0x005c)
+#define IRQ_ENTRY_LEN_MASK		GENMASK(27, 16)
+#define IRQ_HEAD_IDX_MASK		GENMASK(11, 0)
+
+#define REG_TX_RING_BASE(_n)	\
+	(((_n) < 8) ? 0x0100 + ((_n) << 5) : 0x0b00 + (((_n) - 8) << 5))
+
+#define REG_TX_RING_BLOCKING(_n)	\
+	(((_n) < 8) ? 0x0104 + ((_n) << 5) : 0x0b04 + (((_n) - 8) << 5))
+
+#define TX_RING_IRQ_BLOCKING_MAP_MASK			BIT(6)
+#define TX_RING_IRQ_BLOCKING_CFG_MASK			BIT(4)
+#define TX_RING_IRQ_BLOCKING_TX_DROP_EN_MASK		BIT(2)
+#define TX_RING_IRQ_BLOCKING_MAX_TH_TXRING_EN_MASK	BIT(1)
+#define TX_RING_IRQ_BLOCKING_MIN_TH_TXRING_EN_MASK	BIT(0)
+
+#define REG_TX_CPU_IDX(_n)	\
+	(((_n) < 8) ? 0x0108 + ((_n) << 5) : 0x0b08 + (((_n) - 8) << 5))
+
+#define TX_RING_CPU_IDX_MASK		GENMASK(15, 0)
+
+#define REG_TX_DMA_IDX(_n)	\
+	(((_n) < 8) ? 0x010c + ((_n) << 5) : 0x0b0c + (((_n) - 8) << 5))
+
+#define TX_RING_DMA_IDX_MASK		GENMASK(15, 0)
+
+#define IRQ_RING_IDX_MASK		GENMASK(20, 16)
+#define IRQ_DESC_IDX_MASK		GENMASK(15, 0)
+
+#define REG_RX_RING_BASE(_n)	\
+	(((_n) < 16) ? 0x0200 + ((_n) << 5) : 0x0e00 + (((_n) - 16) << 5))
+
+#define REG_RX_RING_SIZE(_n)	\
+	(((_n) < 16) ? 0x0204 + ((_n) << 5) : 0x0e04 + (((_n) - 16) << 5))
+
+#define RX_RING_THR_MASK		GENMASK(31, 16)
+#define RX_RING_SIZE_MASK		GENMASK(15, 0)
+
+#define REG_RX_CPU_IDX(_n)	\
+	(((_n) < 16) ? 0x0208 + ((_n) << 5) : 0x0e08 + (((_n) - 16) << 5))
+
+#define RX_RING_CPU_IDX_MASK		GENMASK(15, 0)
+
+#define REG_RX_DMA_IDX(_n)	\
+	(((_n) < 16) ? 0x020c + ((_n) << 5) : 0x0e0c + (((_n) - 16) << 5))
+
+#define REG_RX_DELAY_INT_IDX(_n)	\
+	(((_n) < 16) ? 0x0210 + ((_n) << 5) : 0x0e10 + (((_n) - 16) << 5))
+
+#define RX_DELAY_INT_MASK		GENMASK(15, 0)
+
+#define RX_RING_DMA_IDX_MASK		GENMASK(15, 0)
+
+#define REG_INGRESS_TRTCM_CFG		0x0070
+#define INGRESS_TRTCM_EN_MASK		BIT(31)
+#define INGRESS_TRTCM_MODE_MASK		BIT(30)
+#define INGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define INGRESS_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define REG_TXQ_DIS_CFG_BASE(_n)	((_n) ? 0x20a0 : 0x00a0)
+#define REG_TXQ_DIS_CFG(_n, _m)		(REG_TXQ_DIS_CFG_BASE((_n)) + (_m) << 2)
+
+#define REG_LMGR_INIT_CFG		0x1000
+#define LMGR_INIT_START			BIT(31)
+#define LMGR_SRAM_MODE_MASK		BIT(30)
+#define HW_FWD_PKTSIZE_OVERHEAD_MASK	GENMASK(27, 20)
+#define HW_FWD_DESC_NUM_MASK		GENMASK(16, 0)
+
+#define REG_FWD_DSCP_LOW_THR		0x1004
+#define FWD_DSCP_LOW_THR_MASK		GENMASK(17, 0)
+
+#define REG_EGRESS_RATE_METER_CFG		0x100c
+#define EGRESS_RATE_METER_EN_MASK		BIT(29)
+#define EGRESS_RATE_METER_EQ_RATE_EN_MASK	BIT(17)
+#define EGRESS_RATE_METER_WINDOW_SZ_MASK	GENMASK(16, 12)
+#define EGRESS_RATE_METER_TIMESLICE_MASK	GENMASK(10, 0)
+
+#define REG_EGRESS_TRTCM_CFG		0x1010
+#define EGRESS_TRTCM_EN_MASK		BIT(31)
+#define EGRESS_TRTCM_MODE_MASK		BIT(30)
+#define EGRESS_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define EGRESS_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define REG_TXWRR_MODE_CFG		0x1020
+#define TWRR_WEIGHT_SCALE_MASK		BIT(31)
+#define TWRR_WEIGHT_BASE_MASK		BIT(3)
+
+#define REG_PSE_BUF_USAGE_CFG		0x1028
+#define PSE_BUF_ESTIMATE_EN_MASK	BIT(29)
+
+#define REG_GLB_TRTCM_CFG		0x1080
+#define GLB_TRTCM_EN_MASK		BIT(31)
+#define GLB_TRTCM_MODE_MASK		BIT(30)
+#define GLB_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define GLB_FAST_TICK_MASK		GENMASK(15, 0)
+
+#define REG_TXQ_CNGST_CFG		0x10a0
+#define TXQ_CNGST_DROP_EN		BIT(31)
+#define TXQ_CNGST_DEI_DROP_EN		BIT(30)
+
+#define REG_SLA_TRTCM_CFG		0x1150
+#define SLA_TRTCM_EN_MASK		BIT(31)
+#define SLA_TRTCM_MODE_MASK		BIT(30)
+#define SLA_SLOW_TICK_RATIO_MASK	GENMASK(29, 16)
+#define SLA_FAST_TICK_MASK		GENMASK(15, 0)
+
+/* CTRL */
+#define QDMA_DESC_DONE_MASK		BIT(31)
+#define QDMA_DESC_DROP_MASK		BIT(30) /* tx: drop pkt - rx: overflow */
+#define QDMA_DESC_MORE_MASK		BIT(29) /* more SG elements */
+#define QDMA_DESC_DEI_MASK		BIT(25)
+#define QDMA_DESC_NO_DROP_MASK		BIT(24)
+#define QDMA_DESC_LEN_MASK		GENMASK(15, 0)
+/* DATA */
+#define QDMA_DESC_NEXT_ID_MASK		GENMASK(15, 0)
+/* MSG0 */
+#define QDMA_ETH_TXMSG_MIC_IDX_MASK	BIT(30)
+#define QDMA_ETH_TXMSG_SP_TAG_MASK	GENMASK(29, 14)
+#define QDMA_ETH_TXMSG_ICO_MASK		BIT(13)
+#define QDMA_ETH_TXMSG_UCO_MASK		BIT(12)
+#define QDMA_ETH_TXMSG_TCO_MASK		BIT(11)
+#define QDMA_ETH_TXMSG_TSO_MASK		BIT(10)
+#define QDMA_ETH_TXMSG_FAST_MASK	BIT(9)
+#define QDMA_ETH_TXMSG_OAM_MASK		BIT(8)
+#define QDMA_ETH_TXMSG_CHAN_MASK	GENMASK(7, 3)
+#define QDMA_ETH_TXMSG_QUEUE_MASK	GENMASK(2, 0)
+/* MSG1 */
+#define QDMA_ETH_TXMSG_NO_DROP		BIT(31)
+#define QDMA_ETH_TXMSG_METER_MASK	GENMASK(30, 24)	/* 0x7f means do not apply meters */
+#define QDMA_ETH_TXMSG_FPORT_MASK	GENMASK(23, 20)
+#define QDMA_ETH_TXMSG_NBOQ_MASK	GENMASK(19, 15)
+#define QDMA_ETH_TXMSG_HWF_MASK		BIT(14)
+#define QDMA_ETH_TXMSG_HOP_MASK		BIT(13)
+#define QDMA_ETH_TXMSG_PTP_MASK		BIT(12)
+#define QDMA_ETH_TXMSG_ACNT_G1_MASK	GENMASK(10, 6)	/* 0x1f means do not count */
+#define QDMA_ETH_TXMSG_ACNT_G0_MASK	GENMASK(5, 0)	/* 0x3f means do not count */
+
+struct airoha_qdma_desc {
+	__le32 rsv;
+	__le32 ctrl;
+	__le32 addr;
+	__le32 data;
+	__le32 msg0;
+	__le32 msg1;
+	__le32 msg2;
+	__le32 msg3;
+};
+
+/* CTRL0 */
+#define QDMA_FWD_DESC_CTX_MASK		BIT(31)
+#define QDMA_FWD_DESC_RING_MASK		GENMASK(30, 28)
+#define QDMA_FWD_DESC_IDX_MASK		GENMASK(27, 16)
+#define QDMA_FWD_DESC_LEN_MASK		GENMASK(15, 0)
+/* CTRL1 */
+#define QDMA_FWD_DESC_FIRST_IDX_MASK	GENMASK(15, 0)
+/* CTRL2 */
+#define QDMA_FWD_DESC_MORE_PKT_NUM_MASK	GENMASK(2, 0)
+
+struct airoha_qdma_fwd_desc {
+	__le32 addr;
+	__le32 ctrl0;
+	__le32 ctrl1;
+	__le32 ctrl2;
+	__le32 msg0;
+	__le32 msg1;
+	__le32 rsv0;
+	__le32 rsv1;
+};
+
+enum {
+	QDMA_INT_REG_IDX0,
+	QDMA_INT_REG_IDX1,
+	QDMA_INT_REG_IDX2,
+	QDMA_INT_REG_IDX3,
+	QDMA_INT_REG_IDX4,
+	QDMA_INT_REG_MAX
+};
+
+enum airoha_dport {
+	DPORT_PDMA,
+	DPORT_GDM1,
+	DPORT_GDM2,
+	DPORT_GDM3,
+	DPORT_PPE,
+	DPORT_QDMA,
+	DPORT_QDMA_HW,
+	DPORT_DISCARD,
+	DPORT_GDM4 = 9,
+};
+
+enum {
+	FE_DP_CPU,
+	FE_DP_GDM1,
+	FE_DP_GDM2,
+	FE_DP_QDMA1_HWF,
+	FE_DP_GDMA3_HWF = 3,
+	FE_DP_PPE,
+	FE_DP_QDMA2_CPU,
+	FE_DP_QDMA2_HWF,
+	FE_DP_DISCARD,
+	FE_DP_PPE2 = 8,
+	FE_DP_DROP = 15,
+};
+
+enum {
+	CDM_CRSN_QSEL_Q1 = 1,
+	CDM_CRSN_QSEL_Q5 = 5,
+	CDM_CRSN_QSEL_Q6 = 6,
+	CDM_CRSN_QSEL_Q15 = 15,
+};
+
+enum {
+	CRSN_08 = 0x8,
+	CRSN_21 = 0x15, /* KA */
+	CRSN_22 = 0x16, /* hit bind and force route to CPU */
+	CRSN_24 = 0x18,
+	CRSN_25 = 0x19,
+};
+
+enum {
+	XSI_PCIE0_PORT,
+	XSI_PCIE1_PORT,
+	XSI_USB_PORT,
+	XSI_AE_PORT,
+	XSI_ETH_PORT,
+};
+
+enum {
+	XSI_PCIE0_VIP_PORT_MASK	= BIT(22),
+	XSI_PCIE1_VIP_PORT_MASK	= BIT(23),
+	XSI_USB_VIP_PORT_MASK	= BIT(25),
+	XSI_ETH_VIP_PORT_MASK	= BIT(24),
+};
+
+enum {
+	DEV_STATE_INITIALIZED,
+};
+
+struct airoha_queue_entry {
+	union {
+		void *buf;
+		struct sk_buff *skb;
+	};
+	dma_addr_t dma_addr;
+	u16 dma_len;
+};
+
+struct airoha_ethtool_stats {
+	const char name[ETH_GSTRING_LEN];
+	u32 l_offset;
+	u32 h_offset;
+};
+
+struct airoha_queue {
+	struct airoha_eth *eth;
+
+	spinlock_t lock;
+	struct airoha_queue_entry *entry;
+	struct airoha_qdma_desc *desc;
+	u16 head;
+	u16 tail;
+
+	int queued;
+	int ndesc;
+	int free_thr;
+	int buf_size;
+
+	struct napi_struct napi;
+	struct page_pool *page_pool;
+};
+
+struct airoha_tx_irq_queue {
+	struct airoha_eth *eth;
+
+	struct napi_struct napi;
+	u32 *q;
+
+	int size;
+	int queued;
+	u16 head;
+};
+
+struct airoha_eth {
+	struct net_device *net_dev;
+
+	unsigned long state;
+
+	void __iomem *qdma_regs;
+	void __iomem *fe_regs;
+
+	spinlock_t irq_lock;
+	u32 irqmask[QDMA_INT_REG_MAX];
+	int irq;
+
+	struct reset_control_bulk_data rsts[AIROHA_MAX_NUM_RSTS];
+	struct reset_control_bulk_data xsi_rsts[AIROHA_MAX_NUM_XSI_RSTS];
+
+	struct airoha_queue q_tx[AIROHA_NUM_TX_RING];
+	struct airoha_queue q_rx[AIROHA_NUM_RX_RING];
+
+	struct airoha_tx_irq_queue q_tx_irq[AIROHA_NUM_TX_IRQ];
+
+	/* descriptor and packet buffers for qdma hw forward */
+	struct {
+		void *desc;
+		void *q;
+	} hfwd;
+
+	u64 *hw_stats;
+
+	struct dentry *debugfs_dir;
+};
+
+#define airoha_qdma_for_each_q_rx(eth, i)		\
+	for (i = 0; i < ARRAY_SIZE((eth)->q_rx); i++)	\
+		if ((eth)->q_rx[i].ndesc)
+#define airoha_qdma_for_each_q_tx(eth, i)		\
+	for (i = 0; i < ARRAY_SIZE((eth)->q_tx); i++)	\
+		if ((eth)->q_tx[i].ndesc)
-- 
2.45.1


