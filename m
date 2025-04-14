Return-Path: <devicetree+bounces-166888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E286BA88C14
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 21:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0BD887A8D85
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 19:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CCB928F507;
	Mon, 14 Apr 2025 19:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EUASO+IP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0064D1AF0AE
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 19:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658248; cv=none; b=iWV0uxBYY1eTwCAgW7ipb2T2WMOVlJURgPsXq/vbK1iRUH/FBi4MxxsZ9cCeh8iw1A/9vJyk+jye7f9LumtqYkZpxOi+3do/qjK9Bm3e8BNIbKlltbMdz06UasbEu2yoBGvW5VI+xC3tv86uOGBIRByRi3K1/IxLguzj2BK++8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658248; c=relaxed/simple;
	bh=0tMSZnnN0uUhaUUyllJnXkn0kZUelbYWyQyl83JEU20=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=UtH2JuPE33X1AyAXzvNFO1FMIMbxwRAS2WToNwPDwUSC9D/tLtTZH4vTy0sPqlJBqIhVqmDgvFGWj9KnSl8uySqNDI1FZEl9Pq6j7lq0GEunfE4UspreAqXHgYJCTp4+kccyLRTVpWwcce8fLzLk2jjlp7VqBoVFSE+GFXLqNvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EUASO+IP; arc=none smtp.client-ip=209.85.166.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f180.google.com with SMTP id e9e14a558f8ab-3cf82bd380bso38703455ab.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:17:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744658245; x=1745263045; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Gm/aZH/kO5vouQmivfvsOxccJ1q8Se/O3GQobXDRsw=;
        b=EUASO+IP2WuRXoZYsqkB8FAQ0z+OGf/NV9MHkbIS8Y11pdC54OF/6kOxIprJISyxFO
         +SQ4MhTokoXq8eJ+zd/kgBwVNL6HzRQnKURwJ95tZEl3XyFUxdoCTY4Is9maBWnM00J4
         M4k9lm9mEFruNUJrP2QidzJw5AiY3vIDP037j3g1DgZvkYg0Yq601S3nubJPM5/oD+NI
         XYFhEOWh+l4rA6aReUPZUFL/iAXblgk79dNiysD/MgqBWRQQs0VGm8xZUjTQiFsCb+RV
         RW1XEZdlrz9Gf80o6Kk9BNUgNFO4CwPfAcYjZgWgg8U+g7y7K1/GOL8YYJTc+WstYkab
         CxvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744658245; x=1745263045;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Gm/aZH/kO5vouQmivfvsOxccJ1q8Se/O3GQobXDRsw=;
        b=WLi1gx9xhoGKsvJ6ojAvOp++CiShcE7H1+yEe1dd3elqIsHmHm+f0I+jllKT8BpCP2
         Y7q0Ep+hon2t22Y6WWnJLxrzne4T9GG8Tu5+ypx/w5dhp0IYF5d94ZfL8sBIfqixzDCh
         1fYH0hkwP9HyBe+afuiYkOZXXlFGGr3mrJLB0QdYn84eZgjXRD9P66OHyVaXz4MWIjVN
         NWQB9px4ESl6rfSSH1/mCVT0liLSrtyqCgybVQgit+WYvJjXTGi1AGOnEHJRxjdBmoVP
         OEaw1bN+lDM48bI1Dzm+ElDNZt76Y1J7EiWvgrt5wUvHAQZnFhgP/lonVFSl3IBi1ndA
         hQGA==
X-Forwarded-Encrypted: i=1; AJvYcCWNGdttDb8GngFBF7Y/EeYDilVTyEADfUv6D0edXjVPo5Vj54QSCcpfpZh5OM8+oB4HhnDBpCTx7dQA@vger.kernel.org
X-Gm-Message-State: AOJu0YyTA0eTk4txuLsyTWchGJ3O7s8tpPGWbV3/JoOsIYcRSSN41r9+
	U4GIWHl2sT/uUjD8FkTDMEfveb9mWYPMf9uPuEb3jrHmxriDoWJev0d4ep/iqkQ=
X-Gm-Gg: ASbGncuuqgcTb7kRHGy2zqniIrH1zx0PvkjFd9ErTu3zd2m3RAruv06u09IvzbqM6Br
	sqqnmfOYiuIhycckcizpIeCVpybeh+RjXxL9lb1UWFIIxgaAiUnI3/FuLs0B843fVvHUGLGZVmw
	i5ictYNIb1boCFw95T5ol5yWzg/2bsVgxrNNaPm17c1fwMo/dCPt+5BVlg3lRlVsbEY6c3izlbz
	o5UAfVxUE67/3cS/4jWaqhqlECzzxIsZL4KOAup4noQbj7Hn56QF6x+bMs7iVH34tWivFQFgD9f
	I4QoPcNiPlcY70DEKqXXaZoMfiLBr8rDAtzxUqB8s/2rhvILadvpxojA/6DferS6JiHULAdj6VJ
	I3B+NcH8Z5vszew==
