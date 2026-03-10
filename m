Return-Path: <devicetree+bounces-273407-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNIpId7lr2nkdAIAu9opvQ
	(envelope-from <devicetree+bounces-273407-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:35:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 10B9C24889B
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 10:35:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7A6B330BCC0D
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 09:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC6C44BC8B;
	Tue, 10 Mar 2026 09:29:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b="FwTWLO4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A6944B66B
	for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 09:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773134978; cv=none; b=VAztcssGhdeLdKD8l6bBGUQfgdwGS0fq9rE3Gzt+iGFetk5TgkRSqdV6yqbl1xlLz8jwa4ta01DKIATUfJqhg6PzP2UyXflR5+HAQvWQ/4Im5HrZIOt8HBGQ38+W6RBBVuP55pH4CwQs1Q7Cjt1g/8cM3Ff5P973VbSp3v+01lg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773134978; c=relaxed/simple;
	bh=Yas/YH/+WHqmaG1+9dU+ZXDZsf5koKP+4O5pY6ZHHVo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mC7Gr60FAmARNukA1hXnhyRuPC+DgrkmxuYr0LVoXsOLTS33fA2hbmgJga5N1Po+5e578kjMX7CSidy/SwnwjNmwh/5F8Wmf88Z7lkDlHot7CyDfXz9M5eqOhUpwnOLnljecJBap7QuyaeD0JoivzdWWMU1H7NwckixqslucEMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net; spf=pass smtp.mailfrom=flipper.net; dkim=pass (2048-bit key) header.d=flipper.net header.i=@flipper.net header.b=FwTWLO4a; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=flipper.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flipper.net
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4853fd7b59aso9892525e9.2
        for <devicetree@vger.kernel.org>; Tue, 10 Mar 2026 02:29:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1773134974; x=1773739774; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b6JAnC42FjnZsgn6Qw8KBFDtZiHpm03wSifwT634VnI=;
        b=FwTWLO4aw6ueaKTqNVpx+oRkSkIAsONBb1cBED21oQ+/u/QUZLVD9P7mupcZgMXC3f
         Y/ASAf4yPTbGEO0q4cKbRolRni1y8ftvk9k6GeRJbfvhT4CPIgMj9gG8ARSW+Nc7JewZ
         5OrqcrUKS8QCZ/oVMsNilORAWBSHnkAxxRStl9APBm8cJVIJqTu83Erm6zya5xBBSymj
         T+jbDtgLv6EGTIYI7I0yMzfb6A3BZRAKxVxKOdj58muRfPRLEaH/+IN+kZSOPDDNIqCi
         5FaJ+fDiAoOKnYUK7j6VH7cmZyZcpLXU3jlRtpQcezFneVIOq4mgx8pUujnwhkpDiUxJ
         kuwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773134974; x=1773739774;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=b6JAnC42FjnZsgn6Qw8KBFDtZiHpm03wSifwT634VnI=;
        b=U9WlH2CmC16M128jUX+nmIV/6qR+o9KKJLNHvwEHLsuBRMBzOp8QHVzxAKdtM/Fsl1
         tWtRnoKArcUFioQND8mdzxs/3E4Ieva+qaKAJffbldJusUzAKhslKn4quFB2j1d4Xzta
         Zq0oPUK+Zx8iAkprXyxHmGCNrtmjtvi+GSnambuMaLP6yDQ8JSYyKeVHCJFqdPP4i07U
         8Ze6tg/v5x9DlL93cPsoPIE4CQOBoJvzsRWgTpxp9x8L76mGZi68g3OCgTR9OkuNhv2V
         vHoWSorzJCOs3gBYY1t5WDYxLxPG1O1UNyx96kKWSwfJshkdvK5g6fTV89HBPGoudCQK
         S+mg==
X-Gm-Message-State: AOJu0YzSy9ytc3VStuoT537B5TIIUU5GxoWeokNoGRmZ+BTWa7gLq/1h
	oBJqOAG9UNW6Ve7HJbfaOM6F20zv83buR70Tl/Xjo3v+aIPRcwfQtKHLCQZTMuwtM8E=
X-Gm-Gg: ATEYQzwIGqMU/e00iwRGAGfwXqsJ0kH3eyGyhi2NnS3Lb2ZeyMjeJSQe1l9D7gqH/iR
	cNkMdkaQA1G50XQMTh7TSdKQQjSij5ppSg0FQ+Qyh6j0R1lt0p4OnUD6gp3mYNSwhtaZziFEIN8
	kM2+g4R9mJfPrcHyEBr1HoQDLVqJCoGnWWZeAmqogPmnqen7FcmAI+6PpDSFX3WggOMExqAES5J
	yIeY6mu3ZMxf16KPkAU4bZCYbnWZ5R10JtIPsn3GOonHFj54bUAPwitR6o5Pwgu6d4pKsrcT7md
	uZbMqcjA6ayyFmn8SIz2feAEiBffiRHLizovyMVRyg9K7WeeS9i/uTHO7ahVlgRhPbm3RcYXLfa
	8XcVC2Jlx31rDgtBPr/xEb+qf/A1OuuE89Ga8QyVh4Ta7i9aTXeZc35atJHu9rPU1vXNbUl91KG
	eWK/v045GsP6VcPDQsPte03gV+s7WlI+oYG+Plf3nJBiCMMjcrUvL8wLeUaIgIAOmtrgE+PabtJ
	TG7HA==
X-Received: by 2002:a05:600c:4445:b0:483:a27e:6706 with SMTP id 5b1f17b1804b1-48526922533mr256104605e9.9.1773134973989;
        Tue, 10 Mar 2026 02:29:33 -0700 (PDT)
Received: from alchark-surface.localdomain (bba-86-98-192-109.alshamil.net.ae. [86.98.192.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48529f019a4sm104214285e9.12.2026.03.10.02.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 02:29:33 -0700 (PDT)
From: Alexey Charkov <alchark@flipper.net>
Date: Tue, 10 Mar 2026 13:28:34 +0400
Subject: [PATCH v3 10/11] regulator: bq257xx: Add support for BQ25792
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260310-bq25792-v3-10-02f8e232d63b@flipper.net>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5084; i=alchark@flipper.net;
 h=from:subject:message-id; bh=Yas/YH/+WHqmaG1+9dU+ZXDZsf5koKP+4O5pY6ZHHVo=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWSuf5LUcM/2idZDNp71kkv/7AxRl4vQ23+X74pO2RLOR
 a91Xjru7ZjIwiDGxWAppsgy99sS26lGfLN2eXh8hZnDygQyRFqkgQEIWBj4chPzSo10jPRMtQ31
 DA11jHWMGLg4BWCqD61n+Cvfx+d/+i9P/1uJ7zHXZvGeWNNnKcOj0Vfaw6Sdlr7/QSwjw9uw7Ia
 IbdpPDkw4t32XYPixNSZamlyzN28V2/jqQVnlUU4A
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-Rspamd-Queue-Id: 10B9C24889B
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
	TAGGED_FROM(0.00)[bounces-273407-lists,devicetree=lfdr.de];
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
index 0bb58ab4b8d4..61911ac8613a 100644
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
+	struct bq257xx_plat *plat = dev_get_platdata(dev);
 	struct bq257xx_reg_data *pdata;
 	struct device_node *np = dev->of_node;
 	struct regulator_config cfg = {};
@@ -153,7 +239,17 @@ static int bq257xx_regulator_probe(struct platform_device *pdev)
 	if (!pdata)
 		return -ENOMEM;
 
-	pdata->desc = bq25703_vbus_desc;
+	switch (plat->type) {
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


