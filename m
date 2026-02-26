Return-Path: <devicetree+bounces-268827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJuAGm1HoGkuhwQAu9opvQ
	(envelope-from <devicetree+bounces-268827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:15:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5541A6372
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:15:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0315C3096146
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 13:13:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35DA1335BB4;
	Thu, 26 Feb 2026 13:11:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Sfjc/yMu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B33132E733
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772111508; cv=none; b=WiP3+zJKohbgtAAVhYStuf9lV4JOcu+VyfDWF1wDM7+a9BXLOUqYB3f+ZR/SnJdFdIRWaTnhgBB89w+Hh5kTdScgrBUEruo6whIfV6tPM9AhWqng9umuIALdoaaNwGAOz4FuGs/Ie9s5ffPVnWoEbTIvLo6wDSJ3FeNYTyzbAJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772111508; c=relaxed/simple;
	bh=CxTsTMmV8skHVUsm+jW03yN6qWeLL/zDVotJNPTmaHo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=c7MhSvGMs03JUxbZPu5/Pv7rJhqXfuDwNshwwqBUg6Zv6xXcKtVCTVCYqUpCwsKDjpsxRyfjKKtLC+vT/zyoNmCsbdmiArjCNZI2DaDokbHnWSy/M/80Zj8nj+MQXALar3fQqT6zWhS7OTMJzNRZOPXmQi7sx0CUXutrhEZpVYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Sfjc/yMu; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-65faaa8b807so1722614a12.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 05:11:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772111504; x=1772716304; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2gQP8USbfJkmMUuSLrzEcZ4FLbZzBl1slM5DTz0FABA=;
        b=Sfjc/yMu0AxbE/7bgpDPVmNP+34mRewS8gCKtB1YS5A1g4a7rdFyVqWkpbVLxd2Zhu
         tP1k3oEaK79+XdGSncKbIhyRV4VdKloANhMcrDOo5HzidKvtvAafPyu8HwrZD1iCzfAa
         cBp0vgRuORG5s2ofWnvY6Z4qQ8ZqoE5qbzuYn4BwCX+9zAsdew9jdK+nTJ9HafCGJ8ce
         24cyLGexRwXuBXmwAMEsDVvfMdvLzakqop2RlwRg31vmd0WT29xRUHLFDtW7AS1QjRGk
         URAETePLUG3lCrM5BDBSJVjpHOURXMhQk/gYMS+dTLKuqGx3vve0r6I2fQz3D13CLMA1
         Ba4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772111504; x=1772716304;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2gQP8USbfJkmMUuSLrzEcZ4FLbZzBl1slM5DTz0FABA=;
        b=A86RPwdNFBdHjXV+KII0d4baRbMEMhOSNHmpRIWpQbyRW3pjpRebfLdIEWXKlzQ3MO
         yTNf+WbyGyF9F4rdU/07dw8lTyW+niSa2lc937rtWx9jmvKFc/j7fTzK/jzh7I+1vNIc
         9kKberHPMlaN3FF+05gFtToGlsNZCzB1xRWl0jHes9lSI6CNefYKNyfCNvVcoSCjGYAG
         zRKPX/mA6/UQahuiio0JU7SHi2YTM/tEdu7j1XAUm46aRTE4gwPHYcBa+2ruihXb96Tp
         T5viZKZJlKlCo4bc+5pnTIJeXn449v8R0xkvTyGZ1B7ih2XZiX4La6Hglq5ArrvqY99e
         w0BQ==
X-Forwarded-Encrypted: i=1; AJvYcCUinE5EBHBG5GEGeChiMKhn69X8I6JXCdcDe7cSwuCFxe5tLmER+oVPa+YU62wPztu/9V3XuWKpWLIo@vger.kernel.org
X-Gm-Message-State: AOJu0YxmPxLfqp+w1ywH3394WU9MAGGHZeQW8UCqTuS0+WVAJj5ZAKrB
	woWIBymUmoIAk5SNjQ0fNd2y68f6cNE7H1XPcPlYxkld3iIGL7MHWxOUNqnrJH2zEDw=
X-Gm-Gg: ATEYQzx3z9dVHZMIXbgOB9OoYh3fZCgUNNW8pYHnP8HZH1sFYTH+sEFdlh/wRMPhQQA
	cXgIv72/btqgewppBSMUEDdjC2cfyzPjORe7CwvCwOo2MszoFphXsXF8ljnfbPIxwgNSE2CXCty
	a2srXOOX14jHFpduk8dtzh05mMmbvwBpAUdi/vFuVQg9+TUYt8iDbMUSwUtgtLYSmSv30utQ+X4
	I9OVuumDXlwdt+1wDVI1w+dOhp5oyhComiGma7qT0Yfhm0pV9N/4we/BLtHhH//ppIEZQdEGDTj
	+4msCg5AwDo6HO5tND2yEgK/mHTSSM7JcwTLtbY6orzFWsMhlx2WZL8jJlBVqLG6toGXcGC/fHh
	OLpC7Rm2HwtMwISA1oHn3elrycO1pxC1rLkNIPBa37MRrSZ9FwN55DTk880YMlDhMAJiwPNqLq4
	M8jEax6YYcnktvstWxQ7L6iQ9wxxEGT+rAXe8aG1QHngj6e9ofN2VpZ8B/EfGqbbmCA4MWC2lTp
	FGCf65JRFmVmHzpQw==
X-Received: by 2002:a17:907:3e1b:b0:b88:241e:693c with SMTP id a640c23a62f3a-b93516f9c32mr275692866b.31.1772111503528;
        Thu, 26 Feb 2026 05:11:43 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935ac73d2asm55125866b.26.2026.02.26.05.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 05:11:43 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Thu, 26 Feb 2026 13:11:43 +0000
Subject: [PATCH 09/11] power: supply: max17042: initial support for Maxim
 MAX77759
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260226-max77759-fg-v1-9-ff0a08a70a9f@linaro.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268827-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[linaro.org:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.draszik@linaro.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 0C5541A6372
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

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 drivers/power/supply/max17042_battery.c | 59 ++++++++++++++++++++++++++++++---
 include/linux/power/max17042_battery.h  | 24 ++++++++++++--
 2 files changed, 77 insertions(+), 6 deletions(-)

diff --git a/drivers/power/supply/max17042_battery.c b/drivers/power/supply/max17042_battery.c
index 823533ea5a17..44626abdab34 100644
--- a/drivers/power/supply/max17042_battery.c
+++ b/drivers/power/supply/max17042_battery.c
@@ -654,7 +654,8 @@ static void max17042_write_config_regs(struct max17042_chip *chip)
 	regmap_write(map, MAX17042_RelaxCFG, config->relax_cfg);
 	if (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047 ||
 			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050 ||
-			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055)
+			chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055 ||
+			chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)
 		regmap_write(map, MAX17047_FullSOCThr,
 						config->full_soc_thresh);
 }
