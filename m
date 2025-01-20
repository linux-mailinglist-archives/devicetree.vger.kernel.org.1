Return-Path: <devicetree+bounces-139791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E15A16E23
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 15:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD40F3A2FAB
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 14:10:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 958531E3780;
	Mon, 20 Jan 2025 14:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Vr9APz0r";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="y+BFT+a0"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB25C1E2842;
	Mon, 20 Jan 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737382195; cv=none; b=mwr9C+ZNHZFbfCLLZhzUKEtLYC5mDI+s6bSUdoCPsrOEBBhMOcfag3ppngwZUboWIAYwxebgnpvIcIdFwLOEEq6q/SVFKXnxRAjlc+Zo4QdfkbWzzAjAVAsS8mESISyWAHjF16bUJjd9DGazSEqUTQhONtaY8dfF7/PF1Ks3qSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737382195; c=relaxed/simple;
	bh=gOHcCsybXsCvfw84Ct+sSDfpztWb1jN3TKKvFCR6eT4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=m+x9f9fa974XfPE3VRPI+DVnMwS+nBMDQrBzhPADmbO7LlMMqAte6FnOGnZyhNjt4RlAnoOYHA50UvG1hRDWSjHrzqs3AuXrFp1XDg3hoIpJb9AU/uNNcFtut80r6i6lD105Az7lllv1GUSzV/mqIzynTY2bFAsHAtvO0GAoQTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Vr9APz0r; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=y+BFT+a0; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1737382191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x465JJNRGOdcBdDnCSb84eitmz3SHSIO0GVIdMHJ+ns=;
	b=Vr9APz0r92kWP7rVFuP1X/SQ3WtjzIa9Zwu5wQLvTEalWOmB60hBq3aT1EV0eyDBIDw90F
	2MHKi3TvCXknVJ8UqSLbswIGnemwRYzByriBjH42GozVji1BZ3DBSICJnJ/Sv5YnbUF29u
	bTeQIkiF6Qi3QhsAYFePNRRxhSR5AEr9NxyBerbNVOXzjTFhyBr+/DFQBEOOm6l4QeFJqb
	TbE0AVcHGIaPYMNuoBrQ9Pdsovsp5wbBDPs9EsDQA/DrOL1CZizsXIDl8UT0C8F5BZi5rr
	wlyZhCE7lr45PNZVoaxTUZB35oytEUOJ8j5lHeqWoClXpetIS9wDVWz7aQvzlQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1737382191;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=x465JJNRGOdcBdDnCSb84eitmz3SHSIO0GVIdMHJ+ns=;
	b=y+BFT+a0Yte5gC+Btotx33Rci1qD/dP+4mCUzThh85spZEMgWKggLtT7XqOkUqqk5Ms9AN
	VerWubbxB7lZ8UAQ==
Date: Mon, 20 Jan 2025 15:09:41 +0100
Subject: [PATCH 2/2] of: address: Add kunit test for
 __of_address_resource_bounds()
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250120-of-address-overflow-v1-2-dd68dbf47bce@linutronix.de>
References: <20250120-of-address-overflow-v1-0-dd68dbf47bce@linutronix.de>
In-Reply-To: <20250120-of-address-overflow-v1-0-dd68dbf47bce@linutronix.de>
To: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>
Cc: Basharath Hussain Khaja <basharath@couthit.com>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1737382189; l=5640;
 i=thomas.weissschuh@linutronix.de; s=20240209; h=from:subject:message-id;
 bh=gOHcCsybXsCvfw84Ct+sSDfpztWb1jN3TKKvFCR6eT4=;
 b=bvq6C7TfEoJaUBVb2OPQQTdSAgo8mIWF3C9aKF2pA0teH4WVwH/oRC7yuFP0Yfh5nGrEX5pA1
 +Bp9iwivRnvAooV5wdo6k/7buD5Cv3Wd6Ijs28Nr1mTm+UqV+Svvz1A
X-Developer-Key: i=thomas.weissschuh@linutronix.de; a=ed25519;
 pk=pfvxvpFUDJV2h2nY0FidLUml22uGLSjByFbM6aqQQws=

The overflow checking has to deal with different datatypes and
edgecases. Add a new kunit testcase to make sure it works correctly.

