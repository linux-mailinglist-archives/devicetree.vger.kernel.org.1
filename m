Return-Path: <devicetree+bounces-151525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CCCA461C9
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 15:08:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 989BF7A49EC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 14:07:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D822A221730;
	Wed, 26 Feb 2025 14:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OW7S127S"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0E0C21D59F
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 14:08:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740578907; cv=none; b=eBhYGrs/1lupW7rXcv4g48UtPoi7+3EAfEhz1s3004WrZIsywdakbIybrgO0HY86R+hnIil8ieS4NS7+Bu9DBHmrfpMuLiSkTuECmgURrQlkcx/YUAFcVDtHdgZeiBivBkBfe6kNnMHpDOxgPpkPvxZp/vjdv3c9lSjkau+YY1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740578907; c=relaxed/simple;
	bh=iNT0VqOrH9vAHA1UAijWCgNgr5GDEqXdheLf0A2HN9w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FFmfDoQj/4j/3rNVEUP/XEiVwebj9HXlV+limc6BDZPMokvVLQqQ1GVatcAQo6C054hfsr+UpSFIzsktrBjZ7MVNfyyn3WjdDUijdXfphTqSjCYfhGVzVZ090QTK8mSMIes0xS+A/X9s2voe4S/vCTPPiHQeW0q/xozBXDoNFLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OW7S127S; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4394a0c65fcso69917895e9.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 06:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740578903; x=1741183703; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WxeFUEnPMpG6A3aZld5E/WFu7bcPUUeu7zfpRBo6A78=;
        b=OW7S127Sv2ogLD1vBLxNcb+XadepPo7LcPz0iLZlfIBrV84iBNBOmIZyZLGGhte3qU
         naRHm05Is229BOAVMMoGqAjVUk80VVuXbQGyhFPfqEjueS083LLUNNyBDSN1JbR71h27
         gr7ihFyJPy+iBMM6FLD/E0TyNjTVEbMRgWKKAoCgVIH6XQAi52o6cGgkyA7HVhUwjCHL
         JbVfUZfv6B+qna3CFqKYaF9KKEZn6nit3Jq8MEfmxOBCOkH8o2NFIwqzqpQmkeP5AP/8
         rED34ChY689awQG8i//qF92UK4NR0EMPNEmO+DFlDR1XOgjtUKACe40sM7xq6I4qDBuV
         5Qwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740578903; x=1741183703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WxeFUEnPMpG6A3aZld5E/WFu7bcPUUeu7zfpRBo6A78=;
        b=mPKEYZ59pMFbZt2RrM3rX994t8wudWnT6aOmY5AyvX5uQ52FB7YUjJ8qRFvCciC6X5
         7wDVxQ5+QrKyDbmrTp6edmR2mRSUfPd0uHYCSZ8JkeaYCllPio3aCzB+3pzZ+ivOLT64
         vU8rYSEmRBinnHBy88OXfQBvST2tPxzUaAXu+LUh8uPnssLcDSp8cM9xcPLlUpCLCuHE
         fta+HObu8qhpBrdkTEI/XADCDRSK660rJNO2iDdsGPHt743OnzcTxQJPJ+ERas5l2Hyb
         ka2iO+2Y7vJHVoCCyHacEro/5H49h3M0x0TDmAtAW7SMs2agMshKafGYR3pNnDw6i4Wc
         zBdw==
X-Forwarded-Encrypted: i=1; AJvYcCXkS2nxQtKSV9NqKm9kZ1Lse8iia/V+eDmNidaLiZlre6g269OfbPc0Q/8jVpdmvwlCpT4KWrxZgs5q@vger.kernel.org
X-Gm-Message-State: AOJu0Yynsi4/EunMN+igYCtgXtN5pRY0nFuDVNKpEslo+7IkQcu1laMB
	VX15uzYiYi0FwcMzI/mv/V2sFT1ZIkjIZ7UsAiBNrFRb41yFcOpFCUhj0gEQwyI=
