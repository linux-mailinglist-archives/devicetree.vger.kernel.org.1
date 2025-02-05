Return-Path: <devicetree+bounces-143393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54110A298D3
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 19:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C38C53A9F15
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 18:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB0B1FFC4B;
	Wed,  5 Feb 2025 18:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBUEWd3U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA1521FDE02;
	Wed,  5 Feb 2025 18:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738779759; cv=none; b=pAdGS42AEkfXFBG/3nU3enVtqPoblgU0ej9NV36HD0Ivfq0dnIM94zQvAOe2G4UD33UBxeHdKSC9+o15vGGvrgGOWxGWrMYw0RheM7vc7UOvS+9b40D9Wt2wGs1H7vo5cOUusU+91DJDfNXBqSEJcXFLSlE+5LDEFPOBbzV8d1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738779759; c=relaxed/simple;
	bh=vq1yg8bBwcHYIQZdoIwbIlxcXj/zSlKnkeYluYCBJ54=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XH79NJysdH1PMeFgo1WvmWqnv/btBgbsjjF8IWqMU90mJ9klnFZQtUDZ5+E3J/+eFHUgZkr5Be+As2cqiVaIpPkdCEuQ1Xy8bqaSSrl1vonehOJGVDKoFf1ZKNiYEEMEY01EEq1RCT6OtzCo6a2J2bqr9Wk7CrNazQRCThd2MM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBUEWd3U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE7A6C4CEDD;
	Wed,  5 Feb 2025 18:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738779758;
	bh=vq1yg8bBwcHYIQZdoIwbIlxcXj/zSlKnkeYluYCBJ54=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=gBUEWd3Usl5t/QpQMl8FC+mB7+aSdL4UxeO9H8U6lZc75+2MiS11eg8oQ9mJ6bmO6
	 N937eqez/eFyB5iFdFLaU0hDF3GzdVR2Z9Mruj9CE8SM6L8KJvzqZxwiWuFSIETtQC
	 ka/xvuGFPs8TrcoakVQ/iI1e44DuxmT25r3qOqHsC/IR89sESeQmJPyJfpRRMp8W+L
	 Eksf8WBqL+eYpjF8q276VnDhvHrVewEyi+EY3OCSx5NUwhiFq926fNA9ahvt6zX+cL
	 eAY03IKY5M7ZnPBRmiMEfZjTuycI6V+umYbf7OUpsuS8N9AE1NrsonJq1Puw3BiaQ2
	 2Nw6L19jghzqw==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 05 Feb 2025 19:21:32 +0100
Subject: [PATCH net-next 13/13] net: airoha: Introduce PPE debugfs support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-airoha-en7581-flowtable-offload-v1-13-d362cfa97b01@kernel.org>
References: <20250205-airoha-en7581-flowtable-offload-v1-0-d362cfa97b01@kernel.org>
In-Reply-To: <20250205-airoha-en7581-flowtable-offload-v1-0-d362cfa97b01@kernel.org>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Felix Fietkau <nbd@nbd.name>, Sean Wang <sean.wang@mediatek.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lorenzo Bianconi <lorenzo@kernel.org>
Cc: netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 upstream@airoha.com
X-Mailer: b4 0.14.2

Similar to PPE support for Mediatek devices, introduce PPE debugfs
in order to dump binded and unbinded flows.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/ethernet/airoha/Makefile             |   1 +
 drivers/net/ethernet/airoha/airoha_eth.h         |  12 ++
 drivers/net/ethernet/airoha/airoha_ppe.c         |   5 +
 drivers/net/ethernet/airoha/airoha_ppe_debugfs.c | 175 +++++++++++++++++++++++
 4 files changed, 193 insertions(+)