Signed-off-by: Thomas Weißschuh <thomas.weissschuh@linutronix.de>

---
Technically it's possible to run this unittest with !CONFIG_OF_ADDRESS,
so there is an explicit check inside the test.
It would also be possible to add a dedicated source file, but that
seemed like a lot of churn to me.
---
 drivers/of/address.c    |   5 +-
 drivers/of/of_private.h |   4 ++
 drivers/of/of_test.c    | 120 +++++++++++++++++++++++++++++++++++++++++++++++-
 3 files changed, 127 insertions(+), 2 deletions(-)

diff --git a/drivers/of/address.c b/drivers/of/address.c
index 5c0663066a7f3816a05077f99124ca25e3c152d7..84b8d16919dc4aae966a09f7fe0606b2e51c3dde 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -16,6 +16,8 @@
 #include <linux/string.h>
 #include <linux/dma-direct.h> /* for bus_dma_region */
 
+#include <kunit/visibility.h>
+
 #include "of_private.h"
 
 /* Max address size we deal with */
@@ -198,7 +200,7 @@ static u64 of_bus_pci_map(__be32 *addr, const __be32 *range, int na, int ns,
 
 #endif /* CONFIG_PCI */
 
-static int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
+VISIBLE_IF_KUNIT int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
 {
 	if (overflows_type(start, r->start))
 		return -EOVERFLOW;
@@ -212,6 +214,7 @@ static int __of_address_resource_bounds(struct resource *r, u64 start, u64 size)
 
 	return 0;
 }
+EXPORT_SYMBOL_IF_KUNIT(__of_address_resource_bounds);
 
 /*
  * of_pci_range_to_resource - Create a resource from an of_pci_range
diff --git a/drivers/of/of_private.h b/drivers/of/of_private.h
index ea5a0951ec5e107bab265ab5f6c043e2bfb15ecc..0d29d71ac7c62ae91bfac0c8d1518622729575cd 100644
--- a/drivers/of/of_private.h
+++ b/drivers/of/of_private.h
@@ -188,4 +188,8 @@ void __init fdt_scan_reserved_mem_reg_nodes(void);
 
 bool of_fdt_device_is_available(const void *blob, unsigned long node);
 
+#if IS_ENABLED(CONFIG_KUNIT)
+int __of_address_resource_bounds(struct resource *r, u64 start, u64 size);
+#endif
+
 #endif /* _LINUX_OF_PRIVATE_H */
diff --git a/drivers/of/of_test.c b/drivers/of/of_test.c
index b0557ded838fdf70f0b679c31ead38f501371304..b8eb1d4b76fdf3a16fc5dd24f8e6ed0c3fca5e9c 100644
--- a/drivers/of/of_test.c
+++ b/drivers/of/of_test.c
@@ -2,6 +2,7 @@
 /*
  * KUnit tests for OF APIs
  */
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of.h>
 
@@ -54,8 +55,125 @@ static struct kunit_suite of_dtb_suite = {
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
+		.ret = sizeof(resource_size_t) > sizeof(u32) ? 0 : -EOVERFLOW,
+		.res_start = (resource_size_t)0x100000000,
+		.res_end = (resource_size_t)0x100000000,
+	},
+	{
+		.start = 0x1000,
+		.size = 0xffffffff,
+		.ret = sizeof(resource_size_t) > sizeof(u32) ? 0 : -EOVERFLOW,
+		.res_start = (resource_size_t)0x1000,
+		.res_end = (resource_size_t)0x100000ffe,
+	},
+};
+
+KUNIT_ARRAY_PARAM(of_address_resource_bounds,
+		  of_address_resource_bounds_cases, of_address_resource_bounds_case_desc);
+
+static void of_address_resource_bounds(struct kunit *test)
+{
+	const struct of_address_resource_bounds_case *param;
+	struct resource r; /* Intentionally uninitialized */
+	int ret;
+
+	if (!IS_ENABLED(CONFIG_OF_ADDRESS))
+		kunit_skip(test, "CONFIG_OF_ADDRESS not enabled\n");
+
+	param = test->param_value;
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
 MODULE_LICENSE("GPL");

-- 
2.48.1