X-Gm-Gg: ASbGncuO5u0lXEYv9QFs8mAFniIbGeK40M45FIIq4lt5t5eIlwls1aKOO52kfDHlwiX
	tThivugrbJjonRDdKn/h5p2mh2OG2JpfELSeoUJQySrx4NEAGVrhEDL2zXKzuKqNbVarOsT8vbu
	JJiHw+TXd/mOzGlffFafqrzVCYT4HO8RK2Dzfa0hW0opSHXKKwvRk41xbhBeb9iNx2h1ZyAeiBq
	h0QO3MxgAGY5Os1Eg8xCC9tIrvkzIg3As56ZYUF9XPLQ017u+f1yV3RfgXkxfKmJNB4pQ1Cz/Y6
	U8D2h18YAX4MxMiWKy1orpTkg/J27URJMG4cmZgrwHhv5CycoMEGbrE7tVsfwgfgblDn5JdGmnT
	qPAecN9sEfA==
X-Google-Smtp-Source: AGHT+IGv/eO4Q+853qoaaBSUt+F6k1tIspvcIuibPPRIZkfwO2bs2v7+pxNtqXYPmvOTuy5Yt55vgA==
X-Received: by 2002:a05:600c:4753:b0:439:9a40:aa0b with SMTP id 5b1f17b1804b1-43ab0f6e6ccmr69618395e9.25.1740578903152;
        Wed, 26 Feb 2025 06:08:23 -0800 (PST)
Received: from puffmais.c.googlers.com (30.171.91.34.bc.googleusercontent.com. [34.91.171.30])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abed20b6024sm330157566b.181.2025.02.26.06.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 06:08:22 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 26 Feb 2025 14:08:21 +0000
Subject: [PATCH 2/2] power: reset: syscon-reboot: support different reset
 modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250226-syscon-reboot-reset-mode-v1-2-91c1b62166ae@linaro.org>
References: <20250226-syscon-reboot-reset-mode-v1-0-91c1b62166ae@linaro.org>
In-Reply-To: <20250226-syscon-reboot-reset-mode-v1-0-91c1b62166ae@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Linux supports a couple different reset modes, but this driver here
doesn't distinguish between them and issues the same syscon register
write irrespective of the reset mode requested by the kernel.

Update this driver to support most of Linux' reset modes: cold, hard,
warm, and soft.

The actions to take for these are taken from DT, and are all new
optional properties. The property names match the existing properties
supported but should be prefixed with the reset mode.

This change is meant to be backwards compatible with existing DTs, and
if Linux requests a reset mode that this driver doesn't support, or
that the DT doesn't specify, the reset is triggered using the fallback
/ default entry.

As an example why this is useful, other than properly supporting the
Linux reboot= kernel command line option or sysfs entry, this change
allows platforms to e.g. default to a more secure cold-reset, but
also to do a warm-reset in case RAM contents needs to be retained
across the reset.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/reset/syscon-reboot.c | 88 ++++++++++++++++++++++++++++++++-----
 1 file changed, 77 insertions(+), 11 deletions(-)

diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index d623d77e657e4c233d8ae88bb099bee13c48a9ef..1d3d8a3265ae8005c685b42d3e554bd8bb0047ea 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -14,11 +14,29 @@
 #include <linux/reboot.h>
 #include <linux/regmap.h>
 
