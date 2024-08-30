Return-Path: <devicetree+bounces-98243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A719657B3
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 08:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 654821F24603
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 06:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0649A154455;
	Fri, 30 Aug 2024 06:35:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MwLWSWAH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 804901531F0
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 06:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724999710; cv=none; b=ey21Z3uhK0apYaVI4k6hy9yBoiIU1Kw301y7BFHoOjmK856V2FfOnbqRqmtflykg/S2cdFqTCB0mxzkcWfoZ7kyemWPXQmcQCeOAxNSRZBAclu3pTe5hvjnfyDN/I1EgQttOw1rfUVyQRGizEGIuTXbSApKk6HToP8PrRKf28xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724999710; c=relaxed/simple;
	bh=rl/V9GTT7OotczT8W59vbyptSj4F/iOqVJLDb7vspws=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cfuEjjzdJBNnwngCtkTFaLxv7PZR1V8LYG56CmXJw2p8F+AdWwXRhORZT6kGUi4KbHA+MHjJ3zXoZBl6d+A9+mQ9/rBTxwYNgYjm2xsW+iyMT3CNpovW2P1NTx8WbMCo0ZQ0KCt+V4M6zI6/n7N92vahzMQH8g5W2wlqWEnszOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MwLWSWAH; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2f3aced81ebso840001fa.2
        for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 23:35:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724999706; x=1725604506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XpEQcU1ZSyYMKeZINUUw/5UEUJMFnNkKYPn+jdssXhM=;
        b=MwLWSWAHxptGygjVl7qjwhfq81pq+MVONud7y1fE4JKjoz/BW/AdOAf+BkVvYADfRX
         4SvOV5l9QVDeueg3YydC06DrWg6CVWkVJjd0kgH5e16c1UpdaJbrb72aTMo+3N4c03j4
         78uSeYHUWKirndH8N8P8/t5omyhFn4vQpuuZJRZV8LMwfpdg079unOyZqK/aWQAZJYJh
         Wqce8bFaicQmu2HeHnXb8eewoXnIHNre8f8Y2M6kyiZJrRgYyzH3wDrdbLjMvb2N+arU
         IxfrOTWC1hPQO/2KpR4yLuq1T+MzmK+LLjQxulp1qvFbGz+JvyicZx/Iu9r1CqBUtT7S
         vITg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724999706; x=1725604506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpEQcU1ZSyYMKeZINUUw/5UEUJMFnNkKYPn+jdssXhM=;
        b=BjgkC9/Vk8w+F9mVpXwtKCOF+F6ds2O5YIfVLFp7/ReJ1yfeEG/gGwBRqkpyKDMEFG
         vVAnmU+MCJaUXRHnqcEEARmJdmxMpIdMAZz7dzb9XWam4EpArhXIyLu4NIFcbMu5ELQg
         o6CVZV/GXtPX4n3z3ppfuPEfzL8p6LiOj667624nXTqqcfSJHDXKVLOv0AYObxjckABR
         kUs022RO1MBte6fAxKygztRB+ZrxeF3mTyp9S0ReL/uEtRTOtqWeFcJ/lqQeZqFr/eJf
         PvXJh6F3EMAmMzDXnM+9DL7RaPSRz1Z8Z3jqYhL46BH4RfaCO2IpAVDzVOdzhFd5Vco+
         whTQ==
X-Forwarded-Encrypted: i=1; AJvYcCX20vA+nuxANCt3P2C9PEIavKPMUXENLutWevgimRxxW3I/UmtocmND0FO+JkTSYTxTA3Nu2s17sIqI@vger.kernel.org
X-Gm-Message-State: AOJu0YxjfZoLBhfdt3O4fzRsIGrDwZQ2HXvPcJ5x12Sp0igzRV/9HzWy
	Y528/qwY/UKxcmaNvGJUBs5eIzmq45HNUq3QEDNHTJumbZe1kSAgOqmJw7JUzMk=
