Return-Path: <devicetree+bounces-141670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49136A21DEB
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 14:35:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 654593A5D91
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 13:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD5DDDA9;
	Wed, 29 Jan 2025 13:35:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="NRUiKvmV";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="/+3Klpeg"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9391FDD;
	Wed, 29 Jan 2025 13:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738157737; cv=none; b=Ifj+kiRuS5g5uvF3GTFhi2wVIAtQlDyFgY2GiZZK3ldGFiIKLCZerE+tvREXQOgKHJoqIzkQbT11Mfm0ue8Y9w7Wddi+KfegEgbd9ofppgGCPKlvllngLF0FopJ3tk4bp07g3zFx+KkqYFa1o5vJlzjMdf+obPhnCTNUQSg1G4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738157737; c=relaxed/simple;
	bh=J4XlGBc+tMImfQaxv9uBkMDoBS+YbjM+R52tQoIwJ48=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kWKGdfZ/Sf4GL6zuX39gPshTVzfaFEU/GnLygc0KoyvRH+kT6lF7tk1OlffYpeMEsL2QOvmfu/p89UzWWtcgbTlAD0xbM3rUdu+9qrC7K0zu6P5tITRbGuEnUe0wdLmRa3PO1eb1HaedFLhI7wTon20X70UZ05tnKm5SnRNqeV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=NRUiKvmV; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=/+3Klpeg; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1738157733;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=01swkCTfzFuMOx6T4s/kjh8AWVdXMgMO+nkmNoE6yWc=;
	b=NRUiKvmVhiAbl2lCGg35Wz/ixzngGYrkWLL6K3+fE4ymGOGhB8LOVYYya4rXeQyUCuVU6s
	j7Bl1+eFJ8Po7EbRuWdTn2Ibb0aYeUbKXae7cnu3b0PCjKtYtcy922jvc6Xdw4Z1j8FjUP
	hCyV0sVcqMs4VQtaPPxsZetRwp/Fx0H+MmvOQwGIJC2jQOVkRvM2PL1HAhZLdlPxowu+cw
	FzcZ8R+HbAC1qH3fswiEgcWHxMRCl/untIQQ21SzmAi1H9k/tfCMf1w4A8xDVejjYJaaJR
	+Sk/ZYSGgicKyzsL7OGM4if7kCZwSKJgdn1NLckKQ3qUvv4kq9aUff7rvz3Ifg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1738157733;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=01swkCTfzFuMOx6T4s/kjh8AWVdXMgMO+nkmNoE6yWc=;
	b=/+3KlpegYqj9ZJynUJbQhkBLSDhHE1ZIk4GyeDdLlDWz6e/drxq0ML7ixS6PMB0HW13I/u
	/E+oMRmai1rb3KDw==
Date: Wed, 29 Jan 2025 14:35:27 +0100
Subject: [PATCH v3] of: address: Add kunit test for
 __of_address_resource_bounds()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250129-of-address-overflow-v3-1-95d1760ed791@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAJ4ummcC/33N0Q6CIBTG8VdxXHcaIKB21Xu0LlQOyeaggZHN+
 e6hV621Lv/fdn5nIRGDxUhOxUICJhutdznKQ0H6oXU3BKtzE065pIxT8AZarQPGCD5hMKN/Qis
 bUalS8bqWJF/eAxo77+rlmnuwcfLhtT9JbFv/e4kBBa1VrTsjqq7H82jdYwre2fmokWxm4p9O9
 dvhwECxTlKhqBDYfDvrur4BqxuUNQIBAAA=
X-Change-ID: 20250120-of-address-overflow-a59476362885
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Basharath Hussain Khaja <basharath@couthit.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1738157732; l=6401;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=J4XlGBc+tMImfQaxv9uBkMDoBS+YbjM+R52tQoIwJ48=;
 b=Y0z3JoxWkd+bCKip6zStlUFRqtVK0OCbOkD4uhroMlrbatVz3PW7MRtUYBVmOHN0bvnGN+5vi
 fuisGQtDdPsDpezpymEZecYZYWlnk9GmXuH08fpJBJ1ahXiPESG4m1N
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=

