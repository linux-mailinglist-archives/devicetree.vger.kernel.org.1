Return-Path: <devicetree+bounces-274041-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aO+0NCBZsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274041-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:59:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 687D62634C3
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:59:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C718930C2374
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:57:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDF0D3E0242;
	Wed, 11 Mar 2026 11:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="X2FhkI4t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688703E0246
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230198; cv=none; b=bqYznYoXvK96fALWOyn6u/7Op8cWH0CditvI9erwqyM8/P75gnFwlYs8MDqre3VB4aOTUVS8WaQEX8F2caqnqsuT4A2RW5JvxAd85gyYO++zeoGSSU14+h6hz/mvMo7Lpk2mfCvkiCZb6t7ZNWyanAWfTFTw50n1/fSoyZ7lxlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230198; c=relaxed/simple;
	bh=HoUkMd3aj0s9m5BRWarIKv4NrOIfktIuX7B1xZTtvpY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zv80XMhVNiWpG2yARsSaBZUZQU2myCUDT3abEXeO3/aC9Jb6z2m/P/OqyMsYkmbsEd1uuGOF9ox1uV/ZjJli34cR60sQ7o6aQ9hc1hJ7nh9cdBFDgJedM1Mk0am/RuYc6yPH62Gn3KuGFFi2/dn6fYPGFxpInQfIZw9ZT3bZKU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=X2FhkI4t; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-483487335c2so117856565e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230195; x=1773834995; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jv4k2NFngBv6AeWEv4O9srLSbI6EPVNmV51Qs0A5klE=;
        b=X2FhkI4tvga1GxTze+NLLCSERrolw6A3LarebMCFdBqnrN7+s0DIb6YKM3GAQ+egyF
         n+DBFaN8L5KzZRSTtgGwYFL9FeQwdt8/7ATpHhcBVA4CpvKJE3E6WdA1alsMWvko059H
         z13H+l0uLT0W9hWQe46oORQnW3HD7enfA7dVpvNzGnnbffYFIn8JBnTrSwvMyRohq9zG
         2X0H/kSVHJ55vV3dR0B18FcJvwRW2/C+JRZaBO46VauR0dOt5rpgfEeb8cxWc9+InZPo
         owlcDnC0AKgM0JkWQazL1umJuA8JboGpzJhputar25x4s/svf3IjPSm+1lNPpO0WYzG9
         zxIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230195; x=1773834995;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Jv4k2NFngBv6AeWEv4O9srLSbI6EPVNmV51Qs0A5klE=;
        b=vGxhEWVc1datjHZJH3RaYRAypScAgw8nIWIOJd76PSBurjvnx8rJ8lCd/EFVGk1EDT
         59lkWKBHN6andzEgxKR18Z0xxgPpOIvCofklZG8PNrZCRseUhzLV1Szip3F0UvaQBWVL
         zYeRrG8uUxNiXBByNwMSfa7D0pmthuKgbsehr4Ij26PqRUJFH7UJMVrZTa1n6DpnPUIq
         OI/VcfwrFDnO0f99xaJ8J6gSI2XXzMi5LKEu7b94dMXesSnI/rEfDvsv/d4jw/wPErfB
         hjkyvaXl33RK0+BxCpIVdX4fBR+Y0GvHBUF1FHChBl7O6pDhUmBmnmM1WRLTh9nLxuMs
         oc5w==
X-Gm-Message-State: AOJu0YzUAb19+xSs6nJa9lGeRkpYdXDLUvBEGNHkgRTPgKFL3DF2D4RL
	9k1oKEqnPr1O3G/zcu234WvrNmktzMSC+UBCloVF+ZP5+jPal6tEtrM1QgXrK1UWCjA=
