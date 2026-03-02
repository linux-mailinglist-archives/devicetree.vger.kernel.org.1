Return-Path: <devicetree+bounces-270025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AKT6M4aRpWl4EAYAu9opvQ
	(envelope-from <devicetree+bounces-270025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:32:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C221D9D01
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3E3273024B0D
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 541FA3F23D9;
	Mon,  2 Mar 2026 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rdG1s2G5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253843FB074
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458343; cv=none; b=Hx1V8iBOxyn4wTIUUwVwe1QGb42JGWTJF+GjKLSFqMH4JVeaawPkx0+kBuayq3ZIfQ5TE1JYt2060Qa43eaGppy/N6hBFR5jsGCC+cRCkdpKqIqtKOfKCK/8PI4yoCFk2zjhydJymmbEZBM0zfGDokrUb2unFclmzEcssvpOgHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458343; c=relaxed/simple;
	bh=YpM1lHLHES0D2RDGEBro9MqKfLBBWbbGMNDTqVCiga4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FT03gIvJ3J4GDmBDNL+b+iCfhG9IubAuxEsxal+8v/Fb7Rpic5EAyFGh/4ZBs+wcFc1+wd6RVRgc0/Fvd3YBTMQniV+V0WRkz9GGZsaE7Gmr5buHSkHC8Fn8k5h0uS/w3J8MqbRi9YLn58V3RjzaoYyaToFIhhavZAV4R61ezEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rdG1s2G5; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-65f980cea07so6297392a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458339; x=1773063139; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PHqedqbcEfS+s76zrbM+gGzB6LORzSXrgaPJoZBxb/k=;
        b=rdG1s2G5CodWoDA1whho6wtk+8mex4QP09bq+LbCIM46xyw2usnZUQH6FAxhU7yfpU
         jFA1Dg5QPPw11CkYESffVFrOy4f3xoQfhThbY5+NrDWVeERnSppbAjjGQjSOv4bb7NCk
         fzA9u0mk75OwZZvDesV6261ILKhXLD4RkduI8e//PLov55dSJ7HwrroFej4C3UmoBVW6
         vTnO4pLY7w4ZThma5I2vAotKcTWK51kwL/+9+rqS/2fDwZIDZZ/6BIUhKVfBoDhxk6Lo
         RD4emsZ/SMRZtyCfiRiTgTL7j5jHUR1geY2yZMUJ/+qUhISaVRYSbzdqF41kV8DY0/J4
         gwIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458339; x=1773063139;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PHqedqbcEfS+s76zrbM+gGzB6LORzSXrgaPJoZBxb/k=;
        b=KFjP3EOaLVEryz7RYL0MfAzHHcV1zj1b2AlPz4zIhHYtM3hgmy3VUHxpMQE/a35nUL
         gj2gVwNmBBUXSX5E5h0S7435/B8wWcN89dSLQ25OAW+aL16FuplTyPfes2pPKWaWJWxe
         MIUwPQgzghknZVpDQOm+K5dvpW6UClwEx/xvm9xexAmBpWfdZTIPs5INp6ylFK79I1f+
         ciMvYSzN911urFa9p2SNRIhm6Xxqa/Wcin47veC7/siaFHMNJwXcKRJ1y7+evfQ/DZtZ
         HVU1W+xdQ4x23adiyM+yh+1BcwMiz/JZGmCLOBf01lYqbrWU/Raifg+SITUs+vQdT/Tt
         Q5lA==
X-Forwarded-Encrypted: i=1; AJvYcCW++o+1CmY1U5MH2mQ559GVLxwyPYl3hzw/1yGwbhDduA6X/kxq40gatBD3NNYUq84GTXqFTSTcRaPd@vger.kernel.org
X-Gm-Message-State: AOJu0YxDzc6lDBARqmiOYPvV/kDgsgPq/w1lu3tgrc5Dnm/UZs4d7kHw
	ovNaVzuwvAlaZQeknXdceVboGxqx1xbvxfWRpdleOPe9P9T5hwCtD+CibxyWL8ut1gk=
X-Gm-Gg: ATEYQzz9W+jf5C7bOeUxUfiVDyER0pMkAL0IxWyPznHnSjmpEGlx4/F85tABW5dRsks
	1D7Kn/eXTE2hwcmWlpWaCDeB/ZOgGUwABu1sy8VZA3DuJFmedAid+I6ec4R93ZnIBKbZPe3Pv9Y
	JMTWEtcuSFQEnwoCb2h0ObIQFgbe54Q01ggStk0MGo64+NylA/IBXh3e4Dwk2bDVeKs+J/+li/y
	wmejsnlHi3mjCNrfsTzx7QXOsVKjef2Tk1jZOxlX+vAwmkwlYajXeudhcR/R7LJ5+jefmdH++g5
	t9DkI5OBMgDV8JxSaCMfYgOyTnTdilit2Unm62P0fRQkCj4L6WoSVA3nJmJsF++u9HNgnwHBvOQ
	Oz6qbBC44zwe5D4MXPQvi1OCy+4oTkoeHh0blBW7vg4zF2B8g/WyjUO5OfFGWlx8xt2TP2Xk2jH
	zoqdTgB9knOA/JEzo1g43cIeLZUX9FY4nSxcG7rBsD81ue4b4ZbsUuZJN4tCF6at2fMc5oA3BKr
	pA4a5xxHquM6s0=
X-Received: by 2002:a05:6402:398b:b0:65c:2af1:b7e2 with SMTP id 4fb4d7f45d1cf-65fddee587dmr4953593a12.27.1772458339270;
        Mon, 02 Mar 2026 05:32:19 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:18 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:04 +0000
Subject: [PATCH v3 05/11] power: supply: max17042: use dev_err_probe()
 where appropriate
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-5-3c5f01dbda23@linaro.org>
References: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
In-Reply-To: <20260302-max77759-fg-v3-0-3c5f01dbda23@linaro.org>
To: Hans de Goede <hansg@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>, 
 Purism Kernel Team <kernel@puri.sm>, Sebastian Reichel <sre@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Ramakrishna Pallala <ramakrishna.pallala@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270025-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 75C221D9D01
X-Rspamd-Action: no action

dev_err_probe() exists to simplify code, harmonise error messages, and
set the deferred probe reason if relevant - there's no reason not to
use it here.

While at it, return the actual error from devm_regmap_init_i2c() rather
than overwriting with -EINVAL, when relevant.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v3:
- update commit message regarding devm_regmap_init_i2c()
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
2.53.0.473.g4a7958ca14-goog


