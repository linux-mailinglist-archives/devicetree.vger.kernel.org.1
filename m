Return-Path: <devicetree+bounces-258334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CO3iGDoLcmksawAAu9opvQ
	(envelope-from <devicetree+bounces-258334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:34:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CA44E66119
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 12:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D8D8D4E17B7
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 11:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB27C42B738;
	Thu, 22 Jan 2026 11:09:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b="aOmXVB/J"
X-Original-To: devicetree@vger.kernel.org
Received: from rtits2.realtek.com.tw (rtits2.realtek.com [211.75.126.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4328B32D45C;
	Thu, 22 Jan 2026 11:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.75.126.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769080158; cv=none; b=T4Y0vBMhlppV7xZrPBpxGyNSqRT9KFz4ocuJTbh2I5iaeIeTg3/2MrgsLQ3sU9I4vC1FRG3Lcw6wiFyywrnn8LL6dWyJT6Svl9+eHczbPhxBbDZWqfXSaBq/y7Q1BsvTWvEa2k+G9dqq0hUx8B5KbdTRGLQDShadJ00fHGQM4BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769080158; c=relaxed/simple;
	bh=UWN3KUh5QJPwDmN/mDTQ/7mSa2zu+dylTwu6JO+CqXo=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ho5OZS1chSqjLMV6GetGC7qX8J4NsaWxFtdruT9otToS2YwAvM4Qrhx//M7Jt5pTMZy5+/EWxD9IXBWLL5RP6fjwBMis91Br9K97aYHfWKTTLZcHFjcwMy3WK+YvDmlq4hRY7X4ipdWW0ru3uECO5lDqm3ZeNaeX70Txon54r/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com; spf=pass smtp.mailfrom=realtek.com; dkim=pass (2048-bit key) header.d=realtek.com header.i=@realtek.com header.b=aOmXVB/J; arc=none smtp.client-ip=211.75.126.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=realtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=realtek.com
X-SpamFilter-By: ArmorX SpamTrap 5.80 with qID 60MB8xbqE913376, This message is accepted by code: ctloc85258
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=realtek.com; s=dkim;
	t=1769080139; bh=2Hr0SVkGdLxP6gyEWjIqZZOW+w18/vvplNsMPRZvYBY=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding:Content-Type;
	b=aOmXVB/Jc41VnnsUKx3M3/7wBPOm3DoyVqoY6lS2vdgvAYQ1dpqpXgCmvPJJcpAKv
	 8ZctugDh+hYS7XUxP9lMy2pNWHzs5lOTRh2sfVWTixo2UbrBd5z7XsCN9g6bNerT4e
	 p/mZqggitxhdryCkiQghf4O6g1uLjXetLb7mnj9LDlJny83/13HxHktI/LW8PGYWUZ
	 tBMMP11Zmigm/B3W1zRUVhEqK96EWdmaG60OIpV2zPPUAK2qPsuhIT9MaJO+4she2C
	 c8WE29xw2iSKUpcC4kA3NdQRSJJhDsEhX+HAur5QNronKnOAy9wgbNNgJs5qr2Ow92
	 J1x/APYbHERZQ==
Received: from mail.realtek.com (rtkexhmbs03.realtek.com.tw[10.21.1.53])
	by rtits2.realtek.com.tw (8.15.2/3.21/5.94) with ESMTPS id 60MB8xbqE913376
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 22 Jan 2026 19:08:59 +0800
Received: from RTKEXHMBS03.realtek.com.tw (10.21.1.53) by
 RTKEXHMBS03.realtek.com.tw (10.21.1.53) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Thu, 22 Jan 2026 19:08:59 +0800
Received: from cn1dhc-k02 (172.21.252.101) by RTKEXHMBS03.realtek.com.tw
 (10.21.1.53) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Thu, 22 Jan 2026 19:08:59 +0800
From: Yu-Chun Lin <eleanor.lin@realtek.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
        <cylee12@realtek.com>, <jyanchou@realtek.com>
CC: <devicetree@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <james.tai@realtek.com>,
        <cy.huang@realtek.com>, <stanley_chang@realtek.com>,
        <eleanor.lin@realtek.com>
Subject: [PATCH v3 5/9] clk: realtek: Add support for gate clock
Date: Thu, 22 Jan 2026 19:08:53 +0800
Message-ID: <20260122110857.12995-6-eleanor.lin@realtek.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260122110857.12995-1-eleanor.lin@realtek.com>
References: <20260122110857.12995-1-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[realtek.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[realtek.com,none];
	TAGGED_FROM(0.00)[bounces-258334-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[realtek.com:+];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCPT_COUNT_TWELVE(0.00)[15];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[eleanor.lin@realtek.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:email,realtek.com:dkim,realtek.com:mid,dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: CA44E66119
X-Rspamd-Action: no action

From: Cheng-Yu Lee <cylee12@realtek.com>

Introduce clk_regmap_gate_ops supporting enable, disable, is_enabled, and
disable_unused for standard regmap gate clocks.

Add clk_regmap_gate_ro_ops as a read-only variant exposing only is_enabled.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Co-developed-by: Yu-Chun Lin <eleanor.lin@realtek.com>
Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
---
Changes in v3:
- Added prefix "rtk_" in operation names to avoid duplicate symbol problem.
---
 drivers/clk/realtek/Makefile          |  2 +
 drivers/clk/realtek/clk-regmap-gate.c | 66 +++++++++++++++++++++++++++
 drivers/clk/realtek/clk-regmap-gate.h | 65 ++++++++++++++++++++++++++
 3 files changed, 133 insertions(+)
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.h

diff --git a/drivers/clk/realtek/Makefile b/drivers/clk/realtek/Makefile
index c173ea3b10e3..97058d48a176 100644
--- a/drivers/clk/realtek/Makefile
+++ b/drivers/clk/realtek/Makefile
@@ -2,6 +2,8 @@
 obj-$(CONFIG_RTK_CLK_COMMON) += clk-rtk.o
 
 clk-rtk-y += common.o
+
 clk-rtk-y += clk-pll.o
+clk-rtk-y += clk-regmap-gate.o
 clk-rtk-y += freq_table.o
 clk-rtk-y += reset.o
diff --git a/drivers/clk/realtek/clk-regmap-gate.c b/drivers/clk/realtek/clk-regmap-gate.c
new file mode 100644
index 000000000000..5174283c2c21
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-gate.c
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#include "clk-regmap-gate.h"
+
+static int clk_regmap_gate_enable(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	unsigned int mask;
+	unsigned int val;
+
+	mask = BIT(clkg->bit_idx);
+	val = BIT(clkg->bit_idx);
+
+	if (clkg->write_en) {
+		mask |= BIT(clkg->bit_idx + 1);
+		val |= BIT(clkg->bit_idx + 1);
+	}
+
+	return regmap_update_bits(clkg->clkr.regmap, clkg->gate_ofs, mask, val);
+}
+
+static void clk_regmap_gate_disable(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	unsigned int mask;
+	unsigned int val;
+
+	mask = BIT(clkg->bit_idx);
+	val = 0;
+
+	if (clkg->write_en) {
+		mask |= BIT(clkg->bit_idx + 1);
+		val |= BIT(clkg->bit_idx + 1);
+	}
+
+	regmap_update_bits(clkg->clkr.regmap, clkg->gate_ofs, mask, val);
+}
+
+static int clk_regmap_gate_is_enabled(struct clk_hw *hw)
+{
+	struct clk_regmap_gate *clkg = to_clk_regmap_gate(hw);
+	int ret;
+	u32 val;
+
+	ret = regmap_read(clkg->clkr.regmap, clkg->gate_ofs, &val);
+	if (ret < 0)
+		return ret;
+
+	return !!(val & BIT(clkg->bit_idx));
+}
+
+const struct clk_ops rtk_clk_regmap_gate_ops = {
+	.enable     = clk_regmap_gate_enable,
+	.disable    = clk_regmap_gate_disable,
+	.is_enabled = clk_regmap_gate_is_enabled,
+};
+EXPORT_SYMBOL_GPL(rtk_clk_regmap_gate_ops);
+
+const struct clk_ops rtk_clk_regmap_gate_ro_ops = {
+	.is_enabled = clk_regmap_gate_is_enabled,
+};
+EXPORT_SYMBOL_GPL(rtk_clk_regmap_gate_ro_ops);
diff --git a/drivers/clk/realtek/clk-regmap-gate.h b/drivers/clk/realtek/clk-regmap-gate.h
new file mode 100644
index 000000000000..b93357bd5a0d
--- /dev/null
+++ b/drivers/clk/realtek/clk-regmap-gate.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2017 Realtek Semiconductor Corporation
+ * Author: Cheng-Yu Lee <cylee12@realtek.com>
+ */
+
+#ifndef __CLK_REALTEK_CLK_REGMAP_GATE_H
+#define __CLK_REALTEK_CLK_REGMAP_GATE_H
+
+#include "common.h"
+
+struct clk_regmap_gate {
+	struct clk_regmap clkr;
+	int gate_ofs;
+	u8 bit_idx;
+	u32 write_en : 1;
+};
+
+#define __clk_regmap_gate_hw(_p) __clk_regmap_hw(&(_p)->clkr)
+
+#define __CLK_REGMAP_GATE(_name, _parent, _ops, _flags, _ofs, _bit_idx,     \
+			  _write_en)                                        \
+	struct clk_regmap_gate _name = {                                    \
+		.clkr.hw.init = CLK_HW_INIT(#_name, _parent, _ops, _flags), \
+		.gate_ofs = _ofs,                                           \
+		.bit_idx = _bit_idx,                                        \
+		.write_en = _write_en,                                      \
+	}
+
+#define CLK_REGMAP_GATE(_name, _parent, _flags, _ofs, _bit_idx, _write_en)    \
+	__CLK_REGMAP_GATE(_name, _parent, &rtk_clk_regmap_gate_ops, _flags, _ofs, \
+			  _bit_idx, _write_en)
+
+#define CLK_REGMAP_GATE_RO(_name, _parent, _flags, _ofs, _bit_idx, _write_en) \
+	__CLK_REGMAP_GATE(_name, _parent, &rtk_clk_regmap_gate_ro_ops, _flags,    \
+			  _ofs, _bit_idx, _write_en)
+
+#define __CLK_REGMAP_GATE_NO_PARENT(_name, _ops, _flags, _ofs, _bit_idx,     \
+				    _write_en)                               \
+	struct clk_regmap_gate _name = {                                     \
+		.clkr.hw.init = CLK_HW_INIT_NO_PARENT(#_name, _ops, _flags), \
+		.gate_ofs = _ofs,                                            \
+		.bit_idx = _bit_idx,                                         \
+		.write_en = _write_en,                                       \
+	}
+
+#define CLK_REGMAP_GATE_NO_PARENT(_name, _flags, _ofs, _bit_idx, _write_en)    \
+	__CLK_REGMAP_GATE_NO_PARENT(_name, &rtk_clk_regmap_gate_ops, _flags, _ofs, \
+				    _bit_idx, _write_en)
+
+#define CLK_REGMAP_GATE_NO_PARENT_RO(_name, _flags, _ofs, _bit_idx, _write_en) \
+	__CLK_REGMAP_GATE_NO_PARENT(_name, &rtk_clk_regmap_gate_ro_ops, _flags,    \
+				    _ofs, _bit_idx, _write_en)
+
+static inline struct clk_regmap_gate *to_clk_regmap_gate(struct clk_hw *hw)
+{
+	struct clk_regmap *clkr = to_clk_regmap(hw);
+
+	return container_of(clkr, struct clk_regmap_gate, clkr);
+}
+
+extern const struct clk_ops rtk_clk_regmap_gate_ops;
+extern const struct clk_ops rtk_clk_regmap_gate_ro_ops;
+
+#endif /* __CLK_REALTEK_CLK_REGMAP_GATE_H */
-- 
2.34.1


