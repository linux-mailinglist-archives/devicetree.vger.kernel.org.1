Return-Path: <devicetree+bounces-274045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJZFFdNYsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E222263489
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:58:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D0E6B3040D97
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 11:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E5373DEFFF;
	Wed, 11 Mar 2026 11:56:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="m+7Wugmc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846003DEFF1
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 11:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230207; cv=none; b=i4tB2Zb+8LUhUIaFjRojME5udUXBXivqXseCdf9xe1yZFc7IwhOMjpg3L+1QXyzMCJVM2a1ZM1Yrwz+ttcm5kDJz1YHKMGwo0RGZyDzyZf/NSfCtJ00qz/Z+649HFX3j3Ter61S4Kl6PyT1r4O3wxc2IvJz6aEQl9gwcSFiTgj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230207; c=relaxed/simple;
	bh=q9BptJDuAQnjOV/HxIZuYo7P6hJdxkSiFaoHcUpNVb0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CYHUF8qkBbzJkUkmRxUkIuOxO0ZNx5j5tRoOs2NdA8ssQm2ADTPm3BuezA2wnxyqOftch7lC5ND/J5JT5qNtH+NkL3Vkv5jGpwOWbX/mTWiZrrvkPSSFuFJfrJIVv+a6ee8oWzCPerSrAV9Sbcd9N5A4dUJBzR0qHlV1dhTZ/+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=m+7Wugmc; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4852f73d0a3so38247475e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 04:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773230205; x=1773835005; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gzdSIakIBsa879u0fxfflVhMlKymXjPa/1rJ4QxUnO8=;
        b=m+7WugmcB/U+TwG4K03nIN6c2eJD6Xjhr1O/deIc6cZy3K2bPd09YhnA1JDKxHMfiE
         3400tRx/R9Qh2n1DomMYbHb5CT/ZMutGAKzS05CZWAVssT2VNsa9b0lane5XxgtuL/lh
         ooc+FzvOuaMjBEl22RdZLp8SMfWU2yx+C5c/l2Q5pAE1KdUJVQcqy+en+4SB+ITPgNK0
         o3sdeD/szCVjjh6Bmb9IPBgixABsHk1x7vG+vEQeHdcqby+Uuy2jRuRwrBSe7wJrVmFq
         X0tO0IiO+nrh93SYM7Gsj7GkkoDZwdRqV16SyHyhDT2pHGlkLIeIy4mhGGQYx05ZnwyH
         8/kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230205; x=1773835005;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gzdSIakIBsa879u0fxfflVhMlKymXjPa/1rJ4QxUnO8=;
        b=BAjQlSdHYYPp206NHNXtwOvpXP+biKs/YQ5Piz6IsP7lhb/IUJshWo0pfEZSlTcV/k
         E26Mzwyx765F8dMzFpPE72LFipsQKaza7UrJsL4ZmKIIYpBRh2hXFaOLf9a0Y7G5iWGC
         tajVluZlE54IND2ylLjhzhYBHflEgItfd5kbu9Wyoy8Yd915En1GPxP1ZCFkP1FaHD1i
         3ab3v2pYEozhKRXfnEk+zwieP7d5nIbIBwOowDMJ12lEYOB4Rf6gaeqV4+6Cb3Ts6MTf
         IAJm9p28QhnEGekUlTY2hb5p8LK6uAADnrEjFNlXj3xdQxqDdkWiwT1geySNOIkTGIz5
         MMCA==
X-Gm-Message-State: AOJu0YysdJdE2woLy4zQV+bsRb2wNSphRK97lk4DdYvHzG3OpFX3WSxn
	2WhcOZ1IVhknZNWedLXcxH+DOaFk9S9h0ekwoY8Uj8Zeb047pNjBhYTb31S9QcYfpBs=
