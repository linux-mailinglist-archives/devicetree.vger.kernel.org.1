Return-Path: <devicetree+bounces-159445-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A85ACA6AECB
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 20:47:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 932154A00CD
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 19:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1893122B8BD;
	Thu, 20 Mar 2025 19:45:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="YF5vrJ+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E40822AE7F
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 19:44:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742499902; cv=none; b=t+YFDkNxYOqAmA5Jn9Hy8DXdprQ5bxGC2Z1Evb4ljBH9jskire96shor37JGA48KUzOJxnWs1aA2haELbImErJEh1NqfgzOrkjWvVBnHWiZjUKeZa1YO9eNwwo4qHznidsueEZQGzIQCZqT6NS3iXrZGcTkAKHRUNBvHDLu6HNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742499902; c=relaxed/simple;
	bh=lhzOWVrb/W5aWFiPKapeZ+c2qWJP4p7yGhuyvcKYsOY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ix+FPosEaWhLIjKQYM59VdQ+MAaENHHjewKCyaaukxMAJVicpa0zejFgDES5VnJW6X+AraTVRM2m7vDXRUyCP+JoFG8E+XJmskZjgI2kpW5D6rbuu6v1pUunMadyuI37g+BoUpLpJHnZZGKU4QksCh0mfYbhIaTdeinYwDyxIFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=YF5vrJ+1; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-85afd2b9106so115427939f.0
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 12:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1742499898; x=1743104698; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Dlzkhyp/izF78g6ftxTkpFnLH1O8eZPqCB+owD+Ogvs=;
        b=YF5vrJ+1tURKY0daScOOk/sUXKdCJzd3oS+bVbHbI3L0uKalrD5UzinkDD+ol658uW
         m1U8ZHo5Z3c10/bK6LzdbO7+WKIdbKYQ8QAcM3Xwr/Z72RvFuj2hJeJwpYv7Zpjfe1aU
         R1ExE6u986ftRA+jAWx00HTpUwVxp4Hf4GZ8Zk+gQP2S8ISC8tW7Hl+04Q6WsBYiHtvx
         1QhFBu6gTIusSRbyzNmWmZ7xJgDwbXEgtRkencHOGCGBbnb56dTBh7RQeI4I+j0SdiWA
         NEtitv0N1aTftsy6MyKub8Ix9A5uteRjsf5tz220YbdKA1xwRU7+N/KbZRvhgVnAYNlO
         yhXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742499898; x=1743104698;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dlzkhyp/izF78g6ftxTkpFnLH1O8eZPqCB+owD+Ogvs=;
        b=I4fsRv/zF3JbQsiQbFtT/k+uRXXPMjW8BFIUtA4UMxlHVvAwf4NH9dAVt5bvZd7LCB
         uJikx5gmAwTv2ISxeOaVpxT5IvSnfeX8E+kM5Fjc1xWTLJLHPyRb1lGhClkSnRWDKP0x
         GwByA6RPgWz4Uupo6zDHx61qjAZYadtNeZK9GIsEAohkVrETZIgrQFYpS+os1hp3ozMA
         m6GV6rQvgRBgiYVh6U4V/n7Afy9+6z0LA0/+cw1pfb3XLso5nG6fPT8EQ6x+RIauFvFD
         eq3Jo+pMpwllZx3wb3WEiI+pbMiwKiuMHi1TS5NGOdHHF6L03nklbaV98M9wD68JqliZ
         gbHA==
X-Forwarded-Encrypted: i=1; AJvYcCXP72gVcArm9/F+ctApZSv1ESTbiANPL38Xc3/0zX3jRLRhdHs9h/IywCAfe4F7gGSRW5YjEy5yqCns@vger.kernel.org
X-Gm-Message-State: AOJu0YzG5+n/MMHGLMhzJAKhdFl5nOTEmm7IkGcqOqU+oataK0glaMfP
	GkGBcC08LTrW9cKQfCyah/+VRmMzesJr3Cv5jRChvPmUCm4ClnyWaiMJlTO/vl8=
X-Gm-Gg: ASbGncvHPnYswz6qqZWyo5d1MmIyBKXIXDzP6KEO67slp3eXAr4lc8hwPML1o+mcE5g
	bS6hdOIMeZ72eyhdAdEbbd3QtcbKvk/pF2d35qD3TmquoArJIhVmwneEaYHUtfEWJZyLERWdNeF
	IhHcHdImogBgskac+dmL5PevHBKWsO7xUgn1slpv3Hk1SP9C8LcD+77SVPtMGl/Rutkp0EdDFg6
	AldTg88kQHdajFC1qVU2prKH6PXToIfck9HHHgAp+JRyz1Ky2r0Zjo6Ognu58RDDaH716WD3R77
	upNK/ShJwl0AoSjjl/QqUuvk32SbY3D6Kc3E4VlNvXR0az+jgw4lZi8APPWkU9JA9/6ikC2TxRH
	4RM8utcEGCpE4mdtbX/dwT5Eq
X-Google-Smtp-Source: AGHT+IF5Um4wxnf1VBR2WUaWHAuuXv8maMmB3T9J09ThCkD0kILxqdXmbC6BUXhNgpO/3CkQqObwKg==
X-Received: by 2002:a05:6602:399a:b0:85b:58b0:7abd with SMTP id ca18e2360f4ac-85e2ca35536mr78053339f.1.1742499898515;
        Thu, 20 Mar 2025 12:44:58 -0700 (PDT)
