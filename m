Return-Path: <devicetree+bounces-161656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 96188A74D8B
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:15:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 074493BC439
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C042F1D88CA;
	Fri, 28 Mar 2025 15:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E1KWx1gU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83CE1D416E
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743174927; cv=none; b=mXD6Ei5kD+0tAb0WjpgxkzPQ/ZbAcn72fHm/bsswyk7vriip58jruYrAxOE45GCXSXd9oH5MueXioWT/I6ndK/w1P+K5k1UXIwYNRr2ovC3Z0Ol8+xmc5wCqHzIkKi1pXBSnSqdeHjuivTTm2FRccTy8zuW1Du7eYgsz6zMma08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743174927; c=relaxed/simple;
	bh=HRG8oyx+Mi+MU4biPMgGQvsmz+b2lSbgekhPGs2M778=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BPTJoyXFezZan1hbBr/dqPlinkH27pF6IuRdc65Pf2s9lTwS6qeL4qw51Y4X8Dw8+7xx3Ts4TwgP6wPPXSeuNAtOmKqQkGrjtuk55uNfSwOdJQqmrT3tLxjrVe3+J5sgLJ4QiE90cs/dztgj2zwAMGohBLqr3I6O276T4oOXZgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E1KWx1gU; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e5e8274a74so3721815a12.1
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 08:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743174923; x=1743779723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tSsT7QLwFrGtJXgYzLTDttFLB1HtTy9nHcX9oWhHWK8=;
        b=E1KWx1gUIjH8LmxEmjm5ft8KOb/nCqPtxV3i/1LMY2s4S2pZjkIEqlLvoHE1AfARq4
         7xKEZjMNOnEubOpnR6cQ/8bkb6cEbxPldIpuw1GrtZwyDjrmR2g8zG7H/tzpz9N5J2R2
         rFC3joXT0eSQDAALzyRP1E0I6VZTmgHvFodSW5Sr9/3h/BKACfhfFbq5/ZTnNjQI305T
         hAYGn1pVdQqKCqsuYHfWKpH1cIMdwnYuTVuSo9CvNe+XawcQxivVBxJi5K7ePNweE/gf
         smEC7yCfI2jU/c3mGXn2iX4u0d4hsufkhKsW2a5H6oeUu0Zcj0zM27SVhOV3WSOUArwR
         Hn/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743174923; x=1743779723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tSsT7QLwFrGtJXgYzLTDttFLB1HtTy9nHcX9oWhHWK8=;
        b=V92DslMq8hSS4aHTxTjJ6svukluMsW8Ev88ElrBxSVX3NORfuRK79nkmRABJthr68v
         V3FONYn20Y/59DNiXSZN76ohwqx0z8xRQY0IMIAoTHGwKH0DLx2lqC58PwkouJ/o+zC4
         LPzgH24nbTm5sFE45nbnkd3lsSzoHW+rwY9vgZx044Mc2yp8tq5eVXMspHYlDh0cAve6
         dSsJCj4rxciPA3+IM4pKpQ3nelvOf1Q/hbEXbDe+/0ZFJpREf/0DyGAAKp0sD7zwPVqM
         YBQebhhfQY9P5xIlmRu/OV65DUmemmCj7BrwSYf/g2j7h7ybBvRZgIu/HJpDG65kl/UA
         4p4w==
X-Forwarded-Encrypted: i=1; AJvYcCXrE5hRxfI6rlAuAv5dUCQ6tMNf+ZBf8AcEgzd4DaG+p6DViP3/1m4iivRHHhlD9SLMfrTagsAaE7Sn@vger.kernel.org
X-Gm-Message-State: AOJu0YyI8ztqGZrvaKDDIS1F2ceHdUNWiwe6wbUQ3VolYYjp3PT5DzHf
	ddvY7bFYnlhH2fAeN920g9NAOPVvakotQQ12906td9JXj0o/Dq4pibDRC8D4NwNlEylJLnGjQuA
	xlu8=
