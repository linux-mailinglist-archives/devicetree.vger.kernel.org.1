Return-Path: <devicetree+bounces-274036-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOuqH5VYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274036-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAE8263408
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7BD6A3087449
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:56:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A29373DE432;
	Wed, 11 Mar 2026 11:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="Ei9hMQlq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0C3DEAEB
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230187; cv=none; b=FAEXzwQwj8P9LS3YnjCbFh4l1E0/5x5+r2ncdWX5WP9oropjpn8EOsxhriUCuqWeg/oQ2cHKlnzKWn4kEwZELuEp2kZhR5UCcso+U6IN2p5xRnX/xBtHlgjO0oXBv0eSfOL97zOfoZkdnXnsNKfpL/N7BojMwt4BbBsJfwKNWVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230187; c=relaxed/simple;
	bh=DcG8KW5Fnk3rc/f7uk3dyHKO5i3tnn1nAb2IeSenCzU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=W2e5Tp6Xsc7z8tDjlZQUK8G8Nb0m+PwuaCynAXvNHjlnhdUUsBi4qaPcVdv3TlT/lvJTwhnuU4Nb5152oYMxmOzimMRvsv2D3wibwXaZLLGSTKeU1R5AdEzG5XtWGZBIaDO7Ra0lxXkJXiywVPhWMpd2ojTNDWV68QHMlbZBj0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=Ei9hMQlq; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-48540355459so26198735e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230185; x=1773834985; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCpuZJNVNsInRc1C9w8uAr8XhXxWVpiElBj6DPaFINQ=;
        b=Ei9hMQlq8Nf7iuEp4tS8ip3qh/DvXtJxM/OP8WSdNqjeq246T6ehXK+t4O19755PRh
         lQx8YCEQSX6AJSrzdlK6t3myvJdHkjwfbMmwxQ1t61g/2H6bC90aNhOlUTXepu1n2naD
         RTvccZU/Tdhwss60qRAviwyBSdtrCOLKWWHvkE30cI2CYDw+pZdDQ+6QTAOXQvhI8z2R
         LVNPnFuvSKsuh2Wfw83gVq93V9KGIa6YAM0J0lVJkCAlsqvj7mEpWBu4WOpm5jBXy0Jc
         kTG3rYmCbxKCxBy9bhWC7JzD0jb2RNy0xDvM6XwHkJkzueYCOZpo57JLfupkJ7zHG3Wg
         kt3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230185; x=1773834985;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jCpuZJNVNsInRc1C9w8uAr8XhXxWVpiElBj6DPaFINQ=;
        b=QMUaFinLqJwC4rb5LZMLXfFu2nvoEIHT2V74CO6CAcnNdHGuer8lNoVy3LtcbjQrcg
         EghYmDQM/A2WRYAe3Yzx9P7/Hia2lyHaI16N2FBkwsRPPG8gUu8hjPogjENh89O7Ymf/
         LuIgECbuv2VIXzzQNMnbH6ES8LLAqNLQwgnemmICa0HGvYqouvS2+TY4FWCVmuMjBtNz
         oXw7avW8DGJyB6Fe0eUooAAJ+18LJ2C/F9rB28WqsLTGXsv+R5yREKuBC4eQdvCs8n9/
         6JcTQbj4vkKZgRnnCJ04aHFD4wbEek9GDPS9aIsOEOvpXdas1GVBaL+bhRgFf2SGzKNB
         V7nw==
X-Gm-Message-State: AOJu0Yy0iZZEV0hHRS5iHUeY9g7Zkn5Kwn4l1JT/RtHi/3VbbaziiRE8
	fw+d+Lfu1QqZmxCPRVePfOoHctFMWSrAyWQwbZGs6MvwOt0pJnOoDWBcfcjsXw8o8FY=
X-Gm-Gg: ATEYQzwn+cJy0GqbDUbIYIeLrCJA9w/1Vi5S+o6AQTlxk4LY8ibms7lwFPGrE7dSfi/
	Aamexmpm09OoGqYLJN/vKBbBkSeSDN64cunmSnhWnCA+hHnFU1Fa0JtLDuRj34kixwspcdc8Hox
	qNNTnTdv8CecCWfSNDKuX7pJvJXjrDTxyCp+EsPuYSlS1xXUU9dXxJ5ZHIY3Zk1XmCgcqxe2Qvf
	TZ2+ihlSblSkvPObF20sLkX5IItD9kcn2L/sHAfy556Yl3YLzQDN2IpaztGwQ2WRM7zAReJ8Xcc
	NFUiPGdSJMQOFabX3RgjSuBvdUDfxihCwYJbqvXtDRcf5wArCFTg1U+2UKrHEuyxe/RWoU1kID0
	ZLtPlPuyKRSKGaZnl7z4Hk6azTOvUzSjjFpR2Ic1dMCtGwSVrKBoyRSB3DYRSa7sgMpkzXQpmpO
	ELSXG0heQUN/j6D/v+bMOhniB38nu7xnCrT09qINDLJR5OiynULrU+xUGwVEhgrAMHMFIZgDfIB
	IXw0A==