diff --git a/drivers/net/ethernet/airoha/Makefile b/drivers/net/ethernet/airoha/Makefile
index 50028cfc3e3e04efbdd353b1bd65f46b488637d8..e5321effdbeaeaf7c4ad3c6df9d0261fe12fdd12 100644
--- a/drivers/net/ethernet/airoha/Makefile
+++ b/drivers/net/ethernet/airoha/Makefile
@@ -5,4 +5,5 @@
 
 obj-$(CONFIG_NET_AIROHA) += airoha-eth.o
 airoha-eth-y := airoha_eth.o airoha_ppe.o
+airoha-eth-$(CONFIG_DEBUG_FS) += airoha_ppe_debugfs.o
 airoha-eth-$(CONFIG_NET_AIROHA_NPU) += airoha_npu.o
diff --git a/drivers/net/ethernet/airoha/airoha_eth.h b/drivers/net/ethernet/airoha/airoha_eth.h
index 20e870a5c20091f0bb572f87f111c660b2075c32..b5002b333f9c907e298c5e95c530ba8318a292db 100644
--- a/drivers/net/ethernet/airoha/airoha_eth.h
+++ b/drivers/net/ethernet/airoha/airoha_eth.h
@@ -7,6 +7,7 @@
 #ifndef AIROHA_ETH_H
 #define AIROHA_ETH_H
 
+#include <linux/debugfs.h>
 #include <linux/etherdevice.h>
 #include <linux/iopoll.h>
 #include <linux/kernel.h>
@@ -501,6 +502,8 @@ struct airoha_ppe {
 
 	struct hlist_head *foe_flow;
 	u16 foe_check_time[PPE_NUM_ENTRIES];
+
+	struct dentry *debugfs_dir;
 };
 
 struct airoha_eth {
@@ -610,4 +613,13 @@ static inline int airoha_npu_foe_commit_entry(struct airoha_ppe *ppe,
 }
 #endif /* CONFIG_NET_AIROHA_NPU */
 
+#if CONFIG_DEBUG_FS
+int airoha_ppe_debugfs_init(struct airoha_ppe *ppe);
+#else
+static inline int airoha_ppe_debugfs_init(struct airoha_ppe *ppe)
+{
+	return 0;
+}
+#endif
+
 #endif /* AIROHA_ETH_H */
diff --git a/drivers/net/ethernet/airoha/airoha_ppe.c b/drivers/net/ethernet/airoha/airoha_ppe.c
index 00bf30d102ee868ab51d72e09a013adf8d6e1fad..4a0e7e7a7d8cd9a1e7e43bc60588eace31659b14 100644
--- a/drivers/net/ethernet/airoha/airoha_ppe.c
+++ b/drivers/net/ethernet/airoha/airoha_ppe.c
@@ -787,6 +787,10 @@ int airoha_ppe_init(struct airoha_eth *eth)
 	if (err)
 		goto error_npu_deinit;
 
+	err = airoha_ppe_debugfs_init(ppe);
+	if (err)
+		goto error_npu_deinit;
+
 	return 0;
 
 error_npu_deinit:
@@ -804,4 +808,5 @@ void airoha_ppe_deinit(struct airoha_eth *eth)
 		airoha_npu_deinit(eth->npu);
 	}
 	rhashtable_destroy(&eth->flow_table);
+	debugfs_remove(eth->ppe->debugfs_dir);
 }