X-Gm-Gg: ASbGncsJ1AszKT00X94+qKh1hAei8gUL/B7KM62kRUZOYUqN1PWEZVb1Sm9EPXiWyK5
	uKgJjhmhfdgPJBUTha1vKycNqlYKFWTR7wWxekk+BaH8jQ+vKemp729Jeyd0yslMd1+RPElbWNP
	UzC+qLeZNni+9lnTgawPui5O1+np9tWneOu4ZQ+irWyOojYm1rSs0yq8tx/gHU61bKkWYJAkGq4
	RC0tX725Ik7QUnehEZdig2NUNn9OdnQux5mxMlh1DemiWUPBXwL8urahJSHI8qS1fC/KhCf4UK3
	UJfdorke1dRI96kZbZkoO5F6VYWC4ibdHKjydmapwPzblyzf0O/NvOWuDeU9QAL+xLmwMFDswF8
	PY6DJRkLAwRZ+y1lapl3fqVZWc1+8
X-Google-Smtp-Source: AGHT+IEWPzD/U+QVIvLgLhOsjJHdSVScC1Inq2Efi46czBnZaUtFyAtnrEbdytwYUOnTSrDbDskAIw==
X-Received: by 2002:a17:907:868c:b0:ac4:169:3664 with SMTP id a640c23a62f3a-ac6faf04132mr673143566b.33.1743174922634;
        Fri, 28 Mar 2025 08:15:22 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac71927b742sm178789266b.65.2025.03.28.08.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 08:15:22 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 15:15:21 +0000
Subject: [PATCH v4 3/3] power: reset: syscon-reboot: add gs101-specific
 reset
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-syscon-reboot-reset-mode-v4-3-77ba57703ace@linaro.org>
References: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
In-Reply-To: <20250328-syscon-reboot-reset-mode-v4-0-77ba57703ace@linaro.org>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Linux supports a couple different reset modes, but this driver here
doesn't distinguish between them and issues the same syscon register
write irrespective of the reset mode requested by the kernel.

Since DTs should not encode register writes (see e.g. [1]), update this
driver to support different reset modes based on DT compatible match.

At the same time, add support for Google GS101, which does support
cold, hard, warm, and soft.

As an example why this is useful, other than properly supporting the
Linux reboot= kernel command line option or sysfs entry, this change
allows gs101-platforms to default to a more secure cold-reset, but also
to warm-reset in case RAM contents needs to be retained across the
reset.

Link: https://lore.kernel.org/all/20250227132644.GA1924628-robh@kernel.org/ [1]
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/reset/syscon-reboot.c | 98 +++++++++++++++++++++++++++++--------
 1 file changed, 77 insertions(+), 21 deletions(-)

diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index d623d77e657e4c233d8ae88bb099bee13c48a9ef..2e2cf5f62d733c7c07110f3052583607e25afd5d 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -14,11 +14,24 @@
 #include <linux/reboot.h>
 #include <linux/regmap.h>
 