X-Gm-Gg: ATEYQzyB0lBXoNfk+3JwYg0r7/6ynpPwhWIRUCx1bh/GgvWFmRnGW27uhuEMuMkETtj
	Vb7YgDzGV8/cvy1I/ipaNqc38cDMsNRQeodVhgR/26pnqc/L+mS3Ja2zfTgpfcoJz+oGNt1ZTIS
	Eo3UANoRaMuDnF3rU2zTgmV2zt8nu+lGFFfE2VXee2QozX1BP1zIp37P/yGncq8c3nAXXPOW2Y1
	mYcSj/vSEgPWCX7L438lFXw+V/Y7IvSzjBYGWF/J9Xrpto0Ut2OTJMlDnNV5aaHg0oGnLjj/v2E
	GOlawZEiJ9eTvGVcMSwk46KAU8ov8Q06q+sab7Gjy1szUKnXDdre5xj5h2r00OuoDx5cK0nMkKv
	IagIPCAis2tEIHor7TS72QD9JevjR47WkpLVTutHR3nB02gVyCrsplbIg9axp4/X0GQ+PRBAdT8
	auerwP2cLIZdjUoK4FgB8zIejVwwKWx/LyF4SAMiQg2NV7OeHEL2pojOYWifo1wGFCLxmwS7+Dz
	thXhA==
X-Received: by 2002:a05:600c:1f8e:b0:485:3f1c:d897 with SMTP id 5b1f17b1804b1-4854b0bc6d4mr37888365e9.9.1773230194731;
        Wed, 11 Mar 2026 04:56:34 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:34 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:19 +0400
Subject: [PATCH v4 06/11] power: supply: bq257xx: Make the default current
 limit a per-chip attribute
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-6-7213415d9eec@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2056; i=alchark@flipper.net;
 h=from:subject:message-id; bh=HoUkMd3aj0s9m5BRWarIKv4NrOIfktIuX7B1xZTtvpY=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEhmc3B7/shqZc2cGvUFYsYzOfcmTAu8vv20PMvqz
 CMx2nrcHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx14B+Gv5Lz7rxYy/alz45/YWjwF47Jksv/uVj48B9t5NVh82Y5wMDIMO/Krcr
 UWs4ZR43Slpk+6/nglnB5FcMVB5mS9cfF29ZOYAMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 687D62634C3
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
	TAGGED_FROM(0.00)[bounces-274041-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,flipper.net:dkim,flipper.net:email,flipper.net:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add a field for the default current limit to the bq257xx_info structure and
use it instead of the hardcoded value in the probe function.

This prepares the driver for allowing different electrical constraints for
different chip variants.

Tested-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/power/supply/bq257xx_charger.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/power/supply/bq257xx_charger.c b/drivers/power/supply/bq257xx_charger.c
index 7ca4ae610902..39718223c3f9 100644
--- a/drivers/power/supply/bq257xx_charger.c
+++ b/drivers/power/supply/bq257xx_charger.c
@@ -18,6 +18,7 @@ struct bq257xx_chg;
 
 /**
  * struct bq257xx_chip_info - chip specific routines
+ * @default_iindpm_uA: default input current limit in microamps
  * @bq257xx_hw_init: init function for hw
  * @bq257xx_hw_shutdown: shutdown function for hw
  * @bq257xx_get_state: get and update state of hardware
@@ -26,6 +27,7 @@ struct bq257xx_chg;
  * @bq257xx_set_iindpm: set maximum input current (in uA)
  */
 struct bq257xx_chip_info {
+	int default_iindpm_uA;
 	int (*bq257xx_hw_init)(struct bq257xx_chg *pdata);
 	void (*bq257xx_hw_shutdown)(struct bq257xx_chg *pdata);
 	int (*bq257xx_get_state)(struct bq257xx_chg *pdata);
@@ -627,6 +629,7 @@ static const struct power_supply_desc bq257xx_power_supply_desc = {
 };
 
 static const struct bq257xx_chip_info bq25703_chip_info = {
+		.default_iindpm_uA = BQ25703_IINDPM_DEFAULT_UA,
 		.bq257xx_hw_init = &bq25703_hw_init,
 		.bq257xx_hw_shutdown = &bq25703_hw_shutdown,
 		.bq257xx_get_state = &bq25703_get_state,
@@ -675,7 +678,7 @@ static int bq257xx_parse_dt(struct bq257xx_chg *pdata,
 				       "input-current-limit-microamp",
 				       &pdata->iindpm_max);
 	if (ret)
-		pdata->iindpm_max = BQ25703_IINDPM_DEFAULT_UA;
+		pdata->iindpm_max = pdata->chip->default_iindpm_uA;
 
 	return 0;
 }

-- 
2.52.0