X-Gm-Gg: ATEYQzz2DC5L6yH/6IxN81jvyvfhvqe+HqXUoRuKdbCZr337++jViKZ2oyxA+2cpjat
	9BTuDYWtWRGkehcWUVzEbyiaoe8axOu0wv9/rNc57ir+5olxiLVQREWnzhpHYYljfWDuy61Tt67
	C8djDBcN4wVoYN9TN4WS8dhB1KvVSprKJ6KRFnwUXVdJPWgAlkxIE1ydgtfX0IvldI5r9bs9L3S
	MTAd3hpW38Erz/lh3Tn//wgnPeZE/BpfYqrfoZJqcGP3XNp6U0Y74bY0iocTTnjShzBT/Twew17
	vFylWrMFC0O6v4Febin3WYX3OZ3V0RZYyE2mxBGhyQANkzcXgI9asObMu+B2zSjYadfAh0Cl+ar
	RLi0KJ3eRSS4XyZ/tAn9A0FtmKhRxR9VQWY35d/+hiYcs/quLi/hVoAkYyz4lC8pUdF8X0FHkA7
	g63oG3J6HYbTe70hPJByNt3HbwI6jMyO4fsY7xplbrKMgf/zMjsjm7Y6AgvluW+1SJi+CS4i/Yj
	Sf3uQ==
X-Received: by 2002:a05:600c:1f10:b0:483:8062:b2f with SMTP id 5b1f17b1804b1-4854b0ae55amr42694045e9.6.1773230204855;
        Wed, 11 Mar 2026 04:56:44 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854ad5416bsm39586485e9.1.2026.03.11.04.56.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 04:56:44 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 11 Mar 2026 15:56:23 +0400
