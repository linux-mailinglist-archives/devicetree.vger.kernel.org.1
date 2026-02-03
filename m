Return-Path: <devicetree+bounces-262030-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AGEVINtxgWl9GQMAu9opvQ
	(envelope-from <devicetree+bounces-262030-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:56:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EACB5D43F5
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 04:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADBE13063779
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 03:55:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75F3031D759;
	Tue,  3 Feb 2026 03:55:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07031D735;
	Tue,  3 Feb 2026 03:55:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770090919; cv=none; b=VP1bUUSNb9Dse+xbE4WSv3PqFKhyC1oiG+rjvRA2GEv2dsttBeHc8BDhR4WBblyNJqhkcGWtcuGQOYM4m7RU/o9Fd2qvjRhUBe0tV29ZxCA/voljIgKuHIu3t38M1DxCopEkilH1gE50qz6kvkNIgZpqOCwTpO6a0L7ZL/GstmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770090919; c=relaxed/simple;
	bh=ZauTzfFquNvtx/4RcxN7x1+q8xNLDFsmkSZazio5WzA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=rBURJKSdBS2PC97KaeK4CbcXjLFxRDs9kQq2frGB7swhkyulwK3WxovKzBkoMzy0tD+vpwbbWN0PLJreqxMw3w1OxVzymS4bO4uWPoat0biquUEKRRRI/gsn7abFZ5s71YamhzLevjF3ZjwIYqhFmI5XTJIILziCVuRUE3nSJtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 3 Feb
 2026 11:55:11 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Tue, 3 Feb 2026 11:55:11 +0800
From: Jammy Huang <jammy_huang@aspeedtech.com>
Date: Tue, 3 Feb 2026 11:55:09 +0800
Subject: [PATCH 2/2] soc: aspeed: uart-routing: Add AST27xx dual node
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260203-upstream_uart_routing-v1-2-6bd5dd75ee3b@aspeedtech.com>
References: <20260203-upstream_uart_routing-v1-0-6bd5dd75ee3b@aspeedtech.com>
In-Reply-To: <20260203-upstream_uart_routing-v1-0-6bd5dd75ee3b@aspeedtech.com>
To: Joel Stanley <joel@jms.id.au>, Andrew Jeffery
	<andrew@codeconstruct.com.au>, Rob Herring <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "Oskar
 Senft" <osk@google.com>, Chia-Wei Wang <chiawei_wang@aspeedtech.com>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>, Jammy Huang
	<jammy_huang@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1770090911; l=12415;
 i=jammy_huang@aspeedtech.com; s=20251124; h=from:subject:message-id;
 bh=C+gKHTXPGEeSoSOHR1iwE6giVzW3rWmmmHtDD/QYRfU=;
 b=fZlFakSoNkWt98SJsU/kor2vLlCtWPDjRhDRsuZ0UkZIDIg9I/UzrLDx/WWAIVs7xDPa/K+ST
 Db8fOKbX5i+BykSeIS6I9iVQ64Yh8PcN4369URfifXi6ScstLnQCa4v
X-Developer-Key: i=jammy_huang@aspeedtech.com; a=ed25519;
 pk=E5YwijeJZZcuDR6srvwNlXrNHvLxwipUg3Mb/xxUF9o=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-262030-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jammy_huang@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:mid,aspeedtech.com:email]
X-Rspamd-Queue-Id: EACB5D43F5
X-Rspamd-Action: no action

From: Chia-Wei Wang <chiawei_wang@aspeedtech.com>

Add dual node support for AST27xx SoCs.

Signed-off-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>
Signed-off-by: Jammy Huang <jammy_huang@aspeedtech.com>
---
 drivers/soc/aspeed/aspeed-uart-routing.c | 424 +++++++++++++++++++++++++++++++
 1 file changed, 424 insertions(+)

