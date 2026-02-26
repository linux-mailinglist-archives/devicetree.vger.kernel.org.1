Return-Path: <devicetree+bounces-268823-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oM3OCRdIoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268823-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA1F1A63FE
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1AC0E3045002
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A7A632D0CE;
	Thu, 26 Feb 2026 13:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UXlzJYkb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE1431A7F9
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111505; cv=none; b=Vx4NJNe5z12uHgWyKDa0UkI2mzrg6jptJnQOdcZXI5gtiKajM0j0Uy7mvCk9bJ/cKyA4sgRgwghVDy3r0Y+OaQE0gJJm/3A3niCIauFgpeCoX2vm4yg6P1KTZl8zgHXSs1ob82eRWFzmajzfbkkYg1TxNbX3YxuuUbA7BlJaOkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111505; c=relaxed/simple;
	bh=dN8f41bDXLag1KExFhMc74SNVuHCSIm9nPSwzqJfuzA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A9GCzsNKDwekdA/x+Cszs1UxHI+l+VA8eKx/5A3vD3/H5EKjLECu99TMtEtdJZAvY8HLrIWi/7I+SP4oWZNzbzmFsvTbJq1n9Qse02X+nhqm2uNlokrLD7Sn3714ZURuTm533ncdLcfmA5N2SWqFdTZlHMneny6t152crVNThbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UXlzJYkb; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-65fac0b51baso1099497a12.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111500; x=1772716300; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ELA1QB+7rfEMiXDUeYSPxVC8r4onmGwJXoRsl094MSo=;
        b=UXlzJYkb+u8ztZa2t9jj4bEuALmwysSjAcEXqGby6LKrZiNp4AXo7brDlZhkmDhYoY
         jJyOJREbj6+k23EGXNHMB0lE7uqZrUz4QYTqrC4mDFbBSpf4bvshEkrXomrocvWOzuzA
         /qWrQ8vO4IBjTMHXlr37M7lBg9UhszB43in6Ptu3x29bnUVslSPCxRE90Xr/CXZ9G2zF
         tiK5u+/VdIOYPhmQL+RGgC4ku7hfsJ2uZZNGCl4EtYtuiHHzjpvz8Ex0C132pM95fMxa
         OETDkpuSPrb/m7aBXt+G+F4mTpuxeYYn1AWn7qUlPF9vI2P1lYdhTMijzwWIBpqddhgu
         gZqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111500; x=1772716300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ELA1QB+7rfEMiXDUeYSPxVC8r4onmGwJXoRsl094MSo=;
        b=MspSbxpnrj239v0E6IeKWWVRZ+szsF4S+D5wYen7WXSI+76UokMxdhcRDX9Tha9mAp
         gf/kJas4gCPUwUDhiMjAjGlu+FDpZR94f6xe8E86DV/PF4rmb/dED3igjznNoXdPP2om
         QDCvAYDnvTGvRpaheDGyoFvbjutT/wAPMA/ERp+jR9BPDPTkumziXkSLbLdF5Zff5/BU
         J8yeZp/rsVZYIudc0OH/2AjgkAMG3fcV3EWtGrn41bDzpg4FWeTfHKKHt7jw9aRrpCWa
         IBKw5O1STSJ246a85FPKVBsX4eGl2c0LmCw32Wr+pY4mY2ZQw7r4GKF67X2W/NWycIBz
         M06A==
X-Forwarded-Encrypted: i=1; AJvYcCXTIU9j7wfwV0Gn4p6cmoLmyscxtINm391cJEMdiUZOEHHdis0N7HexaB1NMRRaVWJnfER8xw8xaqvE@vger.kernel.org
X-Gm-Message-State: AOJu0YyUiTAwEwzSk4gl7GI2tmhrJP6ow/ujEQe3kEYD2j9b63w9BXgB
	gaclWwh9TbPJodSbsnivglCubFxF67JIZo/71zYYUFyPSE0h3vzixf21hgmQ9OCFST4=