The overflow checking has to deal with different datatypes and
edgecases. Add a new kunit testcase to make sure it works correctly.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
Changes in v3:
- Avoid constant truncation warnings by using u64 for test case
  expectations
- Run through 0day before submission
- Link to v2: https://lore.kernel.org/r/20250127-of-address-overflow-v2-1-61b5046044e9@linutronix.de

Changes in v2:
- Rebase on robh/for-master
- Drop already applied patch
- Add missing MODULE_IMPORT_NS()
- Fix sparse warnings: "cast truncates bits from constant value"
- Link to v1: https://lore.kernel.org/r/20250120-of-address-overflow-v1-0-dd68dbf47bce@linutronix.de
---
Technically it's possible to run this unittest with !CONFIG_OF_ADDRESS,
so there is an explicit check inside the test.
It would also be possible to add a dedicated source file, but that
seemed like a lot of churn to me.
---
 drivers/of/address.c    |   5 +-
 drivers/of/of_private.h |   4 ++
 drivers/of/of_test.c    | 119 +++++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 26f7fc3d759976539dbd05fb07fe25b27ae4faa7..4976cdf33dd4d81b0de6b979bb79bce734634af5 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -16,6 +16,8 @@
 #include <linux/string.h>
 #include <linux/dma-direct.h> /* for bus_dma_region */
 
+#include <kunit/visibility.h>
+
 /* Uncomment me to enable of_dump_addr() debugging output */
 // #define DEBUG
 
