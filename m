Return-Path: <devicetree+bounces-2329-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9BA7AA910
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 41D641F220D8
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 06:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2005015AC0;
	Fri, 22 Sep 2023 06:28:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55E61156FD
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 06:28:56 +0000 (UTC)
Received: from ex01.ufhost.com (ex01.ufhost.com [61.152.239.75])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6732CCC1;
	Thu, 21 Sep 2023 23:28:53 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 1A69524E28E;
	Fri, 22 Sep 2023 14:28:38 +0800 (CST)
Received: from EXMBX168.cuchost.com (172.16.6.78) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Fri, 22 Sep
 2023 14:28:38 +0800
Received: from williamqiu-virtual-machine.starfivetech.com (171.223.208.138)
 by EXMBX168.cuchost.com (172.16.6.78) with Microsoft SMTP Server (TLS) id
 15.0.1497.42; Fri, 22 Sep 2023 14:28:36 +0800
From: William Qiu <william.qiu@starfivetech.com>
To: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-mmc@vger.kernel.org>
CC: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh+dt@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, "Palmer
 Dabbelt" <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, William Qiu
	<william.qiu@starfivetech.com>
Subject: [PATCH v3 2/3] mmc: starfive: Change tuning implementation
Date: Fri, 22 Sep 2023 14:28:33 +0800
Message-ID: <20230922062834.39212-3-william.qiu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922062834.39212-1-william.qiu@starfivetech.com>
References: <20230922062834.39212-1-william.qiu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [171.223.208.138]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX168.cuchost.com
 (172.16.6.78)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Before, we used syscon to achieve tuning, but the actual measurement
showed little effect, so the tuning implementation was modified here,
and it was realized by reading and writing the UHS_REG_EXT register.

Signed-off-by: William Qiu <william.qiu@starfivetech.com>
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 drivers/mmc/host/dw_mmc-starfive.c | 137 +++++++++--------------------
 1 file changed, 40 insertions(+), 97 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-starfive.c b/drivers/mmc/host/dw_mmc=
-starfive.c
index fd05a648a8bb..b4d81ef0f3af 100644
--- a/drivers/mmc/host/dw_mmc-starfive.c
+++ b/drivers/mmc/host/dw_mmc-starfive.c
@@ -5,6 +5,7 @@
  * Copyright (c) 2022 StarFive Technology Co., Ltd.
  */
=20
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
@@ -20,13 +21,7 @@
 #define ALL_INT_CLR		0x1ffff
 #define MAX_DELAY_CHAIN		32
=20
-struct starfive_priv {
-	struct device *dev;
-	struct regmap *reg_syscon;
-	u32 syscon_offset;
-	u32 syscon_shift;
-	u32 syscon_mask;
-};
+#define STARFIVE_SMPL_PHASE     GENMASK(20, 16)
=20
 static void dw_mci_starfive_set_ios(struct dw_mci *host, struct mmc_ios =
*ios)
 {
@@ -44,117 +39,65 @@ static void dw_mci_starfive_set_ios(struct dw_mci *h=
ost, struct mmc_ios *ios)
 	}
 }
