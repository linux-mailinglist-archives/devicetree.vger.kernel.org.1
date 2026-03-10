Return-Path: <devicetree+bounces-273399-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0COCL9zkr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273399-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:31:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB2D248736
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:31:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5BE09305A2ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:29:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4738043E4A3;
	Tue, 10 Mar 2026 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="i4WfYQtr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C24D743E49B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134958; cv=none; b=tzS87kXyBbamrUoeHHcOQfll1WEi1LZ+3Fop95+q67/7Hh9PXDh4v9TQTu19hA2zmFCt2eNzokufwLH1i2FsKdaPBdzmMY4Y2aorV3dpZnNDFDdKaTfe+Q/L8PkiNxXYWArURjCGYGHQJwwqf1YRYAgClU70S0F8o3Rc0arhAV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134958; c=relaxed/simple;
	bh=1uAjKjH8Mriiu2XHqXVfsDGlgQSHnV96d3u/aQzpXDo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uuH2GcktzMe2Zd7rChLVkB6N2S/Lese95541C+esL4U5zGHtZQ2C38twTnHzGcbpvs1s4BbyRfEmMqkl1DRaYHhzp3PYw+uErq21mdAlN71irvtJMaBKJrBPWM5BsZLATa79y3kICRB1sg95415CNE4fPHwX2R6f3vOFYje9kT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=i4WfYQtr; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4852afd42ceso33389945e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134955; x=1773739755; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=veDJydETiE9Gv6g2pRG32dl9Jb7Mpm7Du1gG7k28aTM=;
        b=i4WfYQtrTkq6ePczcImq37QLgO77Okbqd7qEBKoWHSM77pRcRfw0i24FaYyN16ju/0
         hBtIYl0Q7Scf4yQ/U6osTc2Rcigu+1Q5xHuG8qtLflrsgrIUrG/+f1VvGbbFivymEtlB
         +aq4THO78NOB77mpZbYgLGAJM7MozvZpUbPdyAhZGyObiymFDPsovWx43MWTHh9PydNB
         hiNuS0oI/Qhvk70isvyTII0O6nkbLV5+Kx3bihFsnXld8iZNRuG0f49lpihvh4dY8TX5
         G64EpXXfWTCVvcVtoBu8aEg6DQjzg/jASOX8+ujmgRZDNc0oaFtSd1OWLf83/7Ickaat
         Kb2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134955; x=1773739755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=veDJydETiE9Gv6g2pRG32dl9Jb7Mpm7Du1gG7k28aTM=;
        b=ljrEIRN8zcSwK2D+m6CjDxK8Gr+YZUkp/HoprrO1f3kcdtqxxfOlCYtlVuuPlbhp6k
         GQKybkRpt/gUwZRumr0D7e3sDppuEdq5P9eEla5dJRFz7d3YyypblfS+HugWgzmOhBVP
         vr4y41nM4R3H6YzG2uJ2BKZTxJ8ttYpy4Z8cuf7zC2laHDcp5qLBkvjPk5k1xlGQ5MJD
         MZjLRG9ieP/auMuNQ7evhdSbAepeRyNkgvzzkr+nDIwoK1BSkCWcA0dVeqO7uytSgohL
         eNahQW76GI85lXIq3tTeyGyaQAinwcMTiM5se0Pte+ckydqBt5df2iZusgtUnO/f0Tr6
         jYgA==
X-Gm-Message-State: AOJu0YwBDXxAk7T52d+4Kjn4MwxvVidAHXWCDjCNYDol7FX3geHHX4R8
	TA8cL+yCd9Fkl5W13iVls/caCvSh6LSdEJmidXxo996sOXf5wC4DrWuaNiez++0I9WI=
X-Gm-Gg: ATEYQzzD2Kvo79PCIYLkLqSU7BBqe/igo0XMpRcikJJf+yuAFMb3tSFzavBPFWKss4P
	t2C2VoyGxodVXsrchqtiUWuo1wGS3T4NGfPwFHNZmoskMs6I5+redFyW+LiaN434wA6TDxXGQ52
	bTuREPTrswoggdpRezZ2fvM+pTjlpDEtdFSxlgPXnMnDYjcZJuBokbYnsgjdwlsXWYHOpppd7Pg
	XX6GW2nDYmbPtEFf2P4XCvbSKGYtI4mNb6nHTUzB4daxiVp0Cz5tIdVGkbkCBl1Q4sMXTNRGfgs
	pl+0JFPU0HrYKRLAlAIHr3B98ar+QYRTmAO5U1AWBxfdpDS3hS+AXS3DG9gv04yaTuedRFXeD/m
	NA0ujE2TArsTRM1owHbzyzVo34KBYV/QgkAltmSIOQv0X4g9+KGsd/RKIp8EJFXVCdq2MPbtwn+
	gdbvfTjSl9DUD7+mPcEEgEH8RGY2vRp2srsferJIBl1ptrGiRABkfoe49aC7cX9Xuy/NY1syRMi
	1RlRV+3BdyQBLXx
X-Received: by 2002:a05:600c:3e11:b0:485:3a22:69b9 with SMTP id 5b1f17b1804b1-4853a226f66mr110525055e9.29.1773134955154;
        Tue, 10 Mar 2026 02:29:15 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:14 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:27 +0400
Subject: [PATCH v3 03/11] regulator: bq257xx: Drop the regulator_dev from
 the driver data
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-3-02f8e232d63b@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1643; i=alchark@flipper.net;
 h=from:subject:message-id; bh=1uAjKjH8Mriiu2XHqXVfsDGlgQSHnV96d3u/aQzpXDo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5L4rq6p4FzKlq514oEcZjcXmf21qOMzd7+dvoox5
 d81ztnBHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEz1HUuG/y4xlhps3pKJenzrdn2653Zzl3FavcHO1bduWysolUy+ZsXwv2bCft2
 FwptPP9e44RDzVWPZk+7dkXPK9S0eHpjTkxO2hgsA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 6AB2D248736
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
	TAGGED_FROM(0.00)[bounces-273399-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,flipper.net:dkim,flipper.net:email,flipper.net:mid]
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


