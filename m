Return-Path: <devicetree+bounces-270029-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kFQnNd6SpWnXEAYAu9opvQ
	(envelope-from <devicetree+bounces-270029-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD901D9F01
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 14:38:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 62E2B306ECB8
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 13:32:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D70940149F;
	Mon,  2 Mar 2026 13:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Qb55vNG6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8709B3FFAAB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772458346; cv=none; b=cDWjxexXZEGNJun/ZhBOSzwgRWMURh8KQMvetit09m3o2UHlR4jRwQGEUPVJGes612NwYGnczqSudLH/8VKByX1753wOs4sB3o2uUdIcs8l2CYeD14vtFinusX+qgY09D5jv2omSehD7rtoxwxWCFZdFqpetPi8TIcCSZVp1iCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772458346; c=relaxed/simple;
	bh=3WwOpYMx6LhkWQF37CtfVtDzeQ/5bON2qkHIGahHGA4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aEYVfyQsz+nFLjnn0Z1Fr0UyrChpkuUls7QTVd10qwyHmSDMQPbYDLxGSb2MeE+jtukuSYle5TdRqBxuArUlKJBJsK2hinZcht7RTu8AwUR/6fWEOn+eaWF9e8A693iYf0Xu8zGl7110OciGaXiH6KdHxrM/T1Npe4cjLvv3fZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Qb55vNG6; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-65f71ed7c6cso7577855a12.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 05:32:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772458342; x=1773063142; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jjFeJ3eKhFpiV9pfO1cds2rolzRBUSdpOdc5Syl0Y1Y=;
        b=Qb55vNG6Oy+9QLR7V7XcMhAbb80tR1m5p9vY72HQ7CCHyR+ahjSbGHb3HL8amSqxli
         uV4w9nBo+dOCEqNzRKB/ZMMRHhu56cI4xRRheNFLovcs+AzmWcmM4IfCP0lYLssluESd
         P1ckARMIKO3yCbidj1z1O8E2n8xPWKP+eH/GBezkDHxsqfDpMcZMa1xTiF/UUdIBGueG
         gp0Al/Kbndrh6PjpZO+uxrWSz9FHtjNSz6UZdrYaDuk6bESTWAiFBEJuoE3ofcKiWlNk
         vCUMRGFiYx0Z4A9bLgIrh0YLVAuaFxN/VTOcek1eLD76LmPYAe2Q1M/QNN8WfYaZYQX1
         e+3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772458342; x=1773063142;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jjFeJ3eKhFpiV9pfO1cds2rolzRBUSdpOdc5Syl0Y1Y=;
        b=OnwToRotiV8hfw2Ucw5NV3SjIzQgTk5+WxBwZiVYlIx1PRHe9qbYOTRQ9h5Noe4lhn
         g8kjxRJm1YInj73TZufB4rO26ZcwRXLWjPRgghwScqzMXj9ODVvayzOdSuq4nJsaNr+o
         4ZGnE2iAuO0emXSpYq461fDFkzVsRkztZvm+hfJzSXHJ/DwRCC4kUhYdcXlO7KKVbtwy
         zzaHjAWECrn7ZBgyUBarHswMaYqLfBru9ji6yAPw1s8a34/R6jsZTFw9G1l7qBOle8Yr
         WZUmY9L3gTfFbRek/S+po2fflB0qPrkax3poa56Vz+p+k1R81uHpfnOg9grlPU4PN46A
         35/A==
X-Forwarded-Encrypted: i=1; AJvYcCVVSWlaE7HyDHjTJxxagESKmP9pNYj/u3JMEZ6EWA8IoK3vgXwZXFEnRX/mlQbOqKRRSu8J6XBDiddf@vger.kernel.org
X-Gm-Message-State: AOJu0YwiDqkH/jP0pNmnDsS+w/tYQEPTDK5+P8MAGaVSRJ0Q4XBX/ecc
	SQaa+WGa8IkgP5a9MXoSzz+0L78MvlBY3fRJoDdXlV4bWJflrUJmZQ5e2wPTa0LjpyE=
X-Gm-Gg: ATEYQzxJ0Xpgr+wFtZ8O22eGj+xxsmwKHevpjZ+JYupb9/io2fFWmtvVNMJxdmiaHen
	G2WA9202WBHXybRhoLUICylM76i0s0JQ63kcywfjRLPuskHzbaPczo+5eLOA6/6iTygHv5tuKWR
	7aSrgp3MzAmWlIEbDsrfB9xJP9cf2XILKArs+2lveooVUKZHksdYGQi6HYEA75w6l3/sqF5FpXH
	a0a9TNTeMRaWG7aStsj0RRUpA2+szg1VCGQe93h+yUBfuhrPvThxU9wnduD3QGBpxfd5vo0Q0qZ
	9zq3E5RG2uiRObJyeLbFRsTlTZJTnuq4hMrmAEFsSY1nYEBRZCjcmQzUAhUj8cUnr0+QmmzduPS
	A5z6llYFED7UGdX5h1A9vb8/cyJKZSQ4G9Iv9TKFNMFkq12lMbWxY4frXnokZITuLWfgoRPgzzM
	tWxr+w6pu+HMabqxIuA6dr7UFkagO3t3YX1VzR4xl8pXhZlPWvjxIDmCvRqc5LtSqyGQBZttd72
	/vjZ8yOIZO+/FY=
X-Received: by 2002:a05:6402:5209:b0:65f:b622:748f with SMTP id 4fb4d7f45d1cf-65fde4bc8c5mr7404203a12.32.1772458341629;
        Mon, 02 Mar 2026 05:32:21 -0800 (PST)
Received: from puffmais2.c.googlers.com (221.210.91.34.bc.googleusercontent.com. [34.91.210.221])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-65fabf6d1c6sm3282988a12.17.2026.03.02.05.32.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 05:32:21 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Mon, 02 Mar 2026 13:32:08 +0000
Subject: [PATCH v3 09/11] power: supply: max17042: initial support for
 Maxim MAX77759
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260302-max77759-fg-v3-9-3c5f01dbda23@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270029-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8FD901D9F01
X-Rspamd-Action: no action

The Maxim MAX77759 is a companion PMIC intended for use in mobile
phones and tablets. It is used on Google Pixel 6 and 6 Pro (oriole and
raven). Amongst others, it contains a fuel gauge that is similar to the
ones supported by this driver.

The fuel gauge can measure battery charge and discharge current,
battery voltage, battery temperature, and the Type C connector's
temperature.

The MAX77759 incorporates the Maxim ModelGauge m5 algorithm. It, as
well as previous generations like m3 on max17047/max17050, requires
the host to save/restore some register values across power cycles to
maintain full accuracy. Extending the driver for such support is out of
scope in this initial commit.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
v2: fix typo MAX77759_T_convert -> MAX77759_Tconvert
---
 drivers/power/supply/max17042_battery.c | 59 ++++++++++++++++++++++++++++++---
 include/linux/power/max17042_battery.h  | 24 ++++++++++++--
 2 files changed, 77 insertions(+), 6 deletions(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index e21d2bd7e231..b9a21cef2cc6 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -650,7 +650,8 @@ static void max17042_write_config_regs(struct max17042_chip *chip)
 	regmap_write(map, MAX17042_RelaxCFG, config->relax_cfg);
 	if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047 ||
 			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050 ||
-			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055)
+			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055 ||
+			chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)
 		regmap_write(map, MAX17047_FullSOCThr,
 						config->full_soc_thresh);
 }
