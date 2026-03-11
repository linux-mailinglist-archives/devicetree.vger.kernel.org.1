Return-Path: <devicetree+bounces-274037-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2JnbNLVYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274037-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264D26344E
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:57:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0AD223094F8C
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:56:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12C083DEFFC;
	Wed, 11 Mar 2026 11:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="SEYH2Pq3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1313DEFE6
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230191; cv=none; b=YrcFKz8Zbo25KbNatcPYJJzRNGBM4PuN0otXRRjsu/ZR/0miDS0gTx+s/7jBwCdiyt6EN49TBOw7aLLVsYa6ZGRUH1g4/Uf4rE2xqjF8nq95nb+pyTZnHJ7ltBy9WwjwCpYnqHmY55J6frdd8y27s7R6t4GL5xh4qWlvxG2rXiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230191; c=relaxed/simple;
	bh=1uAjKjH8Mriiu2XHqXVfsDGlgQSHnV96d3u/aQzpXDo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NIIZi/T46zRkNj7VlXhPfszAa2Tc5IeuKWE3pMVy37m7ZnePeHcEzisRxdXeldj40ZBiQW8L86WBMV062A2BTSy0ditZkEk++eoAuznf+xjWRPOduX9gj/fdP4SEVDEQTGMhfxdXvhCNILDVtRrIhOXJ/monTB8z8bk4k6wYLHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=SEYH2Pq3; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4853e1ce427so36039855e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230187; x=1773834987; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=veDJydETiE9Gv6g2pRG32dl9Jb7Mpm7Du1gG7k28aTM=;
        b=SEYH2Pq3ppCgSe2YgQilj2Dk7nmgQ5YR/rZgPFxnYSBCFgdILk8nrDmQBZhHiaM5bh
         Sfk8qVwddsHsJXpfdU8/8i/f6/wP/bkHVqdoOViAyPbeosflxyFz9FyjRUpVcUMeZ6Qz
         996gv1aFo8gzsGhSlNEZg+bf2iTPCOazHoDKC3AMRRVnzq+SPHet8jVB9ak/owIZLdGR
         nU7DPivMmCBVpeJa4qRU1GZjVk135X4lZ09QUkO5DhZjy8p/7x7FXZV4LK+H8uJcbk7a
         4Ya66y6HA0FoiO0+TIBhh+WVLvno3nInqZi+BwoBp+QN6eGhNofKNj9RSdMgm3P42uQs
         tttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230187; x=1773834987;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=veDJydETiE9Gv6g2pRG32dl9Jb7Mpm7Du1gG7k28aTM=;
        b=J+GbdyICpxfqLHxBjNyVKSoFck6Ljq1Jd1tBu8G2DRkpiQ3IRC9e2PRgiZAqf7UvDC
         SJBXoOxSYHnt8/4CpePDovge8O94R+wzR6jjLuC3tfWQAihfTUHn1Khsd8e/LBCz1b6K
         xqRy/nqU1N/+UR2sp99FAfNKinEx/Ug3KbxPQyVkKeYJAS+yhjlrDnrYiB+ZCPujy3CQ
         fblVyiDc1U/EPTYQ/RawiAXkxFzuS46ZmKeivsw9enrWvOZNuDZXEpqpUzf/VIRQwFFy
         9MzcB8RHk9BFaLgfDX8Tl7l9zUy5vv8IVeUu+HmBJt/uhjJC+BRw4Fs/i1YdwTde5QHh
         ReoA==
X-Gm-Message-State: AOJu0YxtG4inPGlo8VCu0i8n5VeRL2fA1uXIQGNEnEk63/m2ieoJsGAt
	z/0d82HBs2jXwolAMgL5XxzeQTaB1pBIOu4g8dpaZtvchaG6ylHIQoxWpbCt/EoaI8E=
X-Gm-Gg: ATEYQzycS+X1NLbXYo0C2LCmz7j/e9ZqnVjRosizaIlpuZ7Gh867cZPyApLdz9zdwHT
	RPQDTMt5Ol8OSdJ/sWr8vGetpc7nK+E5Mb0BxrIKxYWKrmJSYLoBsiCoUncv+tx46gQJxraka4U
	nfd6T4F8nuIi5AgpYqzeIO0r3qdYRVLM5LypOedEheKdTmR6QkurUFm5ePXk7XRNJv1hu0HCTyi
	mWe9v8/eXEmtKAVPHIIfDnysB5+yqDt2o7NqglNgKKskSd965CNXnEVipNNFhXqDloA8PT67dvR
	d6AMb7r9EbzNMu6GerUnHu4qGbA36xFozCEFb55IOaQJKoGMQRmHC51NB3iL94RjLk6YQvp+0gy
	SYTvdKXLY7C9tZ1flAYnCL8iKvFIBniqjxIFS52NwDo5gEuVEQVmUxMr5iuTpz5YoXeRVW77tJx
	VO5OrvdbQ1AmlrA2yAQijewPUqH+XlQJkCI12uEoYgcOmQwjPOteZd10vai5A4ZFxh9qi+U4jMn
	zua7JNusNNB8mWU
X-Received: by 2002:a05:600c:8b13:b0:485:30d4:6b9e with SMTP id 5b1f17b1804b1-4854b100b66mr40280855e9.21.1773230187141;
        Wed, 11 Mar 2026 04:56:27 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:26 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:16 +0400
Subject: [PATCH v4 03/11] regulator: bq257xx: Drop the regulator_dev from
 the driver data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-3-7213415d9eec@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1643; i=alchark@flipper.net;
 h=from:subject:message-id; bh=1uAjKjH8Mriiu2XHqXVfsDGlgQSHnV96d3u/aQzpXDo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEj+bmje0PRiY+9KO/vGBRtdJ58/dNP4QRT/GpPoM
 3sOH73D1TGRhUGMi8FSTJFl7rcltlON+Gbt8vD4CjOHlQlkiLRIAwMQsDDw5SbmlRrpGOmZahvq
 GRrqGOsYMXBxCsBU7zZhZGidk2SlnvjZKXHLl7dMX+50NHAukH2vueUdy05jhXMSK5QYGXZKFB7
 L6F4kebyK8+4XMc6SPew8r37qrOBaphF+ffYnNy4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 5264D26344E
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
	TAGGED_FROM(0.00)[bounces-274037-lists,devicetree=lfdr.de];
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

The field was not used anywhere in the driver, so just drop it. This helps
further slim down the platform data structure.

Acked-by: Mark Brown <broonie@kernel.org>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
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


