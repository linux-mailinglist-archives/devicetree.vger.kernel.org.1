Return-Path: <devicetree+bounces-257321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CFaCBn9wcGktYAAAu9opvQ
	(envelope-from <devicetree+bounces-257321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:21:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B430A51FE2
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 07:21:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 84B605E6E42
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 11:12:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF035352F94;
	Tue, 20 Jan 2026 11:11:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="gdUulpUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BF9541C307
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 11:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768907487; cv=none; b=ZSbGQ+hHH4efc7vPQNKJbtsYH29COcl/tklm/7J/sFkvWIVkLT0Vw5Off9H7daKkqqTPSevHZ/u8WU1xeoCmWwAToQUhBdpETPbAcvCZaGl8/scyOdji4SJsq5RAEGXkQaB5pOCZw7t7115vYyDnT2txKtlAHAAtG50EJOjNfkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768907487; c=relaxed/simple;
	bh=lG6zSJkAeOhVEW0tGblKsxpTnhZQhwmmCOaPF4JiYEM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dUHgCuuy7TxzugunYJDNk0vLGuNXLhHSUy/uu3dydm7YNMm19RAL4IZTLffGwsSy+1gvRkPyu2dB8nzwimB6KBhcWrBr4DfDqLGebehuh0mFM04zIOE496jOYz4+RfI92WeNpqB5eqdZjoR2We8TE9QNjqw155jSNDU5vb3WvFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=gdUulpUu; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-81dbc0a99d2so2663153b3a.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 03:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768907484; x=1769512284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uez6X+iymQJpeDjdab9LEMJvp0cchNgB+RDT9Qm0CoM=;
        b=gdUulpUupp054v6R/buLyobwxO1MxvSAkfNi0FqHxieF8TdUumNWUBi2XhIKFsowpP
         JfdzeJty3vOqsO5Qr+a2ER9xylSlLM3XwUIUCfZTS+3jwswGBxovprNlY+ceSXM5X7so
         eUJg7vDpfOH7FhSZPglC+1XCSUAxcdC+dRgVYeyeUi5Ikai81pLnepJ/kcrQBgR/PhvB
         RJLxTA7ykWnjsetqkrIHBW9M9C9QyT94hh748b9YJp1IA1lv6yve9B3XcD9k6FfqL3fD
         YCSRrjyM2ZLxhuBfF64QAzgMDtSgbOsmHumwVcPMoiUWBxHuMFRVBhTxulF7f9A9VSjn
         lWFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768907484; x=1769512284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Uez6X+iymQJpeDjdab9LEMJvp0cchNgB+RDT9Qm0CoM=;
        b=P4eluz2hm0P7yX/FBCjPB/ck+ei6p1DXg7M3froJfb01LpjqgFG7VCGikghygLqb4p
         N2cuSm3ce89Fs8XMCToRKNQEZPvVq6WllG02mSjqbUdvTy/RCgWBwwL+YU9pGmrGsOkU
         JbEUN8Q4g09UOcyT65cgZVZ4cMoFTbwzDr9PEbWiU1aaFLGBslSFjgmbSKzbcnZUPLs+
         DpWXKVaIbLZ9uNNDDHsAXqEFzR7MGr2pQ5syGJaLtbP9nCNAWesd2ohRCSKn2ANWdC8L
         dLQCAiU7d/6OAFrxILZI2PtVge/Py57bsX5Bdgc4mK75tu3n8V3kcEHPQZlRh51kHrRr
         b+zw==
X-Forwarded-Encrypted: i=1; AJvYcCV/NT6Ua/Tm79ohhlf/SeY9/qDSvXmZmHLfm6YCf9uhhh0O9At5X0rePFEx+MKYJ1LTF2tepatfOjyG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxv76kSBW4y2rytEaobEX9N90cQavtKPeklutztzeXgn475F7ur
	Z27/4t6zgOGiVANBccKv4cYDa5M4VnSq/iYC0NLeE57rV6K9UXrLv2iuYApf04ezI6E=
X-Gm-Gg: AZuq6aJ2NPQjNWXZyyKBNZoTY5e5pGzzItjIdjGmDpp170q34xpbvRgSfvuDhT4/Fq4
	lbCTmYycAhXu8WPvYM1zufgce0YfkGHlsvqpjy8QxXQMvU8WG/vuNWAK8f79EHUrPpzpqfkGv5A
	sJlESGxoePAApk0qrLa0rX8it8Yknfv2I2DgVYlqDstsQfZ2vsI4u2vDsE5LVg9gV7iem5MrzHZ
	BB46WcdCMx/YFu6odbGfgujzqxnVNxzmVHNJt/tIV7rSOnHb7swA0nL0hjGFjeLncuc4KX2W6WZ
	mAhJqCP4gSee5dKzOu4EvAVNtOc6NkbclInhgBySnrBzTIChbHg43lLwQO+bw99QBe6fAUCpkNy
	nvMq8q15PQ47NJ0nQyGJgMODb0ovyGjc/IspondYgJMZc0aPO2I03Df+2jcp1DzjG7fOUsKb2MZ
	xjDoIl5+A30FZNNoyKD9IWHDuV4+XTguWmAMG3p2rHHg==
X-Received: by 2002:a05:6a00:a89:b0:81f:50b1:51ec with SMTP id d2e1a72fcca58-81f9f7e64e9mr12973971b3a.4.1768907484141;
        Tue, 20 Jan 2026 03:11:24 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::4015])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa10efc6bsm11398349b3a.29.2026.01.20.03.11.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jan 2026 03:11:23 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 20 Jan 2026 19:10:51 +0800