@@ -787,7 +788,8 @@ static inline void max17042_override_por_values(struct max17042_chip *chip)
 
 	if ((chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042) ||
 	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047) ||
-	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050)) {
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050) ||
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)) {
 		max17042_override_por(map, MAX17042_IAvg_empty, config->iavg_empty);
 		max17042_override_por(map, MAX17042_TempNom, config->temp_nom);
 		max17042_override_por(map, MAX17042_TempLim, config->temp_lim);
@@ -796,7 +798,8 @@ static inline void max17042_override_por_values(struct max17042_chip *chip)
 
 	if ((chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047) ||
 	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050) ||
-	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055)) {
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055) ||
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)) {
 		max17042_override_por(map, MAX17047_V_empty, config->vempty);
 	}
 }
@@ -1019,6 +1022,45 @@ static const struct regmap_config max17042_regmap_config = {
 	.val_format_endian = REGMAP_ENDIAN_NATIVE,
 };
 
+static const struct regmap_range max77759_fg_registers[] = {
+	regmap_reg_range(MAX17042_STATUS, MAX77759_MixAtFull),
+	regmap_reg_range(MAX17042_VFSOC0Enable, MAX17042_VFSOC0Enable),
+	regmap_reg_range(MAX17042_MLOCKReg1, MAX17042_MLOCKReg2),
+	regmap_reg_range(MAX17042_MODELChrTbl, MAX17055_TimerH),
+	regmap_reg_range(MAX77759_IIn, MAX77759_IIn),
+	regmap_reg_range(MAX17055_AtQResidual, MAX17055_AtAvCap),
+	regmap_reg_range(MAX17042_OCVInternal, MAX17042_OCVInternal),
+	regmap_reg_range(MAX17042_VFSOC, MAX17042_VFSOC),
+};
+
+static const struct regmap_range max77759_fg_ro_registers[] = {
+	regmap_reg_range(MAX17042_FSTAT, MAX17042_FSTAT),
+	regmap_reg_range(MAX17042_OCVInternal, MAX17042_OCVInternal),
+	regmap_reg_range(MAX17042_VFSOC, MAX17042_VFSOC),
+};
+
+static const struct regmap_access_table max77759_fg_write_table = {
+	.yes_ranges = max77759_fg_registers,
+	.n_yes_ranges = ARRAY_SIZE(max77759_fg_registers),
+	.no_ranges = max77759_fg_ro_registers,
+	.n_no_ranges = ARRAY_SIZE(max77759_fg_ro_registers),
+};
+
+static const struct regmap_access_table max77759_fg_rd_table = {
+	.yes_ranges = max77759_fg_registers,
+	.n_yes_ranges = ARRAY_SIZE(max77759_fg_registers),
+};
+
+static const struct regmap_config max77759_fg_regmap_cfg = {
+	.reg_bits = 8,
+	.val_bits = 16,
+	.max_register = 0xff,
+	.wr_table = &max77759_fg_write_table,
+	.rd_table = &max77759_fg_rd_table,
+	.val_format_endian = REGMAP_ENDIAN_NATIVE,
+	.cache_type = REGCACHE_NONE,
+};
+
 static const struct power_supply_desc max17042_psy_desc = {
 	.name		= "max170xx_battery",
 	.type		= POWER_SUPPLY_TYPE_BATTERY,
@@ -1045,6 +1087,7 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 {
 	struct i2c_adapter *adapter = client->adapter;
 	const struct power_supply_desc *max17042_desc = &max17042_psy_desc;
+	const struct regmap_config *regmap_config;
 	struct power_supply_config psy_cfg = {};
 	struct max17042_chip *chip;
 	int ret;
@@ -1060,7 +1103,12 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 
 	chip->dev = dev;
 	chip->chip_type = chip_type;
-	chip->regmap = devm_regmap_init_i2c(client, &max17042_regmap_config);
+
+	if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)
+		regmap_config = &max77759_fg_regmap_cfg;
+	else
+		regmap_config = &max17042_regmap_config;
+	chip->regmap = devm_regmap_init_i2c(client, regmap_config);
 	if (IS_ERR(chip->regmap))
 		return dev_err_probe(dev, PTR_ERR(chip->regmap),
 				     "Failed to initialize regmap\n");
@@ -1241,6 +1289,8 @@ static const struct of_device_id max17042_dt_match[] __used = {
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17055 },
 	{ .compatible = "maxim,max77705-battery",
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17047 },
+	{ .compatible = "maxim,max77759-fg",
+		.data = (void *) MAXIM_DEVICE_TYPE_MAX77759 },
 	{ .compatible = "maxim,max77849-battery",
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17047 },
 	{ },
@@ -1253,6 +1303,7 @@ static const struct i2c_device_id max17042_id[] = {
 	{ "max17047", MAXIM_DEVICE_TYPE_MAX17047 },
 	{ "max17050", MAXIM_DEVICE_TYPE_MAX17050 },
 	{ "max17055", MAXIM_DEVICE_TYPE_MAX17055 },
+	{ "max77759-fg", MAXIM_DEVICE_TYPE_MAX77759 },
 	{ "max77849-battery", MAXIM_DEVICE_TYPE_MAX17047 },
 	{ }
 };
diff --git a/include/linux/power/max17042_battery.h b/include/linux/power/max17042_battery.h
index c417abd2ab70..05097f08ea36 100644
--- a/include/linux/power/max17042_battery.h
+++ b/include/linux/power/max17042_battery.h
@@ -105,7 +105,7 @@ enum max17042_register {
 
 	MAX17042_OCV		= 0xEE,
 
-	MAX17042_OCVInternal	= 0xFB,  /* MAX17055 VFOCV */
+	MAX17042_OCVInternal	= 0xFB, /* MAX17055/77759 VFOCV */
 
 	MAX17042_VFSOC		= 0xFF,
 };
@@ -156,7 +156,7 @@ enum max17055_register {
 	MAX17055_AtAvCap	= 0xDF,
 };
 
-/* Registers specific to max17047/50/55 */
+/* Registers specific to max17047/50/55/77759 */
 enum max17047_register {
 	MAX17047_QRTbl00	= 0x12,
 	MAX17047_FullSOCThr	= 0x13,
@@ -167,12 +167,32 @@ enum max17047_register {
 	MAX17047_QRTbl30	= 0x42,
 };
 
+enum max77759_register {
+	MAX77759_AvgTA0		= 0x26,
+	MAX77759_AtTTF		= 0x33,
+	MAX77759_Tconvert	= 0x34,
+	MAX77759_AvgCurrent0	= 0x3B,
+	MAX77759_THMHOT		= 0x40,
+	MAX77759_CTESample	= 0x41,
+	MAX77759_ISys		= 0x43,
+	MAX77759_AvgVCell0	= 0x44,
+	MAX77759_RlxSOC		= 0x47,
+	MAX77759_AvgISys	= 0x4B,
+	MAX77759_QH0		= 0x4C,
+	MAX77759_MixAtFull	= 0x4F,
+	MAX77759_VSys		= 0xB1,
+	MAX77759_TAlrtTh2	= 0xB2,
+	MAX77759_VByp		= 0xB3,
+	MAX77759_IIn		= 0xD0,
+};
+
 enum max170xx_chip_type {
 	MAXIM_DEVICE_TYPE_UNKNOWN	= 0,
 	MAXIM_DEVICE_TYPE_MAX17042,
 	MAXIM_DEVICE_TYPE_MAX17047,
 	MAXIM_DEVICE_TYPE_MAX17050,
 	MAXIM_DEVICE_TYPE_MAX17055,
+	MAXIM_DEVICE_TYPE_MAX77759,
 
 	MAXIM_DEVICE_TYPE_NUM
 };

-- 
2.53.0.473.g4a7958ca14-goog