X-Received: by 2002:a05:600c:1f96:b0:485:3bb0:194 with SMTP id 5b1f17b1804b1-4854b129e5dmr37492555e9.35.1773230184632;
        Wed, 11 Mar 2026 04:56:24 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:24 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:15 +0400
Subject: [PATCH v4 02/11] regulator: bq257xx: Remove reference to the
 parent MFD's dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-2-7213415d9eec@flipper.net>
References: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
In-Reply-To: <20260311-bq25792-v4-0-7213415d9eec@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2756; i=alchark@flipper.net;
 h=from:subject:message-id; bh=DcG8KW5Fnk3rc/f7uk3dyHKO5i3tnn1nAb2IeSenCzU=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEgqE1l3VMZ7r6holfnSL1seO+7elP1aSGLHTfNFN
 bWTpp2b2TGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrqGOsYMXBxCsBUr25j+M3608PeLFf/6bNHZwu3mL8UuTr9T1i0wrrbk8Wki/u/W3cw/LM6MO8
 e52KFK6L5XzkPFFpZz3By7ebk/P77ltqF1D/LljECAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 3FAE8263408
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274036-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Drop the ->bq field from the platform data of the bq257xx regulator driver,
which was only used to get the regmap of the parent MFD device, and use the
regmap from the regulator_dev instead, slimming down the code a bit.

Acked-by: Mark Brown <broonie@kernel.org>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/regulator/bq257xx-regulator.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
index dab8f1ab4450..812938e565e3 100644
--- a/drivers/regulator/bq257xx-regulator.c
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -15,7 +15,6 @@
 #include <linux/regulator/of_regulator.h>
 
 struct bq257xx_reg_data {
-	struct bq257xx_device *bq;
 	struct regulator_dev *bq257xx_reg;
 	struct gpio_desc *otg_en_gpio;
 	struct regulator_desc desc;
@@ -23,11 +22,11 @@ struct bq257xx_reg_data {
 
 static int bq25703_vbus_get_cur_limit(struct regulator_dev *rdev)
 {
-	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+	struct regmap *regmap = rdev_get_regmap(rdev);
 	int ret;
 	unsigned int reg;
 
-	ret = regmap_read(pdata->bq->regmap, BQ25703_OTG_CURRENT, &reg);
+	ret = regmap_read(regmap, BQ25703_OTG_CURRENT, &reg);
 	if (ret)
 		return ret;
 	return FIELD_GET(BQ25703_OTG_CUR_MASK, reg) * BQ25703_OTG_CUR_STEP_UA;
@@ -40,7 +39,7 @@ static int bq25703_vbus_get_cur_limit(struct regulator_dev *rdev)
 static int bq25703_vbus_set_cur_limit(struct regulator_dev *rdev,
 				      int min_uA, int max_uA)
 {
-	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
+	struct regmap *regmap = rdev_get_regmap(rdev);
 	unsigned int reg;
 
 	if ((min_uA > BQ25703_OTG_CUR_MAX_UA) || (max_uA < 0))
@@ -52,7 +51,7 @@ static int bq25703_vbus_set_cur_limit(struct regulator_dev *rdev,
 	if ((reg * BQ25703_OTG_CUR_STEP_UA) < min_uA)
 		return -EINVAL;
 
-	return regmap_write(pdata->bq->regmap, BQ25703_OTG_CURRENT,
+	return regmap_write(regmap, BQ25703_OTG_CURRENT,
 			    FIELD_PREP(BQ25703_OTG_CUR_MASK, reg));
 }
 
@@ -137,7 +136,6 @@ static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
 static int bq257xx_regulator_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct bq257xx_device *bq = dev_get_drvdata(pdev->dev.parent);
 	struct bq257xx_reg_data *pdata;
 	struct device_node *np = dev->of_node;
 	struct regulator_config cfg = {};
@@ -149,7 +147,6 @@ static int bq257xx_regulator_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -ENOMEM;
 
-	pdata->bq = bq;
 	pdata->desc = bq25703_vbus_desc;
 
 	platform_set_drvdata(pdev, pdata);

-- 
2.52.0