diff --git a/drivers/soc/aspeed/aspeed-uart-routing.c b/drivers/soc/aspeed/aspeed-uart-routing.c
index 0191e36e66..9b648f5a1b 100644
--- a/drivers/soc/aspeed/aspeed-uart-routing.c
+++ b/drivers/soc/aspeed/aspeed-uart-routing.c
@@ -15,20 +15,30 @@
 #define HICRA	0x9c
 
 /* attributes options */
+#define UART_ROUTING_IO0	"io0"
 #define UART_ROUTING_IO1	"io1"
 #define UART_ROUTING_IO2	"io2"
 #define UART_ROUTING_IO3	"io3"
 #define UART_ROUTING_IO4	"io4"
 #define UART_ROUTING_IO5	"io5"
 #define UART_ROUTING_IO6	"io6"
+#define UART_ROUTING_IO7	"io7"
+#define UART_ROUTING_IO8	"io8"
+#define UART_ROUTING_IO9	"io9"
 #define UART_ROUTING_IO10	"io10"
+#define UART_ROUTING_IO12	"io12"
+#define UART_ROUTING_UART0	"uart0"
 #define UART_ROUTING_UART1	"uart1"
 #define UART_ROUTING_UART2	"uart2"
 #define UART_ROUTING_UART3	"uart3"
 #define UART_ROUTING_UART4	"uart4"
 #define UART_ROUTING_UART5	"uart5"
 #define UART_ROUTING_UART6	"uart6"
+#define UART_ROUTING_UART7	"uart7"
+#define UART_ROUTING_UART8	"uart8"
+#define UART_ROUTING_UART9	"uart9"
 #define UART_ROUTING_UART10	"uart10"