X-Gm-Gg: ATEYQzzF+8I8ylbfiLnrsp/ka/BRaG1UAhKIbdVlXtutBLSdewy/cXQ5S2nvHp4mUfK
	kclKcTFYhf6sfllDx3XTPul07PkZKoD7aVsMqK37HWnBO8lF0yq3SdDyeVD1ZdDOvRiO6cu14Ub
	JP7hvMeLatEmi65tEVkivft4xdvF/+fdGFpSrcfVOhNh3xMp6dyHK5MFP5qWfJdbVZYcmj/QXQt
	38xUnMjVhG0/sjIuR1fIth7eFxox8wCNP3+wFPfs+9OBvfdeLklHmvQZBaINM6dC5cbektaMQ9X
	giTdgUewY1yjOpP9fnjDanQ7kmJoW2AbVspcXvKIOf9afajFmEF449kcSijacdJXhExKeAqEiCF
	7B6lUuAeqSIVyo5f7Kz4vRKOfzkxVZjwdnIPwBvjn4pmN4PeXtGN3jQyDHeiKqNXfLd1tGl+4NQ
	Z0B2nLgwmo5JRZStqfCQZsgHL7XmdJ56jmFK3JxT4G8LzF+LWfyogsIBozsEco8fOao842VsxmS
	0YPuzxNjFnuh8+qzw==
X-Received: by 2002:a17:907:cd07:b0:b8f:c684:db37 with SMTP id a640c23a62f3a-b9356f47682mr164714966b.9.1772111500272;
        Thu, 26 Feb 2026 05:11:40 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:39 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:39 +0000
Subject: [PATCH 05/11] power: supply: max17042: use dev_err_probe() where
 appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-5-ff0a08a70a9f@linaro.org>
References: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
In-Reply-To: <20260226-max77759-fg-v1-0-ff0a08a70a9f@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Juan Yescas <jyescas@google.com>, 
 Amit Sunil Dhamne <amitsd@google.com>, kernel-team@android.com, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268823-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: BCA1F1A63FE
X-Rspamd-Action: no action

dev_err_probe() exists to simplify code, harmonise error messages, and
set the deferred probe reason if relevant - there's no reason not to
use it here.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 07759d4fdc37..b9277f81a25d 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -1053,16 +1053,14 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 	chip->dev = dev;
 	chip->chip_type = chip_type;
 	chip->regmap = devm_regmap_init_i2c(client, &max17042_regmap_config);
-	if (IS_ERR(chip->regmap)) {
-		dev_err(dev, "Failed to initialize regmap\n");
-		return -EINVAL;
-	}
+	if (IS_ERR(chip->regmap))
+		return dev_err_probe(dev, PTR_ERR(chip->regmap),
+				     "Failed to initialize regmap\n");
 
 	chip->pdata = max17042_get_pdata(chip);
-	if (!chip->pdata) {
-		dev_err(dev, "no platform data provided\n");
-		return -EINVAL;
-	}
+	if (!chip->pdata)
+		return dev_err_probe(dev, -EINVAL,
+				     "no platform data provided\n");
 
 	dev_set_drvdata(dev, chip);
 	psy_cfg.drv_data = chip;
@@ -1090,10 +1088,9 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 
 	chip->battery = devm_power_supply_register(dev, max17042_desc,
 						   &psy_cfg);
-	if (IS_ERR(chip->battery)) {
-		dev_err(dev, "failed: power supply register\n");
-		return PTR_ERR(chip->battery);
-	}
+	if (IS_ERR(chip->battery))
+		return dev_err_probe(dev, PTR_ERR(chip->battery),
+				     "failed: power supply register\n");
 
 	if (irq) {
 		unsigned int flags = IRQF_ONESHOT | IRQF_SHARED | IRQF_PROBE_SHARED;

-- 
2.53.0.414.gf7e9f6c205-goog


