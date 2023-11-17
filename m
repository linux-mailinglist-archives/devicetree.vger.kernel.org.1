Return-Path: <devicetree+bounces-16544-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 323D17EEF0A
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:43:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 478EC1C20A39
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8412F168AC;
	Fri, 17 Nov 2023 09:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="KsBkwrXE"
X-Original-To: devicetree@vger.kernel.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20CD519AC;
	Fri, 17 Nov 2023 01:42:54 -0800 (PST)
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2C87D6607391;
	Fri, 17 Nov 2023 09:42:52 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1700214173;
	bh=3d1gwc7AtxQ73hhfJGJx+fnwxPCN8eVoWXRpxf7fwcs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KsBkwrXEuTwYZka896Psse+McHOs4ZjwZVMm3tlRVc4YEsBIVHx7iofnOTxrHVGeA
	 lG27jGNih7oeCQ9hnXIK3HjLAGj+tFgHpagrUtxNGJ7Odhd3JZG40IIlEvOpH4xjWk
	 30dwlD2IBQvdYFErFWpNYBXShCtM6BtFDi8Sy3YTZm5CDh23vKsa8R5PFX7Q9OkRcv
	 GuOgUdkn6kxIBJtU0aCOVJRlrqVlTQyfSUoA2ndSntMiLIWOJZKYlEUxzV8rJpBcdo
	 Ah4V8TYa3ljSWXOwrNebHTevlw+6pA0RmivcE9ACiVrdkim+4CuhPzFVybY6TUOfmz
	 KJo4nnv86r1sg==
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: matthias.bgg@gmail.com
Cc: krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	robh+dt@kernel.org,
	angelogioacchino.delregno@collabora.com,
	p.zabel@pengutronix.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	wenst@chromium.org
Subject: [PATCH v1 18/20] soc: mediatek: mtk-svs: Constify runtime-immutable members of svs_bank
Date: Fri, 17 Nov 2023 10:42:26 +0100
Message-ID: <20231117094228.40013-19-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
References: <20231117094228.40013-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Some members of struct svs_bank are not changed during runtime, so those
are not variables but constants: move all of those to a new structure
called svs_bank_pdata and refactor the code to make use of that.
This effectively moves at least 50 bytes to the text segment.
While at it, also uniform the thermal zone names across the banks.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 drivers/soc/mediatek/mtk-svs.c | 1201 +++++++++++++++++---------------
 1 file changed, 631 insertions(+), 570 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-svs.c b/drivers/soc/mediatek/mtk-svs.c
index df39e7430ba9..aa50ae0cc1d1 100644
--- a/drivers/soc/mediatek/mtk-svs.c
+++ b/drivers/soc/mediatek/mtk-svs.c
@@ -1,6 +1,8 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
  * Copyright (C) 2022 MediaTek Inc.
+ * Copyright (C) 2022 Collabora Ltd.
+ *                    AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
  */
 
 #include <linux/bitfield.h>
@@ -118,7 +120,7 @@
 #define SVSB_VOPS_FLD_VOP2_6		GENMASK(23, 16)
 #define SVSB_VOPS_FLD_VOP3_7		GENMASK(31, 24)
 
-/* SVS Thermal Coefficients */
+/* SVS Thermal */
 #define SVSB_TS_COEFF_MT8195		250460
 #define SVSB_TS_COEFF_MT8186		204650
 