Subject: [PATCH v4 10/11] regulator: bq257xx: Add support for BQ25792
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260311-bq25792-v4-10-7213415d9eec@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5094; i=alchark@flipper.net;
 h=from:subject:message-id; bh=q9BptJDuAQnjOV/HxIZuYo7P6hJdxkSiFaoHcUpNVb0=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWRujEhW0/CcFvaydD5L1M4C309SSfcOB5RNf+nsusPrU
 m5KzqHqjoksDGJcDJZiiixzvy2xnWrEN2uXh8dXmDmsTCBDpEUaGICAhYEvNzGv1EjHSM9U21DP
 0FDHWMeIgYtTAKb6fhEjw+Z4/h17JzLHXdl62HcJ29Ktjndv+U13v22W958hLbY1dAnD/5IVs7p
 Xi1Rc/yft16/ps+Bmi83m1DN5bTmTFx2arvS5lxMA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 0E222263489
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
	TAGGED_FROM(0.00)[bounces-274045-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[flipper.net:dkim,flipper.net:email,flipper.net:mid,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

Add support for TI BQ25792, an integrated battery charger and buck/boost
regulator. This enables VBUS output from the charger's boost converter
for use in USB OTG applications, supporting 2.8-22V output at up to 3.32A
with 10mV and 40mA resolution.

Acked-by: Mark Brown <broonie@kernel.org>
Tested-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 drivers/regulator/bq257xx-regulator.c | 98 ++++++++++++++++++++++++++++++++++-
 1 file changed, 97 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/bq257xx-regulator.c b/drivers/regulator/bq257xx-regulator.c
index 0bb58ab4b8d4..f197162382cc 100644
--- a/drivers/regulator/bq257xx-regulator.c
+++ b/drivers/regulator/bq257xx-regulator.c
@@ -31,6 +31,32 @@ static int bq25703_vbus_get_cur_limit(struct regulator_dev *rdev)
 	return FIELD_GET(BQ25703_OTG_CUR_MASK, reg) * BQ25703_OTG_CUR_STEP_UA;
 }
 
+static int bq25792_vbus_get_cur_limit(struct regulator_dev *rdev)
+{
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	int ret;
+	unsigned int reg;
+
+	ret = regmap_read(regmap, BQ25792_REG0D_IOTG_REGULATION, &reg);
+	if (ret)
+		return ret;
+	return FIELD_GET(BQ25792_REG0D_IOTG_MASK, reg) * BQ25792_OTG_CUR_STEP_UA;
+}
+
+static int bq25792_vbus_get_voltage_sel(struct regulator_dev *rdev)
+{
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	__be16 reg;
+	int ret;
+
+	ret = regmap_raw_read(regmap, BQ25792_REG0B_VOTG_REGULATION,
+			      &reg, sizeof(reg));
+	if (ret)
+		return ret;
+
+	return FIELD_GET(BQ25792_REG0B_VOTG_MASK, be16_to_cpu(reg));
+}
+
 /*
  * Check if the minimum current and maximum current requested are
  * sane values, then set the register accordingly.
@@ -54,6 +80,37 @@ static int bq25703_vbus_set_cur_limit(struct regulator_dev *rdev,
 			    FIELD_PREP(BQ25703_OTG_CUR_MASK, reg));
 }
 
+static int bq25792_vbus_set_cur_limit(struct regulator_dev *rdev,
+				      int min_uA, int max_uA)
+{
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	unsigned int reg;
+
+	if ((min_uA > BQ25792_OTG_CUR_MAX_UA) ||
+	    (max_uA < BQ25792_OTG_CUR_MIN_UA))
+		return -EINVAL;
+
+	reg = (max_uA / BQ25792_OTG_CUR_STEP_UA);
+
+	/* Catch rounding errors since our step is 40000uA. */
+	if ((reg * BQ25792_OTG_CUR_STEP_UA) < min_uA)
+		return -EINVAL;
+
+	return regmap_write(regmap, BQ25792_REG0D_IOTG_REGULATION,
+			    FIELD_PREP(BQ25792_REG0D_IOTG_MASK, reg));
+}
+
+static int bq25792_vbus_set_voltage_sel(struct regulator_dev *rdev,
+					unsigned int sel)
+{
+	struct regmap *regmap = rdev_get_regmap(rdev);
+	__be16 reg;
+
+	reg = cpu_to_be16(FIELD_PREP(BQ25792_REG0B_VOTG_MASK, sel));
+	return regmap_raw_write(regmap, BQ25792_REG0B_VOTG_REGULATION,
+				&reg, sizeof(reg));
+}
+
 static int bq25703_vbus_enable(struct regulator_dev *rdev)
 {
 	struct bq257xx_reg_data *pdata = rdev_get_drvdata(rdev);
@@ -101,6 +158,34 @@ static const struct regulator_desc bq25703_vbus_desc = {
 	.vsel_mask = BQ25703_OTG_VOLT_MASK,
 };
 
+static const struct regulator_ops bq25792_vbus_ops = {
+	/* No GPIO for enabling the OTG regulator */
+	.enable = regulator_enable_regmap,
+	.disable = regulator_disable_regmap,
+	.is_enabled = regulator_is_enabled_regmap,
+	.list_voltage = regulator_list_voltage_linear,
+	.get_voltage_sel = bq25792_vbus_get_voltage_sel,
+	.set_voltage_sel = bq25792_vbus_set_voltage_sel,
+	.get_current_limit = bq25792_vbus_get_cur_limit,
+	.set_current_limit = bq25792_vbus_set_cur_limit,
+};
+
+static const struct regulator_desc bq25792_vbus_desc = {
+	.name = "vbus",
+	.of_match = of_match_ptr("vbus"),
+	.regulators_node = of_match_ptr("regulators"),
+	.type = REGULATOR_VOLTAGE,
+	.owner = THIS_MODULE,
+	.ops = &bq25792_vbus_ops,
+	.min_uV = BQ25792_OTG_VOLT_MIN_UV,
+	.uV_step = BQ25792_OTG_VOLT_STEP_UV,
+	.n_voltages = BQ25792_OTG_VOLT_NUM_VOLT,
+	.enable_mask = BQ25792_REG12_EN_OTG,
+	.enable_reg = BQ25792_REG12_CHARGER_CONTROL_3,
+	.enable_val = BQ25792_REG12_EN_OTG,
+	.disable_val = 0,
+};
+
 /* Get optional GPIO for OTG regulator enable. */
 static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
 {
@@ -141,6 +226,7 @@ static void bq257xx_reg_dt_parse_gpio(struct platform_device *pdev)
 static int bq257xx_regulator_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	struct bq257xx_device *bq = dev_get_drvdata(pdev->dev.parent);
 	struct bq257xx_reg_data *pdata;
 	struct device_node *np = dev->of_node;
 	struct regulator_config cfg = {};
@@ -153,7 +239,17 @@ static int bq257xx_regulator_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -ENOMEM;
 
-	pdata->desc = bq25703_vbus_desc;
+	switch (bq->type) {
+	case BQ25703A:
+		pdata->desc = bq25703_vbus_desc;
+		break;
+	case BQ25792:
+		pdata->desc = bq25792_vbus_desc;
+		break;
+	default:
+		return dev_err_probe(&pdev->dev, -EINVAL,
+				     "Unsupported device type\n");
+	}
 
 	platform_set_drvdata(pdev, pdata);
 	bq257xx_reg_dt_parse_gpio(pdev);

-- 
2.52.0