-struct syscon_reboot_context {
-	struct regmap *map;
+/* REBOOT_GPIO doesn't make sense for syscon-reboot */
+static const struct {
+	enum reboot_mode mode;
+	const char *prefix;
+} prefix_map[] = {
+	{ .mode = REBOOT_COLD, .prefix = "cold"  },
+	{ .mode = REBOOT_WARM, .prefix = "warm"  },
+	{ .mode = REBOOT_HARD, .prefix = "hard"  },
+	{ .mode = REBOOT_SOFT, .prefix = "soft"  },
+};
+
+struct reboot_mode_bits {
 	u32 offset;
 	u32 value;
 	u32 mask;
+	bool valid;
+};
+
+struct syscon_reboot_context {
+	struct regmap *map;
+
+	struct reboot_mode_bits mode_bits[REBOOT_SOFT + 1];
+	struct reboot_mode_bits catchall;
 	struct notifier_block restart_handler;
 };
 
@@ -28,9 +46,16 @@ static int syscon_restart_handle(struct notifier_block *this,
 	struct syscon_reboot_context *ctx =
 			container_of(this, struct syscon_reboot_context,
 					restart_handler);
+	const struct reboot_mode_bits *mode_bits;
+
+	if (mode < ARRAY_SIZE(ctx->mode_bits) && ctx->mode_bits[mode].valid)
+		mode_bits = &ctx->mode_bits[mode];
+	else
+		mode_bits = &ctx->catchall;
 
 	/* Issue the reboot */
-	regmap_update_bits(ctx->map, ctx->offset, ctx->mask, ctx->value);
+	regmap_update_bits(ctx->map, mode_bits->offset, mode_bits->mask,
+			   mode_bits->value);
 
 	mdelay(1000);
 
@@ -45,6 +70,7 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 	int mask_err, value_err;
 	int priority;
 	int err;
+	char prop[32];
 
 	ctx = devm_kzalloc(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
@@ -60,12 +86,52 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 	if (of_property_read_s32(pdev->dev.of_node, "priority", &priority))
 		priority = 192;
 
-	if (of_property_read_u32(pdev->dev.of_node, "offset", &ctx->offset))
-		if (of_property_read_u32(pdev->dev.of_node, "reg", &ctx->offset))
+	BUILD_BUG_ON(ARRAY_SIZE(prefix_map) != ARRAY_SIZE(ctx->mode_bits));
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->mode_bits) <= REBOOT_COLD);
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->mode_bits) <= REBOOT_WARM);
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->mode_bits) <= REBOOT_HARD);
+	BUILD_BUG_ON(ARRAY_SIZE(ctx->mode_bits) <= REBOOT_SOFT);
+
+	for (int i = 0; i < ARRAY_SIZE(prefix_map); ++i) {
+		const char * const prefix = prefix_map[i].prefix;
+		struct reboot_mode_bits * const mode_bits =
+			&ctx->mode_bits[prefix_map[i].mode];
+
+		snprintf(prop, sizeof(prop), "%s-offset", prefix);
+		if (of_property_read_u32(pdev->dev.of_node, "offset",
+					 &mode_bits->offset))
+			continue;
+
+		snprintf(prop, sizeof(prop), "%s-value", prefix);
+		if (of_property_read_u32(pdev->dev.of_node, prop,
+					 &mode_bits->value)) {
+			/* don't support old binding here */
+			dev_err(dev, "'%s-value' is mandatory\n", prefix);
+			continue;
+		}
+
+		snprintf(prop, sizeof(prop), "%s-mask", prefix);
+		mask_err = of_property_read_u32(pdev->dev.of_node, prop,
+						&mode_bits->mask);
+
+		if (mask_err)
+			/* support value without mask*/
+			mode_bits->mask = 0xffffffff;
+
+		mode_bits->valid = true;
+	}
+
+	/* catch-all entry */
+	if (of_property_read_u32(pdev->dev.of_node, "offset",
+				 &ctx->catchall.offset))
+		if (of_property_read_u32(pdev->dev.of_node, "reg",
+					 &ctx->catchall.offset))
 			return -EINVAL;
 
-	value_err = of_property_read_u32(pdev->dev.of_node, "value", &ctx->value);
-	mask_err = of_property_read_u32(pdev->dev.of_node, "mask", &ctx->mask);
+	value_err = of_property_read_u32(pdev->dev.of_node, "value",
+					 &ctx->catchall.value);
+	mask_err = of_property_read_u32(pdev->dev.of_node, "mask",
+					&ctx->catchall.mask);
 	if (value_err && mask_err) {
 		dev_err(dev, "unable to read 'value' and 'mask'");
 		return -EINVAL;
@@ -73,11 +139,11 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 
 	if (value_err) {
 		/* support old binding */
-		ctx->value = ctx->mask;
-		ctx->mask = 0xFFFFFFFF;
+		ctx->catchall.value = ctx->catchall.mask;
+		ctx->catchall.mask = 0xFFFFFFFF;
 	} else if (mask_err) {
-		/* support value without mask*/
-		ctx->mask = 0xFFFFFFFF;
+		/* support value without mask */
+		ctx->catchall.mask = 0xFFFFFFFF;
 	}
 
 	ctx->restart_handler.notifier_call = syscon_restart_handle;

-- 
2.48.1.658.g4767266eb4-goog