@@ -791,7 +792,8 @@ static inline void max17042_override_por_values(struct max17042_chip *chip)
 
 	if ((chip->chip_type == MAXIM_DEVICE_TYPE_MAX17042) ||
 	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047) ||
-	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050)) {
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050) ||
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)) {
 		max17042_override_por(map, MAX17042_IAvg_empty, config->iavg_empty);
 		max17042_override_por(map, MAX17042_TempNom, config->temp_nom);
 		max17042_override_por(map, MAX17042_TempLim, config->temp_lim);
@@ -800,7 +802,8 @@ static inline void max17042_override_por_values(struct max17042_chip *chip)
 
 	if ((chip->chip_type == MAXIM_DEVICE_TYPE_MAX17047) ||
 	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17050) ||
-	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055)) {
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX17055) ||
+	    (chip->chip_type == MAXIM_DEVICE_TYPE_MAX77759)) {
 		max17042_override_por(map, MAX17047_V_empty, config->vempty);
 	}
 }
@@ -1023,6 +1026,45 @@ static const struct regmap_config max17042_regmap_config = {
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
@@ -1049,6 +1091,7 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 {
 	struct i2c_adapter *adapter = client->adapter;
 	const struct power_supply_desc *max17042_desc = &max17042_psy_desc;
+	const struct regmap_config *regmap_config;
 	struct power_supply_config psy_cfg = {};
 	struct max17042_chip *chip;
 	int ret;
@@ -1064,7 +1107,12 @@ static int max17042_probe(struct i2c_client *client, struct device *dev, int irq
 
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
@@ -1245,6 +1293,8 @@ static const struct of_device_id max17042_dt_match[] __used = {
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17055 },
 	{ .compatible = "maxim,max77705-battery",
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17047 },
+	{ .compatible = "maxim,max77759-fg",
+		.data = (void *) MAXIM_DEVICE_TYPE_MAX77759 },
 	{ .compatible = "maxim,max77849-battery",
 		.data = (void *) MAXIM_DEVICE_TYPE_MAX17047 },
 	{ },
@@ -1257,6 +1307,7 @@ static const struct i2c_device_id max17042_id[] = {
 	{ "max17047", MAXIM_DEVICE_TYPE_MAX17047 },
 	{ "max17050", MAXIM_DEVICE_TYPE_MAX17050 },
 	{ "max17055", MAXIM_DEVICE_TYPE_MAX17055 },
+	{ "max77759-fg", MAXIM_DEVICE_TYPE_MAX77759 },
 	{ "max77849-battery", MAXIM_DEVICE_TYPE_MAX17047 },
 	{ }
 };
diff --git a/include/linux/power/max17042_battery.h b/include/linux/power/max17042_battery.h
index c417abd2ab70..76b85ad3cf48 100644
--- a/include/linux/power/max17042_battery.h
+++ b/include/linux/power/max17042_battery.h
@@ -105,7 +105,7 @@ enum max17042_register {
 
 	MAX17042_OCV		= 0xEE,
 
-	MAX17042_OCVInternal	= 0xFB,  /* MAX17055 VFOCV */
+	MAX17042_OCVInternal	= 0xFB,  /* MAX17055/77759 VFOCV */
 
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
+	MAX77759_T_convert	= 0x34,
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
2.53.0.414.gf7e9f6c205-goog


