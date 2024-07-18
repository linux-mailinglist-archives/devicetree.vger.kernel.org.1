Return-Path: <devicetree+bounces-86648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED9D9352B0
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 23:05:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A06C21F22194
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 21:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4408145FEF;
	Thu, 18 Jul 2024 21:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GM7QXS8T"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92847145FE1;
	Thu, 18 Jul 2024 21:05:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721336717; cv=none; b=jJTBFwvSmaHNKlSki0RByjTa/AQ30im/mdq1FZBS7CIQM4jcjRKf/lpYqKG/KTGx0txsPncCswge6cUVHibbZyMjvMW7FP6H/PUq0JJr7C+4D9wYnWSgN3hzTMa+V5zPgTFXsodYS1CpwXNsl8CE32vFFwoveQl2PLWlr9KU6pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721336717; c=relaxed/simple;
	bh=Mcghtonb1+4dGFbTm3s16+SUcDCk3hG3Gde9pj3naiI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LVmC2nmAtxSrru4UHceH+hQvv0wWC0I3seu4o7IG0WhSsgyWfTxbuhAvMB8lq8k2OIU6IGB11+mm5MtiFaW2Dc79ehfCfWKdTX/3jvGdwzG7Fxylx/BQjz7OKe8nWRifHFBTFIP+nMBNB5mLpHFRnJf1kgl+P1Br1lKs5c+lfGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GM7QXS8T; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BEACC4AF0E;
	Thu, 18 Jul 2024 21:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721336717;
	bh=Mcghtonb1+4dGFbTm3s16+SUcDCk3hG3Gde9pj3naiI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GM7QXS8Tq9BOEsUyVAi4EO3NcSg1Oqjcvzc0sPOeHZfC99NFr40AoVHSXT6pYzVfB
	 lgWUiVdlxp/224BByQdIHg6rqjI+MTrAENDg/5IMhpqyAkfLcYWhqShZf4OygSxKtB
	 w3AZC2vb75XcUozmPG6/94MvGCtBPWSVNi22o2Mnpfcr+hb+U3MPdCOeoFwjCy7LHU
	 9YSEk6bZ2lk0VDHsUcJxLkGavOwOYrYmlyIuTYF0g98u/6hNcSueGxSAF8SUkrmmCb
	 tlubW07Z3/t5or2Dea2JpuXSsAo7yORRAYxqNvETKkX38jbZL1lEuX5zIGT1Ag2G1f
	 sbk/SBnjgNjOg==
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
	Maxime Ripard <maxime@cerno.tech>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH v8 2/8] of: Add test managed wrappers for of_overlay_apply()/of_node_put()
Date: Thu, 18 Jul 2024 14:05:01 -0700
Message-ID: <20240718210513.3801024-3-sboyd@kernel.org>
X-Mailer: git-send-email 2.45.2.1089.g2a221341d9-goog
In-Reply-To: <20240718210513.3801024-1-sboyd@kernel.org>
References: <20240718210513.3801024-1-sboyd@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add test managed wrappers for of_overlay_apply() that automatically
removes the overlay when the test is finished. This API is intended for
use by KUnit tests that test code which relies on 'struct device_node's
and of_*() APIs.

KUnit tests will call of_overlay_apply_kunit() to load an overlay that's
been built into the kernel image. When the test is complete, the overlay
will be removed.

This has a few benefits:

 1) It keeps the tests hermetic because the overlay is removed when the
    test is complete. Tests won't even be aware that an overlay was
    loaded in another test.

 2) The overlay code can live right next to the unit test that loads it.
    The overlay and the unit test can be compiled into one kernel module
    if desired.

 3) We can test different device tree configurations by loading
    different overlays. The overlays can be written for a specific test,
    and there can be many of them loaded per-test without needing to jam
    all possible combinations into one DTB.

 4) It also allows KUnit to test device tree dependent code on any
    architecture, not just UML. This allows KUnit tests to test
    architecture specific device tree code.

There are some potential pitfalls though. Test authors need to be
careful to not overwrite properties in the live tree. The easiest way to
do this is to add and remove nodes with a 'kunit-' prefix, almost
guaranteeing that the same node won't be present in the tree loaded at
boot.

Suggested-by: Rob Herring <robh@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Saravana Kannan <saravanak@google.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: David Gow <davidgow@google.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
---
 Documentation/dev-tools/kunit/api/index.rst |  11 ++
 Documentation/dev-tools/kunit/api/of.rst    |  13 +++
 drivers/of/Makefile                         |   1 +
 drivers/of/of_kunit_helpers.c               |  77 +++++++++++++
 include/kunit/of.h                          | 115 ++++++++++++++++++++
 5 files changed, 217 insertions(+)
 create mode 100644 Documentation/dev-tools/kunit/api/of.rst
 create mode 100644 drivers/of/of_kunit_helpers.c
 create mode 100644 include/kunit/of.h

