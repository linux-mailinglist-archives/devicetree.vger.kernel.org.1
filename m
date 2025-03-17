Return-Path: <devicetree+bounces-158100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A57A64997
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:23:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1C3C18900FF
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 10:21:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F527238D33;
	Mon, 17 Mar 2025 10:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="C3fmwam9";
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="MOpOnoMC"
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F97D2356C1;
	Mon, 17 Mar 2025 10:18:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.130.44.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742206687; cv=none; b=GAsykrMNsLe7ODYKI6Sqk9WMmGB1jBTWzK1O0rhzd3X9uNKOwGr9vhC7FQeYTiBTypBqUMqTrxqObYiepQ7XKREkDMlVfNWsEtdnGYIZJ2NhAWCt+y4CCRUPs+yypfABObW6Xtb6w/6OFrXgMa+//IdsC9/NuMwFBLisWy+fR/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742206687; c=relaxed/simple;
	bh=KGqJ2mcmedj8OvxvYNV96mrPp8SFM5FTD/g72+2VlGA=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nmgA4yYYGiWpnHIHw4Kjw/oLg9QOdJ1zkVjdDBTu6VLbWnN0Sf/kBgkzI30mokvy2YRPa8FO6Xrya7KuMahbSjX1PRDEmLTh4KknfrtnbdsxtMggWUkt4iJAJ+ctW7aXg+sy9K/hnvHcqoncevRBg0gGpUzQUkhRHlBsRI+e8ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=C3fmwam9; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=MOpOnoMC; arc=none smtp.client-ip=220.130.44.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1742206682;
	bh=GibFCFYN9j2dazAKWEfxe9cuNWB3nUe4wO2Cz38jMcQ=; l=4724;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=C3fmwam9aqtDGAaNYqEjGr4CBoybdiweI+VfU30QPNYwE9oYnmvcKaAAIIPZSL9bF
	 7S2WAVf5IyQF5/j2e02gYoLhnxUbKftJyYabL7PsaPHbB6k/RkFkSMIa1EEKUbMhR+
	 QUIzbG0Uxir57IuC0snRfkEO7NJ73MYjHXnSHcQn8XPTuTh9ogJjrFgeoatj2QR3ed
	 t1mLgzFRdKTsLGi6m7oBbasOUAvKhCjnRoUaUIIjkmYYgIl4eAChzgb1I1i+RsbAG8
	 Jz/7BIAp4Wj/NsqPnDxdsY7mn5nQvvuoR1xphJLjhTt2g8pQR6eMwFnFKihVRJQom8
	 jVaKUZMmte/fQ==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128080:0:AUTH_RELAY)
	(envelope-from <prvs=1170D5C545=cy_huang@richtek.com>); Mon, 17 Mar 2025 18:17:55 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1742206675;
	bh=GibFCFYN9j2dazAKWEfxe9cuNWB3nUe4wO2Cz38jMcQ=; l=4724;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=MOpOnoMCdHdyxQgBMmQHMow7oh1wtsyg5R8kYd88grBa7G+VxeRE8VEAPLq3ZCvG3
	 zueA83NUVcz3p5RgA5QF3KmU/vswdAxyngTd4zSXBu01ch0OCJKsOgjNYKG/vuYuE7
	 d0S0GzhYPshK64ch8i4xnqfoRwbiwWR8dWix6lra0WOFMELO+HeF98nnA79aYdKm1d
	 8JqnEiYBdFN/+20fmhiQ640pX+l0MZ8zGo0HD5Ji7t/4TuSmfGkbXXn/nAoY/aY+bm
	 jjWR6BPRo0W5K1pk6K1leiAzLXdo+6t92zhKdwKF9xlrYIbIzwPhTQL/dMc+s2BVTq
	 JdB4/WAeoZLqg==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(3810286:1:AUTH_RELAY)
	(envelope-from <cy_huang@richtek.com>)
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256/256); Mon, 17 Mar 2025 18:05:18 +0800 (CST)
Received: from ex4.rt.l (192.168.10.47) by ex3.rt.l (192.168.10.46) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.11; Mon, 17 Mar
 2025 18:05:17 +0800
