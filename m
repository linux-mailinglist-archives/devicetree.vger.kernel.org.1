Return-Path: <devicetree+bounces-269098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qG84GWBFoWkirwQAu9opvQ
	(envelope-from <devicetree+bounces-269098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:18:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 03C9A1B3C26
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:18:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 738F6318DEAE
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CAA53BFE41;
	Fri, 27 Feb 2026 07:15:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ghKYGctr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7FB2372B4D
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 07:15:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176519; cv=none; b=Ldsjwo2D2X0lszy8FMZfaMxSjRnM8ao054zH2k+OU/ZUW0EjqxT36c+PkoDOFdMF6QNLD8ZBh/xjdm2HI+Z7dlVWmAALj7LTaHlIp5OnASCAoaqRacG6mqeGkDtYZX94zjOII4bM8DMGxBuXapJbn6Wn9bDLw7OO2R//Id0+H0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176519; c=relaxed/simple;
	bh=fv/17d6jilgTODgpruVYpOT+gHVFDnCbMA/pv2NE/eM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mi14ZYLI6QUt94viDqZFALgyw75egVkSBg9U+7D9LOicaNsblwGQG/w3osO0qCAOwHX/vCJ9+/zqY12s/lq6Kuuy79Mk7aXKHO5S1UAsvVTk3hQaC5XzcOybRq1TsFSjREO/SogfEUoUfuawpRRs4KlyFQDmT4+jz/Ku9VjtasA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ghKYGctr; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-b886fc047d5so284941366b.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 23:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772176514; x=1772781314; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VcFko9vHiFHIBVVslk4GTSxZFkyv6j0wJU+j7yMMfnE=;
        b=ghKYGctrtFaY4MWW1ANKPGcRHwnxBUaSU2Zn8jc0+wlzyhuZWyBGJhfo/LZ3yXRrh/
         WFVDcpkESfdQZHvoYuy07XLA7tOVCo0KafHt7KhII2FW4ufru6wthhzskI9eM8TIxHLY
         jURmwyuVUCxmPgovhzRbFd3agWT3O0Mj8XdDOkC6Rn2RoUzq3U+XBo7tfGNpOm5ZR9Xm
         7WvbuTEU/u+thjZUw/oQsd9QSP7P4ROTnochNNo73NI1W5uqTIcPQiMy884DO96QQ4oz
         +KYpIJW2g+BzgRmZ6gEo6sou5O+m/Rznzj1iXWu4JjM9qpcDxEHZiry5m2H8Spi6NSQr
         llcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772176514; x=1772781314;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VcFko9vHiFHIBVVslk4GTSxZFkyv6j0wJU+j7yMMfnE=;
        b=nWIGtcaqBAa+52/It8fRrYqJomxNKBVOi2c1F+3p+UEN375lS5DG6SYG+bSqquZfnq
         n0K2cbmzIHE31ba7UZsNTfNetUPT83T4GXnfnc1Q+sR2+zNl71mBiiUHGgD3aU21+212
         PeEsJtPObYsVYKxivxYP0o34JBWFI5JiHtIbRXOmUBbaJ38sBKTVctQMo1pzepG8YJ4N
         MvH5rGqdNLUlQgYyR2vFAtdvKFO4AiuLVKiFhpt+9QH/ZfB6QhWRfpg+rBjNN8vRAHSO
         4gAzw2/ThLaFEldMVg0NNvyKRDY6r/2tgUvQKLdAvPWFhS4CAODQfKzBDhQDINwvZ1MA
         ToSA==
X-Forwarded-Encrypted: i=1; AJvYcCVosqMp156nl+mo9JpQG0shEDdomY9vy8zqyYMddDlNBi5G+9zssySSjf+NIpzAKzFy2OVx7wFgQwv3@vger.kernel.org
X-Gm-Message-State: AOJu0YxZW4FSiiDEu8TgakRkc6L7+hZe/GE4wWnqZ7jZpiasOxRJImG6
	vuVn/fHrjmzNmTSc6p7oOf+VOsg2B+Ecf77ZCiItpQt3AdUrJH3qI6tkjoKOfkZHuZg=
X-Gm-Gg: ATEYQzxWL/+769GFVTJ15ClLU4+mHeR/n8sTGBCvYC8qNaEXQxgQnAgKS+LaIx9Rsg1
	asQ10uW6SirGPvRw5SPEVH1sqvTgYfpPF2zSo1hWtPrAYxUJ1LkyFA8P0oXXiIIQcwt1eN/QMwI
	z30uLXskRCXMq3Urv04bWyIy4RVFaJMLWlfPmeISuor4CwyVT24IS28YMY8HeuwdVTOCMeDP7L2
	5iOfwS3C0ZyZhVjs7HTh3kH8nQ6z91o9lPZqcwTcvMkpgv6dqUeCwMC5HkoRyybuqozl0EWjkqQ
	Los1ndL7Gd8KCN3atWJfeRsJtJ7i+98qP7W+lmSkUYnkth1Z7MPE35eUvbFaT14ghKoHbEk1Rfb
	xdZoUzW0ZPrWXylREc2Selv+Tuym0vMRfVVM3+y1ULIMa+7eXS/JPJ1Hj2idwEVdt7rIcRc6UDY
	+oLxsaABEOT1mvAqVE/ybaCUizgkkhEyY0r0vciQI2ZSZbKSzJcSyi0wwsJxf8TnSTxiO2P/wvv
	IrP0AnPua3+Xh2I/A==
X-Received: by 2002:a17:906:f59a:b0:b8f:abff:9ce7 with SMTP id a640c23a62f3a-b93764f4640mr94258566b.32.1772176514119;
        Thu, 26 Feb 2026 23:15:14 -0800 (PST)
Received: from puffmais2.c.googlers.com (244.175.141.34.bc.googleusercontent.com. [34.141.175.244])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b935aeee867sm124205066b.66.2026.02.26.23.15.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 23:15:13 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 27 Feb 2026 07:15:14 +0000
Subject: [PATCH v2 09/11] power: supply: max17042: initial support for
 Maxim MAX77759
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260227-max77759-fg-v2-9-e50be5f191f0@linaro.org>
References: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
In-Reply-To: <20260227-max77759-fg-v2-0-e50be5f191f0@linaro.org>
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
	TAGGED_FROM(0.00)[bounces-269098-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:mid,linaro.org:dkim,linaro.org:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 03C9A1B3C26
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
v2: fix typo MAX77759_T_convert -> MAX77759_Tconvert
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