diff --git a/drivers/net/ethernet/airoha/airoha_ppe_debugfs.c b/drivers/net/ethernet/airoha/airoha_ppe_debugfs.c
new file mode 100644
index 0000000000000000000000000000000000000000..f79788458903c93ca73d774edaca97f1e08f92a7
--- /dev/null
+++ b/drivers/net/ethernet/airoha/airoha_ppe_debugfs.c
@@ -0,0 +1,175 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2025 AIROHA Inc
+ * Author: Lorenzo Bianconi <lorenzo@kernel.org>
+ */
+
+#include "airoha_eth.h"
+
+static void airoha_debugfs_ppe_print_tuple(struct seq_file *m,
+					   void *src_addr, void *dest_addr,
+					   u16 *src_port, u16 *dest_port,
+					   bool ipv6)
+{
+	__be32 n_addr[IPV6_ADDR_WORDS];
+
+	if (ipv6) {
+		ipv6_addr_cpu_to_be32(n_addr, src_addr);
+		seq_printf(m, "%pI6", n_addr);
+	} else {
+		seq_printf(m, "%pI4h", src_addr);
+	}
+	if (src_port)
+		seq_printf(m, ":%d", *src_port);
+
+	seq_puts(m, "->");
+
+	if (ipv6) {
+		ipv6_addr_cpu_to_be32(n_addr, dest_addr);
+		seq_printf(m, "%pI6", n_addr);
+	} else {
+		seq_printf(m, "%pI4h", dest_addr);
+	}
+	if (dest_port)
+		seq_printf(m, ":%d", *dest_port);
+}
+
+static int airoha_ppe_debugfs_foe_show(struct seq_file *m, void *private,
+				       bool bind)
+{
+	static const char *const ppe_type_str[] = {
+		[PPE_PKT_TYPE_IPV4_HNAPT] = "IPv4 5T",
+		[PPE_PKT_TYPE_IPV4_ROUTE] = "IPv4 3T",
+		[PPE_PKT_TYPE_BRIDGE] = "L2B",
+		[PPE_PKT_TYPE_IPV4_DSLITE] = "DS-LITE",
+		[PPE_PKT_TYPE_IPV6_ROUTE_3T] = "IPv6 3T",
+		[PPE_PKT_TYPE_IPV6_ROUTE_5T] = "IPv6 5T",
+		[PPE_PKT_TYPE_IPV6_6RD] = "6RD",
+	};
+	static const char *const ppe_state_str[] = {
+		[AIROHA_FOE_STATE_INVALID] = "INV",
+		[AIROHA_FOE_STATE_UNBIND] = "UNB",
+		[AIROHA_FOE_STATE_BIND] = "BND",
+		[AIROHA_FOE_STATE_FIN] = "FIN",
+	};
+	struct airoha_ppe *ppe = m->private;
+	int i;
+
+	for (i = 0; i < PPE_NUM_ENTRIES; i++) {
+		const char *state_str, *type_str = "UNKNOWN";
+		u16 *src_port = NULL, *dest_port = NULL;
+		struct airoha_foe_mac_info_common *l2;
+		unsigned char h_source[ETH_ALEN] = {};
+		unsigned char h_dest[ETH_ALEN];
+		struct airoha_foe_entry *hwe;
+		u32 type, state, ib2, data;
+		void *src_addr, *dest_addr;
+		bool ipv6 = false;
+
+		hwe = airoha_ppe_foe_get_entry(ppe, i);
+		if (!hwe)
+			continue;
+
+		state = FIELD_GET(AIROHA_FOE_IB1_STATE, hwe->ib1);
+		if (!state)
+			continue;
+
+		if (bind && state != AIROHA_FOE_STATE_BIND)
+			continue;
+
+		state_str = ppe_state_str[state % ARRAY_SIZE(ppe_state_str)];
+		type = FIELD_GET(AIROHA_FOE_IB1_PACKET_TYPE, hwe->ib1);
+		if (type < ARRAY_SIZE(ppe_type_str) && ppe_type_str[type])
+			type_str = ppe_type_str[type];
+
+		seq_printf(m, "%05x %s %7s", i, state_str, type_str);
+
+		switch (type) {
+		case PPE_PKT_TYPE_IPV4_HNAPT:
+		case PPE_PKT_TYPE_IPV4_DSLITE:
+			src_port = &hwe->ipv4.orig_tuple.src_port;
+			dest_port = &hwe->ipv4.orig_tuple.dest_port;
+			fallthrough;
+		case PPE_PKT_TYPE_IPV4_ROUTE:
+			src_addr = &hwe->ipv4.orig_tuple.src_ip;
+			dest_addr = &hwe->ipv4.orig_tuple.dest_ip;
+			break;
+		case PPE_PKT_TYPE_IPV6_ROUTE_5T:
+			src_port = &hwe->ipv6.src_port;
+			dest_port = &hwe->ipv6.dest_port;
+			fallthrough;
+		case PPE_PKT_TYPE_IPV6_ROUTE_3T:
+		case PPE_PKT_TYPE_IPV6_6RD:
+			src_addr = &hwe->ipv6.src_ip;
+			dest_addr = &hwe->ipv6.dest_ip;
+			ipv6 = true;
+			break;
+		}
+
+		seq_puts(m, " orig=");
+		airoha_debugfs_ppe_print_tuple(m, src_addr, dest_addr,
+					       src_port, dest_port, ipv6);
+
+		switch (type) {
+		case PPE_PKT_TYPE_IPV4_HNAPT:
+		case PPE_PKT_TYPE_IPV4_DSLITE:
+			src_port = &hwe->ipv4.new_tuple.src_port;
+			dest_port = &hwe->ipv4.new_tuple.dest_port;
+			fallthrough;
+		case PPE_PKT_TYPE_IPV4_ROUTE:
+			src_addr = &hwe->ipv4.new_tuple.src_ip;
+			dest_addr = &hwe->ipv4.new_tuple.dest_ip;
+			seq_puts(m, " new=");
+			airoha_debugfs_ppe_print_tuple(m, src_addr, dest_addr,
+						       src_port, dest_port,
+						       ipv6);
+			break;
+		}
+
+		if (type >= PPE_PKT_TYPE_IPV6_ROUTE_3T) {
+			data = hwe->ipv6.data;
+			ib2 = hwe->ipv6.ib2;
+			l2 = &hwe->ipv6.l2;
+		} else {
+			data = hwe->ipv4.data;
+			ib2 = hwe->ipv4.ib2;
+			l2 = &hwe->ipv4.l2.common;
+			*((__be16 *)&h_source[4]) =
+				cpu_to_be16(hwe->ipv4.l2.src_mac_lo);
+		}
+
+		*((__be32 *)h_dest) = cpu_to_be32(l2->dest_mac_hi);
+		*((__be16 *)&h_dest[4]) = cpu_to_be16(l2->dest_mac_lo);
+		*((__be32 *)h_source) = cpu_to_be32(l2->src_mac_hi);
+
+		seq_printf(m, " eth=%pM->%pM etype=%04x data=%08x"
+			      " vlan=%d,%d ib1=%08x ib2=%08x\n",
+			   h_source, h_dest, l2->etype, data,
+			   l2->vlan1, l2->vlan2, hwe->ib1, ib2);
+	}
+
+	return 0;
+}
+
+static int airoha_ppe_debugfs_foe_all_show(struct seq_file *m, void *private)
+{
+	return airoha_ppe_debugfs_foe_show(m, private, false);
+}
+DEFINE_SHOW_ATTRIBUTE(airoha_ppe_debugfs_foe_all);
+
+static int airoha_ppe_debugfs_foe_bind_show(struct seq_file *m, void *private)
+{
+	return airoha_ppe_debugfs_foe_show(m, private, true);
+}
+DEFINE_SHOW_ATTRIBUTE(airoha_ppe_debugfs_foe_bind);
+
+int airoha_ppe_debugfs_init(struct airoha_ppe *ppe)
+{
+	ppe->debugfs_dir = debugfs_create_dir("ppe", NULL);
+	debugfs_create_file("entries", 0444, ppe->debugfs_dir, ppe,
+			    &airoha_ppe_debugfs_foe_all_fops);
+	debugfs_create_file("bind", 0444, ppe->debugfs_dir, ppe,
+			    &airoha_ppe_debugfs_foe_bind_fops);
+
+	return 0;
+}

-- 
2.48.1


