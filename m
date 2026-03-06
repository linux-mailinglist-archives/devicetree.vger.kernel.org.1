Return-Path: <devicetree+bounces-271875-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJRqLxiMqml0TQEAu9opvQ
	(envelope-from <devicetree+bounces-271875-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:11:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1833321CE3C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 09:11:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55A1F308ADEB
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 08:07:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1101537646A;
	Fri,  6 Mar 2026 08:07:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14585274641;
	Fri,  6 Mar 2026 08:07:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772784461; cv=none; b=HZypQypVgu+l47QsAYAUgbA2IhuxrbVOqRCfQFKzZWqfQV6/WBDkCO5hOeH0YkBMxKSSNqi3o0yjqAgc59WJVXI5St4J3XHGbKDZrqsfZ8/m+QeEH0dLRsAxHnKz/eX61pp0OOVq+OkBBhd4c2/iOsnQ74gUlc4ne7kmsTLwvwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772784461; c=relaxed/simple;
	bh=1YBW+EL7AuGWoFCRjiSMhAL5FE0T35y9CH+HP9XNVFg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=KaSRREVQhMJHTvTzspfqimqU7z65fID9TUyFDJUYx5g9//m0v7kcd8PJFydujtgGz74KQAoDLl89YiU2GYsi1LOS4MxfcIod/mZL50Co85HvzR8dTK8u1FyNvjLSSI9eLid6A2RhaejRq6oUgZ+ztGIYYweT2plY+OD7nxVEMXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Fri, 6 Mar
 2026 16:07:24 +0800
Received: from [127.0.1.1] (192.168.10.13) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1748.10 via Frontend
 Transport; Fri, 6 Mar 2026 16:07:24 +0800
From: Ryan Chen <ryan_chen@aspeedtech.com>
Date: Fri, 6 Mar 2026 16:07:25 +0800
Subject: [PATCH v2 3/5] irqchip/ast2700-intc: Add KUnit tests for route
 resolution
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20260306-irqchip-v2-3-f8512c09be63@aspeedtech.com>
References: <20260306-irqchip-v2-0-f8512c09be63@aspeedtech.com>
In-Reply-To: <20260306-irqchip-v2-0-f8512c09be63@aspeedtech.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, "Andrew
 Jeffery" <andrew@codeconstruct.com.au>, Paul Walmsley <pjw@kernel.org>,
	"Palmer Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Alexandre Ghiti" <alex@ghiti.fr>, Thomas Gleixner <tglx@kernel.org>, Thomas
 Gleixner <tglx@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-aspeed@lists.ozlabs.org>,
	<linux-riscv@lists.infradead.org>, Ryan Chen <ryan_chen@aspeedtech.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772784444; l=14664;
 i=ryan_chen@aspeedtech.com; s=20251126; h=from:subject:message-id;
 bh=1YBW+EL7AuGWoFCRjiSMhAL5FE0T35y9CH+HP9XNVFg=;
 b=mbsWEwToCg0j7iUd/GT693BltmF6M8aQdIb6ocmjXRah0dNI209YfPtkJOblSZsqG82v19b/M
 /VwZejy+99BBcVqv6vZvF9CzTfnotZPo2vv3yn8Ce9RimQUnggNKe6r
X-Developer-Key: i=ryan_chen@aspeedtech.com; a=ed25519;
 pk=Xe73xY6tcnkuRjjbVAB/oU30KdB3FvG4nuJuILj7ZVc=
X-Rspamd-Queue-Id: 1833321CE3C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.54 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[aspeedtech.com : SPF not aligned (relaxed), No valid DKIM,quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271875-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ryan_chen@aspeedtech.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.980];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[aspeedtech.com:mid,aspeedtech.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a KUnit suite for aspeed_intc0_resolve_route().

Cover invalid arguments, invalid domain/range data, connected and
disconnected mappings, and malformed upstream range cases.

Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>

---
Changes in v2:
- add line break before include "irq-ast2700.h"
- remove pointless newline.
- rename arm_gicv3_fwnode_read_string_array to
  gicv3_fwnode_read_string_array
- add .kunitconfig file
---
 drivers/irqchip/.kunitconfig             |   5 +
 drivers/irqchip/Kconfig                  |  11 +
 drivers/irqchip/Makefile                 |   1 +
 drivers/irqchip/irq-ast2700-intc0-test.c | 473 +++++++++++++++++++++++++++++++
 4 files changed, 490 insertions(+)

diff --git a/drivers/irqchip/.kunitconfig b/drivers/irqchip/.kunitconfig
new file mode 100644
index 000000000000..00a12703f635
--- /dev/null
+++ b/drivers/irqchip/.kunitconfig
@@ -0,0 +1,5 @@
+CONFIG_KUNIT=y
+CONFIG_OF=y
+CONFIG_COMPILE_TEST=y
+CONFIG_ASPEED_AST2700_INTC=y
+CONFIG_ASPEED_AST2700_INTC_TEST=y
diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 0156fee89b2c..143af3f30a4b 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -122,6 +122,17 @@ config ASPEED_AST2700_INTC
 
 	  If unsure, say N.
 
+config ASPEED_AST2700_INTC_TEST
+	bool "Tests for the ASPEED AST2700 Interrupt Controller"
+	depends on ASPEED_AST2700_INTC && KUNIT=y
+	default KUNIT_ALL_TESTS
+	help
+	  Enable KUnit tests for AST2700 INTC route resolution.
+	  The tests exercise error handling and route selection paths.
+	  This option is intended for test builds.
+
+	  If unsure, say N.
+
 config ATMEL_AIC_IRQ
 	bool
 	select GENERIC_IRQ_CHIP
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 62790663f982..ac04a4b97797 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -90,6 +90,7 @@ obj-$(CONFIG_MVEBU_SEI)			+= irq-mvebu-sei.o
 obj-$(CONFIG_LS_EXTIRQ)			+= irq-ls-extirq.o
 obj-$(CONFIG_LS_SCFG_MSI)		+= irq-ls-scfg-msi.o
 obj-$(CONFIG_ASPEED_AST2700_INTC)	+= irq-ast2700.o irq-ast2700-intc0.o irq-ast2700-intc1.o
+obj-$(CONFIG_ASPEED_AST2700_INTC_TEST)	+= irq-ast2700-intc0-test.o
 obj-$(CONFIG_ARCH_ASPEED)		+= irq-aspeed-vic.o irq-aspeed-i2c-ic.o irq-aspeed-scu-ic.o
 obj-$(CONFIG_ARCH_ASPEED)		+= irq-aspeed-intc.o
 obj-$(CONFIG_STM32MP_EXTI)		+= irq-stm32mp-exti.o
diff --git a/drivers/irqchip/irq-ast2700-intc0-test.c b/drivers/irqchip/irq-ast2700-intc0-test.c
new file mode 100644
index 000000000000..2aa00df72c04
--- /dev/null
+++ b/drivers/irqchip/irq-ast2700-intc0-test.c
@@ -0,0 +1,473 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ *  Copyright (C) 2026 Code Construct
+ */
+#include <kunit/test.h>
+
+#include "irq-ast2700.h"
+
+static void aspeed_intc0_resolve_route_bad_args(struct kunit *test)
+{
+	static const struct aspeed_intc_interrupt_range c1ranges[] = { 0 };
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	const struct irq_domain c0domain = { 0 };
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(NULL, 0, c1outs, 0, c1ranges, NULL);
+	KUNIT_EXPECT_EQ(test, rc, -EINVAL);
+
+	rc = aspeed_intc0_resolve_route(&c0domain, 0, c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, -ENOENT);
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					0, c1ranges, &resolved);
+	KUNIT_EXPECT_EQ(test, rc, -ENOENT);
+}
+
+static int gicv3_fwnode_read_string_array(const struct fwnode_handle *fwnode,
+					  const char *propname, const char **val, size_t nval)
+{
+	if (!propname)
+		return -EINVAL;
+
+	if (!val)
+		return 1;
+
+	if (WARN_ON(nval != 1))
+		return -EOVERFLOW;
+
+	*val = "arm,gic-v3";
+	return 1;
+}
+
+static const struct fwnode_operations arm_gicv3_fwnode_ops = {
+	.property_read_string_array = gicv3_fwnode_read_string_array,
+};
+
+static void aspeed_intc_resolve_route_invalid_c0domain(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &arm_gicv3_fwnode_ops },
+	};
+	const struct irq_domain c0domain = { .fwnode = &intc0_node.fwnode };
+	static const struct aspeed_intc_interrupt_range c1ranges[] = { 0 };
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_NE(test, rc, 0);
+}
+
+static int
+aspeed_intc0_fwnode_read_string_array(const struct fwnode_handle *fwnode_handle,
+				      const char *propname, const char **val,
+				      size_t nval)
+{
+	if (!propname)
+		return -EINVAL;
+
+	if (!val)
+		return 1;
+
+	if (WARN_ON(nval != 1))
+		return -EOVERFLOW;
+
+	*val = "aspeed,ast2700-intc0";
+	return nval;
+}
+
+static const struct fwnode_operations intc0_fwnode_ops = {
+	.property_read_string_array = aspeed_intc0_fwnode_read_string_array,
+};
+
+static void
+aspeed_intc0_resolve_route_c1i1o1c0i1o1_connected(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 128 }
+			}
+		}
+	};
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 128,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = { .ranges = intc0_ranges, .nranges = ARRAY_SIZE(intc0_ranges), }
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, 0);
+	KUNIT_EXPECT_EQ(test, resolved.start, 0);
+	KUNIT_EXPECT_EQ(test, resolved.count, 1);
+	KUNIT_EXPECT_EQ(test, resolved.upstream.param[0], 128);
+}
+
+static void
+aspeed_intc0_resolve_route_c1i1o1c0i1o1_disconnected(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 128 }
+			}
+		}
+	};
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 129,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_NE(test, rc, 0);
+}
+
+static void aspeed_intc0_resolve_route_c1i1o1mc0i1o1(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 480 }
+			}
+		}
+	};
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 192,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, 0);
+	KUNIT_EXPECT_EQ(test, resolved.start, 0);
+	KUNIT_EXPECT_EQ(test, resolved.count, 1);
+	KUNIT_EXPECT_EQ(test, resolved.upstream.param[0], 480);
+}
+
+static void aspeed_intc0_resolve_route_c1i2o2mc0i1o1(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 480 }
+			}
+		},
+		{
+			.start = 1,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 510 }
+			}
+		}
+	};
+	static const u32 c1outs[] = { 1 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 208,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, 0);
+	KUNIT_EXPECT_EQ(test, resolved.start, 1);
+	KUNIT_EXPECT_EQ(test, resolved.count, 1);
+	KUNIT_EXPECT_EQ(test, resolved.upstream.param[0], 510);
+}
+
+static void aspeed_intc0_resolve_route_c1i1o1mc0i2o1(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 510 }
+			}
+		},
+	};
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 192,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = {0},
+			}
+		},
+		{
+			.start = 208,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = {0},
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, 0);
+	KUNIT_EXPECT_EQ(test, resolved.start, 0);
+	KUNIT_EXPECT_EQ(test, resolved.count, 1);
+	KUNIT_EXPECT_EQ(test, resolved.upstream.param[0], 510);
+}
+
+static void aspeed_intc0_resolve_route_c1i1o2mc0i1o1_invalid(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 1,
+				.param = { 480 }
+			}
+		}
+	};
+	static const u32 c1outs[] = {
+		AST2700_INTC_INVALID_ROUTE, 0
+	};
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 192,
+			.count = 1,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_EQ(test, rc, 1);
+	KUNIT_EXPECT_EQ(test, resolved.start, 0);
+	KUNIT_EXPECT_EQ(test, resolved.count, 1);
+	KUNIT_EXPECT_EQ(test, resolved.upstream.param[0], 480);
+}
+
+static void
+aspeed_intc0_resolve_route_c1i1o1mc0i1o1_bad_range_upstream(struct kunit *test)
+{
+	struct device_node intc0_node = {
+		.fwnode = { .ops = &intc0_fwnode_ops },
+	};
+	struct aspeed_intc_interrupt_range c1ranges[] = {
+		{
+			.start = 0,
+			.count = 1,
+			.upstream = {
+				.fwnode = &intc0_node.fwnode,
+				.param_count = 0,
+				.param = { 0 }
+			}
+		}
+	};
+	static const u32 c1outs[] = { 0 };
+	struct aspeed_intc_interrupt_range resolved;
+	struct aspeed_intc_interrupt_range intc0_ranges[] = {
+		{
+			.start = 0,
+			.count = 0,
+			.upstream = {
+				.fwnode = NULL,
+				.param_count = 0,
+				.param = { 0 },
+			}
+		}
+	};
+	struct aspeed_intc0 intc0 = {
+		.ranges = {
+			.ranges = intc0_ranges,
+			.nranges = ARRAY_SIZE(intc0_ranges),
+		}
+	};
+	const struct irq_domain c0domain = {
+		.host_data = &intc0,
+		.fwnode = &intc0_node.fwnode
+	};
+	int rc;
+
+	rc = aspeed_intc0_resolve_route(&c0domain, ARRAY_SIZE(c1outs), c1outs,
+					ARRAY_SIZE(c1ranges), c1ranges,
+					&resolved);
+	KUNIT_EXPECT_NE(test, rc, 0);
+}
+
+static struct kunit_case ast2700_intc0_test_cases[] = {
+	KUNIT_CASE(aspeed_intc0_resolve_route_bad_args),
+	KUNIT_CASE(aspeed_intc_resolve_route_invalid_c0domain),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o1c0i1o1_connected),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o1c0i1o1_disconnected),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o1mc0i1o1),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i2o2mc0i1o1),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o1mc0i2o1),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o2mc0i1o1_invalid),
+	KUNIT_CASE(aspeed_intc0_resolve_route_c1i1o1mc0i1o1_bad_range_upstream),
+	{},
+};
+
+static struct kunit_suite ast2700_intc0_test_suite = {
+	.name = "ast2700-intc0",
+	.test_cases = ast2700_intc0_test_cases,
+};
+
+kunit_test_suite(ast2700_intc0_test_suite);
+
+MODULE_LICENSE("GPL");

-- 
2.34.1