Received: from git-send.richtek.com (192.168.10.154) by ex4.rt.l
 (192.168.10.45) with Microsoft SMTP Server id 15.2.1544.11 via Frontend
 Transport; Mon, 17 Mar 2025 18:05:17 +0800
From: <cy_huang@richtek.com>
To: Mark Brown <broonie@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
CC: Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	ChiYuan Huang <cy_huang@richtek.com>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: [PATCH 1/3] regulator: rtq2208: Fix incorrect buck converter phase mapping
Date: Mon, 17 Mar 2025 18:06:21 +0800
Message-ID: <ae3245aa713f76000dbd20b4ad6f66d30611d3b8.1742204502.git.cy_huang@richtek.com>
X-Mailer: git-send-email 2.43.5
In-Reply-To: <cover.1742204502.git.cy_huang@richtek.com>
References: <cover.1742204502.git.cy_huang@richtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

From: ChiYuan Huang <cy_huang@richtek.com>

Use the hidden bank RG to get the correct buck converter phase mapping.

Fixes: 85a11f55621a ("regulator: rtq2208: Add Richtek RTQ2208 SubPMIC")
Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
 drivers/regulator/rtq2208-regulator.c | 89 +++++++++++++++++++++------
 1 file changed, 71 insertions(+), 18 deletions(-)

diff --git a/drivers/regulator/rtq2208-regulator.c b/drivers/regulator/rtq2208-regulator.c
index 5925fa7a9a06..2a2f6a54de11 100644
--- a/drivers/regulator/rtq2208-regulator.c
+++ b/drivers/regulator/rtq2208-regulator.c
@@ -27,6 +27,9 @@
 #define RTQ2208_REG_LDO1_CFG			0xB1
 #define RTQ2208_REG_LDO2_CFG			0xC1
 #define RTQ2208_REG_LDO_DVS_CTRL		0xD0
+#define RTQ2208_REG_HIDDEN_BUCKPH		0x55
+#define RTQ2208_REG_HIDDEN0			0xFE
+#define RTQ2208_REG_HIDDEN1			0xFF
 
 /* Mask */
 #define RTQ2208_BUCK_NR_MTP_SEL_MASK		GENMASK(7, 0)
@@ -45,6 +48,8 @@
 #define RTQ2208_LDO1_VOSEL_SD_MASK		BIT(5)
 #define RTQ2208_LDO2_DISCHG_EN_MASK		BIT(6)
 #define RTQ2208_LDO2_VOSEL_SD_MASK		BIT(7)
+#define RTQ2208_MASK_BUCKPH_GROUP1		GENMASK(6, 4)
+#define RTQ2208_MASK_BUCKPH_GROUP2		GENMASK(2, 0)
 
 /* Size */
 #define RTQ2208_VOUT_MAXNUM			256
@@ -524,27 +529,75 @@ static int rtq2208_parse_regulator_dt_data(int n_regulator, const unsigned int *
 
 }
 
