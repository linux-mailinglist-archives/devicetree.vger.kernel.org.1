Return-Path: <devicetree+bounces-84791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D9FC92D9E2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 22:14:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03C9D2815A9
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 20:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFE68199240;
	Wed, 10 Jul 2024 20:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK7Mgskl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8913F199235;
	Wed, 10 Jul 2024 20:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720642375; cv=none; b=UDUz5/twRhkY5tCIgE85DTZc7Xlwfai+WB3tyHwuOFP9Xooar5vB/uhBr3f9QJDmOdRKq4XaqwxRYZZIJyCF4+4s1Jf28zKqtSnYB8+dRivkzuIqewTVK9OI+8wUixAzCKyc9EUjPNN3qJq5vn8PegxMWNusMJ7BN+hhgRyUQPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720642375; c=relaxed/simple;
	bh=QcFQUAnJ4SY3czCb8lIIdlGgAX/hRuLCWNSj6np8mr8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h/qahfnVWlSg5+stD7zKJeRn3GvcLZUsmMIuIcLloNrgmPyJoM0bmGqEuHzoJf/43Ys+q+pm5d7HYYqQzQNK903OzrEdfqn98sTFAEo+5gMYr/yP91uOof7k/5kL9I+jqPAhuAfZDjIwsNFH3eSLL5VqZ5fadxdXh7MNM8Hg63U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK7Mgskl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BD3AC32781;
	Wed, 10 Jul 2024 20:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720642375;
	bh=QcFQUAnJ4SY3czCb8lIIdlGgAX/hRuLCWNSj6np8mr8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=tK7MgsklbSD2UctwNVyydxKNySuge/SDsXBp//1HSzb2mafkS5DP+8qPHEbrVvqUO
	 3ZEDq1/E49VNmUvhuXdn9dgEzSFf+qT1wdtsN6halehGGEpOt0o3yNQ56ptWsxCXOY
	 qcn2SqgJzdrdIqQwBMwsGQoiJskgcSfkONO3tH9gkKAkYKnL/L5CR8/KNe5wx2Sucp
	 wRbiPhHicw/tJSDpgvnXpn3L67Cfu2ziiiLKtz/JFsvpMcHSt42Vz2pOYnYVNmxT53
	 NSUTRWTeZmihrIk4OJYZOUTcd/rkZjXGfylBppHXGwtWMcsXtb4CJCyPDelV3B7DTX
	 GvB0hsr6yjPUQ==
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	patches@lists.linux.dev,
	kunit-dev@googlegroups.com,
	linux-kselftest@vger.kernel.org,
	devicetree@vger.kernel.org,
	Brendan Higgins <brendan.higgins@linux.dev>,
	David Gow <davidgow@google.com>,
	Rae Moar <rmoar@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Daniel Latypov <dlatypov@google.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Ripard <maxime@cerno.tech>
Subject: [PATCH v7 7/8] clk: Add KUnit tests for clk fixed rate basic type
Date: Wed, 10 Jul 2024 13:12:43 -0700
Message-ID: <20240710201246.1802189-8-sboyd@kernel.org>
X-Mailer: git-send-email 2.45.2.803.g4e1b14247a-goog
In-Reply-To: <20240710201246.1802189-1-sboyd@kernel.org>
References: <20240710201246.1802189-1-sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Test that the fixed rate basic type clk works as intended.

Cc: Brendan Higgins <brendan.higgins@linux.dev>
Cc: David Gow <davidgow@google.com>
Cc: Rae Moar <rmoar@google.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
---
 drivers/clk/.kunitconfig                   |   2 +
 drivers/clk/Kconfig                        |   9 +
 drivers/clk/Makefile                       |   1 +
 drivers/clk/clk-fixed-rate_test.c          | 380 +++++++++++++++++++++
 drivers/clk/clk-fixed-rate_test.h          |   8 +
 drivers/clk/kunit_clk_fixed_rate_test.dtso |  19 ++
 6 files changed, 419 insertions(+)
 create mode 100644 drivers/clk/clk-fixed-rate_test.c
 create mode 100644 drivers/clk/clk-fixed-rate_test.h
 create mode 100644 drivers/clk/kunit_clk_fixed_rate_test.dtso

diff --git a/drivers/clk/.kunitconfig b/drivers/clk/.kunitconfig
index efa12ac2b3f2..54ece9207055 100644
--- a/drivers/clk/.kunitconfig
+++ b/drivers/clk/.kunitconfig
@@ -1,6 +1,8 @@
 CONFIG_KUNIT=y