-struct syscon_reboot_context {
-	struct regmap *map;
+struct reboot_mode_bits {
 	u32 offset;
-	u32 value;
 	u32 mask;
+	u32 value;
+	bool valid;
+};
+
+struct reboot_data {
+	struct reboot_mode_bits mode_bits[REBOOT_SOFT + 1];
+	struct reboot_mode_bits catchall;
+};
+
+struct syscon_reboot_context {
+	struct regmap *map;
+
+	const struct reboot_data *rd; /* from of match data, if any */
+	struct reboot_mode_bits catchall; /* from DT */
+
 	struct notifier_block restart_handler;
 };
 
@@ -28,9 +41,21 @@ static int syscon_restart_handle(struct notifier_block *this,
 	struct syscon_reboot_context *ctx =
 			container_of(this, struct syscon_reboot_context,
 					restart_handler);
+	const struct reboot_mode_bits *mode_bits;
+
+	if (ctx->rd) {
+		if (mode < ARRAY_SIZE(ctx->rd->mode_bits) &&
+		    ctx->rd->mode_bits[mode].valid)
+			mode_bits = &ctx->rd->mode_bits[mode];
+		else
+			mode_bits = &ctx->rd->catchall;
+	} else {
+		mode_bits = &ctx->catchall;
+	}
 
 	/* Issue the reboot */
-	regmap_update_bits(ctx->map, ctx->offset, ctx->mask, ctx->value);
+	regmap_update_bits(ctx->map, mode_bits->offset, mode_bits->mask,
+			   mode_bits->value);
 
 	mdelay(1000);
 
@@ -42,7 +67,6 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 {
 	struct syscon_reboot_context *ctx;
 	struct device *dev = &pdev->dev;
-	int mask_err, value_err;
 	int priority;
 	int err;
 
@@ -60,24 +84,33 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 	if (of_property_read_s32(pdev->dev.of_node, "priority", &priority))
 		priority = 192;
 
-	if (of_property_read_u32(pdev->dev.of_node, "offset", &ctx->offset))
-		if (of_property_read_u32(pdev->dev.of_node, "reg", &ctx->offset))
-			return -EINVAL;
+	ctx->rd = of_device_get_match_data(dev);
+	if (!ctx->rd) {
+		int mask_err, value_err;
 
-	value_err = of_property_read_u32(pdev->dev.of_node, "value", &ctx->value);
-	mask_err = of_property_read_u32(pdev->dev.of_node, "mask", &ctx->mask);
-	if (value_err && mask_err) {
-		dev_err(dev, "unable to read 'value' and 'mask'");
-		return -EINVAL;
-	}
+		if (of_property_read_u32(pdev->dev.of_node, "offset",
+					 &ctx->catchall.offset) &&
+		    of_property_read_u32(pdev->dev.of_node, "reg",
+					 &ctx->catchall.offset))
+			return -EINVAL;
 
-	if (value_err) {
-		/* support old binding */
-		ctx->value = ctx->mask;
-		ctx->mask = 0xFFFFFFFF;
-	} else if (mask_err) {
-		/* support value without mask*/
-		ctx->mask = 0xFFFFFFFF;
+		value_err = of_property_read_u32(pdev->dev.of_node, "value",
+						 &ctx->catchall.value);
+		mask_err = of_property_read_u32(pdev->dev.of_node, "mask",
+						&ctx->catchall.mask);
+		if (value_err && mask_err) {
+			dev_err(dev, "unable to read 'value' and 'mask'");
+			return -EINVAL;
+		}
+
+		if (value_err) {
+			/* support old binding */
+			ctx->catchall.value = ctx->catchall.mask;
+			ctx->catchall.mask = 0xFFFFFFFF;
+		} else if (mask_err) {
+			/* support value without mask */
+			ctx->catchall.mask = 0xFFFFFFFF;
+		}
 	}
 
 	ctx->restart_handler.notifier_call = syscon_restart_handle;
@@ -89,7 +122,30 @@ static int syscon_reboot_probe(struct platform_device *pdev)
 	return err;
 }
 
+static const struct reboot_data gs101_reboot_data = {
+	.mode_bits = {
+		[REBOOT_WARM] = {
+			.offset = 0x3a00, /* SYSTEM_CONFIGURATION */
+			.mask = 0x00000002, /* SWRESET_SYSTEM */
+			.value = 0x00000002,
+			.valid = true,
+		},
+		[REBOOT_SOFT] = {
+			.offset = 0x3a00, /* SYSTEM_CONFIGURATION */
+			.mask = 0x00000002, /* SWRESET_SYSTEM */
+			.value = 0x00000002,
+			.valid = true,
+		},
+	},
+	.catchall = {
+		.offset = 0x3e9c, /* PAD_CTRL_PWR_HOLD */
+		.mask = 0x00000100,
+		.value = 0x00000000,
+	},
+};
+
 static const struct of_device_id syscon_reboot_of_match[] = {
+	{ .compatible = "google,gs101-reboot", .data = &gs101_reboot_data  },
 	{ .compatible = "syscon-reboot" },
 	{}
 };

-- 
2.49.0.472.ge94155a9ec-goog


