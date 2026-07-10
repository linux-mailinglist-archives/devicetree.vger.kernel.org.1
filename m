Return-Path: <devicetree+bounces-324619-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0MQMHJg4UWreAwMAu9opvQ
	(envelope-from <devicetree+bounces-324619-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:23:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CB04173D53F
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:23:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=bootlin.com header.s=dkim header.b=naP2iMxf;
	dmarc=pass (policy=reject) header.from=bootlin.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324619-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324619-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E1F19302DA03
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20FA435C1A6;
	Fri, 10 Jul 2026 18:22:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF7BD379C38;
	Fri, 10 Jul 2026 18:22:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707743; cv=none; b=c6tVyD4C5YRkyVY8UWQfvD+oHFH5CadmxUzQoVTPeJYzdISUfjKJA8EKpMA0FPtZ1NT+fTGFLMfmyngStcaIe3wJfrDYIac9Z46b+UW1pA9YjvTf+HyXoX647bg1q7nzg2CbvTXZsFbE0J1RXnmmWVpOy0uXsCZHASpZK64jJsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707743; c=relaxed/simple;
	bh=BftAQ4d/iZFW8LlEWOjZYzTJKwuq8e6Tg64d926D7hs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CJI9RTNc2I8FfzNbNeVWcQpmTvWuKP3erLIa2WpWo+fwazrEjYKrIZ6Gly3ZbRZ3u62Q+79Mh951ScZ61WXi7Tj7vUx+nlJoTHAXsKdV8Wumnl7jwYBIYW5dH4TKw6m0tWxLwrnPR+of+d9fPpfhPq3vFwnNCk0/7G8NP1nQKeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=naP2iMxf; arc=none smtp.client-ip=185.246.85.4
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 583BD4E40D4A;
	Fri, 10 Jul 2026 18:22:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 2C4A560342;
	Fri, 10 Jul 2026 18:22:19 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E65CA11BD2C1F;
	Fri, 10 Jul 2026 20:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1783707738; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=M5ONPK0FldTaZ0gyW+2a82proN3HkRbf2BKdgJRba8A=;
	b=naP2iMxfOZH1C5pIVPhisLYqCr4G4xOLjpDjFeMpUwKODbh2MDGrIiHz5QIluHNHK9t5a9
	JQzcnwG46rpsmV1360VfkqqvUbMNRYtlUQTVX2EGS/47t2RLZ/RpDbCRJf40rmJMpaZVUu
	QwS0/BNieuvHIS6mwwljYtEWWA25B4a1AAR5UN3mR6isnRbtzCp7iQnZE44OU9m4aRFmLw
	YHkH1SSG8qAmaK1+lX3czSifYOfh3sCwUznDwxi8kqtPmgtQ7z+8kQLorkj61Od33jac6Z
	oIVbKkMtFo006P3K/LtK4Q2LHLLzaU+GkVJ5naikDOJiMpRhE05bNvStK9RIHg==
From: "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
Date: Fri, 10 Jul 2026 20:21:57 +0200
Subject: [PATCH v2 2/7] clk: tests: Add clk_parse_clkspec() Kunit testing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-2-b4680787377e@bootlin.com>
References: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
In-Reply-To: <20260710-schneider-v7-2-rc1-eip201-upstream-v2-0-b4680787377e@bootlin.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Brendan Higgins <brendan.higgins@linux.dev>, David Gow <david@davidgow.net>, 
 Rae Moar <raemoar63@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Pascal EBERHARD <pascal.eberhard@se.com>, 
 Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-kselftest@vger.kernel.org, kunit-dev@googlegroups.com, 
 "Miquel Raynal (Schneider Electric)" <miquel.raynal@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-324619-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,redhat.com,linux.dev,davidgow.net,gmail.com];
	FORGED_SENDER(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:brendan.higgins@linux.dev,m:david@davidgow.net,m:raemoar63@gmail.com,m:thomas.petazzoni@bootlin.com,m:pascal.eberhard@se.com,m:wsa+renesas@sang-engineering.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:kunit-dev@googlegroups.com,m:miquel.raynal@bootlin.com,m:krzk@kernel.org,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miquel.raynal@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:from_mime,bootlin.com:email,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB04173D53F

Create a new set of kunit tests to make sure clk_parse_clkspec() is
working as expected. We currently verify if we get a proper device when
using indexes and names. If we make an out of bounds request we expect
an error.

For testing purposes, we must ensure of_clk_get_hw()'s symbol is
exported.

Suggested-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Miquel Raynal (Schneider Electric) <miquel.raynal@bootlin.com>
---
 drivers/clk/Makefile                     |   1 +
 drivers/clk/clk.c                        |   2 +
 drivers/clk/clk_test.c                   | 117 +++++++++++++++++++++++++++++++
 drivers/clk/kunit_clk_parse_clkspec.dtso |  21 ++++++
 4 files changed, 141 insertions(+)

diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index cc108a75a900..035b984db70d 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -19,6 +19,7 @@ clk-test-y			:= clk_test.o \
 				   kunit_clk_assigned_rates_zero.dtbo.o \
 				   kunit_clk_assigned_rates_zero_consumer.dtbo.o \
 				   kunit_clk_hw_get_dev_of_node.dtbo.o \
+				   kunit_clk_parse_clkspec.dtbo.o \
 				   kunit_clk_parent_data_test.dtbo.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-divider.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-fixed-factor.o
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 048adfa86a5d..08874cf9b561 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -24,6 +24,7 @@
 #include <linux/spinlock.h>
 #include <linux/string.h>
 #include <linux/stringhash.h>
+#include <kunit/visibility.h>
 
 #include "clk.h"
 
@@ -5300,6 +5301,7 @@ struct clk_hw *of_clk_get_hw(struct device_node *np, int index,
 
 	return hw;
 }
+EXPORT_SYMBOL_IF_KUNIT(of_clk_get_hw);
 
 static struct clk *__of_clk_get(struct device_node *np,
 				int index, const char *dev_id,
diff --git a/drivers/clk/clk_test.c b/drivers/clk/clk_test.c
index b1961daac5e2..fddb2bb9618f 100644
--- a/drivers/clk/clk_test.c
+++ b/drivers/clk/clk_test.c
@@ -3541,10 +3541,126 @@ static struct kunit_suite clk_hw_get_dev_of_node_test_suite = {
 	.test_cases = clk_hw_get_dev_of_node_test_cases,
 };
 
+static const struct clk_init_data clk_parse_clkspec_1_init_data = {
+	.name = "clk_parse_clkspec_1",
+	.ops = &empty_clk_ops,
+};
+
+static const struct clk_init_data clk_parse_clkspec_2_init_data = {
+	.name = "clk_parse_clkspec_2",
+	.ops = &empty_clk_ops,
+};
+
+struct clk_parse_clkspec_ctx {
+	struct device_node *cons_np;
+};
+
+static int clk_parse_clkspec_init(struct kunit *test)
+{
+	struct device_node *prov1_np, *prov2_np;
+	struct clk_parse_clkspec_ctx *ctx;
+	struct clk_hw *hw1, *hw2;
+
+	ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+	test->priv = ctx;
+
+	KUNIT_ASSERT_EQ(test, 0, of_overlay_apply_kunit(test, kunit_clk_parse_clkspec));
+
+	/* Register provider 1 */
+	hw1 = kunit_kzalloc(test, sizeof(*hw1), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw1);
+	hw1->init = &clk_parse_clkspec_1_init_data;
+
+	prov1_np = of_find_compatible_node(NULL, NULL, "test,clock-provider1");
+	KUNIT_ASSERT_NOT_NULL(test, prov1_np);
+
+	KUNIT_ASSERT_EQ(test, 0, of_clk_hw_register_kunit(test, prov1_np, hw1));
+	of_clk_add_hw_provider_kunit(test, prov1_np, of_clk_hw_simple_get, hw1);
+	of_node_put(prov1_np);
+
+	/* Register provider 2 */
+	hw2 = kunit_kzalloc(test, sizeof(*hw2), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw2);
+	hw2->init = &clk_parse_clkspec_2_init_data;
+
+	prov2_np = of_find_compatible_node(NULL, NULL, "test,clock-provider2");
+	KUNIT_ASSERT_NOT_NULL(test, prov2_np);
+
+	KUNIT_ASSERT_EQ(test, 0, of_clk_hw_register_kunit(test, prov2_np, hw2));
+	of_clk_add_hw_provider_kunit(test, prov2_np, of_clk_hw_simple_get, hw2);
+	of_node_put(prov2_np);
+
+	ctx->cons_np = of_find_compatible_node(NULL, NULL, "test,clock-consumer");
+	KUNIT_ASSERT_NOT_NULL(test, ctx->cons_np);
+
+	return 0;
+}
+
+static void clk_parse_clkspec_exit(struct kunit *test)
+{
+	struct clk_parse_clkspec_ctx *ctx = test->priv;
+
+	of_node_put(ctx->cons_np);
+}
+
+/* Test DT phandle lookups using correct index or name succeed */
+static void clk_parse_clkspec_with_correct_index_and_name(struct kunit *test)
+{
+	struct clk_parse_clkspec_ctx *ctx = test->priv;
+	struct clk_hw *hw1, *hw2, *hw3, *hw4;
+
+	/* Get clocks by index */
+	hw1 = of_clk_get_hw(ctx->cons_np, 0, NULL);
+	KUNIT_EXPECT_NOT_ERR_OR_NULL(test, hw1);
+
+	hw2 = of_clk_get_hw(ctx->cons_np, 1, NULL);
+	KUNIT_EXPECT_NOT_ERR_OR_NULL(test, hw2);
+	KUNIT_EXPECT_PTR_NE(test, hw1, hw2);
+
+	/* Get clocks by name */
+	hw3 = of_clk_get_hw(ctx->cons_np, 0, "first_clock");
+	KUNIT_EXPECT_NOT_ERR_OR_NULL(test, hw3);
+	KUNIT_EXPECT_PTR_EQ(test, hw1, hw3);
+
+	hw4 = of_clk_get_hw(ctx->cons_np, 0, "second_clock");
+	KUNIT_EXPECT_NOT_ERR_OR_NULL(test, hw4);
+	KUNIT_EXPECT_PTR_EQ(test, hw2, hw4);
+}
+
+/* Test DT phandle lookups using wrong index or name fail */
+static void clk_parse_clkspec_with_incorrect_index_and_name(struct kunit *test)
+{
+	struct clk_parse_clkspec_ctx *ctx = test->priv;
+	struct clk_hw *hw;
+
+	/* Get clock by index */
+	hw = of_clk_get_hw(ctx->cons_np, 2, NULL);
+	KUNIT_EXPECT_TRUE(test, IS_ERR(hw));
+
+	/* Get clock by name */
+	hw = of_clk_get_hw(ctx->cons_np, 0, "third_clock");
+	KUNIT_EXPECT_TRUE(test, IS_ERR(hw));
+}
+
+static struct kunit_case clk_parse_clkspec_test_cases[] = {
+	KUNIT_CASE(clk_parse_clkspec_with_correct_index_and_name),
+	KUNIT_CASE(clk_parse_clkspec_with_incorrect_index_and_name),
+	{}
+};
+
+/* Test suite to verify clk_parse_clkspec() */
+static struct kunit_suite clk_parse_clkspec_test_suite = {
+	.name = "clk_parse_clkspec",
+	.init = clk_parse_clkspec_init,
+	.exit = clk_parse_clkspec_exit,
+	.test_cases = clk_parse_clkspec_test_cases,
+};
 
 kunit_test_suites(
 	&clk_assigned_rates_suite,
 	&clk_hw_get_dev_of_node_test_suite,
+	&clk_parse_clkspec_test_suite,
 	&clk_leaf_mux_set_rate_parent_test_suite,
 	&clk_test_suite,
 	&clk_multiple_parents_mux_test_suite,
@@ -3562,4 +3678,5 @@ kunit_test_suites(
 	&clk_uncached_test_suite,
 );
 MODULE_DESCRIPTION("Kunit tests for clk framework");
+MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
 MODULE_LICENSE("GPL v2");
diff --git a/drivers/clk/kunit_clk_parse_clkspec.dtso b/drivers/clk/kunit_clk_parse_clkspec.dtso
new file mode 100644
index 000000000000..c93feb93e101
--- /dev/null
+++ b/drivers/clk/kunit_clk_parse_clkspec.dtso
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	kunit_clock_provider1: kunit-clock-provider1 {
+		compatible = "test,clock-provider1";
+		#clock-cells = <1>;
+	};
+
+	kunit_clock_provider2: kunit-clock-provider2 {
+		compatible = "test,clock-provider2";
+		#clock-cells = <1>;
+	};
+
+	kunit-clock-consumer {
+		compatible = "test,clock-consumer";
+		clocks = <&kunit_clock_provider1 0>, <&kunit_clock_provider2 0>;
+		clock-names = "first_clock", "second_clock";
+	};
+};

-- 
2.54.0