X-Google-Smtp-Source: AGHT+IHiuy0QXzHp1OQTevKa2c1STj/9TO8t/rQvZgM/IvVz+ClB5dGExNntEt4fmhRp2pfMXOMoUg==
X-Received: by 2002:a05:651c:198a:b0:2f4:f4da:d584 with SMTP id 38308e7fff4ca-2f61e0ad3b8mr4757351fa.7.1724999706392;
        Thu, 29 Aug 2024 23:35:06 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f614f00860sm4879441fa.45.2024.08.29.23.35.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Aug 2024 23:35:06 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v4 4/6] media: i2c: og01a1b: Add support of xvclk supply clock in power management
Date: Fri, 30 Aug 2024 09:34:57 +0300
Message-ID: <20240830063459.3088895-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
References: <20240830063459.3088895-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The OmniVision OG01A1B camera sensor has an xvclk supply clock, which
could be described and then explicitly controlled on OF platforms.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 drivers/media/i2c/og01a1b.c | 46 ++++++++++++++++++++++++++++++++-----
 1 file changed, 40 insertions(+), 6 deletions(-)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index d993ef4bad46..406847d18062 100644
--- a/drivers/media/i2c/og01a1b.c
+++ b/drivers/media/i2c/og01a1b.c
@@ -3,6 +3,7 @@
 
 #include <asm/unaligned.h>
 #include <linux/acpi.h>
+#include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/i2c.h>
 #include <linux/module.h>
@@ -418,6 +419,8 @@ static const struct og01a1b_mode supported_modes[] = {
 };
 
 struct og01a1b {
+	struct clk *xvclk;
+
 	struct v4l2_subdev sd;
 	struct media_pad pad;
 	struct v4l2_ctrl_handler ctrl_handler;
@@ -898,8 +901,10 @@ static int og01a1b_identify_module(struct og01a1b *og01a1b)
 	return 0;
 }
 
-static int og01a1b_check_hwcfg(struct device *dev)
+static int og01a1b_check_hwcfg(struct og01a1b *og01a1b)
 {
+	struct i2c_client *client = v4l2_get_subdevdata(&og01a1b->sd);
+	struct device *dev = &client->dev;
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
@@ -970,13 +978,32 @@ static int og01a1b_check_hwcfg(struct device *dev)
 /* Power/clock management functions */
 static int og01a1b_power_on(struct device *dev)
 {
-	/* Device is already turned on by i2c-core with ACPI domain PM. */
+	unsigned long delay = DIV_ROUND_UP(8192 * USEC_PER_SEC, OG01A1B_MCLK);
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct og01a1b *og01a1b = to_og01a1b(sd);
+	int ret;
+
+	ret = clk_prepare_enable(og01a1b->xvclk);
+	if (ret)
+		return ret;
+
+	if (og01a1b->xvclk)
+		usleep_range(delay, 2 * delay);
 
 	return 0;
 }
 
 static int og01a1b_power_off(struct device *dev)
 {
+	unsigned long delay = DIV_ROUND_UP(512 * USEC_PER_SEC, OG01A1B_MCLK);
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct og01a1b *og01a1b = to_og01a1b(sd);
+
+	if (og01a1b->xvclk)
+		usleep_range(delay, 2 * delay);
+
+	clk_disable_unprepare(og01a1b->xvclk);
+
 	return 0;
 }
 
@@ -1003,7 +1030,14 @@ static int og01a1b_probe(struct i2c_client *client)
 
 	v4l2_i2c_subdev_init(&og01a1b->sd, client, &og01a1b_subdev_ops);
 
-	ret = og01a1b_check_hwcfg(&client->dev);
+	og01a1b->xvclk = devm_clk_get_optional(&client->dev, NULL);
+	if (IS_ERR(og01a1b->xvclk)) {
+		ret = PTR_ERR(og01a1b->xvclk);
+		dev_err(&client->dev, "failed to get xvclk clock: %d\n", ret);
+		return ret;
+	}
+
+	ret = og01a1b_check_hwcfg(og01a1b);
 	if (ret) {
 		dev_err(&client->dev, "failed to check HW configuration: %d",
 			ret);
-- 
2.45.2


