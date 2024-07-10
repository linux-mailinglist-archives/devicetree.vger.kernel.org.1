Return-Path: <devicetree+bounces-84790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAF892D9DB
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 22:14:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41FF01C21205
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 20:14:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E5121991D4;
	Wed, 10 Jul 2024 20:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VfB73g2c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F80A1991C9;
	Wed, 10 Jul 2024 20:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720642374; cv=none; b=M3vT37jp3TnnEwJVfWIaIQj3oMamPTK+k1b+w8G6s2R5MWNZ3mtV9PBRjUcuwXvcQ8/XVpsNtyme7536KeZnFeFfU65tEnkSeinaXxkWdmkk8Nx5hArnQErzL4PS4REdB/iWXCtiy4d7PW6a7vyq8uorlG9SMGnhBGgiCw8PqbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720642374; c=relaxed/simple;
	bh=KwV2WIt8G9niEYFmK0i6SRUe2WfayHMVr7uhmSgiDTo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LHZUL0iGdjA4ccnr7xkBv0OrK8SENjup+tGs9HNfLe2jochek40uvRBxdiXabx6K2NcCoJmSCabmnkSYpaJWsw8dF2pw4YGajSqyWt//loaC0DyTIn2af7Usz6pjbiuKZ+SdqPgC+qi/ClNThayfzlKewlrsWk6BUhv9jWW4snM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VfB73g2c; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36E99C4AF10;
	Wed, 10 Jul 2024 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720642374;
	bh=KwV2WIt8G9niEYFmK0i6SRUe2WfayHMVr7uhmSgiDTo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=VfB73g2cHrTRQf5F8xA+zEerbdlcc1PuJzDal8WsreFKficbdU+zHX9UUV9/uKby9
	 AqIseRWflNX54ZgmbMemtJWYrrXYf0X6/Jl9e59Fk6eQ1bAS5wgHrLJYJYUti1yOHF
	 z/zcrvbj2vAVFeGACC0HoXoBeSOd48Enc/tqY1TOCrUARsu1lQXPqJfOxC8ATPUG2S
	 NGFW1JV8zbyZNB9Ng9OLWkTtH9w58pGsclJ+aA6WkO4my2yIajV77Aod1E+Tsp5xKL
	 xKfHLKjEOgoSRlY6KQTTuCGioUn9fs1AFTIRBBcioLKAekxE20ryZQLw8BTpZsibnQ
	 GiD2zN8a/Miwg==
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
Subject: [PATCH v7 6/8] clk: Add test managed clk provider/consumer APIs
Date: Wed, 10 Jul 2024 13:12:42 -0700
Message-ID: <20240710201246.1802189-7-sboyd@kernel.org>
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

Unit tests are more ergonomic and simpler to understand if they don't
have to hoist a bunch of code into the test harness init and exit
functions. Add some test managed wrappers for the clk APIs so that clk
unit tests can write more code in the actual test and less code in the
harness.

Only add APIs that are used for now. More wrappers can be added in the
future as necessary.

Cc: Brendan Higgins <brendan.higgins@linux.dev>
Cc: David Gow <davidgow@google.com>
Cc: Rae Moar <rmoar@google.com>
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
---
 Documentation/dev-tools/kunit/api/clk.rst   |  10 +
 Documentation/dev-tools/kunit/api/index.rst |   5 +
 drivers/clk/Makefile                        |   5 +
 drivers/clk/clk_kunit_helpers.c             | 204 ++++++++++++++++++++
 include/kunit/clk.h                         |  28 +++
 5 files changed, 252 insertions(+)
 create mode 100644 Documentation/dev-tools/kunit/api/clk.rst
 create mode 100644 drivers/clk/clk_kunit_helpers.c
 create mode 100644 include/kunit/clk.h

diff --git a/Documentation/dev-tools/kunit/api/clk.rst b/Documentation/dev-tools/kunit/api/clk.rst
new file mode 100644
index 000000000000..eeaa50089453
--- /dev/null
+++ b/Documentation/dev-tools/kunit/api/clk.rst
@@ -0,0 +1,10 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+========
+Clk API
+========
+
+The KUnit clk API is used to test clk providers and clk consumers.
+
+.. kernel-doc:: drivers/clk/clk_kunit_helpers.c
+   :export:
diff --git a/Documentation/dev-tools/kunit/api/index.rst b/Documentation/dev-tools/kunit/api/index.rst
index 02b26f5e8750..5cdb552a0808 100644
--- a/Documentation/dev-tools/kunit/api/index.rst
+++ b/Documentation/dev-tools/kunit/api/index.rst
@@ -9,6 +9,7 @@ API Reference
 	test
 	resource
 	functionredirection
