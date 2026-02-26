Return-Path: <devicetree+bounces-268828-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GL2VCEFIoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268828-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C25A1A6450
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0C42730786D8
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:13:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACAF9334C14;
	Thu, 26 Feb 2026 13:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NC1n05GK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E5633033F
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111508; cv=none; b=Bjo4BuLcPuM8HTZJN8Eex3noZyZY+satM3VYFZme4VB+POy7tb0dLaruOjDTWn7l9EbnL/YZAPxw2IS/3+dqI1OpucCZ4IcSWKgdli1NZcAo19WsK9IPHIZUb0RKM7oOTX6QQjg3kXoDdHoaXpGVtZJLqgcRQvtCPDwD6ga21VA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111508; c=relaxed/simple;
	bh=GPfoLWJNaZbAuE5sFY9vCrczQONk3K2jd0EZPiGevHY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=V7JcL8ZxecZEbVnwsFyzp4HR1RgdZl58fM5VZhAZ8x/wMi56Iw8mshqmP+W9AMGuFWvp2r5MV2Jf/yn059SKXkU4Onw3ldr19+mcWbMxR7o3mCHTHn0JDB+MnzwoPy5Nze+k/BF+8P4FKFIKWb+ahDQO7RgaAum2aTskOA6Q3hQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NC1n05GK; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b8f97c626aaso142226966b.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111504; x=1772716304; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+jqX19aDR1PCz0IO4VxlMpvKqSC9cfQfLdsBYQBVkyw=;
        b=NC1n05GKgRjeMqSAMaNptOEI6JpKCDmRZk+++IUELVZhgu6xsz8PKIQOYsYTLt3u5Q
         oalbvFnMkJCtI4sodKBCGvi7st/Xkoff01cXo6vqIxs//Aqq3XayCUkAm6jhTv3ZjF0y
         Iw1su11pyePz3Kyt5l4buZtFZ5uhIR2JVElQK8rUGzwHGSltnGtCBJLPf0viBnDie7QZ
         hzHUb3pqs2WVCkUVo0jwP7HokXeUn+Jwm+5nW1+MQawyt+7pYECSr2SqiMCHkYd5Xn7a
         7iHNhe3JqqVy0bj6qZ+RgIjXyiP6ki6WYt473y9D1mnxZBF80lb9cws5Hc6Mjv3TU+uT
         IEZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111504; x=1772716304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+jqX19aDR1PCz0IO4VxlMpvKqSC9cfQfLdsBYQBVkyw=;
        b=ka1LQomAhNSuUKE7rKSWUUiKEVjbru+jKePbIcdDHFjQ86FEj28byxr0rZU9TbRGZI
         8LIxRjVzV8SWTTB3+lkNWAVZH0gevLPp7+LyFos4IBvA6C0TU9zqxtv4YELgDAloKKeE
         f0uKsXmL2OjcBJqJBgvrXZ1JDAMIdPZAY2e6shCV/OSdJvg2+v9RS1G/TOuaMeZbo2eU
         RAZ8QMRXWQAQ4QDE5VlPvcnB0WJRSjXD/eGIMk3ug+B0mW3gJHTWQrJ3nZviq0+BSY0Q
         DjLWoIdVS10+fon83FJOhAQYWFDyw91XUy9chi4prcMyOyMXiTYRw4vcp2OnA7cZkdVA
         Os5g==
X-Forwarded-Encrypted: i=1; AJvYcCUTDtR96QuJ9VP2p1W00vnPXNBJgnE67HpibyIv5RnVLk8rR3ggEJGkJZu6WANwyEBPQ9lm572vkiQ/@vger.kernel.org
X-Gm-Message-State: AOJu0YyQLPotdJTvGLGmIyIT++xgIybySElS06EvbicmeInuPlujzXY1
	UeT9sk84plrPtciGk99w1Dzuz15xgbIWCYCM+Ox8r7NJqnNnnDqe9z7bKDbk9k6a8Ys=
