Return-Path: <devicetree+bounces-270599-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHx3J6T/pmk7bgAAu9opvQ
	(envelope-from <devicetree+bounces-270599-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:35:00 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 613891F2BAB
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 16:35:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DB0EA303AC99
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 15:33:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 612F64949E1;
	Tue,  3 Mar 2026 15:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="gDZUH6xn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE5749250E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 15:33:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772551989; cv=none; b=VkgeAykBxVyHGClLCV4/JAin5iq+CkrrN1J3DSAbhe0GwXwn2sRBn3coTSUpSPxe5hd3ddn2wmauW1riWafGOp9qO49U1ibUK/28ANKWlP8ncJQlq9d3r80QpSzwAwNFq/1FavCMFXNrNN27u7rRplDQLTcQW1GAhmeLzQMSt80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772551989; c=relaxed/simple;
	bh=ZNpu1+QLWxDyG8uNZKHnXwGDlRkKFAgQ4JrcxwH4TZY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jjTCPacUeHSXG39/qSeUo9SGoWg/QsNF9U/VOhMFJN0LN6DB3jL/Qv1MSOVh99VH8LHqE3w5gOx5qHbngKjCfG7gTeNbFzD/svPdXvR4eLADdKf9JTaC4j+KNGm2LqIHQ1p53VT9Qw/VPC9k6Xo3KOHLHPhttnnwG5QR5rdM7IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=gDZUH6xn; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439b790af67so1385121f8f.0
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 07:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1772551985; x=1773156785; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eLnt0eflN8lFiwNCVheUlKB9RjgppzFmTMI48rlcPq0=;
        b=gDZUH6xnJnMVraydxDq+OROEvC3FUg/U1K2AxIP4AYhL1bwajLJ+qqcQfUD1RdWt8k
         tvy7Y32oxd9AF5rF+w8KD67C4XAlSQfl2n8Dh1YrXtXxUYwnwi9aTgZQAvSdZUNZt9gr
         J2Ysq+0+8U65bJcULh6NoNvfDXrDACVEw/Y/GvFOxWgbU4wYFRetnWYCTOS6KWP2qG0w
         FG6Rkd2mM70QJC4NKBtbE3qa0Zkmo/n5387S2ypUWnIcKX6Qb/Xq/AZ2K6OzCltTXPiV
         c/NFVrV7D5E4WX89dtn+kuOb8ZBMWXnPVWW8czX8dC/ODz6NRiOEHTdK2SKYPZ3BXYfL
         0dKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772551985; x=1773156785;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=eLnt0eflN8lFiwNCVheUlKB9RjgppzFmTMI48rlcPq0=;
        b=t9rQ6XJBHnPB+h0m/qY6to+XymB//6FAWaDIVTWo4eXJ4AGI0OeUQI+tmMQPAMq1+G
         YoV342UJgT0Zs/467Vj9Q5sPvk0oWRDXjQVD38rVyZUJSw7/dm5460D3MlQF9yxfoh/w
         vMt6wPlyIBRJ9K5dgRfX2oRwMC8bAQfIcqm6p+NXpuVtip+43hm/Qa0dMhrbJcgfqHJt
         KBS0ve26tlZuRCnzsxVu7y4B1wqqP83jWb7oPTBFn3/+I+TQxWsRN7eAhbpTPt9yBclp
         rBXCVD6PBTRdBrW/TUvxYk9aBeu+yXAADZBhN6Esir/RQ0p4ptMkUkIgWEJpjSdi8Hdy
         cqQA==
X-Gm-Message-State: AOJu0YxrK+sNOistnpk7p4fXq4uk5Oq20rpyGKxA94MmdW1eguCb6GrE
	OFfqog3Q9rtxt1XoyxMlNa8Vq536FFW6PLWNodABvZ/rqK+yCLZVULB6b2+/e0fDvZo=
X-Gm-Gg: ATEYQzz2SjHeSoO6TAea3pjwF72R9nUz4OM0ODupDDFHzimToIsO0PD0kciBWy/HJ/r
	Dutheu5vL5Vod4E7VGW3IPP65BQQIu21debPaKIEGOEYnC2gkvQrrBhMhrCCzFlia7PGAn11uWf
	JHKriW4qGL9LgSOetEsvOD+cpP1I/wgogVuSwhBr+X0ltYWHb4gBKmx+Uv4nni6OvK7h8LEJJdI
	o6SUuKZEdBm/TSXisohNwq9Nx3O3vYiYSXlUeLX5Px9DjFiKpXfXfx6wlXNl6A4VlZj4a+5C/8N
	KIJ+sPDs+Diz7EQ1dobli0ssMdRV+q3quFHsmWWTID1PBtXWfXB9YN0lVrMdRcnUX4XoCKRP9ZB
	ESNVgEDsqyGMcMBDTzKyfzLONf9ddJILIiiiZ6wsUbnVIQgmSxKql1A++a+pjQM1e6V6Pg7sFGT
	I75gurHPVaUZQC/Se7OS/yTC3vKyPDtw3cscI/qoDpuZE/PWuDE5tbUWAzg4bX+Zd3i5BxKzFzI
	fQ=
X-Received: by 2002:a05:6000:228a:b0:439:b556:fa4a with SMTP id ffacd0b85a97d-439c1144015mr5476802f8f.31.1772551985166;
        Tue, 03 Mar 2026 07:33:05 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-44-101.alshamil.net.ae. [94.59.44.101])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b55d15besm19799447f8f.30.2026.03.03.07.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 07:33:04 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 03 Mar 2026 19:32:48 +0400
Subject: [PATCH 03/11] regulator: bq257xx: Drop the regulator_dev from the
 driver data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-bq25792-v1-3-e6e5e0033458@flipper.net>
References: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
In-Reply-To: <20260303-bq25792-v1-0-e6e5e0033458@flipper.net>
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
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQu+6/2PiNJhmNqyJP9Ww5NPzmrUO3UYatycT+vSg01C
 WnlSCOhjoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKZaw5Hhv5MRx0rWQj7dB/cWxNucuSVZalV2kZnpdIHyL5uYd2kdExkZjritVn8
 4jWEx96ZTBnfPzTMX/ym988iG/ge51480x6iYcAEA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 613891F2BAB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[flipper.net,quarantine];
	R_DKIM_ALLOW(-0.20)[flipper.net:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270599-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,hotmail.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[flipper.net:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[alchark@flipper.net,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
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