+CONFIG_OF=y
 CONFIG_COMMON_CLK=y
 CONFIG_CLK_KUNIT_TEST=y
+CONFIG_CLK_FIXED_RATE_KUNIT_TEST=y
 CONFIG_CLK_GATE_KUNIT_TEST=y
 CONFIG_CLK_FD_KUNIT_TEST=y
 CONFIG_UML_PCI_OVER_VIRTIO=n
diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 3e9099504fad..d8482e015c49 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -511,6 +511,15 @@ config CLK_KUNIT_TEST
 	help
 	  Kunit tests for the common clock framework.
 
+config CLK_FIXED_RATE_KUNIT_TEST
+	tristate "Basic fixed rate clk type KUnit test" if !KUNIT_ALL_TESTS
+	depends on KUNIT
+	default KUNIT_ALL_TESTS
+	select OF_OVERLAY if OF
+	select DTC
+	help
+	  KUnit tests for the basic fixed rate clk type.
+
 config CLK_GATE_KUNIT_TEST
 	tristate "Basic gate type Kunit test" if !KUNIT_ALL_TESTS
 	depends on KUNIT
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 8bb63f1ddd98..7b57e3d22cee 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_KUNIT_TEST)	+= clk_test.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-divider.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-fixed-factor.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-fixed-rate.o
+obj-$(CONFIG_CLK_FIXED_RATE_KUNIT_TEST)	+= clk-fixed-rate_test.o kunit_clk_fixed_rate_test.dtbo.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-gate.o
 obj-$(CONFIG_CLK_GATE_KUNIT_TEST) += clk-gate_test.o
 obj-$(CONFIG_COMMON_CLK)	+= clk-multiplier.o