X-Gm-Gg: ATEYQzxXrVTHvfgsteoTod5bZ2/yfpaengjkqwRXJRQtrRscDm8Oh1gBAlIuYD7FEGC
	FCwqTK5cPe7ZiHLJL98Z3tMDlIq2VkgdDDAo3ch6+CVLrrv/EXkZB4XYYNOpIlLhwxelQ55sN4U
	8ma1hax74Q1PA9ddt0YyMWAFh65RTTBO27DT2dIgJ2OZXWNYM4kOG3uN3yJpufZlwEgcjstrm+l
	Ie6CL2KS+R1hiTI3SHHHeda8fPSf0TStjOBLrJ93EjKBtlxBaVKVsOF8nr6b+WMaDSF6E9LG/0I
	fA7ORafgV7kjvaF7MJwCbPuPUkvGch17h3On+uCUL1i7FnP84uW7D43vh4RqwoBj08CUY9Ne5pt
	os+LfKs93EZ6ifyktZyx88NwlOjyYoiB56KxJpmrLlccAxuaP+lc2rij9h/3jtCN8768IAryYjT
	IEPFXGrrpvMvuik5sqn3YOCDs1gDNNQQCuYNx7DiQHDDTGS5nDXH4AlC1cWtsqWZGMuxsXxea98
	icsfJSU7jXJd8IQyQ==
X-Received: by 2002:a17:907:9445:b0:b93:60a3:8a47 with SMTP id a640c23a62f3a-b9360a38b06mr95155166b.45.1772111504172;
        Thu, 26 Feb 2026 05:11:44 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:43 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:44 +0000
Subject: [PATCH 10/11] power: supply: max17042: max17042: consider task
 period (max77759)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-10-ff0a08a70a9f@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268828-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linaro.org:mid,linaro.org:dkim,linaro.org:email]
X-Rspamd-Queue-Id: 3C25A1A6450
X-Rspamd-Action: no action

Several (register) values reported by the fuel gauge depend on its
internal task period and it needs to be taken into account when
calculating results. All relevant example formulas in the data sheet
assume the default task period (of 5760) and final results need to be
adjusted based on the task period in effect.

Update the code as and where necessary.

Signed-off-by: André Draszik <andre.draszik@linaro.org>

---
While I do believe this should apply to all devices supported by this
driver, given the register description in max17042_battery.h, I've made
this change specific to max77759, as I have no way to confirm this
works as expected on those. I've found a data sheet for
max17047/max17050 online, which does describe the relevant register
0x3c as 'reserved'.
---
 drivers/power/supply/max17042_battery.c | 20 ++++++++++++++++++++
 include/linux/power/max17042_battery.h  |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 44626abdab34..89909b140cf9 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -61,6 +61,7 @@ struct max17042_chip {
 	struct work_struct work;
 	int    init_complete;
 	int    irq;
+	int    task_period;
 };
 
 static enum power_supply_property max17042_battery_props[] = {
@@ -335,6 +336,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -344,6 +347,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -353,6 +358,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = data * 5000000ll;
+		data64 *= chip->task_period;
+		do_div(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		do_div(data64, chip->pdata->r_sns);
 		val->intval = data64;
 		break;
@@ -362,6 +369,8 @@ static int max17042_get_property(struct power_supply *psy,
 			return ret;
 
 		data64 = sign_extend64(data, 15) * 5000000ll;
+		data64 *= chip->task_period;
+		data64 = div_s64(data64, MAX17042_DEFAULT_TASK_PERIOD);
 		val->intval = div_s64(data64, chip->pdata->r_sns);
 		break;
 	case POWER_SUPPLY_PROP_TEMP:
@@ -1146,6 +1155,17 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 		regmap_write(chip->regmap, MAX17042_LearnCFG, 0x0007);
 	}
 
+	chip->task_period = MAX17042_DEFAULT_TASK_PERIOD;
+	if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759) {
+		ret = regmap_read(chip->regmap, MAX17042_TaskPeriod, &val);
+		if (ret)
+			return dev_err_probe(dev, ret,
+					     "failed to read task period\n");
+		chip->task_period = val;
+	}
+	dev_dbg(dev, "task period: %#.4x (%d)\n", chip->task_period,
+		chip->task_period);
+
 	chip->battery = devm_power_supply_register(dev, max17042_desc,
 						   &psy_cfg);
 	if (IS_ERR(chip->battery))
diff --git a/include/linux/power/max17042_battery.h b/include/linux/power/max17042_battery.h
index 76b85ad3cf48..c82043414c88 100644
--- a/include/linux/power/max17042_battery.h
+++ b/include/linux/power/max17042_battery.h
@@ -17,6 +17,7 @@
 #define MAX17042_DEFAULT_VMAX		(4500) /* LiHV cell max */
 #define MAX17042_DEFAULT_TEMP_MIN	(0)    /* For sys without temp sensor */
 #define MAX17042_DEFAULT_TEMP_MAX	(700)  /* 70 degrees Celcius */
+#define MAX17042_DEFAULT_TASK_PERIOD	(5760)
 
 /* Consider RepCap which is less then 10 units below FullCAP full */
 #define MAX17042_FULL_THRESHOLD		10

-- 
2.53.0.414.gf7e9f6c205-goog


