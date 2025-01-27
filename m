Return-Path: <devicetree+bounces-141030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4169FA1D2A7
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 09:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 470A93A7E96
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 08:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDEAF1FCD1A;
	Mon, 27 Jan 2025 08:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="wdqpYhi4";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="xqpor/AY"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A471FE461;
	Mon, 27 Jan 2025 08:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737968158; cv=none; b=FEi7S6BYAqqXd5sbyLBlW/ZDTRXFblFCf+C2OYUMvYgp9BtXHX9ciKOKW3DY62aPzPypQ3/DBTF2iXmrvp3bgxmdA9xaBwZ6qn6EA/kPJxSq5HljiWmztc9ja0CaUc7Lj59igPJzBrCJYMuqpJ4jUZOMncGFIcoJy4Ev01UF5gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737968158; c=relaxed/simple;
	bh=Fvgzp/Yj3apZAPInQEppPrxpxmeDc28oASh5XSnT3uM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=eB/6zBvkbSs1r6qigLdYh26Ke36zmkkwdWZyfcuL/N6EZeOcEGW6TD2HnesDTBZU3yTz9boV2y7kyE+ste2B0gazI0QVjDz7FaWQmNzwWOzLZwzIe6+50IFI73IJ1C9lbm1CHmMrcud43MSNkBHvAY5SD0CLTlmi5pcE+MZKPNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=wdqpYhi4; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=xqpor/AY; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1737968154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sFEGkCPg4gre+fJcwX+olp/rkVhdUMhi11QYjJ3wsVI=;
	b=wdqpYhi4wNzyF/VbXzrEPIycCsc7oIFHO4OOPTFfgPWTwKLsEBXvYu4iF47ejLhbepygIp
	geyUKF/Y7cSQ/k3dwVAkh7gUVVkidTl4ZIY0G2OpwyaFBBOpxwpgrjMtvBCxENw7Z94KaD
	ck9hXXdh7RbnzzAa5bgPkDe10/F8S2wYIBmV4UUSr0n+6r70bmickktjrB9xWtZvKpzPbh
	5UzSyCjm8zMTbB7TGUfE50NPVaLulB96w4QW2vr7+KRDtSvJD+NZ3Wy02As0Uy4UUmTINN
	mOqmgYDeDj11dxF59Yx1sxUlEe1TfFI7MeMHnvqxIydLgW+ucA+H27JikPINUA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1737968154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sFEGkCPg4gre+fJcwX+olp/rkVhdUMhi11QYjJ3wsVI=;
	b=xqpor/AYgzbgygiDnws84Bo6TBzZsP9Id2X931WuRtn9lsgSUZBVppK1nVFrezAjbROq70
	DiAkTWqjE08YFvBw==
Date: Mon, 27 Jan 2025 09:55:31 +0100
Subject: [PATCH v2] of: address: Add kunit test for
 __of_address_resource_bounds()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250127-of-address-overflow-v2-1-61b5046044e9@linutronix.de>
X-B4-Tracking: v=1; b=H4sIAAJKl2cC/32NTQ6CMBBGr0Jm7ZhS+dOV9zAsgE5lEtKSKVYM4
 e5WDuDyveR73waBhCnALdtAKHJg7xLoUwbD2LknIZvEoJUuVa4VeoudMUIhoI8kdvJv7MprUVe
 XSjdNCWk5C1lej+qjTTxyWLx8jpOY/+z/XsxRoTFVY3pb1P1A94ndaxHveD0bgnbf9y86mYePu
 gAAAA==
X-Change-ID: 20250120-of-address-overflow-a59476362885
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Basharath Hussain Khaja <basharath@couthit.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737968150; l=6263;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=Fvgzp/Yj3apZAPInQEppPrxpxmeDc28oASh5XSnT3uM=;
 b=GvfC+1lV1zVzSBYxb+WnK6+mZV7w4kmxX7XvS/0LLg8YE0aey8b1bNcW7I2NPX4hMyapxtf6o
 Gf6Vp7eKVU5CFcP85yDL0sDUFGN/NHVKHZGY8rH4FDFZ06fJ48/t6e9
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=

The overflow checking has to deal with different datatypes and
edgecases. Add a new kunit testcase to make sure it works correctly.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>
---
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
 drivers/of/of_test.c    | 121 +++++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 128 insertions(+), 2 deletions(-)

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
index b0557ded838fdf70f0b679c31ead38f501371304..d86270455be8562d3100c6dca8986ab4bb661dbe 100644
--- a/drivers/of/of_test.c
+++ b/drivers/of/of_test.c
@@ -2,6 +2,7 @@
 /*
  * KUnit tests for OF APIs
  */
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of.h>
 
@@ -54,8 +55,126 @@ static struct kunit_suite of_dtb_suite = {
 	.init = of_dtb_test_init,
 };
 
+struct of_address_resource_bounds_case {
+	u64 start;
+	u64 size;
+	int ret;
+
+	resource_size_t res_start;
+	resource_size_t res_end;
+};
+
+static void of_address_resource_bounds_case_desc(const struct of_address_resource_bounds_case *p,
+						 char *name)
+{
+	snprintf(name, KUNIT_PARAM_DESC_SIZE, "start=0x%016llx,size=0x%016llx", p->start, p->size);
+}
+
+#define resource_size_32bit() (sizeof(resource_size_t) == sizeof(u32))
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
+		.start = 0x100000000ULL,
+		.size = 1,
+		.ret = resource_size_32bit() ? -EOVERFLOW : 0,
+		.res_start = resource_size_32bit() ? 0 : 0x100000000,
+		.res_end = resource_size_32bit() ? 0 : 0x100000000,
+	},
+	{
+		.start = 0x1000,
+		.size = 0xffffffff,
+		.ret = resource_size_32bit() ? -EOVERFLOW : 0,
+		.res_start = 0x1000,
+		.res_end = resource_size_32bit() ? 0 : 0x100000ffe,
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
+		KUNIT_EXPECT_EQ(test, param->res_start, r.start);
+		KUNIT_EXPECT_EQ(test, param->res_end, r.end);
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