diff --git a/drivers/clk/clk-fixed-rate_test.c b/drivers/clk/clk-fixed-rate_test.c
new file mode 100644
index 000000000000..0e04c10a21aa
--- /dev/null
+++ b/drivers/clk/clk-fixed-rate_test.c
@@ -0,0 +1,380 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit test for clk fixed rate basic type
+ */
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/completion.h>
+#include <linux/of.h>
+#include <linux/platform_device.h>
+
+#include <kunit/clk.h>
+#include <kunit/of.h>
+#include <kunit/platform_device.h>
+#include <kunit/resource.h>
+#include <kunit/test.h>
+
+#include "clk-fixed-rate_test.h"
+
+/**
+ * struct clk_hw_fixed_rate_kunit_params - Parameters to pass to __clk_hw_register_fixed_rate()
+ * @dev: device registering clk
+ * @np: device_node of device registering clk
+ * @name: name of clk
+ * @parent_name: parent name of clk
+ * @parent_hw: clk_hw pointer to parent of clk
+ * @parent_data: parent_data describing parent of clk
+ * @flags: clk framework flags
+ * @fixed_rate: frequency of clk
+ * @fixed_accuracy: accuracy of clk
+ * @clk_fixed_flags: fixed rate specific clk flags
+ */
+struct clk_hw_fixed_rate_kunit_params {
+	struct device *dev;
+	struct device_node *np;
+	const char *name;
+	const char *parent_name;
+	const struct clk_hw *parent_hw;
+	const struct clk_parent_data *parent_data;
+	unsigned long flags;
+	unsigned long fixed_rate;
+	unsigned long fixed_accuracy;
+	unsigned long clk_fixed_flags;
+};
+
+static int
+clk_hw_register_fixed_rate_kunit_init(struct kunit_resource *res, void *context)
+{
+	struct clk_hw_fixed_rate_kunit_params *params = context;
+	struct clk_hw *hw;
+
+	hw = __clk_hw_register_fixed_rate(params->dev, params->np,
+					  params->name,
+					  params->parent_name,
+					  params->parent_hw,
+					  params->parent_data,
+					  params->flags,
+					  params->fixed_rate,
+					  params->fixed_accuracy,
+					  params->clk_fixed_flags,
+					  false);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
+
+	res->data = hw;
+
+	return 0;
+}
+
+static void clk_hw_register_fixed_rate_kunit_exit(struct kunit_resource *res)
+{
+	struct clk_hw *hw = res->data;
+
+	clk_hw_unregister_fixed_rate(hw);
+}
+
+/**
+ * clk_hw_register_fixed_rate_kunit() - Test managed __clk_hw_register_fixed_rate()
+ * @test: The test context
+ * @params: Arguments to __clk_hw_register_fixed_rate()
+ *
+ * Return: Registered fixed rate clk_hw or ERR_PTR on failure
+ */
+static struct clk_hw *
+clk_hw_register_fixed_rate_kunit(struct kunit *test,
+				 struct clk_hw_fixed_rate_kunit_params *params)
+{
+	struct clk_hw *hw;
+
+	hw = kunit_alloc_resource(test,
+				  clk_hw_register_fixed_rate_kunit_init,
+				  clk_hw_register_fixed_rate_kunit_exit,
+				  GFP_KERNEL, params);
+	if (!hw)
+		return ERR_PTR(-EINVAL);
+
+	return hw;
+}
+
+/**
+ * clk_hw_unregister_fixed_rate_kunit() - Test managed clk_hw_unregister_fixed_rate()
+ * @test: The test context
+ * @hw: fixed rate clk to unregister upon test completion
+ *
+ * Automatically unregister @hw when @test is complete via
+ * clk_hw_unregister_fixed_rate().
+ *
+ * Return: 0 on success or negative errno on failure
+ */
+static int clk_hw_unregister_fixed_rate_kunit(struct kunit *test, struct clk_hw *hw)
+{
+	if (!kunit_alloc_resource(test, NULL,
+				  clk_hw_register_fixed_rate_kunit_exit,
+				  GFP_KERNEL, hw))
+		return -ENOMEM;
+
+	return 0;
+}
+
+/*
+ * Test that clk_get_rate() on a fixed rate clk registered with
+ * clk_hw_register_fixed_rate() gets the proper frequency.
+ */
+static void clk_fixed_rate_rate_test(struct kunit *test)
+{
+	struct clk_hw *hw;
+	struct clk *clk;
+	const unsigned long fixed_rate = 230000;
+
+	hw = clk_hw_register_fixed_rate(NULL, "test-fixed-rate", NULL, 0, fixed_rate);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw);
+	KUNIT_ASSERT_EQ(test, 0, clk_hw_unregister_fixed_rate_kunit(test, hw));
+
+	clk = clk_hw_get_clk_prepared_enabled_kunit(test, hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_EXPECT_EQ(test, fixed_rate, clk_get_rate(clk));
+}
+
+/*
+ * Test that clk_get_accuracy() on a fixed rate clk registered via
+ * clk_hw_register_fixed_rate_with_accuracy() gets the proper accuracy.
+ */
+static void clk_fixed_rate_accuracy_test(struct kunit *test)
+{
+	struct clk_hw *hw;
+	struct clk *clk;
+	const unsigned long fixed_accuracy = 5000;
+
+	hw = clk_hw_register_fixed_rate_with_accuracy(NULL, "test-fixed-rate",
+						      NULL, 0, 0,
+						      fixed_accuracy);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw);
+	KUNIT_ASSERT_EQ(test, 0, clk_hw_unregister_fixed_rate_kunit(test, hw));
+
+	clk = clk_hw_get_clk_kunit(test, hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_EXPECT_EQ(test, fixed_accuracy, clk_get_accuracy(clk));
+}
+
+/* Test suite for a fixed rate clk without any parent */
+static struct kunit_case clk_fixed_rate_test_cases[] = {
+	KUNIT_CASE(clk_fixed_rate_rate_test),
+	KUNIT_CASE(clk_fixed_rate_accuracy_test),
+	{}
+};
+
+static struct kunit_suite clk_fixed_rate_suite = {
+	.name = "clk_fixed_rate",
+	.test_cases = clk_fixed_rate_test_cases,
+};
+
+/*
+ * Test that clk_get_parent() on a fixed rate clk gets the proper parent.
+ */
+static void clk_fixed_rate_parent_test(struct kunit *test)
+{
+	struct clk_hw *hw, *parent_hw;
+	struct clk *expected_parent, *actual_parent;
+	struct clk *clk;
+	const char *parent_name = "test-fixed-rate-parent";
+	struct clk_hw_fixed_rate_kunit_params parent_params = {
+		.name = parent_name,
+	};
+
+	parent_hw = clk_hw_register_fixed_rate_kunit(test, &parent_params);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent_hw);
+	KUNIT_ASSERT_STREQ(test, parent_name, clk_hw_get_name(parent_hw));
+
+	expected_parent = clk_hw_get_clk_kunit(test, parent_hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, expected_parent);
+
+	hw = clk_hw_register_fixed_rate(NULL, "test-fixed-rate", parent_name, 0, 0);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw);
+	KUNIT_ASSERT_EQ(test, 0, clk_hw_unregister_fixed_rate_kunit(test, hw));
+
+	clk = clk_hw_get_clk_kunit(test, hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	actual_parent = clk_get_parent(clk);
+	KUNIT_EXPECT_TRUE(test, clk_is_match(expected_parent, actual_parent));
+}
+
+/*
+ * Test that clk_get_rate() on a fixed rate clk ignores the parent rate.
+ */
+static void clk_fixed_rate_parent_rate_test(struct kunit *test)
+{
+	struct clk_hw *hw, *parent_hw;
+	struct clk *clk;
+	const unsigned long expected_rate = 1405;
+	const unsigned long parent_rate = 90402;
+	const char *parent_name = "test-fixed-rate-parent";
+	struct clk_hw_fixed_rate_kunit_params parent_params = {
+		.name = parent_name,
+		.fixed_rate = parent_rate,
+	};
+
+	parent_hw = clk_hw_register_fixed_rate_kunit(test, &parent_params);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent_hw);
+	KUNIT_ASSERT_STREQ(test, parent_name, clk_hw_get_name(parent_hw));
+
+	hw = clk_hw_register_fixed_rate(NULL, "test-fixed-rate", parent_name, 0,
+					expected_rate);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw);
+	KUNIT_ASSERT_EQ(test, 0, clk_hw_unregister_fixed_rate_kunit(test, hw));
+
+	clk = clk_hw_get_clk_prepared_enabled_kunit(test, hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_EXPECT_EQ(test, expected_rate, clk_get_rate(clk));
+}
+
+/*
+ * Test that clk_get_accuracy() on a fixed rate clk ignores the parent accuracy.
+ */
+static void clk_fixed_rate_parent_accuracy_test(struct kunit *test)
+{
+	struct clk_hw *hw, *parent_hw;
+	struct clk *clk;
+	const unsigned long expected_accuracy = 900;
+	const unsigned long parent_accuracy = 24000;
+	const char *parent_name = "test-fixed-rate-parent";
+	struct clk_hw_fixed_rate_kunit_params parent_params = {
+		.name = parent_name,
+		.fixed_accuracy = parent_accuracy,
+	};
+
+	parent_hw = clk_hw_register_fixed_rate_kunit(test, &parent_params);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, parent_hw);
+	KUNIT_ASSERT_STREQ(test, parent_name, clk_hw_get_name(parent_hw));
+
+	hw = clk_hw_register_fixed_rate_with_accuracy(NULL, "test-fixed-rate",
+						      parent_name, 0, 0,
+						      expected_accuracy);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, hw);
+	KUNIT_ASSERT_EQ(test, 0, clk_hw_unregister_fixed_rate_kunit(test, hw));
+
+	clk = clk_hw_get_clk_kunit(test, hw, __func__);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_EXPECT_EQ(test, expected_accuracy, clk_get_accuracy(clk));
+}
+
+/* Test suite for a fixed rate clk with a parent */
+static struct kunit_case clk_fixed_rate_parent_test_cases[] = {
+	KUNIT_CASE(clk_fixed_rate_parent_test),
+	KUNIT_CASE(clk_fixed_rate_parent_rate_test),
+	KUNIT_CASE(clk_fixed_rate_parent_accuracy_test),
+	{}
+};
+
+static struct kunit_suite clk_fixed_rate_parent_suite = {
+	.name = "clk_fixed_rate_parent",
+	.test_cases = clk_fixed_rate_parent_test_cases,
+};
+
+struct clk_fixed_rate_of_test_context {
+	struct device *dev;
+	struct platform_driver pdrv;
+	struct completion probed;
+};
+
+static inline struct clk_fixed_rate_of_test_context *
+pdev_to_clk_fixed_rate_of_test_context(struct platform_device *pdev)
+{
+	return container_of(to_platform_driver(pdev->dev.driver),
+			    struct clk_fixed_rate_of_test_context,
+			    pdrv);
+}
+
+/*
+ * Test that of_fixed_clk_setup() registers a fixed rate clk with the proper
+ * rate.
+ */
+static void clk_fixed_rate_of_probe_test(struct kunit *test)
+{
+	struct clk_fixed_rate_of_test_context *ctx = test->priv;
+	struct device *dev = ctx->dev;
+	struct clk *clk;
+
+	clk = clk_get_kunit(test, dev, NULL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_ASSERT_EQ(test, 0, clk_prepare_enable_kunit(test, clk));
+	KUNIT_EXPECT_EQ(test, TEST_FIXED_FREQUENCY, clk_get_rate(clk));
+}
+
+/*
+ * Test that of_fixed_clk_setup() registers a fixed rate clk with the proper
+ * accuracy.
+ */
+static void clk_fixed_rate_of_accuracy_test(struct kunit *test)
+{
+	struct clk_fixed_rate_of_test_context *ctx = test->priv;
+	struct device *dev = ctx->dev;
+	struct clk *clk;
+
+	clk = clk_get_kunit(test, dev, NULL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, clk);
+
+	KUNIT_EXPECT_EQ(test, TEST_FIXED_ACCURACY, clk_get_accuracy(clk));
+}
+
+static struct kunit_case clk_fixed_rate_of_cases[] = {
+	KUNIT_CASE(clk_fixed_rate_of_probe_test),
+	KUNIT_CASE(clk_fixed_rate_of_accuracy_test),
+	{}
+};
+
+static int clk_fixed_rate_of_test_probe(struct platform_device *pdev)
+{
+	struct clk_fixed_rate_of_test_context *ctx;
+
+	ctx = pdev_to_clk_fixed_rate_of_test_context(pdev);
+	ctx->dev = &pdev->dev;
+	complete(&ctx->probed);
+
+	return 0;
+}
+
+static int clk_fixed_rate_of_init(struct kunit *test)
+{
+	struct clk_fixed_rate_of_test_context *ctx;
+	static const struct of_device_id match_table[] = {
+		{ .compatible = "test,single-clk-consumer" },
+		{ }
+	};
+
+	KUNIT_ASSERT_EQ(test, 0, of_overlay_apply_kunit(test, kunit_clk_fixed_rate_test));
+
+	ctx = kunit_kzalloc(test, sizeof(*ctx), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, ctx);
+	test->priv = ctx;
+
+	ctx->pdrv.probe = clk_fixed_rate_of_test_probe;
+	ctx->pdrv.driver.of_match_table = match_table;
+	ctx->pdrv.driver.name = __func__;
+	ctx->pdrv.driver.owner = THIS_MODULE;
+	init_completion(&ctx->probed);
+
+	KUNIT_ASSERT_EQ(test, 0, kunit_platform_driver_register(test, &ctx->pdrv));
+	KUNIT_ASSERT_NE(test, 0, wait_for_completion_timeout(&ctx->probed, HZ));
+
+	return 0;
+}
+
+static struct kunit_suite clk_fixed_rate_of_suite = {
+	.name = "clk_fixed_rate_of",
+	.init = clk_fixed_rate_of_init,
+	.test_cases = clk_fixed_rate_of_cases,
+};
+
+kunit_test_suites(
+	&clk_fixed_rate_suite,
+	&clk_fixed_rate_of_suite,
+	&clk_fixed_rate_parent_suite,
+);
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("KUnit test for clk fixed rate basic type");
diff --git a/drivers/clk/clk-fixed-rate_test.h b/drivers/clk/clk-fixed-rate_test.h
new file mode 100644
index 000000000000..e0d28e5b6081
--- /dev/null
+++ b/drivers/clk/clk-fixed-rate_test.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _CLK_FIXED_RATE_TEST_H
+#define _CLK_FIXED_RATE_TEST_H
+
+#define TEST_FIXED_FREQUENCY	50000000
+#define TEST_FIXED_ACCURACY	300
+
+#endif
diff --git a/drivers/clk/kunit_clk_fixed_rate_test.dtso b/drivers/clk/kunit_clk_fixed_rate_test.dtso
new file mode 100644
index 000000000000..d838ce766fa2
--- /dev/null
+++ b/drivers/clk/kunit_clk_fixed_rate_test.dtso
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0
+/dts-v1/;
+/plugin/;
+
+#include "clk-fixed-rate_test.h"
+
+&{/} {
+	fixed_50MHz: kunit-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <TEST_FIXED_FREQUENCY>;
+		clock-accuracy = <TEST_FIXED_ACCURACY>;
+	};
+
+	kunit-clock-consumer {
+		compatible = "test,single-clk-consumer";
+		clocks = <&fixed_50MHz>;
+	};
+};
-- 
https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/
https://git.kernel.org/pub/scm/linux/kernel/git/sboyd/spmi.git