+#define UART_ROUTING_UART12	"uart12"
 #define UART_ROUTING_RES	"reserved"
 
 struct aspeed_uart_routing {
@@ -488,6 +498,416 @@ static const struct attribute_group ast2600_uart_routing_attr_group = {
 	.attrs = ast2600_uart_routing_attrs,
 };
 
+/* routing selector for AST27xx node 0 */
+static struct aspeed_uart_routing_selector ast2700n0_uart9_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART9),
+	.reg = HICR9,
+	.shift = 12,
+	.mask = 0xf,
+	.options = {
+		    UART_ROUTING_IO9,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+			UART_ROUTING_RES,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART12,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_io9_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO9),
+	.reg = HICR9,
+	.shift = 8,
+	.mask = 0xf,
+	.options = {
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART12,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+			UART_ROUTING_RES,
+		    UART_ROUTING_UART9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_uart3_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART3),
+	.reg = HICRA,
+	.shift = 25,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_IO9,
+		    NULL,
+	},
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_uart2_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART2),
+	.reg = HICRA,
+	.shift = 22,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_uart1_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART1),
+	.reg = HICRA,
+	.shift = 19,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_uart0_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART0),
+	.reg = HICRA,
+	.shift = 16,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_io3_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO3),
+	.reg = HICRA,
+	.shift = 9,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART9,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_io2_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO2),
+	.reg = HICRA,
+	.shift = 6,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART9,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_IO0,
+		    UART_ROUTING_IO1,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_io1_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO1),
+	.reg = HICRA,
+	.shift = 3,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART9,
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n0_io0_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO0),
+	.reg = HICRA,
+	.shift = 0,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART0,
+		    UART_ROUTING_UART1,
+		    UART_ROUTING_UART2,
+		    UART_ROUTING_UART3,
+		    UART_ROUTING_UART9,
+		    UART_ROUTING_IO2,
+		    UART_ROUTING_IO3,
+		    UART_ROUTING_IO9,
+		    NULL,
+		    },
+};
+
+static struct attribute *ast2700n0_uart_routing_attrs[] = {
+	&ast2700n0_uart9_sel.dev_attr.attr,
+	&ast2700n0_io9_sel.dev_attr.attr,
+	&ast2700n0_uart3_sel.dev_attr.attr,
+	&ast2700n0_uart2_sel.dev_attr.attr,
+	&ast2700n0_uart1_sel.dev_attr.attr,
+	&ast2700n0_uart0_sel.dev_attr.attr,
+	&ast2700n0_io3_sel.dev_attr.attr,
+	&ast2700n0_io2_sel.dev_attr.attr,
+	&ast2700n0_io1_sel.dev_attr.attr,
+	&ast2700n0_io0_sel.dev_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group ast2700n0_uart_routing_attr_group = {
+	.attrs = ast2700n0_uart_routing_attrs,
+};
+
+/* routing selector for AST27xx node 1 */
+static struct aspeed_uart_routing_selector ast2700n1_uart10_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART10),
+	.reg = HICR9,
+	.shift = 12,
+	.mask = 0xf,
+	.options = {
+		    UART_ROUTING_IO10,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+			UART_ROUTING_RES,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART12,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_io10_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO10),
+	.reg = HICR9,
+	.shift = 8,
+	.mask = 0xf,
+	.options = {
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART12,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+			UART_ROUTING_RES,
+		    UART_ROUTING_UART10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_uart8_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART8),
+	.reg = HICRA,
+	.shift = 25,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_IO10,
+		    NULL,
+	},
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_uart7_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART7),
+	.reg = HICRA,
+	.shift = 22,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_uart6_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART6),
+	.reg = HICRA,
+	.shift = 19,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_uart5_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_UART5),
+	.reg = HICRA,
+	.shift = 16,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_io8_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO8),
+	.reg = HICRA,
+	.shift = 9,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART10,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_io7_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO7),
+	.reg = HICRA,
+	.shift = 6,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART10,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_IO5,
+		    UART_ROUTING_IO6,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_io6_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO6),
+	.reg = HICRA,
+	.shift = 3,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART10,
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct aspeed_uart_routing_selector ast2700n1_io5_sel = {
+	.dev_attr = ROUTING_ATTR(UART_ROUTING_IO5),
+	.reg = HICRA,
+	.shift = 0,
+	.mask = 0x7,
+	.options = {
+		    UART_ROUTING_UART5,
+		    UART_ROUTING_UART6,
+		    UART_ROUTING_UART7,
+		    UART_ROUTING_UART8,
+		    UART_ROUTING_UART10,
+		    UART_ROUTING_IO7,
+		    UART_ROUTING_IO8,
+		    UART_ROUTING_IO10,
+		    NULL,
+		    },
+};
+
+static struct attribute *ast2700n1_uart_routing_attrs[] = {
+	&ast2700n1_uart10_sel.dev_attr.attr,
+	&ast2700n1_io10_sel.dev_attr.attr,
+	&ast2700n1_uart8_sel.dev_attr.attr,
+	&ast2700n1_uart7_sel.dev_attr.attr,
+	&ast2700n1_uart6_sel.dev_attr.attr,
+	&ast2700n1_uart5_sel.dev_attr.attr,
+	&ast2700n1_io8_sel.dev_attr.attr,
+	&ast2700n1_io7_sel.dev_attr.attr,
+	&ast2700n1_io6_sel.dev_attr.attr,
+	&ast2700n1_io5_sel.dev_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group ast2700n1_uart_routing_attr_group = {
+	.attrs = ast2700n1_uart_routing_attrs,
+};
+
 static ssize_t aspeed_uart_routing_show(struct device *dev,
 					struct device_attribute *attr,
 					char *buf)
@@ -580,6 +1000,10 @@ static const struct of_device_id aspeed_uart_routing_table[] = {
 	  .data = &ast2500_uart_routing_attr_group },
 	{ .compatible = "aspeed,ast2600-uart-routing",
 	  .data = &ast2600_uart_routing_attr_group },
+	{ .compatible = "aspeed,ast2700n0-uart-routing",
+	  .data = &ast2700n0_uart_routing_attr_group },
+	{ .compatible = "aspeed,ast2700n1-uart-routing",
+	  .data = &ast2700n1_uart_routing_attr_group },
 	{ },
 };
 

-- 
2.34.1


