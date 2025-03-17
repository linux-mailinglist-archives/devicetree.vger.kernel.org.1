Return-Path: <devicetree+bounces-158101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04616A64998
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 85591188E840
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 10:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2333241105;
	Mon, 17 Mar 2025 10:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="kHFGfe8r";
	dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b="QnPyaVPS"
X-Original-To: devicetree@vger.kernel.org
Received: from mg.richtek.com (mg.richtek.com [220.130.44.152])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E652B23FC4B;
	Mon, 17 Mar 2025 10:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.130.44.152
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742206688; cv=none; b=aJ3ny7c6RJ7WibVmpHt+7A9UuX7nykczqhwu2xE5l2OH1pNZOnqGxdh6wTigsfV+c6/x+IEegiFraWtE8aR6plvOzjZ+An2xnK9Jw4iha5TvjdLKtd+YbNOkez0QRYsfvYW6gPOCt8/DTnhQxf12GHoS+TKVFxjO4f8ywXYu2bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742206688; c=relaxed/simple;
	bh=FVZ64VaHCWLjK3snr2V8Wl9AqcuLIXwhgGw6zIXvcKU=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=l5dApWjVjuakZtUButqvfEdrb8JvClZ8RDDEyuU6o/3k4FgU0agwYUJiXBgn2F/F6PzeQBfA2AU5n3gpjjXdANu0pH/vTfOkycAbn8Cva5Hbw+YonZKOEWYZ3pOwsurTsy/iquxBlD+TbXawoQ8eoHMIzHj8mULOzkmcHjDIn7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com; spf=pass smtp.mailfrom=richtek.com; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=kHFGfe8r; dkim=pass (2048-bit key) header.d=richtek.com header.i=@richtek.com header.b=QnPyaVPS; arc=none smtp.client-ip=220.130.44.152
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=richtek.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=richtek.com
X-MailGates: (SIP:2,PASS,NONE)(compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1742206683;
	bh=/KwruWy8kFCC0Vy7w8yf1jkvdwlV4EhT5B+RzjYI5XM=; l=9570;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=kHFGfe8rbZE+Rb+w1JL8e7+5xPS9lYQMA1Bwnyvxq6vYLsoAIAlvTtWhcf2sszsSH
	 a20+FQJOA01L4iKqPod8daFcq9NSbgQYWpZ7ocJ9FZiFqhsszXpeRmPGt68KrfoxlJ
	 HacO1zPJHmlY73SYqnmRRboDcRYg6OGJIfYCXSYjpOq+dYVfCvZ0VifrNqv0uIfJJC
	 PnIpISFTqK/38FDEol3QSmEjVM4aDCrSnOQONQThobqX2U4Pxzb5TIeUHSNxK3r5t9
	 nMrIdch8MEyCQpl2KC38v3T64SgUNgv7ZyVpIHgm4utFunlc9D+2GJ0FCb4mOP/SJl
	 ci/2gNGun3TXQ==
Received: from 192.168.8.21
	by mg.richtek.com with MailGates ESMTP Server V3.0(1128085:0:AUTH_RELAY)
	(envelope-from <prvs=1170D5C545=cy_huang@richtek.com>); Mon, 17 Mar 2025 18:17:55 +0800 (CST)
X-MailGates: (compute_score:DELIVER,40,3)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=richtek.com;
	s=richtek; t=1742206675;
	bh=/KwruWy8kFCC0Vy7w8yf1jkvdwlV4EhT5B+RzjYI5XM=; l=9570;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=QnPyaVPSe8VEwNYBvsqsuY/sj0CzQKruu0iJX6nDkzY/FEufBvmNlIk8DL7J3hHCt
	 vM9TyEuCMeGJwp5k8bxtzlR4CgfuSSy8mb4USKKU6yW2SLZD0xuKQVFokXh/E7Vu9k
	 qaEbplr8/sPFf1xDIh4ItZi0cendVJVFVsikeMojMTAChDHLqC4tenUb7/MBLs5d6I
	 J4kbCsA04I8drbRa1f83cUw5tBjza+Ie9WkRN2ikFWnaNjkuNUtf9F7ntyrErl/6IT
	 hUGJ3zY99CIPTz2ScyF3uBUmmdQ+VXd78yDxtWHOdqW+DokkHIvMtg0XG9xOZX0wOU
	 /uz/tjXxpJ61Q==
Received: from 192.168.10.46
	by mg.richtek.com with MailGates ESMTPS Server V6.0(3810274:0:AUTH_RELAY)
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
Subject: [PATCH 2/3] regulator: rtq2208: Fix the LDO DVS capability
Date: Mon, 17 Mar 2025 18:06:22 +0800
Message-ID: <dae0321b710518ce32260336e3cc9caf2ba84215.1742204502.git.cy_huang@richtek.com>
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

Use the hidden bank register to identify whether the LDO voltage is
fixed or variable. Remove the read of 'richtek,fixed-microvolt'
property.

Fixes: af1296d15d89 ("regulator: rtq2208: Add fixed LDO VOUT property and check that matches the constraints")
Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
---
Hi,

From the current design, if LDO node is not declared, this will cause
driver probe fail (-22) for the check 'desc->ops' in regulator register
This seems the buggy code. Instead of it, use the hidden RG to check
whether LDO is fixed or not.

Except this, for LDO part, it already used 'of_regulator_match', but the
regulator_constraint seems allocated twice, one is in 'of_regulator_match',
another is in 'regulator_register'. This is also tricky.
---
 drivers/regulator/rtq2208-regulator.c | 133 +++++++++++---------------
 1 file changed, 55 insertions(+), 78 deletions(-)

diff --git a/drivers/regulator/rtq2208-regulator.c b/drivers/regulator/rtq2208-regulator.c
index 2a2f6a54de11..9cde7181b0f0 100644
--- a/drivers/regulator/rtq2208-regulator.c
+++ b/drivers/regulator/rtq2208-regulator.c
@@ -28,6 +28,8 @@
 #define RTQ2208_REG_LDO2_CFG			0xC1
 #define RTQ2208_REG_LDO_DVS_CTRL		0xD0
 #define RTQ2208_REG_HIDDEN_BUCKPH		0x55
+#define RTQ2208_REG_HIDDEN_LDOCFG0		0x8F
+#define RTQ2208_REG_HIDDEN_LDOCFG1		0x96
 #define RTQ2208_REG_HIDDEN0			0xFE
 #define RTQ2208_REG_HIDDEN1			0xFF
 
@@ -50,6 +52,9 @@
 #define RTQ2208_LDO2_VOSEL_SD_MASK		BIT(7)
 #define RTQ2208_MASK_BUCKPH_GROUP1		GENMASK(6, 4)
 #define RTQ2208_MASK_BUCKPH_GROUP2		GENMASK(2, 0)
+#define RTQ2208_MASK_LDO2_OPT0			BIT(7)
+#define RTQ2208_MASK_LDO2_OPT1			BIT(6)
+#define RTQ2208_MASK_LDO1_FIXED			BIT(6)
 
 /* Size */
 #define RTQ2208_VOUT_MAXNUM			256
@@ -250,11 +255,6 @@ static const unsigned int rtq2208_ldo_volt_table[] = {
 	3300000,
 };
 
-static struct of_regulator_match rtq2208_ldo_match[] = {
-	{.name = "ldo2", },
-	{.name = "ldo1", },
-};
-
 static unsigned int rtq2208_of_map_mode(unsigned int mode)
 {
 	switch (mode) {
@@ -349,59 +349,6 @@ static irqreturn_t rtq2208_irq_handler(int irqno, void *devid)
 	return IRQ_HANDLED;
 }
 
-static int rtq2208_of_get_ldo_dvs_ability(struct device *dev)
-{
-	struct device_node *np;
-	struct of_regulator_match *match;
-	struct regulator_desc *desc;
-	struct regulator_init_data *init_data;
-	u32 fixed_uV;
-	int ret, i;
-
-	if (!dev->of_node)
-		return -ENODEV;
-
-	np = of_get_child_by_name(dev->of_node, "regulators");
-	if (!np)
-		np = dev->of_node;
-
-	ret = of_regulator_match(dev, np, rtq2208_ldo_match, ARRAY_SIZE(rtq2208_ldo_match));
-
-	of_node_put(np);
-
-	if (ret < 0)
-		return ret;
-
-	for (i = 0; i < ARRAY_SIZE(rtq2208_ldo_match); i++) {
-		match = rtq2208_ldo_match + i;
-		init_data = match->init_data;
-		desc = (struct regulator_desc *)match->desc;
-
-		if (!init_data || !desc)
-			continue;
-
-		/* specify working fixed voltage if the propery exists */
-		ret = of_property_read_u32(match->of_node, "richtek,fixed-microvolt", &fixed_uV);
-
-		if (!ret) {
-			if (fixed_uV != init_data->constraints.min_uV ||
-				fixed_uV != init_data->constraints.max_uV)
-				return -EINVAL;
-			desc->n_voltages = 1;
-			desc->fixed_uV = fixed_uV;
-			desc->fixed_uV = init_data->constraints.min_uV;
-			desc->ops = &rtq2208_regulator_ldo_fix_ops;
-		} else {
-			desc->n_voltages = ARRAY_SIZE(rtq2208_ldo_volt_table);
-			desc->volt_table = rtq2208_ldo_volt_table;
-			desc->ops = &rtq2208_regulator_ldo_adj_ops;
-		}
-	}
-
-	return 0;
-}
-
-
 #define BUCK_INFO(_name, _id)						\
 {									\
 	.name = _name,							\
@@ -429,9 +376,11 @@ static const struct linear_range rtq2208_vout_range[] = {
 	REGULATOR_LINEAR_RANGE(1310000, 181, 255, 10000),
 };
 
-static void rtq2208_init_regulator_desc(struct rtq2208_regulator_desc *rdesc, int mtp_sel, int idx)
+static void rtq2208_init_regulator_desc(struct rtq2208_regulator_desc *rdesc, int mtp_sel, int idx,
+					unsigned int ldo1_fixed, unsigned int ldo2_fixed)
 {
 	struct regulator_desc *desc;
+	unsigned int fixed_uV;
 	static const struct {
 		char *name;
 		int base;
@@ -467,7 +416,8 @@ static void rtq2208_init_regulator_desc(struct rtq2208_regulator_desc *rdesc, in
 
 	rdesc->mode_mask = RTQ2208_BUCK_NRMODE_MASK;
 
-	if (idx >= RTQ2208_BUCK_B && idx <= RTQ2208_BUCK_E) {
+	switch (idx) {
+	case RTQ2208_BUCK_B ... RTQ2208_BUCK_E:
 		/* init buck desc */
 		desc->ops = &rtq2208_regulator_buck_ops;
 		desc->vsel_reg = curr_info->base + VSEL_SHIFT(mtp_sel);
@@ -485,7 +435,19 @@ static void rtq2208_init_regulator_desc(struct rtq2208_regulator_desc *rdesc, in
 		rdesc->suspend_config_reg = BUCK_RG_SHIFT(curr_info->base, 4);
 		rdesc->suspend_enable_mask = RTQ2208_BUCK_EN_STR_MASK;
 		rdesc->suspend_mode_mask = RTQ2208_BUCK_STRMODE_MASK;
-	} else {
+		break;
+	default:
+		fixed_uV = idx == RTQ2208_LDO2 ? ldo2_fixed : ldo1_fixed;
+		if (fixed_uV) {
+			desc->n_voltages = 1;
+			desc->fixed_uV = fixed_uV;
+			desc->ops = &rtq2208_regulator_ldo_fix_ops;
+		} else {
+			desc->n_voltages = ARRAY_SIZE(rtq2208_ldo_volt_table);
+			desc->volt_table = rtq2208_ldo_volt_table;
+			desc->ops = &rtq2208_regulator_ldo_adj_ops;
+		}
+
 		/* init ldo desc */
 		desc->active_discharge_reg = RTQ2208_REG_LDO_DVS_CTRL;
 		desc->active_discharge_on = curr_info->dis_on;
@@ -495,13 +457,15 @@ static void rtq2208_init_regulator_desc(struct rtq2208_regulator_desc *rdesc, in
 
 		rdesc->suspend_config_reg = curr_info->base;
 		rdesc->suspend_enable_mask = RTQ2208_LDO_EN_STR_MASK;
+		break;
 	}
 }
 
 static int rtq2208_parse_regulator_dt_data(int n_regulator, const unsigned int *regulator_idx_table,
-		struct rtq2208_regulator_desc *rdesc[RTQ2208_LDO_MAX], struct device *dev)
+		struct rtq2208_regulator_desc *rdesc[RTQ2208_LDO_MAX], struct device *dev,
+		unsigned int ldo1_fixed, unsigned int ldo2_fixed)
 {
-	int mtp_sel, i, idx, ret;
+	int mtp_sel, i, idx;
 
 	/* get mtp_sel0 or mtp_sel1 */
 	mtp_sel = device_property_read_bool(dev, "richtek,mtp-sel-high");
@@ -513,29 +477,21 @@ static int rtq2208_parse_regulator_dt_data(int n_regulator, const unsigned int *
 		if (!rdesc[i])
 			return -ENOMEM;
 
-		rtq2208_init_regulator_desc(rdesc[i], mtp_sel, idx);
-
-		/* init ldo dvs ability */
-		if (idx >= RTQ2208_LDO2)
-			rtq2208_ldo_match[idx - RTQ2208_LDO2].desc = &rdesc[i]->desc;
+		rtq2208_init_regulator_desc(rdesc[i], mtp_sel, idx, ldo1_fixed, ldo2_fixed);
 	}
 
-	/* init ldo fixed_uV */
-	ret = rtq2208_of_get_ldo_dvs_ability(dev);
-	if (ret)
-		return dev_err_probe(dev, ret, "Failed to get ldo fixed_uV\n");
-
 	return 0;
 
 }
 
-static int rtq2208_regulator_check(struct device *dev, int *num,
-				int *regulator_idx_table, unsigned int *buck_masks)
+static int rtq2208_regulator_check(struct device *dev, int *num, int *regulator_idx_table,
+				   unsigned int *buck_masks, unsigned int *ldo1_fixed_uV,
+				   unsigned int *ldo2_fixed_uV)
 {
 	struct regmap *regmap = dev_get_regmap(dev, NULL);
 	bool rtq2208_used_table[RTQ2208_LDO_MAX] = {0};
 	u8 entry_key[] = { 0x69, 0x01 };
-	unsigned int buck_phase;
+	unsigned int buck_phase, ldo_cfg0, ldo_cfg1;
 	int i, ret;
 	u8 mask;
 
@@ -547,6 +503,14 @@ static int rtq2208_regulator_check(struct device *dev, int *num,
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to read buck phase configuration\n");
 
+	ret = regmap_read(regmap, RTQ2208_REG_HIDDEN_LDOCFG0, &ldo_cfg0);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to read ldo cfg0\n");
+
+	ret = regmap_read(regmap, RTQ2208_REG_HIDDEN_LDOCFG1, &ldo_cfg1);
+	if (ret)
+		return dev_err_probe(dev, ret, "Failed to read ldo cfg1\n");
+
 	ret = regmap_write(regmap, RTQ2208_REG_HIDDEN1, 0x00);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to exit hidden page\n");
@@ -593,6 +557,16 @@ static int rtq2208_regulator_check(struct device *dev, int *num,
 		break;
 	}
 
+	*ldo1_fixed_uV = FIELD_GET(RTQ2208_MASK_LDO1_FIXED, ldo_cfg1) ? 1200000 : 0;
+
+	if (!FIELD_GET(RTQ2208_MASK_LDO2_OPT0, ldo_cfg0) &&
+	    !FIELD_GET(RTQ2208_MASK_LDO2_OPT1, ldo_cfg1))
+		*ldo2_fixed_uV = 0;
+	else if (FIELD_GET(RTQ2208_MASK_LDO2_OPT1, ldo_cfg1))
+		*ldo2_fixed_uV = 900000;
+	else
+		*ldo2_fixed_uV = 1200000;
+
 	/* By default, LDO1 & LDO2 are always used */
 	rtq2208_used_table[RTQ2208_LDO1] = rtq2208_used_table[RTQ2208_LDO2] = true;
 
@@ -626,6 +600,7 @@ static int rtq2208_probe(struct i2c_client *i2c)
 	int i, ret = 0, idx, n_regulator = 0;
 	unsigned int regulator_idx_table[RTQ2208_LDO_MAX],
 		     buck_masks[RTQ2208_BUCK_NUM_IRQ_REGS] = {0x33, 0x33, 0x33, 0x33, 0x33};
+	unsigned int ldo1_fixed_uV, ldo2_fixed_uV;
 
 	rdev_map = devm_kzalloc(dev, sizeof(struct rtq2208_rdev_map), GFP_KERNEL);
 	if (!rdev_map)
@@ -636,7 +611,8 @@ static int rtq2208_probe(struct i2c_client *i2c)
 		return dev_err_probe(dev, PTR_ERR(regmap), "Failed to allocate regmap\n");
 
 	/* get needed regulator */
-	ret = rtq2208_regulator_check(dev, &n_regulator, regulator_idx_table, buck_masks);
+	ret = rtq2208_regulator_check(dev, &n_regulator, regulator_idx_table, buck_masks,
+				      &ldo1_fixed_uV, &ldo2_fixed_uV);
 	if (ret)
 		return dev_err_probe(dev, ret, "Failed to check used regulators\n");
 
@@ -646,7 +622,8 @@ static int rtq2208_probe(struct i2c_client *i2c)
 	cfg.dev = dev;
 
 	/* init regulator desc */
-	ret = rtq2208_parse_regulator_dt_data(n_regulator, regulator_idx_table, rdesc, dev);
+	ret = rtq2208_parse_regulator_dt_data(n_regulator, regulator_idx_table, rdesc, dev,
+					      ldo1_fixed_uV, ldo2_fixed_uV);
 	if (ret)
 		return ret;
 
-- 
2.34.1