Subject: [PATCH v3 3/4] reset: spacemit: Extract common K1 reset code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260120-k3-reset-v3-3-effe87f4bdbe@riscstar.com>
References: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
In-Reply-To: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>, 
 Haylen Chu <heylenay@4d2.org>
Cc: Alex Elder <elder@riscstar.com>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 spacemit@lists.linux.dev, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [0.14 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : No valid SPF, DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257321-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo,riscstar.com:email,riscstar.com:mid,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: B430A51FE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Extract the common reset controller code from the K1 driver into
separate reset-spacemit-common.{c,h} files to prepare for additional
SpacemiT SoCs that share the same reset controller architecture.

The common code includes handlers for reset assert and deassert
operations and probing for auxiliary bus devices.

Changes during extraction:
- Module ownership: Use dev->driver->owner instead of THIS_MODULE in
  spacemit_reset_controller_register() to correctly reference the
  calling driver's module.
- Rename spacemit_reset_ids to spacemit_k1_reset_ids.
- Define new namespace "RESET_SPACEMIT" for the exported common
  functions (spacemit_reset_probe) and update K1 driver to import it.

This prepares for additional SpacemiT SoCs (K3) that share the same reset
controller architecture.

Reviewed-by: Alex Elder <elder@riscstar.com>
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: Add reviewed-by from Alex.
v2: Use dev->driver->owner for the reset controller owner instead of
    THIS_MODULE to fix the module reference counting issue pointed out
    by Krzysztof Kozlowski.
---
 drivers/reset/spacemit/Kconfig                 |  17 +++-
 drivers/reset/spacemit/Makefile                |   2 +
 drivers/reset/spacemit/reset-spacemit-common.c |  77 ++++++++++++++++++
 drivers/reset/spacemit/reset-spacemit-common.h |  42 ++++++++++
 drivers/reset/spacemit/reset-spacemit-k1.c     | 107 +++----------------------
 5 files changed, 144 insertions(+), 101 deletions(-)

diff --git a/drivers/reset/spacemit/Kconfig b/drivers/reset/spacemit/Kconfig
index 552884e8b72a..56a4858b30e1 100644
--- a/drivers/reset/spacemit/Kconfig
+++ b/drivers/reset/spacemit/Kconfig
@@ -1,10 +1,20 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-config RESET_SPACEMIT_K1
-	tristate "SpacemiT K1 reset driver"
+menu "Reset support for SpacemiT platforms"
 	depends on ARCH_SPACEMIT || COMPILE_TEST
-	depends on SPACEMIT_K1_CCU
+
+config RESET_SPACEMIT_COMMON
+	tristate
 	select AUXILIARY_BUS
+	help
+	  Common reset controller infrastructure for SpacemiT SoCs.
+	  This provides shared code and helper functions used by
+	  reset drivers for various SpacemiT SoC families.
+
+config RESET_SPACEMIT_K1
+	tristate "Support for SpacemiT K1 SoC"
+	depends on SPACEMIT_K1_CCU
+	select RESET_SPACEMIT_COMMON
 	default SPACEMIT_K1_CCU
 	help
 	  Support for reset controller in SpacemiT K1 SoC.
@@ -12,3 +22,4 @@ config RESET_SPACEMIT_K1
 	  unit (CCU) driver to provide reset control functionality
 	  for various peripherals and subsystems in the SoC.
 
+endmenu
diff --git a/drivers/reset/spacemit/Makefile b/drivers/reset/spacemit/Makefile
index 34e3350136bb..0b056e8661ec 100644
--- a/drivers/reset/spacemit/Makefile
+++ b/drivers/reset/spacemit/Makefile
@@ -1,2 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_RESET_SPACEMIT_COMMON)	+= reset-spacemit-common.o
+
 obj-$(CONFIG_RESET_SPACEMIT_K1)		+= reset-spacemit-k1.o