diff --git a/Documentation/dev-tools/kunit/api/index.rst b/Documentation/dev-tools/kunit/api/index.rst
index 2d8f756aab56..282befa17edf 100644
--- a/Documentation/dev-tools/kunit/api/index.rst
+++ b/Documentation/dev-tools/kunit/api/index.rst
@@ -9,11 +9,15 @@ API Reference
 	test
 	resource
 	functionredirection
+	of
 
 
 This page documents the KUnit kernel testing API. It is divided into the
 following sections:
 
+Core KUnit API
+==============
+
 Documentation/dev-tools/kunit/api/test.rst
 
  - Documents all of the standard testing API
@@ -25,3 +29,10 @@ Documentation/dev-tools/kunit/api/resource.rst
 Documentation/dev-tools/kunit/api/functionredirection.rst
 
  - Documents the KUnit Function Redirection API
+
+Driver KUnit API
+================
+
+Documentation/dev-tools/kunit/api/of.rst
+
+ - Documents the KUnit device tree (OF) API
diff --git a/Documentation/dev-tools/kunit/api/of.rst b/Documentation/dev-tools/kunit/api/of.rst
new file mode 100644
index 000000000000..cb4193dcddbb
--- /dev/null
+++ b/Documentation/dev-tools/kunit/api/of.rst
@@ -0,0 +1,13 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+====================
+Device Tree (OF) API
+====================
+
+The KUnit device tree API is used to test device tree (of_*) dependent code.
+
+.. kernel-doc:: include/kunit/of.h
+   :internal:
+
+.. kernel-doc:: drivers/of/of_kunit_helpers.c
+   :export:
diff --git a/drivers/of/Makefile b/drivers/of/Makefile
index 251d33532148..2ae909adde49 100644
--- a/drivers/of/Makefile
+++ b/drivers/of/Makefile
@@ -19,6 +19,7 @@ obj-y	+= kexec.o
 endif
 endif
 
+obj-$(CONFIG_KUNIT) += of_kunit_helpers.o
 obj-$(CONFIG_OF_KUNIT_TEST) += of_test.o
 
 obj-$(CONFIG_OF_UNITTEST) += unittest-data/