@@ -391,7 +393,7 @@ struct svs_platform {
 	size_t efuse_max;
 	size_t tefuse_max;
 	const u32 *regs;
-	u32 bank_max;
+	u16 bank_max;
 	u32 *efuse;
 	u32 *tefuse;
 	u32 ts_coeff;
@@ -404,59 +406,92 @@ struct svs_platform_data {
 	int (*probe)(struct svs_platform *svsp);
 	const struct svs_fusemap *glb_fuse_map;
 	const u32 *regs;
-	u32 bank_max;
+	u16 bank_max;
 	u32 ts_coeff;
 };
 
 /**
- * struct svs_bank - svs bank representation
+ * struct svs_bank_pdata - SVS Bank immutable config parameters
  * @dev_fuse_map: Bank fuse map data
+ * @buck_name: Regulator name
+ * @tzone_name: Thermal zone name
+ * @age_config: Bank age configuration
+ * @ctl0: TS-x selection
+ * @dc_config: Bank dc configuration
+ * @int_st: Bank interrupt identification
+ * @turn_freq_base: Reference frequency for 2-line turn point
+ * @tzone_htemp: Thermal zone high temperature threshold
+ * @tzone_ltemp: Thermal zone low temperature threshold
+ * @volt_step: Bank voltage step
+ * @volt_base: Bank voltage base
+ * @tzone_htemp_voffset: Thermal zone high temperature voltage offset
+ * @tzone_ltemp_voffset: Thermal zone low temperature voltage offset
+ * @chk_shift: Bank chicken shift
+ * @cpu_id: CPU core ID for SVS CPU bank use only
+ * @opp_count: Bank opp count
+ * @vboot: Voltage request for bank init01 only
+ * @vco: Bank VCO value
+ * @sw_id: Bank software identification
+ * @type: SVS Bank Type (1 or 2-line) and Role (high/low)
+ * @set_freq_pct: function pointer to set bank frequency percent table
+ * @get_volts: function pointer to get bank voltages
+ */
+struct svs_bank_pdata {
+	const struct svs_fusemap *dev_fuse_map;
+	char *buck_name;
+	char *tzone_name;
+	u32 age_config;
+	u32 ctl0;
+	u32 dc_config;
+	u32 int_st;
+	u32 turn_freq_base;
+	u32 tzone_htemp;
+	u32 tzone_ltemp;
+	u32 volt_step;
+	u32 volt_base;
+	u16 tzone_htemp_voffset;
+	u16 tzone_ltemp_voffset;
+	u8 chk_shift;
+	u8 cpu_id;
+	u8 opp_count;
+	u8 vboot;
+	u8 vco;
+	u8 sw_id;
+	u8 type;
+
+	/* Callbacks */
+	void (*set_freq_pct)(struct svs_platform *, struct svs_bank *svsb);
+	void (*get_volts)(struct svs_platform *, struct svs_bank *svsb);
+};
+
+/**
+ * struct svs_bank - svs bank representation
+ * @pdata: SVS Bank immutable config parameters
  * @dev: bank device
  * @opp_dev: device for opp table/buck control
  * @init_completion: the timeout completion for bank init
  * @buck: regulator used by opp_dev
  * @tzd: thermal zone device for getting temperature
  * @lock: mutex lock to protect voltage update process
- * @set_freq_pct: function pointer to set bank frequency percent table
- * @get_volts: function pointer to get bank voltages
  * @name: bank name
- * @buck_name: regulator name
- * @tzone_name: thermal zone name
  * @phase: bank current phase
  * @volt_od: bank voltage overdrive
  * @reg_data: bank register data in different phase for debug purpose
  * @pm_runtime_enabled_count: bank pm runtime enabled count
- * @mode_support: bank mode support.
+ * @mode_support: bank mode support
  * @freq_base: reference frequency for bank init
- * @turn_freq_base: refenrece frequency for 2-line turn point
- * @vboot: voltage request for bank init01 only
  * @opp_dfreq: default opp frequency table
  * @opp_dvolt: default opp voltage table
  * @freq_pct: frequency percent table for bank init
  * @volt: bank voltage table
- * @volt_step: bank voltage step
- * @volt_base: bank voltage base
  * @volt_flags: bank voltage flags
  * @vmax: bank voltage maximum
  * @vmin: bank voltage minimum
- * @age_config: bank age configuration
  * @age_voffset_in: bank age voltage offset
- * @dc_config: bank dc configuration
  * @dc_voffset_in: bank dc voltage offset
  * @dvt_fixed: bank dvt fixed value
- * @vco: bank VCO value
- * @chk_shift: bank chicken shift
  * @core_sel: bank selection
- * @opp_count: bank opp count
- * @int_st: bank interrupt identification
- * @sw_id: bank software identification
- * @cpu_id: cpu core id for SVS CPU bank use only
- * @ctl0: TS-x selection
  * @temp: bank temperature
- * @tzone_htemp: thermal zone high temperature threshold
- * @tzone_htemp_voffset: thermal zone high temperature voltage offset
- * @tzone_ltemp: thermal zone low temperature threshold
- * @tzone_ltemp_voffset: thermal zone low temperature voltage offset
  * @bts: svs efuse data
  * @mts: svs efuse data
  * @bdes: svs efuse data
@@ -466,7 +501,6 @@ struct svs_platform_data {
  * @dcmdet: svs efuse data
  * @turn_pt: 2-line turn point tells which opp_volt calculated by high/low bank
  * @vbin_turn_pt: voltage bin turn point helps know which svsb_volt should be overridden
- * @type: bank type to represent it is 2-line (high/low) bank or 1-line bank
  *
  * Svs bank will generate suitalbe voltages by below general math equation
  * and provide these voltages to opp voltage table.
@@ -474,53 +508,34 @@ struct svs_platform_data {
  * opp_volt[i] = (volt[i] * volt_step) + volt_base;
  */
 struct svs_bank {
-	const struct svs_fusemap *dev_fuse_map;
+	const struct svs_bank_pdata pdata;
 	struct device *dev;
 	struct device *opp_dev;
 	struct completion init_completion;
 	struct regulator *buck;
 	struct thermal_zone_device *tzd;
-	struct mutex lock;	/* lock to protect voltage update process */
-	void (*set_freq_pct)(struct svs_platform *svsp, struct svs_bank *svsb);
-	void (*get_volts)(struct svs_platform *svsp, struct svs_bank *svsb);
+	struct mutex lock;
+	int pm_runtime_enabled_count;
+	short int volt_od;
 	char *name;
-	char *buck_name;
-	char *tzone_name;
 	enum svsb_phase phase;
-	short int volt_od;
 	u32 reg_data[SVSB_PHASE_MAX][SVS_REG_MAX];
-	u32 pm_runtime_enabled_count;
 	u8 mode_support;
-	u32 freq_base;
-	u32 turn_freq_base;
-	u8 vboot;
 	u32 opp_dfreq[MAX_OPP_ENTRIES];
 	u32 opp_dvolt[MAX_OPP_ENTRIES];
 	u32 freq_pct[MAX_OPP_ENTRIES];
 	u32 volt[MAX_OPP_ENTRIES];
-	u32 volt_step;
-	u32 volt_base;
 	u32 volt_flags;
-	u8 vmax;
-	u8 vmin;
-	u32 age_config;
+	u32 freq_base;
+	u32 turn_pt;
+	u32 vbin_turn_pt;
+	u32 core_sel;
+	u32 temp;
 	u16 age_voffset_in;
-	u32 dc_config;
 	u16 dc_voffset_in;
 	u8 dvt_fixed;
-	u8 vco;
-	u8 chk_shift;
-	u32 core_sel;
-	u8 opp_count;
-	u32 int_st;
-	u8 sw_id;
-	u8 cpu_id;
-	u32 ctl0;
-	u32 temp;
-	u32 tzone_htemp;
-	u16 tzone_htemp_voffset;
-	u32 tzone_ltemp;
-	u16 tzone_ltemp_voffset;
+	u8 vmax;
+	u8 vmin;
 	u16 bts;
 	u16 mts;
 	u16 bdes;
@@ -528,9 +543,6 @@ struct svs_bank {
 	u8 mtdes;
 	u8 dcbdet;
 	u8 dcmdet;
-	u32 turn_pt;
-	u32 vbin_turn_pt;
-	u8 type;
 };
 
 static u32 percent(u32 numerator, u32 denominator)
@@ -572,10 +584,11 @@ static u32 svs_opp_volt_to_bank_volt(u32 opp_u_volt, u32 svsb_volt_step,
 
 static int svs_sync_bank_volts_from_opp(struct svs_bank *svsb)
 {
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	struct dev_pm_opp *opp;
 	u32 i, opp_u_volt;
 
-	for (i = 0; i < svsb->opp_count; i++) {
+	for (i = 0; i < bdata->opp_count; i++) {
 		opp = dev_pm_opp_find_freq_exact(svsb->opp_dev,
 						 svsb->opp_dfreq[i],
 						 true);
@@ -587,8 +600,8 @@ static int svs_sync_bank_volts_from_opp(struct svs_bank *svsb)
 
 		opp_u_volt = dev_pm_opp_get_voltage(opp);
 		svsb->volt[i] = svs_opp_volt_to_bank_volt(opp_u_volt,
-							  svsb->volt_step,
-							  svsb->volt_base);
+							  bdata->volt_step,
+							  bdata->volt_base);
 		dev_pm_opp_put(opp);
 	}
 
@@ -598,6 +611,7 @@ static int svs_sync_bank_volts_from_opp(struct svs_bank *svsb)
 static int svs_adjust_pm_opp_volts(struct svs_bank *svsb)
 {
 	int ret = -EPERM, tzone_temp = 0;
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	u32 i, svsb_volt, opp_volt, temp_voffset = 0, opp_start, opp_stop;
 
 	mutex_lock(&svsb->lock);
@@ -606,15 +620,15 @@ static int svs_adjust_pm_opp_volts(struct svs_bank *svsb)
 	 * 2-line bank updates its corresponding opp volts.
 	 * 1-line bank updates all opp volts.
 	 */
-	if (svsb->type == SVSB_TYPE_HIGH) {
+	if (bdata->type == SVSB_TYPE_HIGH) {
 		opp_start = 0;
 		opp_stop = svsb->turn_pt;
-	} else if (svsb->type == SVSB_TYPE_LOW) {
+	} else if (bdata->type == SVSB_TYPE_LOW) {
 		opp_start = svsb->turn_pt;
-		opp_stop = svsb->opp_count;
+		opp_stop = bdata->opp_count;
 	} else {
 		opp_start = 0;
-		opp_stop = svsb->opp_count;
+		opp_stop = bdata->opp_count;
 	}
 
 	/* Get thermal effect */
@@ -623,20 +637,20 @@ static int svs_adjust_pm_opp_volts(struct svs_bank *svsb)
 		if (ret || (svsb->temp > SVSB_TEMP_UPPER_BOUND &&
 			    svsb->temp < SVSB_TEMP_LOWER_BOUND)) {
 			dev_err(svsb->dev, "%s: %d (0x%x), run default volts\n",
-				svsb->tzone_name, ret, svsb->temp);
+				bdata->tzone_name, ret, svsb->temp);
 			svsb->phase = SVSB_PHASE_ERROR;
 		}
 
-		if (tzone_temp >= svsb->tzone_htemp)
-			temp_voffset += svsb->tzone_htemp_voffset;
-		else if (tzone_temp <= svsb->tzone_ltemp)
-			temp_voffset += svsb->tzone_ltemp_voffset;
+		if (tzone_temp >= bdata->tzone_htemp)
+			temp_voffset += bdata->tzone_htemp_voffset;
+		else if (tzone_temp <= bdata->tzone_ltemp)
+			temp_voffset += bdata->tzone_ltemp_voffset;
 
 		/* 2-line bank update all opp volts when running mon mode */
-		if (svsb->phase == SVSB_PHASE_MON && (svsb->type == SVSB_TYPE_HIGH ||
-						      svsb->type == SVSB_TYPE_LOW)) {
+		if (svsb->phase == SVSB_PHASE_MON && (bdata->type == SVSB_TYPE_HIGH ||
+						      bdata->type == SVSB_TYPE_LOW)) {
 			opp_start = 0;
-			opp_stop = svsb->opp_count;
+			opp_stop = bdata->opp_count;
 		}
 	}
 
@@ -653,8 +667,8 @@ static int svs_adjust_pm_opp_volts(struct svs_bank *svsb)
 		case SVSB_PHASE_MON:
 			svsb_volt = max(svsb->volt[i] + temp_voffset, svsb->vmin);
 			opp_volt = svs_bank_volt_to_opp_volt(svsb_volt,
-							     svsb->volt_step,
-							     svsb->volt_base);
+							     bdata->volt_step,
+							     bdata->volt_base);
 			break;
 		default:
 			dev_err(svsb->dev, "unknown phase: %u\n", svsb->phase);
@@ -816,7 +830,7 @@ static int svs_status_debug_show(struct seq_file *m, void *v)
 			   svsb->name, tzone_temp, svsb->vbin_turn_pt,
 			   svsb->turn_pt);
 
-	for (i = 0; i < svsb->opp_count; i++) {
+	for (i = 0; i < svsb->pdata.opp_count; i++) {
 		opp = dev_pm_opp_find_freq_exact(svsb->opp_dev,
 						 svsb->opp_dfreq[i], true);
 		if (IS_ERR(opp)) {
@@ -923,9 +937,10 @@ static u32 interpolate(u32 f0, u32 f1, u32 v0, u32 v1, u32 fx)
 
 static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *svsb)
 {
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	u32 i, j, *vop, vop74, vop30, turn_pt = svsb->turn_pt;
 	u32 b_sft, shift_byte = 0, opp_start = 0, opp_stop = 0;
-	u32 middle_index = (svsb->opp_count / 2);
+	u32 middle_index = (bdata->opp_count / 2);
 
 	if (svsb->phase == SVSB_PHASE_MON &&
 	    svsb->volt_flags & SVSB_MON_VOLT_IGNORE)
@@ -936,7 +951,7 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 
 	/* Target is to set svsb->volt[] by algorithm */
 	if (turn_pt < middle_index) {
-		if (svsb->type == SVSB_TYPE_HIGH) {
+		if (bdata->type == SVSB_TYPE_HIGH) {
 			/* volt[0] ~ volt[turn_pt - 1] */
 			for (i = 0; i < turn_pt; i++) {
 				b_sft = BITS8 * (shift_byte % REG_BYTES);
@@ -945,12 +960,12 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 				svsb->volt[i] = (*vop >> b_sft) & GENMASK(7, 0);
 				shift_byte++;
 			}
-		} else if (svsb->type == SVSB_TYPE_LOW) {
+		} else if (bdata->type == SVSB_TYPE_LOW) {
 			/* volt[turn_pt] + volt[j] ~ volt[opp_count - 1] */
-			j = svsb->opp_count - 7;
+			j = bdata->opp_count - 7;
 			svsb->volt[turn_pt] = FIELD_GET(SVSB_VOPS_FLD_VOP0_4, vop30);
 			shift_byte++;
-			for (i = j; i < svsb->opp_count; i++) {
+			for (i = j; i < bdata->opp_count; i++) {
 				b_sft = BITS8 * (shift_byte % REG_BYTES);
 				vop = (shift_byte < REG_BYTES) ? &vop30 :
 								 &vop74;
@@ -967,7 +982,7 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 							    svsb->freq_pct[i]);
 		}
 	} else {
-		if (svsb->type == SVSB_TYPE_HIGH) {
+		if (bdata->type == SVSB_TYPE_HIGH) {
 			/* volt[0] + volt[j] ~ volt[turn_pt - 1] */
 			j = turn_pt - 7;
 			svsb->volt[0] = FIELD_GET(SVSB_VOPS_FLD_VOP0_4, vop30);
@@ -987,9 +1002,9 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 							    svsb->volt[0],
 							    svsb->volt[j],
 							    svsb->freq_pct[i]);
-		} else if (svsb->type == SVSB_TYPE_LOW) {
+		} else if (bdata->type == SVSB_TYPE_LOW) {
 			/* volt[turn_pt] ~ volt[opp_count - 1] */
-			for (i = turn_pt; i < svsb->opp_count; i++) {
+			for (i = turn_pt; i < bdata->opp_count; i++) {
 				b_sft = BITS8 * (shift_byte % REG_BYTES);
 				vop = (shift_byte < REG_BYTES) ? &vop30 :
 								 &vop74;
@@ -999,12 +1014,12 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 		}
 	}
 
-	if (svsb->type == SVSB_TYPE_HIGH) {
+	if (bdata->type == SVSB_TYPE_HIGH) {
 		opp_start = 0;
 		opp_stop = svsb->turn_pt;
-	} else if (svsb->type == SVSB_TYPE_LOW) {
+	} else if (bdata->type == SVSB_TYPE_LOW) {
 		opp_start = svsb->turn_pt;
-		opp_stop = svsb->opp_count;
+		opp_stop = bdata->opp_count;
 	}
 
 	for (i = opp_start; i < opp_stop; i++)
@@ -1014,11 +1029,11 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 	/* For voltage bin support */
 	if (svsb->opp_dfreq[0] > svsb->freq_base) {
 		svsb->volt[0] = svs_opp_volt_to_bank_volt(svsb->opp_dvolt[0],
-							  svsb->volt_step,
-							  svsb->volt_base);
+							  bdata->volt_step,
+							  bdata->volt_base);
 
 		/* Find voltage bin turn point */
-		for (i = 0; i < svsb->opp_count; i++) {
+		for (i = 0; i < bdata->opp_count; i++) {
 			if (svsb->opp_dfreq[i] <= svsb->freq_base) {
 				svsb->vbin_turn_pt = i;
 				break;
@@ -1037,12 +1052,13 @@ static void svs_get_bank_volts_v3(struct svs_platform *svsp, struct svs_bank *sv
 
 static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank *svsb)
 {
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	u32 i, j, *freq_pct, freq_pct74 = 0, freq_pct30 = 0;
 	u32 b_sft, shift_byte = 0, turn_pt;
-	u32 middle_index = (svsb->opp_count / 2);
+	u32 middle_index = (bdata->opp_count / 2);
 
-	for (i = 0; i < svsb->opp_count; i++) {
-		if (svsb->opp_dfreq[i] <= svsb->turn_freq_base) {
+	for (i = 0; i < bdata->opp_count; i++) {
+		if (svsb->opp_dfreq[i] <= bdata->turn_freq_base) {
 			svsb->turn_pt = i;
 			break;
 		}
@@ -1052,7 +1068,7 @@ static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank
 
 	/* Target is to fill out freq_pct74 / freq_pct30 by algorithm */
 	if (turn_pt < middle_index) {
-		if (svsb->type == SVSB_TYPE_HIGH) {
+		if (bdata->type == SVSB_TYPE_HIGH) {
 			/*
 			 * If we don't handle this situation,
 			 * SVSB_TYPE_HIGH's FREQPCT74 / FREQPCT30 would keep "0"
@@ -1069,15 +1085,15 @@ static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank
 				*freq_pct |= (svsb->freq_pct[i] << b_sft);
 				shift_byte++;
 			}
-		} else if (svsb->type == SVSB_TYPE_LOW) {
+		} else if (bdata->type == SVSB_TYPE_LOW) {
 			/*
 			 * freq_pct[turn_pt] +
 			 * freq_pct[opp_count - 7] ~ freq_pct[opp_count -1]
 			 */
 			freq_pct30 = svsb->freq_pct[turn_pt];
 			shift_byte++;
-			j = svsb->opp_count - 7;
-			for (i = j; i < svsb->opp_count; i++) {
+			j = bdata->opp_count - 7;
+			for (i = j; i < bdata->opp_count; i++) {
 				b_sft = BITS8 * (shift_byte % REG_BYTES);
 				freq_pct = (shift_byte < REG_BYTES) ?
 					   &freq_pct30 : &freq_pct74;
@@ -1086,7 +1102,7 @@ static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank
 			}
 		}
 	} else {
-		if (svsb->type == SVSB_TYPE_HIGH) {
+		if (bdata->type == SVSB_TYPE_HIGH) {
 			/*
 			 * freq_pct[0] +
 			 * freq_pct[turn_pt - 7] ~ freq_pct[turn_pt - 1]
@@ -1101,9 +1117,9 @@ static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank
 				*freq_pct |= (svsb->freq_pct[i] << b_sft);
 				shift_byte++;
 			}
-		} else if (svsb->type == SVSB_TYPE_LOW) {
+		} else if (bdata->type == SVSB_TYPE_LOW) {
 			/* freq_pct[turn_pt] ~ freq_pct[opp_count - 1] */
-			for (i = turn_pt; i < svsb->opp_count; i++) {
+			for (i = turn_pt; i < bdata->opp_count; i++) {
 				b_sft = BITS8 * (shift_byte % REG_BYTES);
 				freq_pct = (shift_byte < REG_BYTES) ?
 					   &freq_pct30 : &freq_pct74;
@@ -1119,6 +1135,7 @@ static void svs_set_bank_freq_pct_v3(struct svs_platform *svsp, struct svs_bank
 
 static void svs_get_bank_volts_v2(struct svs_platform *svsp, struct svs_bank *svsb)
 {
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	u32 temp, i;
 
 	temp = svs_readl_relaxed(svsp, VOP74);
@@ -1146,17 +1163,17 @@ static void svs_get_bank_volts_v2(struct svs_platform *svsp, struct svs_bank *sv
 				     svsb->volt[14],
 				     svsb->freq_pct[15]);
 
-	for (i = 0; i < svsb->opp_count; i++)
+	for (i = 0; i < bdata->opp_count; i++)
 		svsb->volt[i] += svsb->volt_od;
 
 	/* For voltage bin support */
 	if (svsb->opp_dfreq[0] > svsb->freq_base) {
 		svsb->volt[0] = svs_opp_volt_to_bank_volt(svsb->opp_dvolt[0],
-							  svsb->volt_step,
-							  svsb->volt_base);
+							  bdata->volt_step,
+							  bdata->volt_base);
 
 		/* Find voltage bin turn point */
-		for (i = 0; i < svsb->opp_count; i++) {
+		for (i = 0; i < bdata->opp_count; i++) {
 			if (svsb->opp_dfreq[i] <= svsb->freq_base) {
 				svsb->vbin_turn_pt = i;
 				break;
@@ -1196,6 +1213,7 @@ static void svs_set_bank_phase(struct svs_platform *svsp,
 			       enum svsb_phase target_phase)
 {
 	struct svs_bank *svsb = &svsp->banks[bank_idx];
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 	u32 des_char, temp_char, det_char, limit_vals, init2vals, ts_calcs;
 
 	svs_switch_bank(svsp, svsb);
@@ -1204,7 +1222,7 @@ static void svs_set_bank_phase(struct svs_platform *svsp,
 		   FIELD_PREP(SVSB_DESCHAR_FLD_MDES, svsb->mdes);
 	svs_writel_relaxed(svsp, des_char, DESCHAR);
 
-	temp_char = FIELD_PREP(SVSB_TEMPCHAR_FLD_VCO, svsb->vco) |
+	temp_char = FIELD_PREP(SVSB_TEMPCHAR_FLD_VCO, bdata->vco) |
 		    FIELD_PREP(SVSB_TEMPCHAR_FLD_MTDES, svsb->mtdes) |
 		    FIELD_PREP(SVSB_TEMPCHAR_FLD_DVT_FIXED, svsb->dvt_fixed);
 	svs_writel_relaxed(svsp, temp_char, TEMPCHAR);
@@ -1213,11 +1231,11 @@ static void svs_set_bank_phase(struct svs_platform *svsp,
 		   FIELD_PREP(SVSB_DETCHAR_FLD_DCMDET, svsb->dcmdet);
 	svs_writel_relaxed(svsp, det_char, DETCHAR);
 
-	svs_writel_relaxed(svsp, svsb->dc_config, DCCONFIG);
-	svs_writel_relaxed(svsp, svsb->age_config, AGECONFIG);
+	svs_writel_relaxed(svsp, bdata->dc_config, DCCONFIG);
+	svs_writel_relaxed(svsp, bdata->age_config, AGECONFIG);
 	svs_writel_relaxed(svsp, SVSB_RUNCONFIG_DEFAULT, RUNCONFIG);
 
-	svsb->set_freq_pct(svsp, svsb);
+	bdata->set_freq_pct(svsp, svsb);
 
 	limit_vals = FIELD_PREP(SVSB_LIMITVALS_FLD_DTLO, SVSB_VAL_DTLO) |
 		     FIELD_PREP(SVSB_LIMITVALS_FLD_DTHI, SVSB_VAL_DTHI) |
@@ -1227,13 +1245,13 @@ static void svs_set_bank_phase(struct svs_platform *svsp,
 
 	svs_writel_relaxed(svsp, SVSB_DET_WINDOW, DETWINDOW);
 	svs_writel_relaxed(svsp, SVSB_DET_MAX, CONFIG);
-	svs_writel_relaxed(svsp, svsb->chk_shift, CHKSHIFT);
-	svs_writel_relaxed(svsp, svsb->ctl0, CTL0);
+	svs_writel_relaxed(svsp, bdata->chk_shift, CHKSHIFT);
+	svs_writel_relaxed(svsp, bdata->ctl0, CTL0);
 	svs_writel_relaxed(svsp, SVSB_INTSTS_VAL_CLEAN, INTSTS);
 
 	switch (target_phase) {
 	case SVSB_PHASE_INIT01:
-		svs_writel_relaxed(svsp, svsb->vboot, VBOOT);
+		svs_writel_relaxed(svsp, bdata->vboot, VBOOT);
 		svs_writel_relaxed(svsp, SVSB_INTEN_INIT0x, INTEN);
 		svs_writel_relaxed(svsp, SVSB_PTPEN_INIT01, SVSEN);
 		break;
@@ -1305,8 +1323,10 @@ static inline void svs_init01_isr_handler(struct svs_platform *svsp,
 	svs_save_bank_register_data(svsp, bank_idx, SVSB_PHASE_INIT01);
 
 	svsb->phase = SVSB_PHASE_INIT01;
+
 	val = ~(svs_readl_relaxed(svsp, DCVALUES) & GENMASK(15, 0)) + 1;
 	svsb->dc_voffset_in = val & GENMASK(15, 0);
+
 	if (svsb->volt_flags & SVSB_INIT01_VOLT_IGNORE ||
 	    (svsb->dc_voffset_in & SVSB_DC_SIGNED_BIT &&
 	     svsb->volt_flags & SVSB_INIT01_VOLT_INC_ONLY))
@@ -1324,6 +1344,8 @@ static inline void svs_init02_isr_handler(struct svs_platform *svsp,
 					  unsigned short bank_idx)
 {
 	struct svs_bank *svsb = &svsp->banks[bank_idx];
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
+
 
 	dev_info(svsb->dev, "%s: VOP74~30:0x%08x~0x%08x, DC:0x%08x\n",
 		 __func__, svs_readl_relaxed(svsp, VOP74),
@@ -1333,7 +1355,7 @@ static inline void svs_init02_isr_handler(struct svs_platform *svsp,
 	svs_save_bank_register_data(svsp, bank_idx, SVSB_PHASE_INIT02);
 
 	svsb->phase = SVSB_PHASE_INIT02;
-	svsb->get_volts(svsp, svsb);
+	bdata->get_volts(svsp, svsb);
 
 	svs_writel_relaxed(svsp, SVSB_PTPEN_OFF, SVSEN);
 	svs_writel_relaxed(svsp, SVSB_INTSTS_F0_COMPLETE, INTSTS);
@@ -1343,11 +1365,12 @@ static inline void svs_mon_mode_isr_handler(struct svs_platform *svsp,
 					    unsigned short bank_idx)
 {
 	struct svs_bank *svsb = &svsp->banks[bank_idx];
+	const struct svs_bank_pdata *bdata = &svsb->pdata;
 
 	svs_save_bank_register_data(svsp, bank_idx, SVSB_PHASE_MON);
 
 	svsb->phase = SVSB_PHASE_MON;
-	svsb->get_volts(svsp, svsb);
+	bdata->get_volts(svsp, svsb);
 
 	svsb->temp = svs_readl_relaxed(svsp, TEMP) & GENMASK(7, 0);
 	svs_writel_relaxed(svsp, SVSB_INTSTS_FLD_MONVOP, INTSTS);
@@ -1356,18 +1379,20 @@ static inline void svs_mon_mode_isr_handler(struct svs_platform *svsp,
 static irqreturn_t svs_isr(int irq, void *data)
 {
 	struct svs_platform *svsp = data;
+	const struct svs_bank_pdata *bdata = NULL;
 	struct svs_bank *svsb = NULL;
 	unsigned long flags;
 	u32 idx, int_sts, svs_en;
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 		WARN(!svsb, "%s: svsb(%s) is null", __func__, svsb->name);
 
 		spin_lock_irqsave(&svs_lock, flags);
 
 		/* Find out which svs bank fires interrupt */
-		if (svsb->int_st & svs_readl_relaxed(svsp, INTST)) {
+		if (bdata->int_st & svs_readl_relaxed(svsp, INTST)) {
 			spin_unlock_irqrestore(&svs_lock, flags);
 			continue;
 		}
@@ -1412,6 +1437,7 @@ static bool svs_mode_available(struct svs_platform *svsp, u8 mode)
 
 static int svs_init01(struct svs_platform *svsp)
 {
+	const struct svs_bank_pdata *bdata;
 	struct svs_bank *svsb;
 	unsigned long flags, time_left;
 	bool search_done;
@@ -1427,6 +1453,7 @@ static int svs_init01(struct svs_platform *svsp)
 	 /* Svs bank init01 preparation - power enable */
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
 		if (!(svsb->mode_support & SVSB_MODE_INIT01))
 			continue;
@@ -1434,7 +1461,7 @@ static int svs_init01(struct svs_platform *svsp)
 		ret = regulator_enable(svsb->buck);
 		if (ret) {
 			dev_err(svsb->dev, "%s enable fail: %d\n",
-				svsb->buck_name, ret);
+				bdata->buck_name, ret);
 			goto svs_init01_resume_cpuidle;
 		}
 
@@ -1464,6 +1491,7 @@ static int svs_init01(struct svs_platform *svsp)
 	 */
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
 		if (!(svsb->mode_support & SVSB_MODE_INIT01))
 			continue;
@@ -1473,11 +1501,11 @@ static int svs_init01(struct svs_platform *svsp)
 		 * fix to that freq until svs_init01 is done.
 		 */
 		search_done = false;
-		opp_vboot = svs_bank_volt_to_opp_volt(svsb->vboot,
-						      svsb->volt_step,
-						      svsb->volt_base);
+		opp_vboot = svs_bank_volt_to_opp_volt(bdata->vboot,
+						      bdata->volt_step,
+						      bdata->volt_base);
 
-		for (i = 0; i < svsb->opp_count; i++) {
+		for (i = 0; i < bdata->opp_count; i++) {
 			opp_freq = svsb->opp_dfreq[i];
 			if (!search_done && svsb->opp_dvolt[i] <= opp_vboot) {
 				ret = dev_pm_opp_adjust_voltage(svsb->opp_dev,
@@ -1509,13 +1537,14 @@ static int svs_init01(struct svs_platform *svsp)
 	/* Svs bank init01 begins */
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
 		if (!(svsb->mode_support & SVSB_MODE_INIT01))
 			continue;
 
-		opp_vboot = svs_bank_volt_to_opp_volt(svsb->vboot,
-						      svsb->volt_step,
-						      svsb->volt_base);
+		opp_vboot = svs_bank_volt_to_opp_volt(bdata->vboot,
+						      bdata->volt_step,
+						      bdata->volt_base);
 
 		buck_volt = regulator_get_voltage(svsb->buck);
 		if (buck_volt != opp_vboot) {
@@ -1542,11 +1571,12 @@ static int svs_init01(struct svs_platform *svsp)
 svs_init01_finish:
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
 		if (!(svsb->mode_support & SVSB_MODE_INIT01))
 			continue;
 
-		for (i = 0; i < svsb->opp_count; i++) {
+		for (i = 0; i < bdata->opp_count; i++) {
 			r = dev_pm_opp_enable(svsb->opp_dev,
 					      svsb->opp_dfreq[i]);
 			if (r)
@@ -1572,7 +1602,7 @@ static int svs_init01(struct svs_platform *svsp)
 		r = regulator_disable(svsb->buck);
 		if (r)
 			dev_err(svsb->dev, "%s disable fail: %d\n",
-				svsb->buck_name, r);
+				bdata->buck_name, r);
 	}
 
 svs_init01_resume_cpuidle:
@@ -1583,6 +1613,7 @@ static int svs_init01(struct svs_platform *svsp)
 
 static int svs_init02(struct svs_platform *svsp)
 {
+	const struct svs_bank_pdata *bdata;
 	struct svs_bank *svsb;
 	unsigned long flags, time_left;
 	int ret;
@@ -1618,11 +1649,12 @@ static int svs_init02(struct svs_platform *svsp)
 	 */
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
 		if (!(svsb->mode_support & SVSB_MODE_INIT02))
 			continue;
 
-		if (svsb->type == SVSB_TYPE_HIGH || svsb->type == SVSB_TYPE_LOW) {
+		if (bdata->type == SVSB_TYPE_HIGH || bdata->type == SVSB_TYPE_LOW) {
 			if (svs_sync_bank_volts_from_opp(svsb)) {
 				dev_err(svsb->dev, "sync volt fail\n");
 				ret = -EPERM;
@@ -1680,12 +1712,12 @@ static int svs_start(struct svs_platform *svsp)
 static int svs_suspend(struct device *dev)
 {
 	struct svs_platform *svsp = dev_get_drvdata(dev);
-	struct svs_bank *svsb;
 	int ret;
 	u32 idx;
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
-		svsb = &svsp->banks[idx];
+		struct svs_bank *svsb = &svsp->banks[idx];
+
 		svs_bank_disable_and_restore_default_volts(svsp, svsb);
 	}
 
@@ -1736,6 +1768,7 @@ static int svs_resume(struct device *dev)
 
 static int svs_bank_resource_setup(struct svs_platform *svsp)
 {
+	const struct svs_bank_pdata *bdata;
 	struct svs_bank *svsb;
 	struct dev_pm_opp *opp;
 	unsigned long freq;
@@ -1746,8 +1779,9 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 
-		if (svsb->sw_id >= SVSB_SWID_MAX || svsb->type >= SVSB_TYPE_MAX) {
+		if (bdata->sw_id >= SVSB_SWID_MAX || bdata->type >= SVSB_TYPE_MAX) {
 			dev_err(svsb->dev, "unknown bank sw_id or type\n");
 			return -EINVAL;
 		}
@@ -1757,8 +1791,8 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 			return -ENOMEM;
 
 		svsb->name = devm_kasprintf(svsp->dev, GFP_KERNEL, "%s%s",
-					    svs_swid_names[svsb->sw_id],
-					    svs_type_names[svsb->type]);
+					    svs_swid_names[bdata->sw_id],
+					    svs_type_names[bdata->type]);
 		if (!svsb->name)
 			return -ENOMEM;
 
@@ -1779,10 +1813,10 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 
 		if (svsb->mode_support & SVSB_MODE_INIT01) {
 			svsb->buck = devm_regulator_get_optional(svsb->opp_dev,
-								 svsb->buck_name);
+								 bdata->buck_name);
 			if (IS_ERR(svsb->buck)) {
 				dev_err(svsb->dev, "cannot get \"%s-supply\"\n",
-					svsb->buck_name);
+					bdata->buck_name);
 				return PTR_ERR(svsb->buck);
 			}
 		}
@@ -1793,18 +1827,17 @@ static int svs_bank_resource_setup(struct svs_platform *svsp)
 				dev_err(svsb->dev, "cannot get \"%s\" thermal zone\n",
 					svsb->tzone_name);
 				return PTR_ERR(svsb->tzd);
-			}
 		}
 
 		count = dev_pm_opp_get_opp_count(svsb->opp_dev);
-		if (svsb->opp_count != count) {
+		if (bdata->opp_count != count) {
 			dev_err(svsb->dev,
 				"opp_count not \"%u\" but get \"%d\"?\n",
-				svsb->opp_count, count);
+				bdata->opp_count, count);
 			return count;
 		}
 
-		for (i = 0, freq = ULONG_MAX; i < svsb->opp_count; i++, freq--) {
+		for (i = 0, freq = ULONG_MAX; i < bdata->opp_count; i++, freq--) {
 			opp = dev_pm_opp_find_freq_floor(svsb->opp_dev, &freq);
 			if (IS_ERR(opp)) {
 				dev_err(svsb->dev, "cannot find freq = %ld\n",
@@ -1901,7 +1934,8 @@ static bool svs_common_parse_efuse(struct svs_platform *svsp,
 
 	for (i = 0; i < svsp->bank_max; i++) {
 		struct svs_bank *svsb = &svsp->banks[i];
-		const struct svs_fusemap *dfmap = svsb->dev_fuse_map;
+		const struct svs_bank_pdata *bdata = &svsb->pdata;
+		const struct svs_fusemap *dfmap = bdata->dev_fuse_map;
 
 		if (vmin == 1)
 			svsb->vmin = 0x1e;
@@ -1927,11 +1961,11 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 				     const struct svs_platform_data *pdata)
 {
 	struct svs_bank *svsb;
+	const struct svs_bank_pdata *bdata;
 	int format[6], x_roomt[6], o_vtsmcu[5], o_vtsabb, tb_roomt = 0;
 	int adc_ge_t, adc_oe_t, ge, oe, gain, degc_cali, adc_cali_en_t;
 	int o_slope, o_slope_sign, ts_id;
 	u32 idx, i, ft_pgm, mts, temp0, temp1, temp2;
-	int ret;
 
 	for (i = 0; i < svsp->efuse_max; i++)
 		if (svsp->efuse[i])
@@ -1948,7 +1982,8 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
-		const struct svs_fusemap *dfmap = svsb->dev_fuse_map;
+		bdata = &svsb->pdata;
+		const struct svs_fusemap *dfmap = bdata->dev_fuse_map;
 
 		if (ft_pgm <= 1)
 			svsb->volt_flags |= SVSB_INIT01_VOLT_IGNORE;
@@ -1959,7 +1994,7 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 		svsb->dcbdet = svs_get_fuse_val(svsp->efuse, &dfmap[BDEV_DCBDET], 8);
 		svsb->dcmdet = svs_get_fuse_val(svsp->efuse, &dfmap[BDEV_DCMDET], 8);
 
-		switch (svsb->sw_id) {
+		switch (bdata->sw_id) {
 		case SVSB_SWID_CPU_LITTLE:
 		case SVSB_SWID_CCI:
 			if (ft_pgm <= 3)
@@ -1985,6 +2020,7 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 		}
 	}
 
+
 	/* Thermal efuse parsing */
 	adc_ge_t = (svsp->tefuse[1] >> 22) & GENMASK(9, 0);
 	adc_oe_t = (svsp->tefuse[1] >> 12) & GENMASK(9, 0);
@@ -2044,9 +2080,10 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		svsb = &svsp->banks[idx];
+		bdata = &svsb->pdata;
 		svsb->mts = mts;
 
-		switch (svsb->sw_id) {
+		switch (bdata->sw_id) {
 		case SVSB_SWID_CPU_LITTLE:
 			tb_roomt = x_roomt[3];
 			break;
@@ -2060,7 +2097,7 @@ static bool svs_mt8183_efuse_parsing(struct svs_platform *svsp,
 			tb_roomt = x_roomt[1];
 			break;
 		default:
-			dev_err(svsb->dev, "unknown sw_id: %u\n", svsb->sw_id);
+			dev_err(svsb->dev, "unknown sw_id: %u\n", bdata->sw_id);
 			goto remove_mt8183_svsb_mon_mode;
 		}
 
@@ -2147,24 +2184,24 @@ static int svs_mt8192_platform_probe(struct svs_platform *svsp)
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
 		struct svs_bank *svsb = &svsp->banks[idx];
+		const struct svs_bank_pdata *bdata = &svsb->pdata;
 
-		switch (svsb->sw_id) {
+		switch (bdata->sw_id) {
 		case SVSB_SWID_CPU_LITTLE:
 		case SVSB_SWID_CPU_BIG:
-			svsb->opp_dev = get_cpu_device(svsb->cpu_id);
+			svsb->opp_dev = get_cpu_device(bdata->cpu_id);
 			break;
 		case SVSB_SWID_CCI:
 			svsb->opp_dev = svs_add_device_link(svsp, "cci");
 			break;
 		case SVSB_SWID_GPU:
-			if (svsb->type == SVSB_TYPE_LOW)
+			if (bdata->type == SVSB_TYPE_LOW)
 				svsb->opp_dev = svs_get_subsys_device(svsp, "gpu");
 			else
 				svsb->opp_dev = svs_add_device_link(svsp, "gpu");
 			break;
-			break;
 		default:
-			dev_err(svsb->dev, "unknown sw_id: %u\n", svsb->sw_id);
+			dev_err(svsb->dev, "unknown sw_id: %u\n", bdata->sw_id);
 			return -EINVAL;
 		}
 
@@ -2180,7 +2217,6 @@ static int svs_mt8192_platform_probe(struct svs_platform *svsp)
 static int svs_mt8183_platform_probe(struct svs_platform *svsp)
 {
 	struct device *dev;
-	struct svs_bank *svsb;
 	u32 idx;
 
 	dev = svs_add_device_link(svsp, "thermal-sensor");
@@ -2189,12 +2225,13 @@ static int svs_mt8183_platform_probe(struct svs_platform *svsp)
 				     "failed to get thermal device\n");
 
 	for (idx = 0; idx < svsp->bank_max; idx++) {
-		svsb = &svsp->banks[idx];
+		struct svs_bank *svsb = &svsp->banks[idx];
+		const struct svs_bank_pdata *bdata = &svsb->pdata;
 
-		switch (svsb->sw_id) {
+		switch (bdata->sw_id) {
 		case SVSB_SWID_CPU_LITTLE:
 		case SVSB_SWID_CPU_BIG:
-			svsb->opp_dev = get_cpu_device(svsb->cpu_id);
+			svsb->opp_dev = get_cpu_device(bdata->cpu_id);
 			break;
 		case SVSB_SWID_CCI:
 			svsb->opp_dev = svs_add_device_link(svsp, "cci");
@@ -2203,7 +2240,7 @@ static int svs_mt8183_platform_probe(struct svs_platform *svsp)
 			svsb->opp_dev = svs_add_device_link(svsp, "gpu");
 			break;
 		default:
-			dev_err(svsb->dev, "unknown sw_id: %u\n", svsb->sw_id);
+			dev_err(svsb->dev, "unknown sw_id: %u\n", bdata->sw_id);
 			return -EINVAL;
 		}
 
@@ -2218,463 +2255,486 @@ static int svs_mt8183_platform_probe(struct svs_platform *svsp)
 
 static struct svs_bank svs_mt8195_banks[] = {
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_LOW,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT,
-		.mode_support		= SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 640000000,
-		.turn_freq_base		= 640000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x38,
-		.vmin			= 0x14,
-		.age_config		= 0x555555,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x1,
-		.vco			= 0x18,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0100,
-		.int_st			= BIT(0),
-		.ctl0			= 0x00540003,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 10, 16 }, { 10, 24 }, { 10, 0 }, { 8, 0 }, { 8, 8 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_LOW,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 640000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x1,
+			.vco			= 0x18,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(0),
+			.ctl0			= 0x00540003,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 10, 16 }, { 10, 24 }, { 10, 0 }, { 8, 0 }, { 8, 8 }
+			}
+		},
+		.mode_support	= SVSB_MODE_INIT02,
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT,
+		.freq_base	= 640000000,
+		.core_sel	= 0x0fff0100,
+		.dvt_fixed	= 0x1,
+		.vmax		= 0x38,
+		.vmin		= 0x14,
 	},
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_HIGH,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.tzone_name		= "gpu1",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 880000000,
-		.turn_freq_base		= 640000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x38,
-		.vmin			= 0x14,
-		.age_config		= 0x555555,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x6,
-		.vco			= 0x18,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0101,
-		.int_st			= BIT(1),
-		.ctl0			= 0x00540003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 0,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 7,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 9, 16 }, { 9, 24 }, { 9, 0 }, { 8, 0 }, { 8, 8 }
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_HIGH,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 640000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x1,
+			.vco			= 0x18,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(1),
+			.ctl0			= 0x00540003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 0,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 7,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 9, 16 }, { 9, 24 }, { 9, 0 }, { 8, 0 }, { 8, 8 }
+			},
 		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 880000000,
+		.core_sel	= 0x0fff0101,
+		.dvt_fixed	= 0x6,
+		.vmax		= 0x38,
+		.vmin		= 0x14,
 	},
 };
 
 static struct svs_bank svs_mt8192_banks[] = {
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_LOW,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.tzone_name		= "gpu1",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT,
-		.mode_support		= SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 688000000,
-		.turn_freq_base		= 688000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x60,
-		.vmin			= 0x1a,
-		.age_config		= 0x555555,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x1,
-		.vco			= 0x18,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0100,
-		.int_st			= BIT(0),
-		.ctl0			= 0x00540003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 0,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 7,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 10, 16 }, { 10, 24 }, { 10, 0 }, { 17, 0 }, { 17, 8 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_LOW,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 688000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x1,
+			.vco			= 0x18,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(0),
+			.ctl0			= 0x00540003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 0,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 7,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 10, 16 }, { 10, 24 }, { 10, 0 }, { 17, 0 }, { 17, 8 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT,
+		.mode_support	= SVSB_MODE_INIT02,
+		.freq_base	= 688000000,
+		.core_sel	= 0x0fff0100,
+		.dvt_fixed	= 0x1,
+		.vmax		= 0x60,
+		.vmin		= 0x1a,
 	},
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_HIGH,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.tzone_name		= "gpu1",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 902000000,
-		.turn_freq_base		= 688000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x60,
-		.vmin			= 0x1a,
-		.age_config		= 0x555555,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x6,
-		.vco			= 0x18,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0101,
-		.int_st			= BIT(1),
-		.ctl0			= 0x00540003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 0,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 7,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 9, 16 }, { 9, 24 }, { 17, 0 }, { 17, 16 }, { 17, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_HIGH,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 688000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x1,
+			.vco			= 0x18,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(1),
+			.ctl0			= 0x00540003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 0,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 7,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 9, 16 }, { 9, 24 }, { 17, 0 }, { 17, 16 }, { 17, 24 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 902000000,
+		.core_sel	= 0x0fff0101,
+		.dvt_fixed	= 0x6,
+		.vmax		= 0x60,
+		.vmin		= 0x1a,
 	},
 };
 
 static struct svs_bank svs_mt8188_banks[] = {
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_LOW,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT,
-		.mode_support		= SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 640000000,
-		.turn_freq_base		= 640000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x38,
-		.vmin			= 0x1c,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x1,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0000,
-		.int_st			= BIT(0),
-		.ctl0			= 0x00100003,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 5, 16 }, { 5, 24 }, { 5, 0 }, { 15, 16 }, { 15, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_LOW,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 640000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(0),
+			.ctl0			= 0x00100003,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 5, 16 }, { 5, 24 }, { 5, 0 }, { 15, 16 }, { 15, 24 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT,
+		.mode_support	= SVSB_MODE_INIT02,
+		.freq_base	= 640000000,
+		.core_sel	= 0x0fff0000,
+		.dvt_fixed	= 0x1,
+		.vmax		= 0x38,
+		.vmin		= 0x1c,
 	},
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.type			= SVSB_TYPE_HIGH,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.tzone_name		= "gpu1",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 880000000,
-		.turn_freq_base		= 640000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x38,
-		.vmin			= 0x1c,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x4,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0001,
-		.int_st			= BIT(1),
-		.ctl0			= 0x00100003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 0,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 7,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 4, 16 }, { 4, 24 }, { 4, 0 }, { 14, 0 }, { 14, 8 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.type			= SVSB_TYPE_HIGH,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 640000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(1),
+			.ctl0			= 0x00100003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 0,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 7,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 4, 16 }, { 4, 24 }, { 4, 0 }, { 14, 0 }, { 14, 8 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 880000000,
+		.core_sel	= 0x0fff0001,
+		.dvt_fixed	= 0x4,
+		.vmax		= 0x38,
+		.vmin		= 0x1c,
 	},
 };
 
 static struct svs_bank svs_mt8186_banks[] = {
 	{
-		.sw_id			= SVSB_SWID_CPU_BIG,
-		.type			= SVSB_TYPE_LOW,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.cpu_id			= 6,
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT,
-		.mode_support		= SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 1670000000,
-		.turn_freq_base		= 1670000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.volt_od		= 4,
-		.vmax			= 0x59,
-		.vmin			= 0x20,
-		.age_config		= 0x1,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x3,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0100,
-		.int_st			= BIT(0),
-		.ctl0			= 0x00540003,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 3, 16 }, { 3, 24 }, { 3, 0 }, { 14, 16 }, { 14, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CPU_BIG,
+			.type			= SVSB_TYPE_LOW,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.cpu_id			= 6,
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 1670000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x1,
+			.dc_config		= 0x1,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(0),
+			.ctl0			= 0x00540003,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 3, 16 }, { 3, 24 }, { 3, 0 }, { 14, 16 }, { 14, 24 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT,
+		.volt_od	= 4,
+		.mode_support	= SVSB_MODE_INIT02,
+		.freq_base	= 1670000000,
+		.core_sel	= 0x0fff0100,
+		.dvt_fixed	= 0x3,
+		.vmax		= 0x59,
+		.vmin		= 0x20,
 	},
 	{
-		.sw_id			= SVSB_SWID_CPU_BIG,
-		.type			= SVSB_TYPE_HIGH,
-		.set_freq_pct		= svs_set_bank_freq_pct_v3,
-		.get_volts		= svs_get_bank_volts_v3,
-		.cpu_id			= 6,
-		.tzone_name		= "cpu_big0",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 2050000000,
-		.turn_freq_base		= 1670000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.volt_od		= 4,
-		.vmax			= 0x73,
-		.vmin			= 0x20,
-		.age_config		= 0x1,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x6,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0101,
-		.int_st			= BIT(1),
-		.ctl0			= 0x00540003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 8,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 8,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 2, 16 }, { 2, 24 }, { 2, 0 }, { 13, 0 }, { 13, 8 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CPU_BIG,
+			.type			= SVSB_TYPE_HIGH,
+			.set_freq_pct		= svs_set_bank_freq_pct_v3,
+			.get_volts		= svs_get_bank_volts_v3,
+			.cpu_id			= 6,
+			.tzone_name		= "cpu-big",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.turn_freq_base		= 1670000000,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x1,
+			.dc_config		= 0x1,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(1),
+			.ctl0			= 0x00540003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 8,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 8,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 2, 16 }, { 2, 24 }, { 2, 0 }, { 13, 0 }, { 13, 8 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.volt_od	= 4,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 2050000000,
+		.core_sel	= 0x0fff0101,
+		.dvt_fixed	= 0x6,
+		.vmax		= 0x73,
+		.vmin		= 0x20,
 	},
 	{
-		.sw_id			= SVSB_SWID_CPU_LITTLE,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.cpu_id			= 0,
-		.tzone_name		= "cpu_zone0",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 2000000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.volt_od		= 3,
-		.vmax			= 0x65,
-		.vmin			= 0x20,
-		.age_config		= 0x1,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x6,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0102,
-		.int_st			= BIT(2),
-		.ctl0			= 0x3210000f,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 8,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 8,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 4, 16 }, { 4, 24 }, { 4, 0 }, { 14, 0 }, { 14, 8 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CPU_LITTLE,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.cpu_id			= 0,
+			.tzone_name		= "cpu-little",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x1,
+			.dc_config		= 0x1,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(2),
+			.ctl0			= 0x3210000f,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 8,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 8,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 4, 16 }, { 4, 24 }, { 4, 0 }, { 14, 0 }, { 14, 8 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.volt_od	= 3,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 2000000000,
+		.core_sel	= 0x0fff0102,
+		.dvt_fixed	= 0x6,
+		.vmax		= 0x65,
+		.vmin		= 0x20,
 	},
 	{
-		.sw_id			= SVSB_SWID_CCI,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.tzone_name		= "cpu_zone0",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 1400000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.volt_od		= 3,
-		.vmax			= 0x65,
-		.vmin			= 0x20,
-		.age_config		= 0x1,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x6,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0103,
-		.int_st			= BIT(3),
-		.ctl0			= 0x3210000f,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 8,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 8,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 5, 16 }, { 5, 24 }, { 5, 0 }, { 15, 16 }, { 15, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CCI,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.tzone_name		= "cci",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x1,
+			.dc_config		= 0x1,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(3),
+			.ctl0			= 0x3210000f,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 8,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 8,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 5, 16 }, { 5, 24 }, { 5, 0 }, { 15, 16 }, { 15, 24 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.volt_od	= 3,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 1400000000,
+		.core_sel	= 0x0fff0103,
+		.dvt_fixed	= 0x6,
+		.vmax		= 0x65,
+		.vmin		= 0x20,
 	},
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.tzone_name		= "mfg",
-		.volt_flags		= SVSB_REMOVE_DVTFIXED_VOLT |
-					  SVSB_MON_VOLT_IGNORE,
-		.mode_support		= SVSB_MODE_INIT02 | SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 850000000,
-		.volt_step		= 6250,
-		.volt_base		= 400000,
-		.vmax			= 0x58,
-		.vmin			= 0x20,
-		.age_config		= 0x555555,
-		.dc_config		= 0x1,
-		.dvt_fixed		= 0x4,
-		.vco			= 0x10,
-		.chk_shift		= 0x87,
-		.core_sel		= 0x0fff0104,
-		.int_st			= BIT(4),
-		.ctl0			= 0x00100003,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 8,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 7,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 6, 16 }, { 6, 24 }, { 6, 0 }, { 15, 8 }, { 15, 0 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.volt_step		= 6250,
+			.volt_base		= 400000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x1,
+			.vco			= 0x10,
+			.chk_shift		= 0x87,
+			.int_st			= BIT(4),
+			.ctl0			= 0x00100003,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 8,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 7,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 6, 16 }, { 6, 24 }, { 6, 0 }, { 15, 8 }, { 15, 0 }
+			}
+		},
+		.volt_flags	= SVSB_REMOVE_DVTFIXED_VOLT | SVSB_MON_VOLT_IGNORE,
+		.mode_support	= SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 850000000,
+		.core_sel	= 0x0fff0104,
+		.dvt_fixed	= 0x4,
+		.vmax		= 0x58,
+		.vmin		= 0x20,
 	},
 };
 
 static struct svs_bank svs_mt8183_banks[] = {
 	{
-		.sw_id			= SVSB_SWID_CPU_LITTLE,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.cpu_id			= 0,
-		.buck_name		= "proc",
-		.volt_flags		= SVSB_INIT01_VOLT_INC_ONLY,
-		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 1989000000,
-		.vboot			= 0x30,
-		.volt_step		= 6250,
-		.volt_base		= 500000,
-		.vmax			= 0x64,
-		.vmin			= 0x18,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x7,
-		.vco			= 0x10,
-		.chk_shift		= 0x77,
-		.core_sel		= 0x8fff0000,
-		.int_st			= BIT(0),
-		.ctl0			= 0x00010001,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 16, 0 }, { 16, 8 }, { 17, 16 }, { 16, 16 }, { 16, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CPU_LITTLE,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.cpu_id			= 0,
+			.buck_name		= "proc",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.vboot			= 0x30,
+			.volt_step		= 6250,
+			.volt_base		= 500000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x77,
+			.int_st			= BIT(0),
+			.ctl0			= 0x00010001,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 16, 0 }, { 16, 8 }, { 17, 16 }, { 16, 16 }, { 16, 24 }
+			}
+		},
+		.volt_flags	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support	= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.freq_base	= 1989000000,
+		.core_sel	= 0x8fff0000,
+		.dvt_fixed	= 0x7,
+		.vmax		= 0x64,
+		.vmin		= 0x18,
+
 	},
 	{
-		.sw_id			= SVSB_SWID_CPU_BIG,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.cpu_id			= 4,
-		.buck_name		= "proc",
-		.volt_flags		= SVSB_INIT01_VOLT_INC_ONLY,
-		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 1989000000,
-		.vboot			= 0x30,
-		.volt_step		= 6250,
-		.volt_base		= 500000,
-		.vmax			= 0x58,
-		.vmin			= 0x10,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x7,
-		.vco			= 0x10,
-		.chk_shift		= 0x77,
-		.core_sel		= 0x8fff0001,
-		.int_st			= BIT(1),
-		.ctl0			= 0x00000001,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 18, 0 }, { 18, 8 }, { 17, 0 }, { 18, 16 }, { 18, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CPU_BIG,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.cpu_id			= 4,
+			.buck_name		= "proc",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.vboot			= 0x30,
+			.volt_step		= 6250,
+			.volt_base		= 500000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x77,
+			.int_st			= BIT(1),
+			.ctl0			= 0x00000001,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 18, 0 }, { 18, 8 }, { 17, 0 }, { 18, 16 }, { 18, 24 }
+			}
+		},
+		.volt_flags	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support	= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.freq_base	= 1989000000,
+		.core_sel	= 0x8fff0001,
+		.dvt_fixed	= 0x7,
+		.vmax		= 0x58,
+		.vmin		= 0x10,
+
 	},
 	{
-		.sw_id			= SVSB_SWID_CCI,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.buck_name		= "proc",
-		.volt_flags		= SVSB_INIT01_VOLT_INC_ONLY,
-		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 1196000000,
-		.vboot			= 0x30,
-		.volt_step		= 6250,
-		.volt_base		= 500000,
-		.vmax			= 0x64,
-		.vmin			= 0x18,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x7,
-		.vco			= 0x10,
-		.chk_shift		= 0x77,
-		.core_sel		= 0x8fff0002,
-		.int_st			= BIT(2),
-		.ctl0			= 0x00100003,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 4, 0 }, { 4, 8 }, { 5, 16 }, { 4, 16 }, { 4, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_CCI,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.buck_name		= "proc",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.vboot			= 0x30,
+			.volt_step		= 6250,
+			.volt_base		= 500000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x77,
+			.int_st			= BIT(2),
+			.ctl0			= 0x00100003,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 4, 0 }, { 4, 8 }, { 5, 16 }, { 4, 16 }, { 4, 24 }
+			}
+		},
+		.volt_flags	= SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support	= SVSB_MODE_INIT01 | SVSB_MODE_INIT02,
+		.freq_base	= 1196000000,
+		.core_sel	= 0x8fff0002,
+		.dvt_fixed	= 0x7,
+		.vmax		= 0x64,
+		.vmin		= 0x18,
 	},
 	{
-		.sw_id			= SVSB_SWID_GPU,
-		.set_freq_pct		= svs_set_bank_freq_pct_v2,
-		.get_volts		= svs_get_bank_volts_v2,
-		.buck_name		= "mali",
-		.tzone_name		= "tzts2",
-		.volt_flags		= SVSB_INIT01_PD_REQ |
-					  SVSB_INIT01_VOLT_INC_ONLY,
-		.mode_support		= SVSB_MODE_INIT01 | SVSB_MODE_INIT02 |
-					  SVSB_MODE_MON,
-		.opp_count		= MAX_OPP_ENTRIES,
-		.freq_base		= 900000000,
-		.vboot			= 0x30,
-		.volt_step		= 6250,
-		.volt_base		= 500000,
-		.vmax			= 0x40,
-		.vmin			= 0x14,
-		.age_config		= 0x555555,
-		.dc_config		= 0x555555,
-		.dvt_fixed		= 0x3,
-		.vco			= 0x10,
-		.chk_shift		= 0x77,
-		.core_sel		= 0x8fff0003,
-		.int_st			= BIT(3),
-		.ctl0			= 0x00050001,
-		.tzone_htemp		= 85000,
-		.tzone_htemp_voffset	= 0,
-		.tzone_ltemp		= 25000,
-		.tzone_ltemp_voffset	= 3,
-		.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
-			{ 6, 0 }, { 6, 8 }, { 5, 0 }, { 6, 16 }, { 6, 24 }
-		}
+		.pdata = (const struct svs_bank_pdata) {
+			.sw_id			= SVSB_SWID_GPU,
+			.set_freq_pct		= svs_set_bank_freq_pct_v2,
+			.get_volts		= svs_get_bank_volts_v2,
+			.buck_name		= "mali",
+			.tzone_name		= "gpu",
+			.opp_count		= MAX_OPP_ENTRIES,
+			.vboot			= 0x30,
+			.volt_step		= 6250,
+			.volt_base		= 500000,
+			.age_config		= 0x555555,
+			.dc_config		= 0x555555,
+			.vco			= 0x10,
+			.chk_shift		= 0x77,
+			.int_st			= BIT(3),
+			.ctl0			= 0x00050001,
+			.tzone_htemp		= 85000,
+			.tzone_htemp_voffset	= 0,
+			.tzone_ltemp		= 25000,
+			.tzone_ltemp_voffset	= 3,
+			.dev_fuse_map		= (const struct svs_fusemap[BDEV_MAX]) {
+				{ 6, 0 }, { 6, 8 }, { 5, 0 }, { 6, 16 }, { 6, 24 }
+			}
+		},
+		.volt_flags	= SVSB_INIT01_PD_REQ | SVSB_INIT01_VOLT_INC_ONLY,
+		.mode_support	= SVSB_MODE_INIT01 | SVSB_MODE_INIT02 | SVSB_MODE_MON,
+		.freq_base	= 900000000,
+		.core_sel	= 0x8fff0003,
+		.dvt_fixed	= 0x3,
+		.vmax		= 0x40,
+		.vmin		= 0x14,
 	},
 };
 
@@ -2874,5 +2934,6 @@ static struct platform_driver svs_driver = {
 module_platform_driver(svs_driver);
 
 MODULE_AUTHOR("Roger Lu <roger.lu@mediatek.com>");
+MODULE_AUTHOR("AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>");
 MODULE_DESCRIPTION("MediaTek SVS driver");
 MODULE_LICENSE("GPL");
-- 
2.42.0