diff --git a/drivers/reset/spacemit/reset-spacemit-common.c b/drivers/reset/spacemit/reset-spacemit-common.c
new file mode 100644
index 000000000000..0626633a5e7d
--- /dev/null
+++ b/drivers/reset/spacemit/reset-spacemit-common.c
@@ -0,0 +1,77 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/* SpacemiT reset controller driver - common implementation */
+
+#include <linux/container_of.h>
+#include <linux/device.h>
+#include <linux/module.h>
+
+#include <soc/spacemit/ccu.h>
+
+#include "reset-spacemit-common.h"
+
+static int spacemit_reset_update(struct reset_controller_dev *rcdev,
+				 unsigned long id, bool assert)
+{
+	struct ccu_reset_controller *controller;
+	const struct ccu_reset_data *data;
+	u32 mask;
+	u32 val;
+
+	controller = container_of(rcdev, struct ccu_reset_controller, rcdev);
+	data = &controller->data->reset_data[id];
+	mask = data->assert_mask | data->deassert_mask;
+	val = assert ? data->assert_mask : data->deassert_mask;
+
+	return regmap_update_bits(controller->regmap, data->offset, mask, val);
+}
+
+static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
+				 unsigned long id)
+{
+	return spacemit_reset_update(rcdev, id, true);
+}
+
+static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
+				   unsigned long id)
+{
+	return spacemit_reset_update(rcdev, id, false);
+}
+
+static const struct reset_control_ops spacemit_reset_control_ops = {
+	.assert		= spacemit_reset_assert,
+	.deassert	= spacemit_reset_deassert,
+};
+
+static int spacemit_reset_controller_register(struct device *dev,
+					      struct ccu_reset_controller *controller)
+{
+	struct reset_controller_dev *rcdev = &controller->rcdev;
+
+	rcdev->ops = &spacemit_reset_control_ops;
+	rcdev->owner = dev->driver->owner;
+	rcdev->of_node = dev->of_node;
+	rcdev->nr_resets = controller->data->count;
+
+	return devm_reset_controller_register(dev, &controller->rcdev);
+}
+
+int spacemit_reset_probe(struct auxiliary_device *adev,
+			 const struct auxiliary_device_id *id)
+{
+	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
+	struct ccu_reset_controller *controller;
+	struct device *dev = &adev->dev;
+
+	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
+	if (!controller)
+		return -ENOMEM;
+	controller->data = (const struct ccu_reset_controller_data *)id->driver_data;
+	controller->regmap = rdev->regmap;
+
+	return spacemit_reset_controller_register(dev, controller);
+}
+EXPORT_SYMBOL_NS_GPL(spacemit_reset_probe, "RESET_SPACEMIT");
+
+MODULE_DESCRIPTION("SpacemiT reset controller driver - common code");
+MODULE_LICENSE("GPL");
diff --git a/drivers/reset/spacemit/reset-spacemit-common.h b/drivers/reset/spacemit/reset-spacemit-common.h
new file mode 100644
index 000000000000..ffaf2f86eb39
--- /dev/null
+++ b/drivers/reset/spacemit/reset-spacemit-common.h
@@ -0,0 +1,42 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * SpacemiT reset controller driver - common definitions
+ */
+
+#ifndef _RESET_SPACEMIT_COMMON_H_
+#define _RESET_SPACEMIT_COMMON_H_
+
+#include <linux/auxiliary_bus.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+#include <linux/types.h>
+
+struct ccu_reset_data {
+	u32 offset;
+	u32 assert_mask;
+	u32 deassert_mask;
+};
+
+struct ccu_reset_controller_data {
+	const struct ccu_reset_data *reset_data;	/* array */
+	size_t count;
+};
+
+struct ccu_reset_controller {
+	struct reset_controller_dev rcdev;
+	const struct ccu_reset_controller_data *data;
+	struct regmap *regmap;
+};
+
+#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
+	{							\
+		.offset		= (_offset),			\
+		.assert_mask	= (_assert_mask),		\
+		.deassert_mask	= (_deassert_mask),		\
+	}
+
+/* Common probe function */
+int spacemit_reset_probe(struct auxiliary_device *adev,
+			 const struct auxiliary_device_id *id);
+
+#endif /* _RESET_SPACEMIT_COMMON_H_ */
diff --git a/drivers/reset/spacemit/reset-spacemit-k1.c b/drivers/reset/spacemit/reset-spacemit-k1.c
index cc7fd1f8750d..8f3b5329ea5f 100644
--- a/drivers/reset/spacemit/reset-spacemit-k1.c
+++ b/drivers/reset/spacemit/reset-spacemit-k1.c
@@ -1,41 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
-/* SpacemiT reset controller driver */
+/* SpacemiT K1 reset controller driver */
 
