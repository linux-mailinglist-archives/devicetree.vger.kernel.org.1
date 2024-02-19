Return-Path: <devicetree+bounces-43419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0288585A55C
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:05:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ACFF6285D24
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E8E36AF8;
	Mon, 19 Feb 2024 14:04:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="W4ws2jtP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13121381A4;
	Mon, 19 Feb 2024 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708351496; cv=none; b=GfPYRzFz9QH7z0F7RmyYLJnODNIuJQg2ZVRpkeIcgX97lBQh/jnMEOs485vU8WCaiDw2Fb+b+tR+/k9kFIPTf/3iqdNDc7jj4EavxFPhrWQ5wWMfTyHs1hd7gNr99VhSqe+Y7508R7AC3yEG/xjW3qMHuVcyClgT6Fm7mOHonyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708351496; c=relaxed/simple;
	bh=aOBE0HJbN5LWmmNHO9ahLG06s6V6aZ3vi5OW/uqdPq4=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=V5f/Z1yDvyMtYTPBplJkyPhzgRQxc4084ro4qFehaqXXYP6gYfbMWQEfMCiyi/y0gDncY7kZ18/c4s1F2sV6SEof5Wt4rxXdYYiNIvwkP2HkwbPkkHOZ/tuXxBl/drydLovnTDd7+mPFRjprypvCPtrsU7VbKfXndB6UVIXNMtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=W4ws2jtP; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 41JAU4pn025733;
	Mon, 19 Feb 2024 15:04:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=Rwh5prREUSDr8EzPcuoMa+GpcZ/Az+yXO+NfEA3G28I=; b=W4
	ws2jtPGCiUZrFXMMyiMMslhTrJxJM3aCmRE/t+A0Yw7QT1YuXn1IJH9E/2n5M1U8
	VWY/ezSZJo4kWfQbVdEQdCjEoT2nn8UBc2ptpxE/ostie91bWGVc0D+xNBTyVVji
	ptc+C0S1S6jLST0QDABmu8+8M51P07qT4LHO7jii0x1sl20PRn82jOLGqQDVIeNQ
	G6KCAr2mG+ofRxnRd0AAEz7LkjTfE6xPsfZ7524BuPOPC9nO3DcL9/3Hfnn1yzJI
	R9EWUSxDdUtDWsD1sDCzVD9AKYTnhEAhDZqmpCq3x7DuR/EpgDdJ/1d/g02/Ls0J
	l/cVU01o//Xdb4BWOM8A==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3wak3m78k5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 19 Feb 2024 15:04:47 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 758754002D;
	Mon, 19 Feb 2024 15:04:43 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0282B26A991;
	Mon, 19 Feb 2024 15:04:14 +0100 (CET)