X-Google-Smtp-Source: AGHT+IGOxfDnhHNiznYS8q5dIns7Gd3Y5nX+rCfx2C7pXyEaBqFpX/9ByXKN0AFavSlx3js9Rz+fyA==
X-Received: by 2002:a05:6e02:1888:b0:3d5:d71f:75b3 with SMTP id e9e14a558f8ab-3d7ec265c2emr131876555ab.15.1744658245022;
        Mon, 14 Apr 2025 12:17:25 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4f505e026d1sm2715662173.94.2025.04.14.12.17.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 12:17:24 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: p.zabel@pengutronix.de,
	dlan@gentoo.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	spacemit@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/7] clk: spacemit: add reset controller support
Date: Mon, 14 Apr 2025 14:17:10 -0500
Message-ID: <20250414191715.2264758-4-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250414191715.2264758-1-elder@riscstar.com>
References: <20250414191715.2264758-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define ccu_reset_data as a structure that contains the constant
register offset and bitmasks used to assert and deassert a reset
control on a SpacemiT K1 CCU. Add a pointer to an array of those
structures to the spacemit_ccu_data structure, along with a field
indicating how many elements are in that array.  Resets will be
optional, and if none are defined the reset array pointer will be
null.

Define a new ccu_reset_controller structure, which (for a CCU with
resets) contains a pointer to the constant reset data, the regmap
to be used for the controller, and an embedded a reset controller
structure.

Each reset control is asserted or deasserted by updating bits in
a register.  The bits used are defined by an assert mask and a
deassert mask.  In some cases, one (non-zero) mask asserts reset
and a different (non-zero) mask deasserts it.  Otherwise one mask
is nonzero, and the other is zero.  Either way, the bits in
both masks are cleared, then either the assert mask or the deassert
mask is set in a register to affect the state of a reset control.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 86 +++++++++++++++++++++++++++++++++--
 1 file changed, 83 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index 4db91c1b1d280..020e751a9f305 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -11,6 +11,7 @@
 #include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/reset-controller.h>
 
 #include "ccu_common.h"
 #include "ccu_pll.h"
@@ -129,9 +130,23 @@
 #define APMU_EMAC0_CLK_RES_CTRL		0x3e4
 #define APMU_EMAC1_CLK_RES_CTRL		0x3ec
 
+struct ccu_reset_data {
+	u32 offset;
+	u32 assert_mask;
+	u32 deassert_mask;
+};
+
 struct spacemit_ccu_data {
-	struct clk_hw **clk_hws;
+	struct clk_hw **clk_hws;			/* array */
 	size_t clk_num;
+	const struct ccu_reset_data *reset_data;	/* array */
+	size_t reset_num;
+};
+
+struct ccu_reset_controller {
+	struct regmap *regmap;
+	const struct spacemit_ccu_data *data;
+	struct reset_controller_dev rcdev;
 };
 
 /* APBS clocks start, APBS region contains and only contains all PLL clocks */
@@ -1042,6 +1057,39 @@ static const struct spacemit_ccu_data k1_ccu_apmu_data = {
 	.clk_num	= ARRAY_SIZE(k1_ccu_apmu_hws),
 };
 
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
 static int spacemit_ccu_register(struct device *dev,
 				 struct regmap *regmap,
 				 struct regmap *lock_regmap,
@@ -1090,9 +1138,37 @@ static int spacemit_ccu_register(struct device *dev,
 	return ret;
 }
 
+static int spacemit_reset_controller_register(struct device *dev,
+					      struct regmap *regmap,
+					      const struct spacemit_ccu_data *data)
+{
+	struct ccu_reset_controller *controller;
+	struct reset_controller_dev *rcdev;
+
+	/* Resets are optional */
+	if (!data->reset_data)
+		return 0;
+
+	controller = devm_kzalloc(dev, sizeof(*controller), GFP_KERNEL);
+	if (!controller)
+		return -ENOMEM;
+
+	controller->regmap = regmap;
+	controller->data = data;
+
+	rcdev = &controller->rcdev;
+	rcdev->ops = &spacemit_reset_control_ops;
+	rcdev->owner = THIS_MODULE;
+	rcdev->of_node = dev->of_node;
+	rcdev->nr_resets = data->reset_num;
+
+	return devm_reset_controller_register(dev, rcdev);
+}
+
 static int k1_ccu_probe(struct platform_device *pdev)
 {
 	struct regmap *base_regmap, *lock_regmap = NULL;
+	const struct spacemit_ccu_data *data;
 	struct device *dev = &pdev->dev;
 	int ret;
 
@@ -1121,11 +1197,15 @@ static int k1_ccu_probe(struct platform_device *pdev)
 					     "failed to get lock regmap\n");
 	}
 
-	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap,
-				    of_device_get_match_data(dev));
+	data = of_device_get_match_data(dev);
+	ret = spacemit_ccu_register(dev, base_regmap, lock_regmap, data);
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register clocks\n");
 
+	ret = spacemit_reset_controller_register(dev, base_regmap, data);
+	if (ret)
+		return dev_err_probe(dev, ret, "failed to register reset controller\n");
+
 	return 0;
 }
 
-- 
2.45.2