=20
+static void dw_mci_starfive_set_sample_phase(struct dw_mci *host, u32 sm=
pl_phase)
+{
+	/* change driver phase and sample phase */
+	u32 reg_value =3D mci_readl(host, UHS_REG_EXT);
+
+	/* In UHS_REG_EXT, only 5 bits valid in DRV_PHASE and SMPL_PHASE */
+	reg_value &=3D ~STARFIVE_SMPL_PHASE;
+	reg_value |=3D FIELD_PREP(STARFIVE_SMPL_PHASE, smpl_phase);
+	mci_writel(host, UHS_REG_EXT, reg_value);
+
+	/* We should delay 1ms wait for timing setting finished. */
+	mdelay(1);
+}
+
 static int dw_mci_starfive_execute_tuning(struct dw_mci_slot *slot,
 					     u32 opcode)
 {
 	static const int grade  =3D MAX_DELAY_CHAIN;
 	struct dw_mci *host =3D slot->host;
-	struct starfive_priv *priv =3D host->priv;
-	int rise_point =3D -1, fall_point =3D -1;
-	int err, prev_err =3D 0;
-	int i;
-	bool found =3D 0;
-	u32 regval;
-
-	/*
-	 * Use grade as the max delay chain, and use the rise_point and
-	 * fall_point to ensure the best sampling point of a data input
-	 * signals.
-	 */
-	for (i =3D 0; i < grade; i++) {
-		regval =3D i << priv->syscon_shift;
-		err =3D regmap_update_bits(priv->reg_syscon, priv->syscon_offset,
-						priv->syscon_mask, regval);
-		if (err)
-			return err;
+	int smpl_phase, smpl_raise =3D -1, smpl_fall =3D -1;
+	int ret;
+
+	for (smpl_phase =3D 0; smpl_phase < grade; smpl_phase++) {
+		dw_mci_starfive_set_sample_phase(host, smpl_phase);
 		mci_writel(host, RINTSTS, ALL_INT_CLR);
=20
-		err =3D mmc_send_tuning(slot->mmc, opcode, NULL);
-		if (!err)
-			found =3D 1;
+		ret =3D mmc_send_tuning(slot->mmc, opcode, NULL);
=20
-		if (i > 0) {
-			if (err && !prev_err)
-				fall_point =3D i - 1;
-			if (!err && prev_err)
-				rise_point =3D i;
+		if (!ret && smpl_raise < 0) {
+			smpl_raise =3D smpl_phase;
+		} else if (ret && smpl_raise >=3D 0) {
+			smpl_fall =3D smpl_phase - 1;
+			break;
 		}
-
-		if (rise_point !=3D -1 && fall_point !=3D -1)
-			goto tuning_out;
-
-		prev_err =3D err;
-		err =3D 0;
 	}
=20
-tuning_out:
-	if (found) {
-		if (rise_point =3D=3D -1)
-			rise_point =3D 0;
-		if (fall_point =3D=3D -1)
-			fall_point =3D grade - 1;
-		if (fall_point < rise_point) {
-			if ((rise_point + fall_point) >
-			    (grade - 1))
-				i =3D fall_point / 2;
-			else
-				i =3D (rise_point + grade - 1) / 2;
-		} else {
-			i =3D (rise_point + fall_point) / 2;
-		}
-
-		regval =3D i << priv->syscon_shift;
-		err =3D regmap_update_bits(priv->reg_syscon, priv->syscon_offset,
-						priv->syscon_mask, regval);
-		if (err)
-			return err;
-		mci_writel(host, RINTSTS, ALL_INT_CLR);
+	if (smpl_phase >=3D grade)
+		smpl_fall =3D grade - 1;
=20
-		dev_info(host->dev, "Found valid delay chain! use it [delay=3D%d]\n", =
i);
-	} else {
+	if (smpl_raise < 0) {
+		smpl_phase =3D 0;
 		dev_err(host->dev, "No valid delay chain! use default\n");
-		err =3D -EINVAL;
+		ret =3D -EINVAL;
+		goto out;
 	}
=20
-	mci_writel(host, RINTSTS, ALL_INT_CLR);
-	return err;
-}
-
-static int dw_mci_starfive_parse_dt(struct dw_mci *host)
-{
-	struct of_phandle_args args;
-	struct starfive_priv *priv;
-	int ret;
-
-	priv =3D devm_kzalloc(host->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
+	smpl_phase =3D (smpl_raise + smpl_fall) / 2;
+	dev_dbg(host->dev, "Found valid delay chain! use it [delay=3D%d]\n", sm=
pl_phase);
+	ret =3D 0;
=20
-	ret =3D of_parse_phandle_with_fixed_args(host->dev->of_node,
-						"starfive,sysreg", 3, 0, &args);
-	if (ret) {
-		dev_err(host->dev, "Failed to parse starfive,sysreg\n");
-		return -EINVAL;
-	}
-
-	priv->reg_syscon =3D syscon_node_to_regmap(args.np);
-	of_node_put(args.np);
-	if (IS_ERR(priv->reg_syscon))
-		return PTR_ERR(priv->reg_syscon);
-
-	priv->syscon_offset =3D args.args[0];
-	priv->syscon_shift  =3D args.args[1];
-	priv->syscon_mask   =3D args.args[2];
-
-	host->priv =3D priv;
-
-	return 0;
+out:
+	dw_mci_starfive_set_sample_phase(host, smpl_phase);
+	mci_writel(host, RINTSTS, ALL_INT_CLR);
+	return ret;
 }
=20
 static const struct dw_mci_drv_data starfive_data =3D {
 	.common_caps		=3D MMC_CAP_CMD23,
 	.set_ios		=3D dw_mci_starfive_set_ios,
-	.parse_dt		=3D dw_mci_starfive_parse_dt,
 	.execute_tuning		=3D dw_mci_starfive_execute_tuning,
 };
=20
--=20
2.34.1


