Return-Path: <devicetree+bounces-273398-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDKZJcrkr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273398-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:30:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C40248726
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:30:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9AB683071C06
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4805343E48E;
	Tue, 10 Mar 2026 09:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="52rmwWQ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C6843DA5A
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134956; cv=none; b=GZ4UnRob/B+05AGXkX7q20DLNbXfJRaLXQ/v7I71+JtbtmmLpTOIKnhzW3LpeyZ8C3nL24EA/QDAhVfp2XLh6IjqwFXmLSpMyOMkeZR39XKIaiLgKZmZUGEwv2TuTqtGOhEhTr9kwAzWgrd1SP/PIEn6MaVvvIFjpv21X2mrrWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134956; c=relaxed/simple;
	bh=DcG8KW5Fnk3rc/f7uk3dyHKO5i3tnn1nAb2IeSenCzU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rx4gCQxE6FKqMXCYzjs9UrNc0fOFHPYEvM+UrGmwrN16fORRTGEIKFqAuTV7ZYwMu14UmZpAzJvg/JeDrye27ksUkAvzXdhQr4zc1YHPN2lTB/tS7s0A9XD0XYFnWEXfDFWPxiG2bAbBFMzz6QXcVii7z4JSnTky2ZRRdjo5TiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=52rmwWQ+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-48540355459so13297325e9.3
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134953; x=1773739753; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jCpuZJNVNsInRc1C9w8uAr8XhXxWVpiElBj6DPaFINQ=;
        b=52rmwWQ+5lSExH5NtxqrZ1Urfxwa33hp20t5KO3bH4tydKGukbT+MSzLGrWnpg8ImT
         O5PasIZsGor2CQ77z7tI/cL/VBfCyEKlKLdQkVanZkc01FC8cPIVvcC9sYhZxAqx0zLO
         VZSAD0S6q0L+PLnrtEFjZXK9/sl4/pA0XL2S2B8mkY/IeeGRfOGxTT2z969KSQRlm94n
         ZMu35iA+iFjSOR2++CQZlbkX5rgHhnIGtKtxgjuVCwy73Xrw4+RPnmK6m3ozbA4j0ukr
         nDBCk1AcHzmE9TdoON5CexlJA4GE03Hwf1AQhSds9Hw10BdvdYolW8bSyDbtyM4ryH2A
         YluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134953; x=1773739753;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jCpuZJNVNsInRc1C9w8uAr8XhXxWVpiElBj6DPaFINQ=;
        b=sd2U27XiH9qTZdHDqmTmwVcLmFoW2h+9rAfKFPw003UPb51ikYgQnvBz5j6z1SvnpG
         QVj+HtnwMkAyhlxgKIzrIZpwdwzqmJlrRh0YeQHZfGecdl4UZN+u6Kc3a7B9owv7p72K
         F5sNvnu5RBMMt+tKpUGk4DX+raDhAoUNP7KZampnuJNIkMOVJWzWO12s/M6oov11laZZ
         YtpnNB6i/6nHXIDBQhFYN8SbugaAfkmUQQgYyKbdlC2MxgZpgOuVWl5jWLNiwixDkgeI
         2SDtiIj/hsXWjYCVr55WHAKQ6J6m3ux0oTUNlY12wR4HNLP6cjLKwg5/EcIlepk3Ai4D
         9ZuA==
X-Gm-Message-State: AOJu0Yxaz8A2jlCjlHl5LpFQ4EBXPg5Fm01TpxaJIcgsUNFS/y/Iv6D6
	F3/sTkGFtNU2S0P8BTFMIYMcXnA+jEchbWt0WAGFsgcdkRDuHTEV9ZxzOgMc8nklPjY=
X-Gm-Gg: ATEYQzxAIj0JK5OdNtZxurCVZe3MFmX9gdjCYzF3cDspm7Xfp6fxnxEV9dcRJCZADok
	+u5pE/W/ZHnno3lWFz8T5CI7VyCfex+RuIz04p/FhwplkMXxPg+xIWNURMmns7FlLg27V9bTH0j
	MDlJVknhV6kaHEfoKfugtX2X6e/liDkbNfH9RNHy6R9hBV9nTx4pFi1bZCONkz88DRNiNU/dFPo
	xZbNbmjHAe414F+zpHKV1WP9tDMdd3iRCgIV2RbgOWQ98+iOJV6SYUT0ecqTpckkMFF890oyF7z
	dySeBKsp0DpWaYUiohY7TxldaNbScyZJGyjaLpYcORbLUCCQChVuqbrlI9WRFJ3CGMwU4J6QCdR
	BATyI+qGEOwFilFPSiTwOtoHq9xzpRvt+alujNQ3BNZMzPR1nVxnLkh6x3xw8kxD8Wbtjfh7tRX
	NwAUZXxrt+1qUOwftOqQ1t21R2kOxtuz/6vyqyMusKo00UKtPl3C8OSvM/1mJVwCZ30CkHjfB1t
	9CB9g==
X-Received: by 2002:a05:600c:1e2a:b0:47e:e57d:404 with SMTP id 5b1f17b1804b1-485269582efmr227608515e9.16.1773134952539;
        Tue, 10 Mar 2026 02:29:12 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:12 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:26 +0400
Subject: [PATCH v3 02/11] regulator: bq257xx: Remove reference to the
 parent MFD's dev
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-2-02f8e232d63b@flipper.net>
References: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
In-Reply-To: <20260310-bq25792-v3-0-02f8e232d63b@flipper.net>
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
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5KomuzgzdwTos704jv/tblFLzseLf7LNcNJwGSB8
 2/DbYXKHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEy1ZCfD/4rL8mblacUJkm1X0n14Vp+rvR2gu9F08bQNeccUvxgkFzAyLE5maJN
 Tcn2lqlvveZSX/9erNRueXrO/k9snFhsqWGbHAQA=
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 57C40248726
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
	TAGGED_FROM(0.00)[bounces-273398-lists,devicetree=lfdr.de];
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


