Return-Path: <devicetree+bounces-77895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC6A910471
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 14:48:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CB1F4286336
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:48:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D4471AC792;
	Thu, 20 Jun 2024 12:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TShp/ttk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A741ACE62
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 12:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718887677; cv=none; b=YYunyoAv4tgQiTRRjsFXpDa3+vUHPxgUBRrVAVbrr3Br++6AHwAbO7zb2L1AfV/76Jqh8BhuiHz0nFi3pnFp9ypsdBMISV4BofaUYudPC7/Ed9Biz51vxS9qoe2/Jh1mDWGRE9ebR2uJFX75ggYrd12H+DT24WK2/oGnIG05JF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718887677; c=relaxed/simple;
	bh=XrspX98ISckG3Sj6/BzKitPRpRn8XaSj2KqHKFT+dR8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LgMTsXyWoq1o7GyOam5XGm3UAoPDl+1YNyqe/Xj1x0FFOetJujfM6seync9ZQsdXDlPnX+T5iiAUt+ln1fTS84c24JtJu0HomgQru40uVqNlLaAGqHY8FyaLXV4gBHiDTKrErPYRomUpJPM+WzOwnAEAtFCLAvApr6K+KmBqzKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TShp/ttk; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2ebf5987909so936141fa.0
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 05:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718887673; x=1719492473; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kU4UhCQc9+764HGn+BU4tW5vcAuXA5Pmyz8qsif4vWs=;
        b=TShp/ttkj6f+2k7sB5BAii9rHyo8IkuYGZLaoGQElxSvsNhcR7bv2ZmcFbGFhRXuX9
         JTKg97w//PutvFYMRicsqFUI54AFvN9OiGBsBVmViHXL6k6QgtZIksa2i54fQL1OXSw2
         m1MH6uwhVziExFNzHbywuvEJe/7XIhsA5To6dPpYG3UIf3Bi3ldq3R5qlruXpoABw5mj
         FuxHcWryuOObRUFkR7Xn3Ch7NUxbHqBsXPHsWVD+pg4Qw+kufNKv1oS6Vx2OrJDWQxTd
         26IELgTp3pkJPQGBuZ/1mhRZdS17EXQde6uKFyaRix7GWmw6WkT/o9WhhHKg4NW4ieJj
         L8Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718887673; x=1719492473;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kU4UhCQc9+764HGn+BU4tW5vcAuXA5Pmyz8qsif4vWs=;
        b=cg/IlyKBUw3HOsu0QBbGVJqGHQm0Vp0zt1Ohm9MnY5p05vTiESZDUOq5iR6wDmWYFj
         4aMQuIP6jAfDOVFlObCGeOX1oENzPesopAkRPQ8K+2U11Wjs2iVpRA5NmCDT66wxKhqd
         U73PkLFvKOgkxUCHVf7WR6pPeOZmWcGWsU2+ghEEg1yYyfa6SMCKvBBFFEX575S9PMr3
         Or9KJd3fnqhQ9kEhixsELjy/RXsI05z+D1PCoH25dNVxJUWaHuazPoRgaWa2/aQggR/k
         l1MLnNoMKZojrPl77vgvBO5vJlzvCVPiHLYdT049+c05LxxYTaCIeB39eBOJZeG+8n8W
         zGvA==
X-Forwarded-Encrypted: i=1; AJvYcCUUSdgCEziVrEY1O2hNItI0iHxXnVxZ1BN/oUAKihgzCHjNLaUNf01nQ12ry23t+DgWTDmxMZ2pOhP/WoXzI/rGVdpwF6W9V4Sq5Q==
X-Gm-Message-State: AOJu0YxEE5kpgjMIT4VYLY6XseTYy/6kqZD8Ns4wV2L1plR35Bg0GDMy
	GdLk9I/sgkN6v024PtukNMbT0kqsNWYN6ZsLH5MGQJ4WqFbyMSc8cxT9WSPFXXEUEWNlXnVmRXJ
	aTfnwtA==
X-Google-Smtp-Source: AGHT+IE2pOh2daHEILK+6XHiitvdvq9yF5/zOOktvf9tbV6nGyW3jjGwlRafV2mntrPBpgXDbVkYMg==
X-Received: by 2002:a2e:a553:0:b0:2ec:ca8:4897 with SMTP id 38308e7fff4ca-2ec3cfe83camr37809031fa.4.1718887673146;
        Thu, 20 Jun 2024 05:47:53 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c17ba8sm22421411fa.72.2024.06.20.05.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 05:47:52 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/3] media: i2c: og01a1b: Add support of an input system clock