-/** different slave address corresponds different used bucks
- * slave address 0x10: BUCK[BCA FGE]
- * slave address 0x20: BUCK[BC FGHE]
- * slave address 0x40: BUCK[C G]
- */
-static int rtq2208_regulator_check(int slave_addr, int *num,
+static int rtq2208_regulator_check(struct device *dev, int *num,
 				int *regulator_idx_table, unsigned int *buck_masks)
 {
-	static bool rtq2208_used_table[3][RTQ2208_LDO_MAX] = {
-		/* BUCK[BCA FGE], LDO[12] */
-		{1, 1, 0, 1, 1, 1, 0, 1, 1, 1},
-		/* BUCK[BC FGHE], LDO[12]*/
-		{1, 1, 0, 0, 1, 1, 1, 1, 1, 1},
-		/* BUCK[C G], LDO[12] */
-		{0, 1, 0, 0, 0, 1, 0, 0, 1, 1},
-	};
-	int i, idx = ffs(slave_addr >> 4) - 1;
+	struct regmap *regmap = dev_get_regmap(dev, NULL);
+	bool rtq2208_used_table[RTQ2208_LDO_MAX] = {0};
+	u8 entry_key[] = { 0x69, 0x01 };
+	unsigned int buck_phase;
+	int i, ret;
 	u8 mask;
 
+	ret = regmap_raw_write(regmap, RTQ2208_REG_HIDDEN0, entry_key, ARRAY_SIZE(entry_key));
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to enter hidden page\n");
+
+	ret = regmap_read(regmap, RTQ2208_REG_HIDDEN_BUCKPH, &buck_phase);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to read buck phase configuration\n");
+
+	ret = regmap_write(regmap, RTQ2208_REG_HIDDEN1, 0x00);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to exit hidden page\n");
+
+	dev_info(dev, "BUCK Phase 0x%x\n", buck_phase);
+	/*
+	 * Use buck phase configuration to assign used table mask
+	 *                                 GROUP1       GROUP2
+	 * 0      -> 2P + 2P                BC           FG
+	 * 1      -> 2P + 1P + 1P           BCA          FGE
+	 * 2      -> 1P + 1P + 1P + 1P      BCDA         FGHE
+	 * 3      -> 3P + 1P                BC           FG
+	 * others -> 4P                     C            G
+	 */
+	switch (FIELD_GET(RTQ2208_MASK_BUCKPH_GROUP1, buck_phase)) {
+	case 2:
+		rtq2208_used_table[RTQ2208_BUCK_D] = true;
+		fallthrough;
+	case 1:
+		rtq2208_used_table[RTQ2208_BUCK_A] = true;
+		fallthrough;
+	case 0:
+	case 3:
+		rtq2208_used_table[RTQ2208_BUCK_B] = true;
+		fallthrough;
+	default:
+		rtq2208_used_table[RTQ2208_BUCK_C] = true;
+		break;
+	}
+
+	switch (FIELD_GET(RTQ2208_MASK_BUCKPH_GROUP2, buck_phase)) {
+	case 2:
+		rtq2208_used_table[RTQ2208_BUCK_F] = true;
+		fallthrough;
+	case 1:
+		rtq2208_used_table[RTQ2208_BUCK_E] = true;
+		fallthrough;
+	case 0:
+	case 3:
+		rtq2208_used_table[RTQ2208_BUCK_H] = true;
+		fallthrough;
+	default:
+		rtq2208_used_table[RTQ2208_BUCK_G] = true;
+		break;
+	}
+
+	/* By default, LDO1 & LDO2 are always used */
+	rtq2208_used_table[RTQ2208_LDO1] = rtq2208_used_table[RTQ2208_LDO2] = true;
+
 	for (i = 0; i < RTQ2208_LDO_MAX; i++) {
-		if (!rtq2208_used_table[idx][i])
+		if (!rtq2208_used_table[i])
 			continue;
 
 		regulator_idx_table[(*num)++] = i;
@@ -559,7 +612,7 @@ static int rtq2208_regulator_check(int slave_addr, int *num,
 static const struct regmap_config rtq2208_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
-	.max_register = 0xEF,
+	.max_register = 0xFF,
 };
 
 static int rtq2208_probe(struct i2c_client *i2c)
@@ -583,7 +636,7 @@ static int rtq2208_probe(struct i2c_client *i2c)
 		return dev_err_probe(dev, PTR_ERR(regmap), "Failed to allocate regmap\n");
 
 	/* get needed regulator */
-	ret = rtq2208_regulator_check(i2c->addr, &n_regulator, regulator_idx_table, buck_masks);
+	ret = rtq2208_regulator_check(dev, &n_regulator, regulator_idx_table, buck_masks);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to check used regulators\n");
 
-- 
2.34.1