diff --git a/drivers/of/of_kunit_helpers.c b/drivers/of/of_kunit_helpers.c
new file mode 100644
index 000000000000..287d6c91bb37
--- /dev/null
+++ b/drivers/of/of_kunit_helpers.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Test managed DeviceTree APIs
+ */
+
+#include <linux/of.h>
+#include <linux/of_fdt.h>
+
+#include <kunit/of.h>
+#include <kunit/test.h>
+#include <kunit/resource.h>
+
+#if defined(CONFIG_OF_OVERLAY) && defined(CONFIG_OF_EARLY_FLATTREE)
+
+static void of_overlay_fdt_apply_kunit_exit(void *ovcs_id)
+{
+	of_overlay_remove(ovcs_id);
+}
+
+/**
+ * of_overlay_fdt_apply_kunit() - Test managed of_overlay_fdt_apply()
+ * @test: test context
+ * @overlay_fdt: device tree overlay to apply
+ * @overlay_fdt_size: size in bytes of @overlay_fdt
+ * @ovcs_id: identifier of overlay, used to remove the overlay
+ *
+ * Just like of_overlay_fdt_apply(), except the overlay is managed by the test
+ * case and is automatically removed with of_overlay_remove() after the test
+ * case concludes.
+ *
+ * Return: 0 on success, negative errno on failure
+ */
+int of_overlay_fdt_apply_kunit(struct kunit *test, void *overlay_fdt,
+			       u32 overlay_fdt_size, int *ovcs_id)
+{
+	int ret;
+	int *copy_id;
+
+	copy_id = kunit_kmalloc(test, sizeof(*copy_id), GFP_KERNEL);
+	if (!copy_id)
+		return -ENOMEM;
+
+	ret = of_overlay_fdt_apply(overlay_fdt, overlay_fdt_size,
+				   ovcs_id, NULL);
+	if (ret)
+		return ret;
+
+	*copy_id = *ovcs_id;
+
+	return kunit_add_action_or_reset(test, of_overlay_fdt_apply_kunit_exit,
+					 copy_id);
+}
+EXPORT_SYMBOL_GPL(of_overlay_fdt_apply_kunit);
+
+#endif
+
+KUNIT_DEFINE_ACTION_WRAPPER(of_node_put_wrapper, of_node_put, struct device_node *);
+
+/**
+ * of_node_put_kunit() - Test managed of_node_put()
+ * @test: test context
+ * @node: node to pass to `of_node_put()`
+ *
+ * Just like of_node_put(), except the node is managed by the test case and is
+ * automatically put with of_node_put() after the test case concludes.
+ */
+void of_node_put_kunit(struct kunit *test, struct device_node *node)
+{
+	if (kunit_add_action(test, of_node_put_wrapper, node)) {
+		KUNIT_FAIL(test,
+			   "Can't allocate a kunit resource to put of_node\n");
+	}
+}
+EXPORT_SYMBOL_GPL(of_node_put_kunit);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Test managed DeviceTree APIs");
diff --git a/include/kunit/of.h b/include/kunit/of.h
new file mode 100644
index 000000000000..48d4e70c9666
--- /dev/null
+++ b/include/kunit/of.h
@@ -0,0 +1,115 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _KUNIT_OF_H
+#define _KUNIT_OF_H
+
+#include <kunit/test.h>
+
+struct device_node;
+
+#ifdef CONFIG_OF
+
+void of_node_put_kunit(struct kunit *test, struct device_node *node);
+
+#else
+
+static inline
+void of_node_put_kunit(struct kunit *test, struct device_node *node)
+{
+	kunit_skip(test, "requires CONFIG_OF");
+}
+
+#endif /* !CONFIG_OF */
+
+#if defined(CONFIG_OF) && defined(CONFIG_OF_OVERLAY) && defined(CONFIG_OF_EARLY_FLATTREE)
+
+int of_overlay_fdt_apply_kunit(struct kunit *test, void *overlay_fdt,
+			       u32 overlay_fdt_size, int *ovcs_id);
+#else
+
+static inline int
+of_overlay_fdt_apply_kunit(struct kunit *test, void *overlay_fdt,
+			   u32 overlay_fdt_size, int *ovcs_id)
+{
+	kunit_skip(test, "requires CONFIG_OF and CONFIG_OF_OVERLAY and CONFIG_OF_EARLY_FLATTREE for root node");
+	return -EINVAL;
+}
+
+#endif
+
+/**
+ * __of_overlay_apply_kunit() - Test managed of_overlay_fdt_apply() variant
+ * @test: test context
+ * @overlay_begin: start address of overlay to apply
+ * @overlay_end: end address of overlay to apply
+ *
+ * This is mostly internal API. See of_overlay_apply_kunit() for the wrapper
+ * that makes this easier to use.
+ *
+ * Similar to of_overlay_fdt_apply(), except the overlay is managed by the test
+ * case and is automatically removed with of_overlay_remove() after the test
+ * case concludes.
+ *
+ * Return: 0 on success, negative errno on failure
+ */
+static inline int __of_overlay_apply_kunit(struct kunit *test,
+					   u8 *overlay_begin,
+					   const u8 *overlay_end)
+{
+	int unused;
+
+	return of_overlay_fdt_apply_kunit(test, overlay_begin,
+					  overlay_end - overlay_begin,
+					  &unused);
+}
+
+/**
+ * of_overlay_apply_kunit() - Test managed of_overlay_fdt_apply() for built-in overlays
+ * @test: test context
+ * @overlay_name: name of overlay to apply
+ *
+ * This macro is used to apply a device tree overlay built with the
+ * cmd_dt_S_dtbo rule in scripts/Makefile.lib that has been compiled into the
+ * kernel image or KUnit test module. The overlay is automatically removed when
+ * the test is finished.
+ *
+ * Unit tests that need device tree nodes should compile an overlay file with
+ * @overlay_name\.dtbo.o in their Makefile along with their unit test and then
+ * load the overlay during their test. The @overlay_name matches the filename
+ * of the overlay without the dtbo filename extension. If CONFIG_OF_OVERLAY is
+ * not enabled, the @test will be skipped.
+ *
+ * In the Makefile
+ *
+ * .. code-block:: none
+ *
+ *	obj-$(CONFIG_OF_OVERLAY_KUNIT_TEST) += overlay_test.o kunit_overlay_test.dtbo.o
+ *
+ * In the test
+ *
+ * .. code-block:: c
+ *
+ *	static void of_overlay_kunit_of_overlay_apply(struct kunit *test)
+ *	{
+ *		struct device_node *np;
+ *
+ *		KUNIT_ASSERT_EQ(test, 0,
+ *				of_overlay_apply_kunit(test, kunit_overlay_test));
+ *
+ *		np = of_find_node_by_name(NULL, "test-kunit");
+ *		KUNIT_EXPECT_NOT_ERR_OR_NULL(test, np);
+ *		of_node_put(np);
+ *	}
+ *
+ * Return: 0 on success, negative errno on failure.
+ */
+#define of_overlay_apply_kunit(test, overlay_name)		\
+({								\
+	extern uint8_t __dtbo_##overlay_name##_begin[];		\
+	extern uint8_t __dtbo_##overlay_name##_end[];		\
+								\
+	__of_overlay_apply_kunit((test),			\
+			__dtbo_##overlay_name##_begin,		\
+			__dtbo_##overlay_name##_end);		\
+})
+
+#endif
-- 
https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/
https://git.kernel.org/pub/scm/linux/kernel/git/sboyd/spmi.git


