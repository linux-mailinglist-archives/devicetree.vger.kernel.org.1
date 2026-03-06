Return-Path: <devicetree+bounces-272164-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNzLH+TmqmkTYAEAu9opvQ
	(envelope-from <devicetree+bounces-272164-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:38:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCAB222D37
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:38:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6CE1D31648CC
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E72B732D0D4;
	Fri,  6 Mar 2026 14:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="XeR8uPVv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9BE3002A9
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772807601; cv=none; b=a8d4fb9jQ5UAjEMOJK9Lr20U84zicc4tV1toBra5pbnhdvU9TzopExHgfqPD2sTeyYSW244AECu2Zah2v1JR6EbttRt1K3ac5O/RtsXpNJa55lEIlrv9bQZOo6rkHG2wwqztxyttPYvCGYHNhZhOdYD+3LUiJMjTg+FuvRBoVxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772807601; c=relaxed/simple;
	bh=ZNpu1+QLWxDyG8uNZKHnXwGDlRkKFAgQ4JrcxwH4TZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rVpRi0Ce4YlzVMBy3ZQb+X5ovI2/+prmOBMx0SVIcJkpe/c7Pk0Wo0YOOzgnfc+OhSut2niiEGbfwXWlOhJtP5dQK2niwL6M7RaCM0xNd7iLDQLjJzaU6LS/shAFyOSY2jEZkU3UHivcgbUgh7Kd8Hgh0rI3NFjLBfTSRksCCG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=XeR8uPVv; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-439bc14dcf4so3600252f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772807599; x=1773412399; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLnt0eflN8lFiwNCVheUlKB9RjgppzFmTMI48rlcPq0=;
        b=XeR8uPVvbnJMhtWITWm03vozrI7SkQtFNZ2eNVfCo0NfkLfXAmfowpDuP8Cl1pJcB/
         ch59W871oaddf6D6/mbPyxNE/S/MnUbCIcMjgIes69D2SnaXTdI5E/qPkbj+QHS0UEL9
         dTvjjbornjD56ALCOE7UWRH+Y50wUyXAM7W8O1rg6eB0QYe+zhPhVumOwdqJL9wkpix+
         SqdBE1gVuZKCpRMhsJxrfRGejcdjCF4Em1fENa7sxJZbrMGbNYbHa2JuNo3vA8x16DS9
         /Obwy62O9h+sh65aOKew/52LyGEtuE9oIz/YEelkBy7oP8N0jqmdHtlVa6LZsqZk4UBq
         +qtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772807599; x=1773412399;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eLnt0eflN8lFiwNCVheUlKB9RjgppzFmTMI48rlcPq0=;
        b=cvEG3WsfmijyzHaahAPviimoVXGGL+yFNacSBfQ48KwDeapGzYr+3XTUZdiiZGZsPk
         okNILu/tN3jZYZ+KI8ZyH/KxnkBzT8vj4DkqytoF4THIHVpoL6Rx0jmCkyemPdKgDhSY
         FGoNvp5GP9Gll+NHQu6aPmZ/CRdyizuTFAXPDrCwiqrJnXk2AcTcBMUp9wmq0bB7LTZM
         oh5r2n6YVu4UnKkuv1e5KEwbizWwPzur4oQ+CLaqru3GuuXrswiO177o9FupGWGJ6gnq
         QLLpD6tR2GBxgzX0ZcZqBtKxiHSwSqK48Cogm1i9Ux9rlc2I8Iq7PUxw9MnbsSkBL5Tj
         67JQ==
X-Gm-Message-State: AOJu0YwuzbjnUv7j4IIR0fe6IpZp+60sIMKPQL9xjMgXUfXphg99KJ39
	pk5Z1p+fHJF+aOky0kX8VdOmdFD22h2nHFPWYC8xjKM4R853vG6MSzJot58WZ5BIbQM=
X-Gm-Gg: ATEYQzyUfPsmY4sgzggHkGT5YnhzS3eso+XNbcMKDmfIOAOuOFq0Y1DdASJ/0eQl1Aq
	59PtVUBnmv1GSwC+yAQaiSgkr8Jt7u+FL0Uwxc8l1Q9FwQIanPt2t3PKjYDO0LwOF1T2Tbbvez4
	LNy1haPpHn5AjOn83BrBHr/q3/DpSKqffw2ItM8+eUvO2r5oJwj4tadzItAE/Fw9IdszcehSKdf
	be6DVzYAydByrV3s9JQJoOuuR/8DNuP49lwW5UHe4Gweidap1vkP7Spmew79PU0RO1SAgkbGEMe
	60mWFeK+Mu9zb+lyJn3n+C796s49oGWygDn6vKt4t1yGDmt1/A/OZ68ohu3gAvIkOmMGyPIZ3lp
	avcYRjGdqZZ3e1o08gqYbfNt3PoADiVrvk4qMGEV3iUWvne+Y42KD5RVOoR0jzCmSGNbJz+FyRO
	I2h4wHxpwSpGkAHQxTJIWWhEUj5EvTcPTXvsV6EnHFVX2E5SYP4nWaPQ/dH6XZGL0JFfDM0A+2D
	hrbJA==
X-Received: by 2002:a05:6000:4283:b0:439:8d39:47c7 with SMTP id ffacd0b85a97d-439da363f77mr4106618f8f.18.1772807598732;
        Fri, 06 Mar 2026 06:33:18 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4635281f8f.2.2026.03.06.06.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 06:33:18 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 06 Mar 2026 18:33:03 +0400
Subject: [PATCH v2 03/11] regulator: bq257xx: Drop the regulator_dev from
 the driver data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-bq25792-v2-3-6595249d6e6f@flipper.net>
References: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
In-Reply-To: <20260306-bq25792-v2-0-6595249d6e6f@flipper.net>
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chris Morgan <macromorgan@hotmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Sebastian Reichel <sre@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 linux-pm@vger.kernel.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1549; i=alchark@flipper.net;
 h=from:subject:message-id; bh=ZNpu1+QLWxDyG8uNZKHnXwGDlRkKFAgQ4JrcxwH4TZY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuerrk2a0quZy/T1pDi8oaJV+KHri+t/H+khVOHcm/J
 /XrNNdldUxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hoY6xjpGDFycAjDV6+QY/tdJCl5/8/1m3NmPxu58s/V/20mtf15+t8NCn3kVm+FUz0iG/zk/9n9
 b5fvtVlR7C4/DyQkXDUwaWBhMTyv++cr9cGV0CDcA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: DFCAB222D37
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272164-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The field was not used anywhere in the driver, so just drop it. This helps
further slim down the platform data structure.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/regulator/bq257xx-regulator.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
index 812938e565e3..674dae6109e9 100644
--- a/drivers/regulator/bq257xx-regulator.c
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -15,7 +15,6 @@
 #include <linux/regulator/of_regulator.h>
 
 struct bq257xx_reg_data {
-	struct regulator_dev *bq257xx_reg;
 	struct gpio_desc *otg_en_gpio;
 	struct regulator_desc desc;
 };
@@ -139,6 +138,7 @@ static int bq257xx_regulator_probe(struct platform_device *pdev)
 	struct bq257xx_reg_data *pdata;
 	struct device_node *np = dev->of_node;
 	struct regulator_config cfg = {};
+	struct regulator_dev *rdev;
 
 	pdev->dev.of_node = pdev->dev.parent->of_node;
 	pdev->dev.of_node_reused = true;
@@ -159,9 +159,9 @@ static int bq257xx_regulator_probe(struct platform_device *pdev)
 	if (!cfg.regmap)
 		return -ENODEV;
 
-	pdata->bq257xx_reg = devm_regulator_register(dev, &pdata->desc, &cfg);
-	if (IS_ERR(pdata->bq257xx_reg)) {
-		return dev_err_probe(&pdev->dev, PTR_ERR(pdata->bq257xx_reg),
+	rdev = devm_regulator_register(dev, &pdata->desc, &cfg);
+	if (IS_ERR(rdev)) {
+		return dev_err_probe(&pdev->dev, PTR_ERR(rdev),
 				     "error registering bq257xx regulator");
 	}
 

-- 
2.52.0