Received: from localhost (10.201.21.177) by SHFDAG1NODE3.st.com (10.75.129.71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 19 Feb
 2024 15:04:13 +0100
From: Christophe Kerello <christophe.kerello@foss.st.com>
To: <krzysztof.kozlowski@linaro.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>
CC: <linux-kernel@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
        <devicetree@vger.kernel.org>,
        Christophe Kerello <christophe.kerello@foss.st.com>
Subject: [PATCH v2 4/5] memory: stm32-fmc2-ebi: add MP25 RIF support
Date: Mon, 19 Feb 2024 15:02:01 +0100
Message-ID: <20240219140202.85680-5-christophe.kerello@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240219140202.85680-1-christophe.kerello@foss.st.com>
References: <20240219140202.85680-1-christophe.kerello@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: EQNCAS1NODE3.st.com (10.75.129.80) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-19_10,2024-02-19_01,2023-05-22_02

The FMC2 revision 2 supports security and isolation compliant with
the Resource Isolation Framework (RIF). From RIF point of view,
the FMC2 is composed of several independent resources, listed below,
which can be assigned to different security and compartment domains:
 - 0: Common FMC_CFGR register.
 - 1: EBI controller for Chip Select 1.
 - 2: EBI controller for Chip Select 2.
 - 3: EBI controller for Chip Select 3.
 - 4: EBI controller for Chip Select 4.
 - 5: NAND controller.

Signed-off-by: Christophe Kerello <christophe.kerello@foss.st.com>
---
Changes in v2:
 - security check done throw ops.

 drivers/memory/stm32-fmc2-ebi.c | 224 +++++++++++++++++++++++++++++++-
 1 file changed, 220 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/stm32-fmc2-ebi.c b/drivers/memory/stm32-fmc2-ebi.c
index bd823e93e7d1..b1d5e61c2434 100644
--- a/drivers/memory/stm32-fmc2-ebi.c
+++ b/drivers/memory/stm32-fmc2-ebi.c
@@ -21,8 +21,14 @@
 #define FMC2_BTR(x)			((x) * 0x8 + FMC2_BTR1)
 #define FMC2_PCSCNTR			0x20
 #define FMC2_CFGR			0x20
+#define FMC2_SR				0x84
 #define FMC2_BWTR1			0x104
 #define FMC2_BWTR(x)			((x) * 0x8 + FMC2_BWTR1)
+#define FMC2_SECCFGR			0x300
+#define FMC2_CIDCFGR0			0x30c
+#define FMC2_CIDCFGR(x)			((x) * 0x8 + FMC2_CIDCFGR0)
+#define FMC2_SEMCR0			0x310
+#define FMC2_SEMCR(x)			((x) * 0x8 + FMC2_SEMCR0)
 
 /* Register: FMC2_BCR1 */
 #define FMC2_BCR1_CCLKEN		BIT(20)
@@ -65,8 +71,23 @@
 #define FMC2_CFGR_CCLKEN		BIT(20)
 #define FMC2_CFGR_FMC2EN		BIT(31)
 
+/* Register: FMC2_SR */
+#define FMC2_SR_ISOST			GENMASK(1, 0)
+
+/* Register: FMC2_CIDCFGR */
+#define FMC2_CIDCFGR_CFEN		BIT(0)
+#define FMC2_CIDCFGR_SEMEN		BIT(1)
+#define FMC2_CIDCFGR_SCID		GENMASK(6, 4)
+#define FMC2_CIDCFGR_SEMWLC1		BIT(17)
+
+/* Register: FMC2_SEMCR */
+#define FMC2_SEMCR_SEM_MUTEX		BIT(0)
+#define FMC2_SEMCR_SEMCID		GENMASK(6, 4)
+
 #define FMC2_MAX_EBI_CE			4
 #define FMC2_MAX_BANKS			5
+#define FMC2_MAX_RESOURCES		6
+#define FMC2_CID1			1
 
 #define FMC2_BCR_CPSIZE_0		0x0
 #define FMC2_BCR_CPSIZE_128		0x1
@@ -163,6 +184,9 @@ struct stm32_fmc2_ebi_data {
 	int (*nwait_used_by_ctrls)(struct stm32_fmc2_ebi *ebi);
 	void (*set_setup)(struct stm32_fmc2_ebi *ebi);
 	int (*save_setup)(struct stm32_fmc2_ebi *ebi);
+	int (*check_rif)(struct stm32_fmc2_ebi *ebi, u32 resource);
+	void (*put_sems)(struct stm32_fmc2_ebi *ebi);
+	void (*get_sems)(struct stm32_fmc2_ebi *ebi);
 };
 
 struct stm32_fmc2_ebi {
@@ -171,6 +195,8 @@ struct stm32_fmc2_ebi {
 	struct regmap *regmap;
 	const struct stm32_fmc2_ebi_data *data;
 	u8 bank_assigned;
+	u8 sem_taken;
+	bool access_granted;
 
 	u32 bcr[FMC2_MAX_EBI_CE];
 	u32 btr[FMC2_MAX_EBI_CE];
@@ -262,6 +288,33 @@ static int stm32_fmc2_ebi_check_sync_trans(struct stm32_fmc2_ebi *ebi,
 	return -EINVAL;
 }
 
+static int stm32_fmc2_ebi_mp25_check_cclk(struct stm32_fmc2_ebi *ebi,
+					  const struct stm32_fmc2_prop *prop,
+					  int cs)
+{
+	if (!ebi->access_granted)
+		return -EACCES;
+
+	return stm32_fmc2_ebi_check_sync_trans(ebi, prop, cs);
+}
+
+static int stm32_fmc2_ebi_mp25_check_clk_period(struct stm32_fmc2_ebi *ebi,
+						const struct stm32_fmc2_prop *prop,
+						int cs)
+{
+	u32 cfgr;
+	int ret;
+
+	ret = regmap_read(ebi->regmap, FMC2_CFGR, &cfgr);
+	if (ret)
+		return ret;
+
+	if (cfgr & FMC2_CFGR_CCLKEN && !ebi->access_granted)
+		return -EACCES;
+
+	return stm32_fmc2_ebi_check_sync_trans(ebi, prop, cs);
+}
+
 static int stm32_fmc2_ebi_check_async_trans(struct stm32_fmc2_ebi *ebi,
 					    const struct stm32_fmc2_prop *prop,
 					    int cs)
@@ -1043,7 +1096,7 @@ static const struct stm32_fmc2_prop stm32_fmc2_mp25_child_props[] = {
 		.bprop = true,
 		.reg_type = FMC2_REG_CFGR,
 		.reg_mask = FMC2_CFGR_CCLKEN,
-		.check = stm32_fmc2_ebi_check_sync_trans,
+		.check = stm32_fmc2_ebi_mp25_check_cclk,
 		.set = stm32_fmc2_ebi_set_bit_field,
 	},
 	{
@@ -1141,7 +1194,7 @@ static const struct stm32_fmc2_prop stm32_fmc2_mp25_child_props[] = {
 	{
 		.name = "st,fmc2-ebi-cs-clk-period-ns",
 		.reset_val = FMC2_CFGR_CLKDIV_MAX + 1,
-		.check = stm32_fmc2_ebi_check_sync_trans,
+		.check = stm32_fmc2_ebi_mp25_check_clk_period,
 		.calculate = stm32_fmc2_ebi_ns_to_clock_cycles,
 		.set = stm32_fmc2_ebi_mp25_set_clk_period,
 	},
@@ -1196,6 +1249,110 @@ static const struct stm32_fmc2_prop stm32_fmc2_mp25_child_props[] = {
 	},
 };
 
+static int stm32_fmc2_ebi_mp25_check_rif(struct stm32_fmc2_ebi *ebi, u32 resource)
+{
+	u32 seccfgr, cidcfgr, semcr;
+	int cid, ret;
+
+	if (resource >= FMC2_MAX_RESOURCES)
+		return -EINVAL;
+
+	ret = regmap_read(ebi->regmap, FMC2_SECCFGR, &seccfgr);
+	if (ret)
+		return ret;
+
+	if (seccfgr & BIT(resource)) {
+		if (resource)
+			dev_err(ebi->dev, "resource %d is configured as secure\n",
+				resource);
+
+		return -EACCES;
+	}
+
+	ret = regmap_read(ebi->regmap, FMC2_CIDCFGR(resource), &cidcfgr);
+	if (ret)
+		return ret;
+
+	if (!(cidcfgr & FMC2_CIDCFGR_CFEN))
+		/* CID filtering is turned off: access granted */
+		return 0;
+
+	if (!(cidcfgr & FMC2_CIDCFGR_SEMEN)) {
+		/* Static CID mode */
+		cid = FIELD_GET(FMC2_CIDCFGR_SCID, cidcfgr);
+		if (cid != FMC2_CID1) {
+			if (resource)
+				dev_err(ebi->dev, "static CID%d set for resource %d\n",
+					cid, resource);
+
+			return -EACCES;
+		}
+
+		return 0;
+	}
+
+	/* Pass-list with semaphore mode */
+	if (!(cidcfgr & FMC2_CIDCFGR_SEMWLC1)) {
+		if (resource)
+			dev_err(ebi->dev, "CID1 is block-listed for resource %d\n",
+				resource);
+
+		return -EACCES;
+	}
+
+	ret = regmap_read(ebi->regmap, FMC2_SEMCR(resource), &semcr);
+	if (ret)
+		return ret;
+
+	if (!(semcr & FMC2_SEMCR_SEM_MUTEX)) {
+		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
+				   FMC2_SEMCR_SEM_MUTEX, FMC2_SEMCR_SEM_MUTEX);
+
+		ret = regmap_read(ebi->regmap, FMC2_SEMCR(resource), &semcr);
+		if (ret)
+			return ret;
+	}
+
+	cid = FIELD_GET(FMC2_SEMCR_SEMCID, semcr);
+	if (cid != FMC2_CID1) {
+		if (resource)
+			dev_err(ebi->dev, "resource %d is already used by CID%d\n",
+				resource, cid);
+
+		return -EACCES;
+	}
+
+	ebi->sem_taken |= BIT(resource);
+
+	return 0;
+}
+
+static void stm32_fmc2_ebi_mp25_put_sems(struct stm32_fmc2_ebi *ebi)
+{
+	unsigned int resource;
+
+	for (resource = 0; resource < FMC2_MAX_RESOURCES; resource++) {
+		if (!(ebi->sem_taken & BIT(resource)))
+			continue;
+
+		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
+				   FMC2_SEMCR_SEM_MUTEX, 0);
+	}
+}
+
+static void stm32_fmc2_ebi_mp25_get_sems(struct stm32_fmc2_ebi *ebi)
+{
+	unsigned int resource;
+
+	for (resource = 0; resource < FMC2_MAX_RESOURCES; resource++) {
+		if (!(ebi->sem_taken & BIT(resource)))
+			continue;
+
+		regmap_update_bits(ebi->regmap, FMC2_SEMCR(resource),
+				   FMC2_SEMCR_SEM_MUTEX, FMC2_SEMCR_SEM_MUTEX);
+	}
+}
+
 static int stm32_fmc2_ebi_parse_prop(struct stm32_fmc2_ebi *ebi,
 				     struct device_node *dev_node,
 				     const struct stm32_fmc2_prop *prop,
@@ -1264,6 +1421,9 @@ static int stm32_fmc2_ebi_save_setup(struct stm32_fmc2_ebi *ebi)
 	int ret;
 
 	for (cs = 0; cs < FMC2_MAX_EBI_CE; cs++) {
+		if (!(ebi->bank_assigned & BIT(cs)))
+			continue;
+
 		ret = regmap_read(ebi->regmap, FMC2_BCR(cs), &ebi->bcr[cs]);
 		if (ret)
 			return ret;
@@ -1299,7 +1459,10 @@ static int stm32_fmc2_ebi_mp25_save_setup(struct stm32_fmc2_ebi *ebi)
 	if (ret)
 		return ret;
 
-	return regmap_read(ebi->regmap, FMC2_CFGR, &ebi->cfgr);
+	if (ebi->access_granted)
+		ret = regmap_read(ebi->regmap, FMC2_CFGR, &ebi->cfgr);
+
+	return ret;
 }
 
 static void stm32_fmc2_ebi_set_setup(struct stm32_fmc2_ebi *ebi)
@@ -1307,6 +1470,9 @@ static void stm32_fmc2_ebi_set_setup(struct stm32_fmc2_ebi *ebi)
 	unsigned int cs;
 
 	for (cs = 0; cs < FMC2_MAX_EBI_CE; cs++) {
+		if (!(ebi->bank_assigned & BIT(cs)))
+			continue;
+
 		regmap_write(ebi->regmap, FMC2_BCR(cs), ebi->bcr[cs]);
 		regmap_write(ebi->regmap, FMC2_BTR(cs), ebi->btr[cs]);
 		regmap_write(ebi->regmap, FMC2_BWTR(cs), ebi->bwtr[cs]);
@@ -1322,7 +1488,9 @@ static void stm32_fmc2_ebi_mp1_set_setup(struct stm32_fmc2_ebi *ebi)
 static void stm32_fmc2_ebi_mp25_set_setup(struct stm32_fmc2_ebi *ebi)
 {
 	stm32_fmc2_ebi_set_setup(ebi);
-	regmap_write(ebi->regmap, FMC2_CFGR, ebi->cfgr);
+
+	if (ebi->access_granted)
+		regmap_write(ebi->regmap, FMC2_CFGR, ebi->cfgr);
 }
 
 static void stm32_fmc2_ebi_disable_banks(struct stm32_fmc2_ebi *ebi)
@@ -1365,6 +1533,9 @@ static int stm32_fmc2_ebi_nwait_used_by_ctrls(struct stm32_fmc2_ebi *ebi)
 
 static void stm32_fmc2_ebi_enable(struct stm32_fmc2_ebi *ebi)
 {
+	if (!ebi->access_granted)
+		return;
+
 	regmap_update_bits(ebi->regmap, ebi->data->fmc2_enable_reg,
 			   ebi->data->fmc2_enable_bit,
 			   ebi->data->fmc2_enable_bit);
@@ -1372,6 +1543,9 @@ static void stm32_fmc2_ebi_enable(struct stm32_fmc2_ebi *ebi)
 
 static void stm32_fmc2_ebi_disable(struct stm32_fmc2_ebi *ebi)
 {
+	if (!ebi->access_granted)
+		return;
+
 	regmap_update_bits(ebi->regmap, ebi->data->fmc2_enable_reg,
 			   ebi->data->fmc2_enable_bit, 0);
 }
@@ -1430,6 +1604,15 @@ static int stm32_fmc2_ebi_parse_dt(struct stm32_fmc2_ebi *ebi)
 			return -EINVAL;
 		}
 
+		if (ebi->data->check_rif) {
+			ret = ebi->data->check_rif(ebi, bank + 1);
+			if (ret) {
+				dev_err(dev, "bank access failed: %d\n", bank);
+				of_node_put(child);
+				return ret;
+			}
+		}
+
 		if (bank < FMC2_MAX_EBI_CE) {
 			ret = stm32_fmc2_ebi_setup_cs(ebi, child, bank);
 			if (ret) {
@@ -1498,6 +1681,28 @@ static int stm32_fmc2_ebi_probe(struct platform_device *pdev)
 		reset_control_deassert(rstc);
 	}
 
+	/* Check if CFGR register can be modified */
+	ebi->access_granted = true;
+	if (ebi->data->check_rif) {
+		ret = ebi->data->check_rif(ebi, 0);
+		if (ret) {
+			u32 sr;
+
+			ebi->access_granted = false;
+
+			ret = regmap_read(ebi->regmap, FMC2_SR, &sr);
+			if (ret)
+				goto err_release;
+
+			/* In case of CFGR is secure, just check that the FMC2 is enabled */
+			if (sr & FMC2_SR_ISOST) {
+				dev_err(dev, "FMC2 is not ready to be used.\n");
+				ret = -EACCES;
+				goto err_release;
+			}
+		}
+	}
+
 	ret = stm32_fmc2_ebi_parse_dt(ebi);
 	if (ret)
 		goto err_release;
@@ -1515,6 +1720,8 @@ static int stm32_fmc2_ebi_probe(struct platform_device *pdev)
 err_release:
 	stm32_fmc2_ebi_disable_banks(ebi);
 	stm32_fmc2_ebi_disable(ebi);
+	if (ebi->data->put_sems)
+		ebi->data->put_sems(ebi);
 	clk_disable_unprepare(ebi->clk);
 
 	return ret;
@@ -1527,6 +1734,8 @@ static void stm32_fmc2_ebi_remove(struct platform_device *pdev)
 	of_platform_depopulate(&pdev->dev);
 	stm32_fmc2_ebi_disable_banks(ebi);
 	stm32_fmc2_ebi_disable(ebi);
+	if (ebi->data->put_sems)
+		ebi->data->put_sems(ebi);
 	clk_disable_unprepare(ebi->clk);
 }
 
@@ -1535,6 +1744,8 @@ static int __maybe_unused stm32_fmc2_ebi_suspend(struct device *dev)
 	struct stm32_fmc2_ebi *ebi = dev_get_drvdata(dev);
 
 	stm32_fmc2_ebi_disable(ebi);
+	if (ebi->data->put_sems)
+		ebi->data->put_sems(ebi);
 	clk_disable_unprepare(ebi->clk);
 	pinctrl_pm_select_sleep_state(dev);
 
@@ -1552,6 +1763,8 @@ static int __maybe_unused stm32_fmc2_ebi_resume(struct device *dev)
 	if (ret)
 		return ret;
 
+	if (ebi->data->get_sems)
+		ebi->data->get_sems(ebi);
 	if (ebi->data->set_setup)
 		ebi->data->set_setup(ebi);
 
@@ -1580,6 +1793,9 @@ static const struct stm32_fmc2_ebi_data stm32_fmc2_ebi_mp25_data = {
 	.fmc2_enable_bit = FMC2_CFGR_FMC2EN,
 	.set_setup = stm32_fmc2_ebi_mp25_set_setup,
 	.save_setup = stm32_fmc2_ebi_mp25_save_setup,
+	.check_rif = stm32_fmc2_ebi_mp25_check_rif,
+	.put_sems = stm32_fmc2_ebi_mp25_put_sems,
+	.get_sems = stm32_fmc2_ebi_mp25_get_sems,
 };
 
 static const struct of_device_id stm32_fmc2_ebi_match[] = {
-- 
2.25.1


