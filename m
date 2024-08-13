Return-Path: <devicetree+bounces-93274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13927950256
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 12:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 46E56B2370D
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 10:21:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB51194A5B;
	Tue, 13 Aug 2024 10:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WpOct45u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A41CF18DF9D
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 10:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723544449; cv=none; b=BkE7tqx/osJPXGKNfAADUaPoI02m5P4Akga1j2gAJDCilEgxuFcu6iXigLIrJSOzYiPVe7U0tJ2dngiK5nHMlUCfcQlBWgyf9lqqQko6Z4zU/9DisgWVFTMkm6u9UxpuI0mR/my3cgSELt9Po3BEDN5V2oxd1e6BXNlwCYfngqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723544449; c=relaxed/simple;
	bh=zFeRD1dubZTlUw2Tr8sTwatKL5cUhpCf5nRuXAjei3U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Wyvwoq0T5kBvbMZ0RUPfcq0tN2V9GWPVTZQjieJdIA9YrdW7JhlVit1XALLlw2gkDkR3qQCwyc1fe6NIn5vSfkiyzrtx5xTAErtq0Gf1aE/rbmGbVVDNyQHWM1osfUFnaHWj3+xjhO9Bh1h2+1bRtjDtTg3cr9T+8zUOR/aT+7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WpOct45u; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52efcbfacb9so514802e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 03:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723544446; x=1724149246; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AauUhOtdcxefr/CJ3rnixUCq6aw4Uq29mzp5fPuYe10=;
        b=WpOct45udlADXeNKZAg9RqnLo9z9ks6INkAsfnflV99IIjYmTO9jwT09PohJainHEe
         YxoAduAh1RleMLF1Dhu3IaBbvJ0yr6P61j4A9Y0r9BxnroFfw5BRC7CBbqG6B6xDpJtu
         vNi9ORMGpQhZAMZRj9gxBz+va8TBa+g2bzIeK+WfuL1262to3iDfo+b1USJXqvQio9yC
         v2zRSDrKcYI4oBDHztr4bnwViLj3xCsQTszCSQh+bHREcNJOkAoEUo3cJU0TScCwwD5n
         NYAZ632I5Xc/+4KQcj7wDoO95bkgfx6Pwy4H+rCAr7rUlEx7WEizcUrfBgci3g33CQki
         ijxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723544446; x=1724149246;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AauUhOtdcxefr/CJ3rnixUCq6aw4Uq29mzp5fPuYe10=;
        b=DeA/cWu30/riSzcSdssGz8bj3+kD5S3QmoK2lqPYIV/s8YjEwurk32al7OnXj4+UD1
         dFaCfTgvOd9ogwyRTqFPnuPfp1y5Mqy+FWZuYfXkniiIOwgGTLyeQYrkpRHSMHlZfQiN
         9fC8W7fqXXghZCCjwjykGTZ4dMJOxJL8W0swY8p3cC3uJQacdEkZIrK6fiYfq3gDbySb
         n7NhWeCSsTXibyBhe1DkV29iLQx1ZuUuDrK+2miTH+5rtMysGgqgFDE9JEkkAUrpJRS5
         PSW12MtScHJegcDW9GBhrcw1cwzhxlI04FCpaFmD4p5JULP17gnMRJOQRYa8W/0ZPmJf
         nuyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXF8k0VAo+rTyzu6nrONvtQUvQYSbsvPiijugYeplyceeQ6lyYfbQZHy4cWsrliiIUCnvA3o0h/tao0SjwC2rPjZ9/rNyy9Rjfbzw==
X-Gm-Message-State: AOJu0Yx5wFCln3/FtyKDfKGNDMMCZk57tzPHNPUc/oZc2B32quu3CNga
	DPRfbKyLbeOuUU9pfmfpumqZTYVKLWLQH6n4VHLbcHZzK6V7nlUaB5f+noDmklT4TO1WllV3Hwm
	fAUE=
X-Google-Smtp-Source: AGHT+IET57EJTfirEQuvPVEG1X/QJazPFFJZy606wLkFdO+/LZ8fEv9a16ZPYASYP6IFODxwCMrFTw==
X-Received: by 2002:a05:6512:687:b0:52f:cf27:69f3 with SMTP id 2adb3069b0e04-53214fdaf44mr738338e87.2.1723544445615;
        Tue, 13 Aug 2024 03:20:45 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53200eb3ca5sm965917e87.55.2024.08.13.03.20.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 03:20:45 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 4/6] media: i2c: og01a1b: Add support of xvclk supply clock in power management
Date: Tue, 13 Aug 2024 13:20:33 +0300
Message-ID: <20240813102035.1763559-5-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
References: <20240813102035.1763559-1-vladimir.zapolskiy@linaro.org>
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
 drivers/media/i2c/og01a1b.c | 35 ++++++++++++++++++++++++++++-------
 1 file changed, 28 insertions(+), 7 deletions(-)

diff --git a/drivers/media/i2c/og01a1b.c b/drivers/media/i2c/og01a1b.c
index d993ef4bad46..766740bd04c1 100644
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
@@ -970,13 +978,19 @@ static int og01a1b_check_hwcfg(struct device *dev)
 /* Power/clock management functions */
 static int og01a1b_power_on(struct device *dev)
 {
-	/* Device is already turned on by i2c-core with ACPI domain PM. */
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct og01a1b *og01a1b = to_og01a1b(sd);
 
-	return 0;
+	return clk_prepare_enable(og01a1b->xvclk);
 }
 
 static int og01a1b_power_off(struct device *dev)
 {
+	struct v4l2_subdev *sd = dev_get_drvdata(dev);
+	struct og01a1b *og01a1b = to_og01a1b(sd);
+
+	clk_disable_unprepare(og01a1b->xvclk);
+
 	return 0;
 }
 
@@ -1003,7 +1017,14 @@ static int og01a1b_probe(struct i2c_client *client)
 
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