Date: Thu, 20 Jun 2024 15:47:45 +0300
Message-ID: <20240620124745.1265011-4-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240620124745.1265011-1-vladimir.zapolskiy@linaro.org>
References: <20240620124745.1265011-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

To be properly configured at probe time the sensor module contains
a required reference to xvclk clock on OF platforms, which is now
enabled on probe and checked for a supported frequency rate.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/i2c/og01a1b.c | 43 +++++++++++++++++++++++++++++--------
 1 file changed, 34 insertions(+), 9 deletions(-)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index 9e756c1c47df..929a7e32bd6a 100644
--- a/drivers/media/i2c/og01a1b.c
+++ b/drivers/media/i2c/og01a1b.c
@@ -3,6 +3,7 @@
 
 #include <asm/unaligned.h>
 #include <linux/acpi.h>
+#include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
@@ -418,6 +419,9 @@ static const struct og01a1b_mode supported_modes[] = {
 };
 
 struct og01a1b {
+	struct device *dev;
+	struct clk *xvclk;
+
 	struct v4l2_subdev sd;
 	struct media_pad pad;
 	struct v4l2_ctrl_handler ctrl_handler;
@@ -898,8 +902,9 @@ static int og01a1b_identify_module(struct og01a1b *og01a1b)
 	return 0;
 }
 
-static int og01a1b_check_hwcfg(struct device *dev)
+static int og01a1b_check_hwcfg(struct og01a1b *og01a1b)
 {
+	struct device *dev = og01a1b->dev;
 	struct fwnode_handle *ep;
 	struct fwnode_handle *fwnode = dev_fwnode(dev);
 	struct v4l2_fwnode_endpoint bus_cfg = {
@@ -913,10 +918,13 @@ static int og01a1b_check_hwcfg(struct device *dev)
 		return -ENXIO;
 
 	ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
-
 	if (ret) {
-		dev_err(dev, "can't get clock frequency");
-		return ret;
+		if (!og01a1b->xvclk) {
+			dev_err(dev, "can't get clock frequency");
+			return ret;
+		}
+
+		mclk = clk_get_rate(og01a1b->xvclk);
 	}
 
 	if (mclk != OG01A1B_MCLK) {
@@ -977,6 +985,7 @@ static void og01a1b_remove(struct i2c_client *client)
 	v4l2_ctrl_handler_free(sd->ctrl_handler);
 	pm_runtime_disable(&client->dev);
 	mutex_destroy(&og01a1b->mutex);
+	clk_disable_unprepare(og01a1b->xvclk);
 }
 
 static int og01a1b_probe(struct i2c_client *client)
@@ -984,22 +993,35 @@ static int og01a1b_probe(struct i2c_client *client)
 	struct og01a1b *og01a1b;
 	int ret;
 
-	ret = og01a1b_check_hwcfg(&client->dev);
+	og01a1b = devm_kzalloc(&client->dev, sizeof(*og01a1b), GFP_KERNEL);
+	if (!og01a1b)
+		return -ENOMEM;
+
+	og01a1b->dev = &client->dev;
+
+	og01a1b->xvclk = devm_clk_get_optional(&client->dev, NULL);
+	if (IS_ERR(og01a1b->xvclk)) {
+		ret = PTR_ERR(og01a1b->xvclk);
+		dev_err(&client->dev, "failed to get clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = og01a1b_check_hwcfg(og01a1b);
 	if (ret) {
 		dev_err(&client->dev, "failed to check HW configuration: %d",
 			ret);
 		return ret;
 	}
 
-	og01a1b = devm_kzalloc(&client->dev, sizeof(*og01a1b), GFP_KERNEL);
-	if (!og01a1b)
-		return -ENOMEM;
+	ret = clk_prepare_enable(og01a1b->xvclk);
+	if (ret)
+		return ret;
 
 	v4l2_i2c_subdev_init(&og01a1b->sd, client, &og01a1b_subdev_ops);
 	ret = og01a1b_identify_module(og01a1b);
 	if (ret) {
 		dev_err(&client->dev, "failed to find sensor: %d", ret);
-		return ret;
+		goto disable_clk;
 	}
 
 	mutex_init(&og01a1b->mutex);
@@ -1045,6 +1067,9 @@ static int og01a1b_probe(struct i2c_client *client)
 	v4l2_ctrl_handler_free(og01a1b->sd.ctrl_handler);
 	mutex_destroy(&og01a1b->mutex);
 
+disable_clk:
+	clk_disable_unprepare(og01a1b->xvclk);
+
 	return ret;
 }
 
-- 
2.45.2


