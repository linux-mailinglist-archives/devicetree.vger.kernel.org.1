Return-Path: <devicetree+bounces-7394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECDE7C04D7
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 21:42:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57E16281B45
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:42:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF84D321A4;
	Tue, 10 Oct 2023 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hAtPz20O"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB6D32188
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 19:42:21 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CA87AC
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:42:17 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2bffa8578feso75265911fa.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 12:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696966935; x=1697571735; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mLPFclkATy4LIwppN+u/n/AESvBYT+nNmBG9F7Vienk=;
        b=hAtPz20Ons190tX5a3mlkGUz5liU1S07Yv7wma7+SdxYtknNFUrsISJCz8WBwcOxjB
         YQ+vI+KOyQcXwXJMUZLav28o+TGmzqkQNix1NVJdYAp4PJZkDLU+kZGPZt2YpR4iM3f3
         +gLadkGFmra4+UoeZLUe9GJWfkOQ2siK7CqeGCnthK0Rkyqv/1H7Un0LjS3pLv2h4BAR
         ZH+JHEtDkV1KoIONoLiz3CosGzoWIfNRcwfLyqUHoHYeDKCnwBSNHSe8ajl9PFD02Oy+
         ATOLbrypFJSzdPSmR05omVre8CpRSNP9WHwFECFq8j6XZczgNaEsMciwqP6UL12vYNBQ
         OD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696966935; x=1697571735;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mLPFclkATy4LIwppN+u/n/AESvBYT+nNmBG9F7Vienk=;
        b=jolwhV0gLq57kIQXxwCGkCHmBqyyn/HkyBjNPCzyTcrB1leYqtMOpHzpWIgCNBaZRD
         PJFf2k4igy5UyZHVwcAEYWpYfp3VKjXnA74s/gvThMnEgVShrr6sLN0ik1qU814AilhC
         6cta+KcKzK6p13Z6NLbaqUgD6g8gBMawJmd+jgjarR6vgqyAJ36ezvTu+PWjCbKytnO0
         d1FwYjQW/TwpgnkuKpo6hZb4QC5nfO+c8IaoPfRBXOwlCTw/CmkAG2zze1nxoH1fvBBe
         b0iFkTTFM+HUX2FzX0y48+w7dGJq+Xr29QAdnoPO1Q6eMz24hCkoZyC4NUlz8A22pN59
         KQvQ==
X-Gm-Message-State: AOJu0YyaGCB5n7jqfP+X+rm9vpbCegiMKqr7N6STqKijI0Vqbf39+FrR
	2hT2G08MT43Xbht7p0QIv0XchA==
X-Google-Smtp-Source: AGHT+IGMEYVkde04gSrKGmF87BeLv0R+L0yhMWgyULeVY/aprGz/S8z9SiL9DNGcWpXORorgtYJKBA==
X-Received: by 2002:ac2:46f7:0:b0:505:98a8:fa39 with SMTP id q23-20020ac246f7000000b0050598a8fa39mr14099696lfo.18.1696966935445;
        Tue, 10 Oct 2023 12:42:15 -0700 (PDT)
Received: from [192.168.1.2] (c-21d3225c.014-348-6c756e10.bbcust.telenor.se. [92.34.211.33])
        by smtp.gmail.com with ESMTPSA id i19-20020ac25233000000b005041cc98273sm1939927lfl.300.2023.10.10.12.42.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Oct 2023 12:42:14 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 10 Oct 2023 21:42:12 +0200
Subject: [PATCH v3 2/2] rtc: rtc7301: Support byte-addressed IO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231010-rtc-7301-regwidth-v3-2-ade586b62794@linaro.org>
References: <20231010-rtc-7301-regwidth-v3-0-ade586b62794@linaro.org>
In-Reply-To: <20231010-rtc-7301-regwidth-v3-0-ade586b62794@linaro.org>
To: Alessandro Zummo <a.zummo@towertech.it>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Akinobu Mita <akinobu.mita@gmail.com>, 
 Howard Harte <hharte@magicandroidapps.com>
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The old RTC7301 driver in OpenWrt used byte access, but the
current mainline Linux driver uses 32bit word access.

Make this configurable using device properties using the
standard property "reg-io-width" in e.g. device tree.

This is needed for the USRobotics USR8200 which has the
chip connected using byte accesses.

Debugging and testing by Howard Harte.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/rtc/rtc-r7301.c | 35 +++++++++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/rtc/rtc-r7301.c b/drivers/rtc/rtc-r7301.c
index 5dbaeb7af648..ef913cf8593f 100644
--- a/drivers/rtc/rtc-r7301.c
+++ b/drivers/rtc/rtc-r7301.c
@@ -14,6 +14,7 @@
 #include <linux/module.h>
 #include <linux/mod_devicetable.h>
 #include <linux/delay.h>
+#include <linux/property.h>
 #include <linux/regmap.h>
 #include <linux/platform_device.h>
 #include <linux/rtc.h>
@@ -55,12 +56,23 @@ struct rtc7301_priv {
 	u8 bank;
 };
 
-static const struct regmap_config rtc7301_regmap_config = {
+/*
+ * When the device is memory-mapped, some platforms pack the registers into
+ * 32-bit access using the lower 8 bits at each 4-byte stride, while others
+ * expose them as simply consecutive bytes.
+ */
+static const struct regmap_config rtc7301_regmap_32_config = {
 	.reg_bits = 32,
 	.val_bits = 8,
 	.reg_stride = 4,
 };
 
+static const struct regmap_config rtc7301_regmap_8_config = {
+	.reg_bits = 8,
+	.val_bits = 8,
+	.reg_stride = 1,
+};
+
 static u8 rtc7301_read(struct rtc7301_priv *priv, unsigned int reg)
 {
 	int reg_stride = regmap_get_reg_stride(priv->regmap);
@@ -356,7 +368,9 @@ static int __init rtc7301_rtc_probe(struct platform_device *dev)
 	void __iomem *regs;
 	struct rtc7301_priv *priv;
 	struct rtc_device *rtc;
+	static const struct regmap_config *mapconf;
 	int ret;
+	u32 val;
 
 	priv = devm_kzalloc(&dev->dev, sizeof(*priv), GFP_KERNEL);
 	if (!priv)
@@ -366,8 +380,25 @@ static int __init rtc7301_rtc_probe(struct platform_device *dev)
 	if (IS_ERR(regs))
 		return PTR_ERR(regs);
 
+	ret = device_property_read_u32(&dev->dev, "reg-io-width", &val);
+	if (ret)
+		/* Default to 32bit accesses */
+		val = 4;
+
+	switch (val) {
+	case 1:
+		mapconf = &rtc7301_regmap_8_config;
+		break;
+	case 4:
+		mapconf = &rtc7301_regmap_32_config;
+		break;
+	default:
+		dev_err(&dev->dev, "invalid reg-io-width %d\n", val);
+		return -EINVAL;
+	}
+
 	priv->regmap = devm_regmap_init_mmio(&dev->dev, regs,
-					     &rtc7301_regmap_config);
+					     mapconf);
 	if (IS_ERR(priv->regmap))
 		return PTR_ERR(priv->regmap);
 

-- 
2.41.0


