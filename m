Return-Path: <devicetree+bounces-140786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12BF7A1B745
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 14:43:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 968D57A5F07
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 13:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72516F305;
	Fri, 24 Jan 2025 13:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b="kQsHll9S"
X-Original-To: devicetree@vger.kernel.org
Received: from server.wki.vra.mybluehostin.me (server.wki.vra.mybluehostin.me [162.240.238.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0B8713BC18;
	Fri, 24 Jan 2025 13:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.240.238.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737726118; cv=none; b=Czo+ZnMRA8Xt4PhTEhPfVy8w8XUw47771TdkaifnLiPUJ6S/QbRFl/EdHUrA1jnkWcV/2WEZ+ML8rK1Xulr4gDDGDzBpMYaeNhMXIK4GHZ4bg9/JCi2S5BjvPng73XZv8PYr3IFF6yk3w5cI5Bvadi6xzYLKhW7cE7OnvcPozdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737726118; c=relaxed/simple;
	bh=9n9BYXOh+9dqbfXqt2xoG8ZNopCE4H3ols6Ym4eDJ/U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pxhupqMh1P0mPNxRxZWnIM5DZYzliIVSmlsXfkLtO1nNtyZVptNGyenNpBYhZMzln9INUDFB7r5WVPaACjkc2wY+QSNjTiRd3Ung0iyG0qDYHfAdkMaQt+2TQ1Ymaw+xzAM9LyBqgR5nxN5oYypfb1pmDn7UEZxbdg0pasjBB20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com; spf=pass smtp.mailfrom=couthit.com; dkim=pass (2048-bit key) header.d=couthit.com header.i=@couthit.com header.b=kQsHll9S; arc=none smtp.client-ip=162.240.238.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=couthit.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=couthit.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=couthit.com
	; s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=pX+oprTsTE89eLpN42MA/Y2zuaeCmQ4BlYXMmr2LIY4=; b=kQsHll9STJ/tV05ZGI7GP92itM
	S+V7HOwuS88BlsVLzqdfT1xfty+VkeG5RavlWC7T50Kmsi5Pk2hrz6l/D+OEE6JPkemzQx5Ue2DAt
	Gz1n5kOTeBTeUnFXIXcp7GJS3k8xoV6vj2ZqBkwG6FNI/kAHEB+JyQQ5SRUMug+lw1niqWkJb6Nld
	SChQwSQAetqAUafAFikJAKiGAbAPg3+8Oibcw0xLjuR70//AhkThc6aJCtyGspoQAWGTXCIqAo4TI
	FYbhTGdTymK4nsQ+qUaoQ5iS0tGzwf51o+NOn7uLeMeb6WtqbFIzQIfAiBFyvUAqmRBcI2eNJKmKZ
	3cwczm7A==;
Received: from [122.175.9.182] (port=2665 helo=cypher.couthit.local)
	by server.wki.vra.mybluehostin.me with esmtpa (Exim 4.96.2)
	(envelope-from <basharath@couthit.com>)
	id 1tbJwU-0005Y4-1Z;
	Fri, 24 Jan 2025 19:11:50 +0530
From: Basharath Hussain Khaja <basharath@couthit.com>
To: danishanwar@ti.com,
	rogerq@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nm@ti.com,
	ssantosh@kernel.org,
	tony@atomide.com,
	richardcochran@gmail.com,
	parvathi@couthit.com,
	basharath@couthit.com,
	schnelle@linux.ibm.com,
	rdunlap@infradead.org,
	diogo.ivo@siemens.com,
	m-karicheri2@ti.com,
	horms@kernel.org,
	jacob.e.keller@intel.com,
	m-malladi@ti.com,
	javier.carrasco.cruz@gmail.com,
	afd@ti.com,
	s-anna@ti.com
Cc: linux-arm-kernel@lists.infradead.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-omap@vger.kernel.org,
	pratheesh@ti.com,
	prajith@ti.com,
	vigneshr@ti.com,
	praneeth@ti.com,
	srk@ti.com,
	rogerq@ti.com,
	krishna@couthit.com,
	pmohan@couthit.com,
	mohan@couthit.com
Subject: [RFC v2 PATCH 05/10] net: ti: prueth: Adds ethtool support for ICSSM PRUETH Driver
Date: Fri, 24 Jan 2025 19:10:51 +0530
Message-Id: <20250124134056.1459060-6-basharath@couthit.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250124122353.1457174-1-basharath@couthit.com>
References: <20250124122353.1457174-1-basharath@couthit.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - server.wki.vra.mybluehostin.me
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - couthit.com
X-Get-Message-Sender-Via: server.wki.vra.mybluehostin.me: authenticated_id: basharath@couthit.com
X-Authenticated-Sender: server.wki.vra.mybluehostin.me: basharath@couthit.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

From: Roger Quadros <rogerq@ti.com>

Changes for enabling ethtool support for the newly added PRU Ethernet
interfaces. Extends the support for statistics collection from PRU internal
memory and displays it in the user space. Along with statistics,
enable/disable of features, configuring link speed etc.are now supported.

The firmware running on PRU maintains statistics in internal data memory.
When requested ethtool collects all the statistics for the specified
interface and displays it in the user space.

Makefile is updated to include ethtool support into PRUETH driver.

Signed-off-by: Roger Quadros <rogerq@ti.com>
Signed-off-by: Andrew F. Davis <afd@ti.com>
Signed-off-by: Parvathi Pudi <parvathi@couthit.com>
Signed-off-by: Basharath Hussain Khaja <basharath@couthit.com>
---
 drivers/net/ethernet/ti/Makefile              |   2 +-
 drivers/net/ethernet/ti/icssm/icssm_ethtool.c | 203 ++++++++++++++++++
 drivers/net/ethernet/ti/icssm/icssm_prueth.c  |  31 +++
 drivers/net/ethernet/ti/icssm/icssm_prueth.h  | 127 +++++++++++
 4 files changed, 362 insertions(+), 1 deletion(-)
 create mode 100644 drivers/net/ethernet/ti/icssm/icssm_ethtool.c

diff --git a/drivers/net/ethernet/ti/Makefile b/drivers/net/ethernet/ti/Makefile
index 93c0a4d0e33a..f21dd11118ab 100644
--- a/drivers/net/ethernet/ti/Makefile
+++ b/drivers/net/ethernet/ti/Makefile
@@ -4,7 +4,7 @@
 #
 
 obj-$(CONFIG_TI_PRUETH) += icssm-prueth.o
-icssm-prueth-y := icssm/icssm_prueth.o
+icssm-prueth-y := icssm/icssm_prueth.o icssm/icssm_ethtool.o
 
 obj-$(CONFIG_TI_CPSW) += cpsw-common.o
 obj-$(CONFIG_TI_DAVINCI_EMAC) += cpsw-common.o
diff --git a/drivers/net/ethernet/ti/icssm/icssm_ethtool.c b/drivers/net/ethernet/ti/icssm/icssm_ethtool.c
new file mode 100644
index 000000000000..cce3276d5565
--- /dev/null
+++ b/drivers/net/ethernet/ti/icssm/icssm_ethtool.c
@@ -0,0 +1,203 @@
+// SPDX-License-Identifier: GPL-2.0
+/* Texas Instruments ICSSM Ethernet Driver
+ *
+ * Copyright (C) 2018-2022 Texas Instruments Incorporated - https://www.ti.com/
+ *
+ */
+
+#include <linux/if_bridge.h>
+#include "icssm_prueth.h"
+
+#define PRUETH_MODULE_VERSION "0.2"
+#define PRUETH_MODULE_DESCRIPTION "PRUSS Ethernet driver"
+
+/* set PRU firmware statistics */
+void icssm_emac_set_stats(struct prueth_emac *emac,
+			  struct port_statistics *pstats)
+{
+	void __iomem *dram;
+
+	dram = emac->prueth->mem[emac->dram].va;
+	memcpy_toio(dram + STATISTICS_OFFSET, pstats, STAT_SIZE);
+}
+
+/* get statistics maintained by the PRU firmware into @pstats */
+void icssm_emac_get_stats(struct prueth_emac *emac,
+			  struct port_statistics *pstats)
+{
+	void __iomem *dram;
+
+	dram = emac->prueth->mem[emac->dram].va;
+	memcpy_fromio(pstats, dram + STATISTICS_OFFSET, STAT_SIZE);
+}
+
+/**
+ * icssm_emac_get_drvinfo - Get EMAC driver information
+ * @ndev: The network adapter
+ * @info: ethtool info structure containing name and version
+ *
+ * Returns EMAC driver information (name and version)
+ */
+static void icssm_emac_get_drvinfo(struct net_device *ndev,
+				   struct ethtool_drvinfo *info)
+{
+	strscpy(info->driver, PRUETH_MODULE_DESCRIPTION, sizeof(info->driver));
+	strscpy(info->version, PRUETH_MODULE_VERSION, sizeof(info->version));
+}
+
+/**
+ * icssm_emac_get_link_ksettings - Get EMAC settings
+ * @ndev: The network adapter
+ * @ecmd: ethtool command
+ *
+ * Executes ethool get command
+ *
+ * Return: 0 (Success)
+ */
+static int icssm_emac_get_link_ksettings(struct net_device *ndev,
+					 struct ethtool_link_ksettings *ecmd)
+{
+	return phy_ethtool_get_link_ksettings(ndev, ecmd);
+}
+
+/**
+ * icssm_emac_set_link_ksettings - Set EMAC settings
+ * @ndev: The EMAC network adapter
+ * @ecmd: ethtool command
+ *
+ * Executes ethool set command
+ *
+ * Return: 0 (Success)
+ */
+static int
+icssm_emac_set_link_ksettings(struct net_device *ndev,
+			      const struct ethtool_link_ksettings *ecmd)
+{
+	return phy_ethtool_set_link_ksettings(ndev, ecmd);
+}
+
+#define PRUETH_STAT_OFFSET(m) offsetof(struct port_statistics, m)
+
+static const struct {
+	char string[ETH_GSTRING_LEN];
+	u32 offset;
+} prueth_ethtool_stats[] = {
+	{"txBcast", PRUETH_STAT_OFFSET(tx_bcast)},
+	{"txMcast", PRUETH_STAT_OFFSET(tx_mcast)},
+	{"txUcast", PRUETH_STAT_OFFSET(tx_ucast)},
+	{"txOctets", PRUETH_STAT_OFFSET(tx_octets)},
+	{"rxBcast", PRUETH_STAT_OFFSET(rx_bcast)},
+	{"rxMcast", PRUETH_STAT_OFFSET(rx_mcast)},
+	{"rxUcast", PRUETH_STAT_OFFSET(rx_ucast)},
+	{"rxOctets", PRUETH_STAT_OFFSET(rx_octets)},
+
+	{"tx64byte", PRUETH_STAT_OFFSET(tx64byte)},
+	{"tx65_127byte", PRUETH_STAT_OFFSET(tx65_127byte)},
+	{"tx128_255byte", PRUETH_STAT_OFFSET(tx128_255byte)},
+	{"tx256_511byte", PRUETH_STAT_OFFSET(tx256_511byte)},
+	{"tx512_1023byte", PRUETH_STAT_OFFSET(tx512_1023byte)},
+	{"tx1024byte", PRUETH_STAT_OFFSET(tx1024byte)},
+	{"rx64byte", PRUETH_STAT_OFFSET(rx64byte)},
+	{"rx65_127byte", PRUETH_STAT_OFFSET(rx65_127byte)},
+	{"rx128_255byte", PRUETH_STAT_OFFSET(rx128_255byte)},
+	{"rx256_511byte", PRUETH_STAT_OFFSET(rx256_511byte)},
+	{"rx512_1023byte", PRUETH_STAT_OFFSET(rx512_1023byte)},
+	{"rx1024byte", PRUETH_STAT_OFFSET(rx1024byte)},
+
+	{"lateColl", PRUETH_STAT_OFFSET(late_coll)},
+	{"singleColl", PRUETH_STAT_OFFSET(single_coll)},
+	{"multiColl", PRUETH_STAT_OFFSET(multi_coll)},
+	{"excessColl", PRUETH_STAT_OFFSET(excess_coll)},
+
+	{"rxMisAlignmentFrames", PRUETH_STAT_OFFSET(rx_misalignment_frames)},
+	{"stormPrevCounterBC", PRUETH_STAT_OFFSET(stormprev_counter_bc)},
+	{"stormPrevCounterMC", PRUETH_STAT_OFFSET(stormprev_counter_mc)},
+	{"stormPrevCounterUC", PRUETH_STAT_OFFSET(stormprev_counter_uc)},
+	{"macRxError", PRUETH_STAT_OFFSET(mac_rxerror)},
+	{"SFDError", PRUETH_STAT_OFFSET(sfd_error)},
+	{"defTx", PRUETH_STAT_OFFSET(def_tx)},
+	{"macTxError", PRUETH_STAT_OFFSET(mac_txerror)},
+	{"rxOverSizedFrames", PRUETH_STAT_OFFSET(rx_oversized_frames)},
+	{"rxUnderSizedFrames", PRUETH_STAT_OFFSET(rx_undersized_frames)},
+	{"rxCRCFrames", PRUETH_STAT_OFFSET(rx_crc_frames)},
+	{"droppedPackets", PRUETH_STAT_OFFSET(dropped_packets)},
+
+	{"txHWQOverFlow", PRUETH_STAT_OFFSET(tx_hwq_overflow)},
+	{"txHWQUnderFlow", PRUETH_STAT_OFFSET(tx_hwq_underflow)},
+	{"vlanDropped", PRUETH_STAT_OFFSET(vlan_dropped)},
+	{"multicastDropped", PRUETH_STAT_OFFSET(multicast_dropped)},
+};
+
+static int icssm_emac_get_sset_count(struct net_device *ndev, int stringset)
+{
+	int a_size;
+
+	switch (stringset) {
+	case ETH_SS_STATS:
+		a_size = ARRAY_SIZE(prueth_ethtool_stats);
+
+		return a_size;
+	default:
+		return -EOPNOTSUPP;
+	}
+}
+
+static void icssm_emac_get_strings(struct net_device *ndev, u32 stringset,
+				   u8 *data)
+{
+	u8 *p = data;
+	int i;
+
+	switch (stringset) {
+	case ETH_SS_STATS:
+		for (i = 0; i < ARRAY_SIZE(prueth_ethtool_stats); i++) {
+			memcpy(p, prueth_ethtool_stats[i].string,
+			       ETH_GSTRING_LEN);
+			p += ETH_GSTRING_LEN;
+		}
+		break;
+	default:
+		break;
+	}
+}
+
+static void icssm_emac_get_ethtool_stats(struct net_device *ndev,
+					 struct ethtool_stats *stats, u64 *data)
+{
+	struct prueth_emac *emac = netdev_priv(ndev);
+	struct port_statistics pstats;
+	void *ptr;
+	u32 val;
+	int i;
+
+	icssm_emac_get_stats(emac, &pstats);
+
+	for (i = 0; i < ARRAY_SIZE(prueth_ethtool_stats); i++) {
+		ptr = &pstats;
+		ptr += prueth_ethtool_stats[i].offset;
+		val = *(u32 *)ptr;
+		data[i] = val;
+	}
+}
+
+static void icssm_emac_get_regs(struct net_device *ndev,
+				struct ethtool_regs *regs, void *p)
+{
+	struct prueth_emac *emac = netdev_priv(ndev);
+	struct prueth *prueth = emac->prueth;
+
+	regs->version = PRUETH_REG_DUMP_GET_VER(prueth);
+}
+
+/* Ethtool support for EMAC adapter */
+const struct ethtool_ops emac_ethtool_ops = {
+	.get_drvinfo = icssm_emac_get_drvinfo,
+	.get_link_ksettings = icssm_emac_get_link_ksettings,
+	.set_link_ksettings = icssm_emac_set_link_ksettings,
+	.get_link = ethtool_op_get_link,
+	.get_sset_count = icssm_emac_get_sset_count,
+	.get_strings = icssm_emac_get_strings,
+	.get_ethtool_stats = icssm_emac_get_ethtool_stats,
+	.get_regs = icssm_emac_get_regs,
+};
+EXPORT_SYMBOL_GPL(emac_ethtool_ops);
diff --git a/drivers/net/ethernet/ti/icssm/icssm_prueth.c b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
index 0ba1d16a7a15..35dd91c71caa 100644
--- a/drivers/net/ethernet/ti/icssm/icssm_prueth.c
+++ b/drivers/net/ethernet/ti/icssm/icssm_prueth.c
@@ -880,6 +880,8 @@ static int icssm_emac_ndo_open(struct net_device *ndev)
 
 	icssm_prueth_emac_config(emac);
 
+	icssm_emac_set_stats(emac, &emac->stats);
+
 	ret = icssm_emac_set_boot_pru(emac, ndev);
 	if (ret)
 		netdev_err(ndev, "failed to boot PRU: %d\n", ret);
@@ -931,6 +933,8 @@ static int icssm_emac_ndo_stop(struct net_device *ndev)
 	/* stop the PRU */
 	rproc_shutdown(emac->pru);
 
+	icssm_emac_get_stats(emac, &emac->stats);
+
 	/* free rx and tx interrupts */
 	if (emac->tx_irq > 0)
 		free_irq(emac->tx_irq, ndev);
@@ -1030,10 +1034,36 @@ static int icssm_emac_ndo_start_xmit(struct sk_buff *skb,
 	return ret;
 }
 
+/**
+ * icssm_emac_ndo_get_stats - EMAC get statistics function
+ * @ndev: The EMAC network adapter
+ *
+ * Called when system wants to get statistics from the device.
+ *
+ * We return the statistics in net_device_stats structure pulled from emac
+ *
+ * Return: stats
+ */
+static struct net_device_stats
+*icssm_emac_ndo_get_stats(struct net_device *ndev)
+{
+	struct net_device_stats *stats = &ndev->stats;
+	struct prueth_emac *emac = netdev_priv(ndev);
+	struct port_statistics pstats;
+
+	icssm_emac_get_stats(emac, &pstats);
+	stats->collisions = pstats.late_coll + pstats.single_coll +
+			    pstats.multi_coll + pstats.excess_coll;
+	stats->multicast = pstats.rx_mcast;
+
+	return stats;
+}
+
 static const struct net_device_ops emac_netdev_ops = {
 	.ndo_open = icssm_emac_ndo_open,
 	.ndo_stop = icssm_emac_ndo_stop,
 	.ndo_start_xmit = icssm_emac_ndo_start_xmit,
+	.ndo_get_stats = icssm_emac_ndo_get_stats,
 };
 
 /* get emac_port corresponding to eth_node name */
@@ -1167,6 +1197,7 @@ static int icssm_prueth_netdev_init(struct prueth *prueth,
 	phy_remove_link_mode(emac->phydev, ETHTOOL_LINK_MODE_Asym_Pause_BIT);
 
 	ndev->netdev_ops = &emac_netdev_ops;
+	ndev->ethtool_ops = &emac_ethtool_ops;
 
 	return 0;
 free:
diff --git a/drivers/net/ethernet/ti/icssm/icssm_prueth.h b/drivers/net/ethernet/ti/icssm/icssm_prueth.h
index 427dc8971d0f..d663a842fc38 100644
--- a/drivers/net/ethernet/ti/icssm/icssm_prueth.h
+++ b/drivers/net/ethernet/ti/icssm/icssm_prueth.h
@@ -27,6 +27,12 @@
 #define EMAC_MAX_FRM_SUPPORT (ETH_HLEN + VLAN_HLEN + ETH_DATA_LEN + \
 			      ICSSM_LRE_TAG_SIZE)
 
+#define PRUETH_REG_DUMP_VER		1
+
+/* Encoding: 32-16: Reserved, 16-8: Reg dump version, 8-0: Ethertype  */
+#define PRUETH_REG_DUMP_GET_VER(x)	((PRUETH_REG_DUMP_VER << 8) | \
+					 ((x)->eth_type))
+
 /* PRU Ethernet Type - Ethernet functionality (protocol
  * implemented) provided by the PRU firmware being loaded.
  */
@@ -108,6 +114,119 @@ struct prueth_packet_info {
 	bool timestamp;
 };
 
+/**
+ * struct port_statistics - Statistics structure for capturing statistics
+ *			    on PRUs
+ * @tx_bcast: Number of broadcast packets sent
+ * @tx_mcast:Number of multicast packets sent
+ * @tx_ucast:Number of unicast packets sent
+ *
+ * @tx_octets:Number of undersized frames rcvd
+ *
+ * @rx_bcast:Number of broadcast packets rcvd
+ * @rx_mcast:Number of multicast packets rcvd
+ * @rx_ucast:Number of unicast packets rcvd
+ *
+ * @rx_octets:Number of Rx packets
+ *
+ * @tx64byte:Number of 64 byte packets sent
+ * @tx65_127byte:Number of 65-127 byte packets sent
+ * @tx128_255byte:Number of 128-255 byte packets sent
+ * @tx256_511byte:Number of 256-511 byte packets sent
+ * @tx512_1023byte:Number of 512-1023 byte packets sent
+ * @tx1024byte:Number of 1024 and larger size packets sent
+ *
+ * @rx64byte:Number of 64 byte packets rcvd
+ * @rx65_127byte:Number of 65-127 byte packets rcvd
+ * @rx128_255byte:Number of 128-255 byte packets rcvd
+ * @rx256_511byte:Number of 256-511 byte packets rcvd
+ * @rx512_1023byte:Number of 512-1023 byte packets rcvd
+ * @rx1024byte:Number of 1024 and larger size packets rcvd
+ *
+ * @late_coll:Number of late collisions(Half Duplex)
+ * @single_coll:Number of single collisions (Half Duplex)
+ * @multi_coll:Number of multiple collisions (Half Duplex)
+ * @excess_coll:Number of excess collisions(Half Duplex)
+ *
+ * @rx_misalignment_frames:Number of non multiple of 8 byte frames rcvd
+ * @stormprev_counter:Number of packets dropped because of Storm Prevention
+ * @mac_rxerror:Number of MAC receive errors
+ * @sfd_error:Number of invalid SFD
+ * @def_tx:Number of transmissions deferred
+ * @mac_txerror:Number of MAC transmit errors
+ * @rx_oversized_frames:Number of oversized frames rcvd
+ * @rx_undersized_frames:Number of undersized frames rcvd
+ * @rx_crc_frames:Number of CRC error frames rcvd
+ * @dropped_packets:Number of packets dropped due to link down on opposite port
+ *
+ * @tx_hwq_overflow:Hardware Tx Queue (on PRU) over flow count
+ * @tx_hwq_underflow:Hardware Tx Queue (on PRU) under flow count
+ *
+ * @u32 cs_error: Number of carrier sense errors
+ * @sqe_test_error: Number of MAC receive errors
+ *
+ * Above fields are aligned so that it's consistent
+ * with the memory layout in PRU DRAM, this is to facilitate easy
+ * memcpy. Don't change the order of the fields.
+ *
+ * @vlan_dropped: Number of VLAN tagged packets dropped
+ * @multicast_dropped: Number of multicast packets dropped
+ */
+struct port_statistics {
+	u32 tx_bcast;
+	u32 tx_mcast;
+	u32 tx_ucast;
+
+	u32 tx_octets;
+
+	u32 rx_bcast;
+	u32 rx_mcast;
+	u32 rx_ucast;
+
+	u32 rx_octets;
+
+	u32 tx64byte;
+	u32 tx65_127byte;
+	u32 tx128_255byte;
+	u32 tx256_511byte;
+	u32 tx512_1023byte;
+	u32 tx1024byte;
+
+	u32 rx64byte;
+	u32 rx65_127byte;
+	u32 rx128_255byte;
+	u32 rx256_511byte;
+	u32 rx512_1023byte;
+	u32 rx1024byte;
+
+	u32 late_coll;
+	u32 single_coll;
+	u32 multi_coll;
+	u32 excess_coll;
+
+	u32 rx_misalignment_frames;
+	u32 stormprev_counter_bc;
+	u32 stormprev_counter_mc;
+	u32 stormprev_counter_uc;
+	u32 mac_rxerror;
+	u32 sfd_error;
+	u32 def_tx;
+	u32 mac_txerror;
+	u32 rx_oversized_frames;
+	u32 rx_undersized_frames;
+	u32 rx_crc_frames;
+	u32 dropped_packets;
+
+	u32 tx_hwq_overflow;
+	u32 tx_hwq_underflow;
+
+	u32 cs_error;
+	u32 sqe_test_error;
+
+	u32 vlan_dropped;
+	u32 multicast_dropped;
+} __packed;
+
 /* In switch mode there are 3 real ports i.e. 3 mac addrs.
  * however Linux sees only the host side port. The other 2 ports
  * are the switch ports.
@@ -194,6 +313,7 @@ struct prueth_emac {
 	struct phy_device *phydev;
 	struct prueth_queue_desc __iomem *rx_queue_descs;
 	struct prueth_queue_desc __iomem *tx_queue_descs;
+	struct port_statistics stats; /* stats holder when i/f is down */
 
 	int link;
 	int speed;
@@ -232,9 +352,16 @@ struct prueth {
 	u8 emac_configured;
 };
 
+extern const struct ethtool_ops emac_ethtool_ops;
+
 void icssm_parse_packet_info(struct prueth *prueth, u32 buffer_descriptor,
 			     struct prueth_packet_info *pkt_info);
 int icssm_emac_rx_packet(struct prueth_emac *emac, u16 *bd_rd_ptr,
 			 struct prueth_packet_info *pkt_info,
 			 const struct prueth_queue_info *rxqueue);
+
+void icssm_emac_set_stats(struct prueth_emac *emac,
+			  struct port_statistics *pstats);
+void icssm_emac_get_stats(struct prueth_emac *emac,
+			  struct port_statistics *pstats);
 #endif /* __NET_TI_PRUETH_H */
-- 
2.34.1