+	clk
 	of
 	platformdevice
 
@@ -34,6 +35,10 @@ Documentation/dev-tools/kunit/api/functionredirection.rst
 Driver KUnit API
 ================
 
+Documentation/dev-tools/kunit/api/clk.rst
+
+ - Documents the KUnit clk API
+
 Documentation/dev-tools/kunit/api/of.rst
 
  - Documents the KUnit device tree (OF) API
diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile
index 4abe16c8ccdf..8bb63f1ddd98 100644
--- a/drivers/clk/Makefile
+++ b/drivers/clk/Makefile
@@ -18,6 +18,11 @@ ifeq ($(CONFIG_OF), y)
 obj-$(CONFIG_COMMON_CLK)	+= clk-conf.o
 endif
 
+# KUnit specific helpers
+ifeq ($(CONFIG_COMMON_CLK), y)
+obj-$(CONFIG_KUNIT)		+= clk_kunit_helpers.o
+endif
+
 # hardware specific clock types
 # please keep this section sorted lexicographically by file path name
 obj-$(CONFIG_COMMON_CLK_APPLE_NCO)  	+= clk-apple-nco.o
diff --git a/drivers/clk/clk_kunit_helpers.c b/drivers/clk/clk_kunit_helpers.c
new file mode 100644
index 000000000000..c4287d20214c
--- /dev/null
+++ b/drivers/clk/clk_kunit_helpers.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * KUnit helpers for clk providers and consumers
+ */
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/err.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+
+#include <kunit/clk.h>
+#include <kunit/resource.h>
+
+KUNIT_DEFINE_ACTION_WRAPPER(clk_disable_unprepare_wrapper,
+			    clk_disable_unprepare, struct clk *);
+/**
+ * clk_prepare_enable_kunit() - Test managed clk_prepare_enable()
+ * @test: The test context
+ * @clk: clk to prepare and enable
+ *
+ * Return: 0 on success, or negative errno on failure.
+ */
+int clk_prepare_enable_kunit(struct kunit *test, struct clk *clk)
+{
+	int ret;
+
+	ret = clk_prepare_enable(clk);
+	if (ret)
+		return ret;
+
+	return kunit_add_action_or_reset(test, clk_disable_unprepare_wrapper,
+					 clk);
+}
+EXPORT_SYMBOL_GPL(clk_prepare_enable_kunit);
+
+KUNIT_DEFINE_ACTION_WRAPPER(clk_put_wrapper, clk_put, struct clk *);
+
+static struct clk *__clk_get_kunit(struct kunit *test, struct clk *clk)
+{
+	int ret;
+
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = kunit_add_action_or_reset(test, clk_put_wrapper, clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return clk;
+}
+
+/**
+ * clk_get_kunit() - Test managed clk_get()
+ * @test: The test context
+ * @dev: device for clock "consumer"
+ * @con_id: clock consumer ID
+ *
+ * Just like clk_get(), except the clk is managed by the test case and is
+ * automatically put with clk_put() after the test case concludes.
+ *
+ * Return: new clk consumer or ERR_PTR on failure.
+ */
+struct clk *
+clk_get_kunit(struct kunit *test, struct device *dev, const char *con_id)
+{
+	struct clk *clk;
+
+	clk = clk_get(dev, con_id);
+
+	return __clk_get_kunit(test, clk);
+}
+EXPORT_SYMBOL_GPL(clk_get_kunit);
+
+/**
+ * of_clk_get_kunit() - Test managed of_clk_get()
+ * @test: The test context
+ * @np: device_node for clock "consumer"
+ * @index: index in 'clocks' property of @np
+ *
+ * Just like of_clk_get(), except the clk is managed by the test case and is
+ * automatically put with clk_put() after the test case concludes.
+ *
+ * Return: new clk consumer or ERR_PTR on failure.
+ */
+struct clk *
+of_clk_get_kunit(struct kunit *test, struct device_node *np, int index)
+{
+	struct clk *clk;
+
+	clk = of_clk_get(np, index);
+
+	return __clk_get_kunit(test, clk);
+}
+EXPORT_SYMBOL_GPL(of_clk_get_kunit);
+
+/**
+ * clk_hw_get_clk_kunit() - Test managed clk_hw_get_clk()
+ * @test: The test context
+ * @hw: clk_hw associated with the clk being consumed
+ * @con_id: connection ID string on device
+ *
+ * Just like clk_hw_get_clk(), except the clk is managed by the test case and
+ * is automatically put with clk_put() after the test case concludes.
+ *
+ * Return: new clk consumer or ERR_PTR on failure.
+ */
+struct clk *
+clk_hw_get_clk_kunit(struct kunit *test, struct clk_hw *hw, const char *con_id)
+{
+	struct clk *clk;
+
+	clk = clk_hw_get_clk(hw, con_id);
+
+	return __clk_get_kunit(test, clk);
+}
+EXPORT_SYMBOL_GPL(clk_hw_get_clk_kunit);
+
+/**
+ * clk_hw_get_clk_prepared_enabled_kunit() - Test managed clk_hw_get_clk() + clk_prepare_enable()
+ * @test: The test context
+ * @hw: clk_hw associated with the clk being consumed
+ * @con_id: connection ID string on device
+ *
+ * Just like
+ *
+ * .. code-block:: c
+ *
+ *	struct clk *clk = clk_hw_get_clk(...);
+ *	clk_prepare_enable(clk);
+ *
+ * except the clk is managed by the test case and is automatically disabled and
+ * unprepared with clk_disable_unprepare() and put with clk_put() after the
+ * test case concludes.
+ *
+ * Return: new clk consumer that is prepared and enabled or ERR_PTR on failure.
+ */
+struct clk *
+clk_hw_get_clk_prepared_enabled_kunit(struct kunit *test, struct clk_hw *hw,
+				      const char *con_id)
+{
+	int ret;
+	struct clk *clk;
+
+	clk = clk_hw_get_clk_kunit(test, hw, con_id);
+	if (IS_ERR(clk))
+		return clk;
+
+	ret = clk_prepare_enable_kunit(test, clk);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return clk;
+}
+EXPORT_SYMBOL_GPL(clk_hw_get_clk_prepared_enabled_kunit);
+
+KUNIT_DEFINE_ACTION_WRAPPER(clk_hw_unregister_wrapper,
+			    clk_hw_unregister, struct clk_hw *);
+
+/**
+ * clk_hw_register_kunit() - Test managed clk_hw_register()
+ * @test: The test context
+ * @dev: device that is registering this clock
+ * @hw: link to hardware-specific clock data
+ *
+ * Just like clk_hw_register(), except the clk registration is managed by the
+ * test case and is automatically unregistered after the test case concludes.
+ *
+ * Return: 0 on success or a negative errno value on failure.
+ */
+int clk_hw_register_kunit(struct kunit *test, struct device *dev, struct clk_hw *hw)
+{
+	int ret;
+
+	ret = clk_hw_register(dev, hw);
+	if (ret)
+		return ret;
+
+	return kunit_add_action_or_reset(test, clk_hw_unregister_wrapper, hw);
+}
+EXPORT_SYMBOL_GPL(clk_hw_register_kunit);
+
+/**
+ * of_clk_hw_register_kunit() - Test managed of_clk_hw_register()
+ * @test: The test context
+ * @node: device_node of device that is registering this clock
+ * @hw: link to hardware-specific clock data
+ *
+ * Just like of_clk_hw_register(), except the clk registration is managed by
+ * the test case and is automatically unregistered after the test case
+ * concludes.
+ *
+ * Return: 0 on success or a negative errno value on failure.
+ */
+int of_clk_hw_register_kunit(struct kunit *test, struct device_node *node, struct clk_hw *hw)
+{
+	int ret;
+
+	ret = of_clk_hw_register(node, hw);
+	if (ret)
+		return ret;
+
+	return kunit_add_action_or_reset(test, clk_hw_unregister_wrapper, hw);
+}
+EXPORT_SYMBOL_GPL(of_clk_hw_register_kunit);
diff --git a/include/kunit/clk.h b/include/kunit/clk.h
new file mode 100644
index 000000000000..73bc99cefe7b
--- /dev/null
+++ b/include/kunit/clk.h
@@ -0,0 +1,28 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _CLK_KUNIT_H
+#define _CLK_KUNIT_H
+
+struct clk;
+struct clk_hw;
+struct device;
+struct device_node;
+struct kunit;
+
+struct clk *
+clk_get_kunit(struct kunit *test, struct device *dev, const char *con_id);
+struct clk *
+of_clk_get_kunit(struct kunit *test, struct device_node *np, int index);
+
+struct clk *
+clk_hw_get_clk_kunit(struct kunit *test, struct clk_hw *hw, const char *con_id);
+struct clk *
+clk_hw_get_clk_prepared_enabled_kunit(struct kunit *test, struct clk_hw *hw,
+				      const char *con_id);
+
+int clk_prepare_enable_kunit(struct kunit *test, struct clk *clk);
+
+int clk_hw_register_kunit(struct kunit *test, struct device *dev, struct clk_hw *hw);
+int of_clk_hw_register_kunit(struct kunit *test, struct device_node *node,
+			     struct clk_hw *hw);
+
+#endif
-- 
https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/
https://git.kernel.org/pub/scm/linux/kernel/git/sboyd/spmi.git