-#include <linux/auxiliary_bus.h>
-#include <linux/container_of.h>
-#include <linux/device.h>
 #include <linux/module.h>
-#include <linux/regmap.h>
-#include <linux/reset-controller.h>
-#include <linux/types.h>
 
-#include <soc/spacemit/k1-syscon.h>
 #include <dt-bindings/clock/spacemit,k1-syscon.h>
+#include <soc/spacemit/k1-syscon.h>
 
-struct ccu_reset_data {
-	u32 offset;
-	u32 assert_mask;
-	u32 deassert_mask;
-};
-
-struct ccu_reset_controller_data {
-	const struct ccu_reset_data *reset_data;	/* array */
-	size_t count;
-};
-
-struct ccu_reset_controller {
-	struct reset_controller_dev rcdev;
-	const struct ccu_reset_controller_data *data;
-	struct regmap *regmap;
-};
-
-#define RESET_DATA(_offset, _assert_mask, _deassert_mask)	\
-	{							\
-		.offset		= (_offset),			\
-		.assert_mask	= (_assert_mask),		\
-		.deassert_mask	= (_deassert_mask),		\
-	}
+#include "reset-spacemit-common.h"
 
 static const struct ccu_reset_data k1_mpmu_resets[] = {
 	[RESET_WDT]	= RESET_DATA(MPMU_WDTPCR,		BIT(2), 0),
@@ -214,91 +186,30 @@ static const struct ccu_reset_controller_data k1_apbc2_reset_data = {
 	.count		= ARRAY_SIZE(k1_apbc2_resets),
 };
 
-static int spacemit_reset_update(struct reset_controller_dev *rcdev,
-				 unsigned long id, bool assert)
-{
-	struct ccu_reset_controller *controller;
-	const struct ccu_reset_data *data;
-	u32 mask;
-	u32 val;
-
-	controller = container_of(rcdev, struct ccu_reset_controller, rcdev);
-	data = &controller->data->reset_data[id];
-	mask = data->assert_mask | data->deassert_mask;
-	val = assert ? data->assert_mask : data->deassert_mask;
-
-	return regmap_update_bits(controller->regmap, data->offset, mask, val);
-}
-
-static int spacemit_reset_assert(struct reset_controller_dev *rcdev,
-				 unsigned long id)
-{
-	return spacemit_reset_update(rcdev, id, true);
-}
-
-static int spacemit_reset_deassert(struct reset_controller_dev *rcdev,
-				   unsigned long id)
-{
-	return spacemit_reset_update(rcdev, id, false);
-}
-
-static const struct reset_control_ops spacemit_reset_control_ops = {
-	.assert		= spacemit_reset_assert,
-	.deassert	= spacemit_reset_deassert,
-};
-
-static int spacemit_reset_controller_register(struct device *dev,
-					      struct ccu_reset_controller *controller)
-{
-	struct reset_controller_dev *rcdev = &controller->rcdev;
-
-	rcdev->ops = &spacemit_reset_control_ops;
-	rcdev->owner = THIS_MODULE;
-	rcdev->of_node = dev->of_node;
-	rcdev->nr_resets = controller->data->count;
-
-	return devm_reset_controller_register(dev, &controller->rcdev);
-}
-
-static int spacemit_reset_probe(struct auxiliary_device *adev,
-				const struct auxiliary_device_id *id)
-{
-	struct spacemit_ccu_adev *rdev = to_spacemit_ccu_adev(adev);
-	struct ccu_reset_controller *controller;
-	struct device *dev = &adev->dev;
-
-	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
-	if (!controller)
-		return -ENOMEM;
-	controller->data = (const struct ccu_reset_controller_data *)id->driver_data;
-	controller->regmap = rdev->regmap;
-
-	return spacemit_reset_controller_register(dev, controller);
-}
-
 #define K1_AUX_DEV_ID(_unit) \
 	{ \
 		.name = "spacemit_ccu.k1-" #_unit "-reset", \
 		.driver_data = (kernel_ulong_t)&k1_ ## _unit ## _reset_data, \
 	}
 
-static const struct auxiliary_device_id spacemit_reset_ids[] = {
+static const struct auxiliary_device_id spacemit_k1_reset_ids[] = {
 	K1_AUX_DEV_ID(mpmu),
 	K1_AUX_DEV_ID(apbc),
 	K1_AUX_DEV_ID(apmu),
 	K1_AUX_DEV_ID(rcpu),
 	K1_AUX_DEV_ID(rcpu2),
 	K1_AUX_DEV_ID(apbc2),
-	{ },
+	{ /* sentinel */ }
 };
-MODULE_DEVICE_TABLE(auxiliary, spacemit_reset_ids);
+MODULE_DEVICE_TABLE(auxiliary, spacemit_k1_reset_ids);
 
 static struct auxiliary_driver spacemit_k1_reset_driver = {
 	.probe          = spacemit_reset_probe,
-	.id_table       = spacemit_reset_ids,
+	.id_table       = spacemit_k1_reset_ids,
 };
 module_auxiliary_driver(spacemit_k1_reset_driver);
 
+MODULE_IMPORT_NS("RESET_SPACEMIT");
 MODULE_AUTHOR("Alex Elder <elder@kernel.org>");
-MODULE_DESCRIPTION("SpacemiT reset controller driver");
+MODULE_DESCRIPTION("SpacemiT K1 reset controller driver");
 MODULE_LICENSE("GPL");

-- 
2.43.0


