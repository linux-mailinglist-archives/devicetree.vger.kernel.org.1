Return-Path: <devicetree+bounces-84786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE6792D9CB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 22:13:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 125901F23719
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 20:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CEFB198A3E;
	Wed, 10 Jul 2024 20:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kxbY/VRg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5902F198A36;
	Wed, 10 Jul 2024 20:12:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720642370; cv=none; b=srnePuvDPQgbK5OfF8S+d9DJch53T1oOuwXsSqEDM13iuUe/dKENMQ4arJh74dllxS6854WRpWbdzwBEtlNMf+HByXG7kkQqy5gHLMCgvNMnzr50stGZpBs9DUy63Kbbv3eTVaf4mqphh+AxRGXqw43hUCTblTQHUe0u9bj9Lvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720642370; c=relaxed/simple;
	bh=Tusnno6H05ljVNhxGO/5iN+A8Rxsg1pegQIhzW4kj6Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FtQOaJ2p1cOAqWhqvVudZoLp5J5pTGaw4cohpAm4TTnH+tzICpWn+ro2DG3/pzfqdWQ8/KABCY8YkfbVy0BObUqqafK+RCmes4NP3Bsp6Ry1SXPiTwo8roA+eU8Yps90aTvAfCK3l2SBYRfIJ9BLrPne7BIkjQlnbjRgCu76Xiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kxbY/VRg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18B13C4AF0A;
	Wed, 10 Jul 2024 20:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720642369;
	bh=Tusnno6H05ljVNhxGO/5iN+A8Rxsg1pegQIhzW4kj6Y=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kxbY/VRgG8aF3YlrMrwyzBg6L2pV7I9oqLiB+s3xOAU2Fewt3sypUesi1zpe9bR8X
	 97Uu6NcM3e2bJlY9UrBvAZdv83ojTEJ6pEUn3VVZdOC7YPi1WR9ByGTiIgra7cXovq
	 jiFbLrnlccToy3RIiQaxrO/IbysjvFiKhxswCJK3+eoUVzDJezu8FYMbrxarhT6j+u
	 NJiSJGuTw2z8OY0zQv4QxMZcAmz7IykkjXwXcka0pU8OoW1WG2ixtfh3JjLJBjPsLf
	 TY+TXQBU8osgrTg7wqPCs3TqfWWHbJpnNg36O8sGaSDf1u9F0KGiNjUCtVDTFpl1+A
	 gd6/VrQr4JBRQ==
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
Subject: [PATCH v7 2/8] of: Add test managed wrappers for of_overlay_apply()/of_node_put()
Date: Wed, 10 Jul 2024 13:12:38 -0700
Message-ID: <20240710201246.1802189-3-sboyd@kernel.org>
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
 drivers/of/of_kunit_helpers.c               |  74 +++++++++++++
 include/kunit/of.h                          | 115 ++++++++++++++++++++
 5 files changed, 214 insertions(+)
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
index 000000000000..8a09132e32a8
--- /dev/null
+++ b/drivers/of/of_kunit_helpers.c
@@ -0,0 +1,74 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Test managed device tree APIs
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