@@ -183,7 +185,7 @@ static u64 of_bus_pci_map(__be32 *addr, const __be32 *range, int na, int ns,
 
 #endif /* CONFIG_PCI */
 
-static int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
+VISIBLE_IF_KUNIT int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
 {
 	if (overflows_type(start, r->start))
 		return -EOVERFLOW;
@@ -197,6 +199,7 @@ static int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
 
 	return 0;
 }
+EXPORT_SYMBOL_IF_KUNIT(__of_address_resource_bounds);
 
 /*
  * of_pci_range_to_resource - Create a resource from an of_pci_range
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index f3e1193c8ded4899f39677a76da073e2266a1b9a..1bdc7ceef3c5fc854bd7708a50281bbfa439838d 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -208,4 +208,8 @@ static void __maybe_unused of_dump_addr(const char *s, const __be32 *addr, int n
 static void __maybe_unused of_dump_addr(const char *s, const __be32 *addr, int na) { }
 #endif
 
+#if IS_ENABLED(CONFIG_KUNIT)
+int __of_address_resource_bounds(struct resource *r, u64 start, u64 size);
+#endif
+
 #endif /* _LINUX_OF_PRIVATE_H */
diff --git a/drivers/of/of_test.c b/drivers/of/of_test.c
index b0557ded838fdf70f0b679c31ead38f501371304..8bba5a72c9c7ca7d1ac9b1c5a4dbe2850c328c43 100644
--- a/drivers/of/of_test.c
+++ b/drivers/of/of_test.c
@@ -2,6 +2,7 @@
 /*
  * KUnit tests for OF APIs
  */
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of.h>
 
@@ -54,8 +55,124 @@ static struct kunit_suite of_dtb_suite = {
 	.init = of_dtb_test_init,
 };
 
+struct of_address_resource_bounds_case {
+	u64 start;
+	u64 size;
+	int ret;
+
+	u64 res_start;
+	u64 res_end;
+};
+
+static void of_address_resource_bounds_case_desc(const struct of_address_resource_bounds_case *p,
+						 char *name)
+{
+	snprintf(name, KUNIT_PARAM_DESC_SIZE, "start=0x%016llx,size=0x%016llx", p->start, p->size);
+}
+
+static const struct of_address_resource_bounds_case of_address_resource_bounds_cases[] = {
+	{
+		.start = 0,
+		.size = 0,
+		.ret = 0,
+		.res_start = 0,
+		.res_end = -1,
+	},
+	{
+		.start = 0,
+		.size = 0x1000,
+		.ret = 0,
+		.res_start = 0,
+		.res_end = 0xfff,
+	},
+	{
+		.start = 0x1000,
+		.size = 0,
+		.ret = 0,
+		.res_start = 0x1000,
+		.res_end = 0xfff,
+	},
+	{
+		.start = 0x1000,
+		.size = 0x1000,
+		.ret = 0,
+		.res_start = 0x1000,
+		.res_end = 0x1fff,
+	},
+	{
+		.start = 1,
+		.size = RESOURCE_SIZE_MAX,
+		.ret = 0,
+		.res_start = 1,
+		.res_end = RESOURCE_SIZE_MAX,
+	},
+	{
+		.start = RESOURCE_SIZE_MAX,
+		.size = 1,
+		.ret = 0,
+		.res_start = RESOURCE_SIZE_MAX,
+		.res_end = RESOURCE_SIZE_MAX,
+	},
+	{
+		.start = 2,
+		.size = RESOURCE_SIZE_MAX,
+		.ret = -EOVERFLOW,
+	},
+	{
+		.start = RESOURCE_SIZE_MAX,
+		.size = 2,
+		.ret = -EOVERFLOW,
+	},
+	{
+		.start = ULL(0x100000000),
+		.size = 1,
+		.ret = sizeof(resource_size_t) > sizeof(u32) ? 0 : -EOVERFLOW,
+		.res_start = ULL(0x100000000),
+		.res_end = ULL(0x100000000),
+	},
+	{
+		.start = 0x1000,
+		.size = 0xffffffff,
+		.ret = sizeof(resource_size_t) > sizeof(u32) ? 0 : -EOVERFLOW,
+		.res_start = 0x1000,
+		.res_end = ULL(0x100000ffe),
+	},
+};
+
+KUNIT_ARRAY_PARAM(of_address_resource_bounds,
+		  of_address_resource_bounds_cases, of_address_resource_bounds_case_desc);
+
+static void of_address_resource_bounds(struct kunit *test)
+{
+	const struct of_address_resource_bounds_case *param = test->param_value;
+	struct resource r; /* Intentionally uninitialized */
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OF_ADDRESS))
+		kunit_skip(test, "CONFIG_OF_ADDRESS not enabled\n");
+
+	ret = __of_address_resource_bounds(&r, param->start, param->size);
+	KUNIT_EXPECT_EQ(test, param->ret, ret);
+	if (ret == 0) {
+		KUNIT_EXPECT_EQ(test, (resource_size_t)param->res_start, r.start);
+		KUNIT_EXPECT_EQ(test, (resource_size_t)param->res_end, r.end);
+		KUNIT_EXPECT_EQ(test, param->size, resource_size(&r));
+	}
+}
+
+static struct kunit_case of_address_test_cases[] = {
+	KUNIT_CASE_PARAM(of_address_resource_bounds, of_address_resource_bounds_gen_params),
+	{}
+};
+
+static struct kunit_suite of_address_suite = {
+	.name = "of_address",
+	.test_cases = of_address_test_cases,
+};
+
 kunit_test_suites(
-	&of_dtb_suite,
+	&of_dtb_suite, &of_address_suite,
 );
 MODULE_DESCRIPTION("KUnit tests for OF APIs");
+MODULE_IMPORT_NS("EXPORTED_FOR_KUNIT_TESTING");
 MODULE_LICENSE("GPL");

---
base-commit: 15e2f65f2ecfeb8e39315522e2b5cfdc5651fc10
change-id: 20250120-of-address-overflow-a59476362885

Best regards,
-- 
Thomas Weißschuh <thomas.weissschuh@linutronix.de>