Received: from zoltan.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-85e2bd8c40fsm8341439f.32.2025.03.20.12.44.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 12:44:58 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: p.zabel@pengutronix.de,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dlan@gentoo.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heylenay@4d2.org,
	guodong@riscstar.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] clk: spacemit: add reset controller support
Date: Thu, 20 Mar 2025 14:44:44 -0500
Message-ID: <20250320194449.510569-4-elder@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250320194449.510569-1-elder@riscstar.com>
References: <20250320194449.510569-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define ccu_reset_data as a structure that contains the constant
register offset and bitmasks used to assert and deassert a reset
control on a SpacemiT K1 CCU. Define ccu_reset_controller_data as
a structure that contains the address of an array of those structures
and a count of the number of elements in the array.

Add a pointer to a ccu_reset_controller_data structure to the
k1_ccu_data structure.  Reset support is optional for SpacemiT CCUs;
the new pointer field will be null for CCUs without any resets.

Finally, define a new ccu_reset_controller structure, which (for
a CCU with resets) contains a pointer to the constant reset data,
the regmap to be used for the controller, and an embedded a reset
controller structure.

Each reset control is asserted or deasserted by updating bits in
a register.  The bits used are defined by an assert mask and a
deassert mask.  In some cases, one (non-zero) mask asserts reset
and a different (non-zero) mask deasserts it.  Otherwise one mask
is nonzero, and the other is zero.  Either way, the bits in
both masks are cleared, then either the assert mask or the deassert
mask is set in a register to affect the state of a reset control.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 drivers/clk/spacemit/ccu-k1.c | 93 +++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/drivers/clk/spacemit/ccu-k1.c b/drivers/clk/spacemit/ccu-k1.c
index f7367271396a0..6d879411c6c05 100644
--- a/drivers/clk/spacemit/ccu-k1.c
+++ b/drivers/clk/spacemit/ccu-k1.c
@@ -10,6 +10,7 @@
 #include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/reset-controller.h>
 
 #include "ccu_common.h"
 #include "ccu_pll.h"
@@ -134,8 +135,26 @@ struct spacemit_ccu_clk {
 	struct clk_hw *hw;
 };
 
+struct ccu_reset_data {
+	u32 offset;
+	u32 assert_mask;
+	u32 deassert_mask;
+};
+
+struct ccu_reset_controller_data {
+	u32 count;
+	const struct ccu_reset_data *data;	/* array */
+};
+
 struct k1_ccu_data {
 	struct spacemit_ccu_clk *clk;		/* array with sentinel */
+	const struct ccu_reset_controller_data *rst_data;
+};
+
+struct ccu_reset_controller {
+	struct regmap *regmap;
+	const struct ccu_reset_controller_data *data;
+	struct reset_controller_dev rcdev;
 };
 
 /*	APBS clocks start	*/
@@ -1630,6 +1649,48 @@ static const struct k1_ccu_data k1_ccu_apmu_data = {
 	.clk		= k1_ccu_apmu_clks,
 };
 
+static struct ccu_reset_controller *
+rcdev_to_controller(struct reset_controller_dev *rcdev)
+{
+	return container_of(rcdev, struct ccu_reset_controller, rcdev);
+}
+
+static int
+k1_rst_update(struct reset_controller_dev *rcdev, unsigned long id, bool assert)
+{
+	struct ccu_reset_controller *controller = rcdev_to_controller(rcdev);
+	struct regmap *regmap = controller->regmap;
+	const struct ccu_reset_data *data;
+	u32 val;
+	int ret;
+
+	data = &controller->data->data[id];
+
+	ret = regmap_read(regmap, data->offset, &val);
+	if (ret)
+		return ret;
+
+	val &= ~(data->assert_mask | data->deassert_mask);
+	val |= assert ? data->assert_mask : data->deassert_mask;
+
+	return regmap_write(regmap, data->offset, val);
+}
+
+static int k1_rst_assert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	return k1_rst_update(rcdev, id, true);
+}
+
+static int k1_rst_deassert(struct reset_controller_dev *rcdev, unsigned long id)
+{
+	return k1_rst_update(rcdev, id, false);
+}
+
+static const struct reset_control_ops k1_reset_control_ops = {
+	.assert		= k1_rst_assert,
+	.deassert	= k1_rst_deassert,
+};
+
 static int k1_ccu_register(struct device *dev, struct regmap *regmap,
 			   struct regmap *lock_regmap,
 			   struct spacemit_ccu_clk *clks)
@@ -1675,6 +1736,33 @@ static int k1_ccu_register(struct device *dev, struct regmap *regmap,
 	return ret;
 }
 
+static int
+k1_reset_controller_register(struct device *dev, struct regmap *regmap,
+			     const struct ccu_reset_controller_data *data)
+{
+	struct ccu_reset_controller *controller;
+	struct reset_controller_dev *rcdev;
+
+	/* Resets are optional */
+	if (!data)
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
+	rcdev->owner = THIS_MODULE;
+	rcdev->nr_resets = data->count;
+	rcdev->ops = &k1_reset_control_ops;
+	rcdev->of_node = dev->of_node;
+
+	return devm_reset_controller_register(dev, rcdev);
+}
+
 static int k1_ccu_probe(struct platform_device *pdev)
 {
 	struct regmap *base_regmap, *lock_regmap = NULL;
@@ -1710,6 +1798,11 @@ static int k1_ccu_probe(struct platform_device *pdev)
 	if (ret)
 		return dev_err_probe(dev, ret, "failed to register clocks\n");
 
+	ret = k1_reset_controller_register(dev, base_regmap, data->rst_data);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				     "failed to register reset controller\n");
+
 	return 0;
 }
 
-- 
2.43.0


