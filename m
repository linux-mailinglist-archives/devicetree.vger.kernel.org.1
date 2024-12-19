Return-Path: <devicetree+bounces-132658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7FA9F7B6B
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 13:35:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A04416E596
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 12:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42682224B0A;
	Thu, 19 Dec 2024 12:31:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from out198-12.us.a.mail.aliyun.com (out198-12.us.a.mail.aliyun.com [47.90.198.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF9B4223E92;
	Thu, 19 Dec 2024 12:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=47.90.198.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734611493; cv=none; b=Tr2H/ZpvMsiA4T52LW1dqwOL66jR3mH0pKniAD4STtEMnUAYjfLPVsyrD2wVT/iU2XTvPDlSEh8j/Ur8FnnpYv2Tx/sJoqm/y+SFrE+QPQvAVfAZQ0UResoOuiCsdRJCkEO+4vtq0+LlDWIkhs4eQ1moac9KIEv64UibOGBOQ7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734611493; c=relaxed/simple;
	bh=F+HnM1n5uRGG1+aXG0zglWtPHSGYwknpmd9Dnm8jruU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TJf+0x48TQQsF6LBHCNWWLlk/pldTm+oH9nSRUa/vHrzBJTmRNq3ojNWE2n820cFyj8S8tK0qTPn2CaN2X9BnwEcn8nlBN8htFML8rmE3Opm0XymUL31ocVGor2LRP3oPF3BBiv1EsDl8ekWD5joze0fINT46E5yYcVWyD9p1zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=awinic.com; spf=pass smtp.mailfrom=awinic.com; arc=none smtp.client-ip=47.90.198.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=awinic.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=awinic.com
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.ai3.3-V_1734611462 cluster:ay29)
          by smtp.aliyun-inc.com;
          Thu, 19 Dec 2024 20:31:08 +0800
From: wangweidong.a@awinic.com
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	ivprusov@salutedevices.com,
	neil.armstrong@linaro.org,
	jack.yu@realtek.com,
	rf@opensource.cirrus.com,
	zhoubinbin@loongson.cn,
	quic_pkumpatl@quicinc.com,
	herve.codina@bootlin.com,
	masahiroy@kernel.org,
	nuno.sa@analog.com,
	wangweidong.a@awinic.com,
	yesanishhere@gmail.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: yijiangtao@awinic.com
Subject: [PATCH V2 2/2] ASoC: codecs: Add aw88083 amplifier driver
Date: Thu, 19 Dec 2024 20:30:46 +0800
Message-ID: <20241219123047.33330-3-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241219123047.33330-1-wangweidong.a@awinic.com>
References: <20241219123047.33330-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Weidong Wang <wangweidong.a@awinic.com>

The driver is for amplifiers aw88083 of Awinic Technology
Corporation. The AW88083 is an intelligent digital audio
amplifier with low noise.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/Kconfig   |   2 +-
 sound/soc/codecs/aw88081.c | 344 ++++++++++++++++++++++++++++++-------
 sound/soc/codecs/aw88081.h |  43 +++++
 3 files changed, 326 insertions(+), 63 deletions(-)

diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
index 0f2df7c91e18..0ba319683b6b 100644
--- a/sound/soc/codecs/Kconfig
+++ b/sound/soc/codecs/Kconfig
@@ -692,7 +692,7 @@ config SND_SOC_AW88261
 	  the input amplitude.
 
 config SND_SOC_AW88081
-	tristate "Soc Audio for awinic aw88081"
+	tristate "Soc Audio for awinic aw88081/aw88083"
 	depends on I2C
 	select REGMAP_I2C
 	select SND_SOC_AW88395_LIB
diff --git a/sound/soc/codecs/aw88081.c b/sound/soc/codecs/aw88081.c
index 58b8e002d76f..dc8359074f4b 100644
--- a/sound/soc/codecs/aw88081.c
+++ b/sound/soc/codecs/aw88081.c
@@ -14,13 +14,18 @@
 #include "aw88081.h"
 #include "aw88395/aw88395_device.h"
 
+enum aw8808x_type {
+	AW88081,
+	AW88083,
+};
+
 struct aw88081 {
 	struct aw_device *aw_pa;
 	struct mutex lock;
 	struct delayed_work start_work;
 	struct regmap *regmap;
 	struct aw_container *aw_cfg;
-
+	enum aw8808x_type devtype;
 	bool phase_sync;
 };
 
@@ -32,6 +37,14 @@ static const struct regmap_config aw88081_regmap_config = {
 	.val_format_endian = REGMAP_ENDIAN_BIG,
 };
 
+static const struct regmap_config aw88083_regmap_config = {
+	.val_bits = 16,
+	.reg_bits = 8,
+	.max_register = AW88083_REG_MAX,
+	.reg_format_endian = REGMAP_ENDIAN_LITTLE,
+	.val_format_endian = REGMAP_ENDIAN_BIG,
+};
+
 static int aw88081_dev_get_iis_status(struct aw_device *aw_dev)
 {
 	unsigned int reg_val;
@@ -176,6 +189,21 @@ static void aw88081_dev_i2s_tx_enable(struct aw_device *aw_dev, bool flag)
 			~AW88081_I2STXEN_MASK, AW88081_I2STXEN_DISABLE_VALUE);
 }
 
+static void aw88083_i2c_wen(struct aw88081 *aw88081, bool flag)
+{
+	struct aw_device *aw_dev = aw88081->aw_pa;
+
+	if (aw88081->devtype != AW88083)
+		return;
+
+	if (flag)
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+			~AW88083_I2C_WEN_MASK, AW88083_I2C_WEN_ENABLE_VALUE);
+	else
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+			~AW88083_I2C_WEN_MASK, AW88083_I2C_WEN_DISABLE_VALUE);
+}
+
 static void aw88081_dev_pwd(struct aw_device *aw_dev, bool pwd)
 {
 	if (pwd)
@@ -196,6 +224,26 @@ static void aw88081_dev_amppd(struct aw_device *aw_dev, bool amppd)
 				~AW88081_EN_PA_MASK, AW88081_EN_PA_WORKING_VALUE);
 }
 
+static void aw88083_dev_amppd(struct aw_device *aw_dev, bool amppd)
+{
+	if (amppd)
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+				~AW88083_AMPPD_MASK, AW88083_AMPPD_POWER_DOWN_VALUE);
+	else
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+				~AW88083_AMPPD_MASK, AW88083_AMPPD_WORKING_VALUE);
+}
+
+static void aw88083_dev_pllpd(struct aw_device *aw_dev, bool pllpd)
+{
+	if (pllpd)
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+				~AW88083_PLL_PD_MASK, AW88083_PLL_PD_WORKING_VALUE);
+	else
+		regmap_update_bits(aw_dev->regmap, AW88081_SYSCTRL_REG,
+				~AW88083_PLL_PD_MASK, AW88083_PLL_PD_POWER_DOWN_VALUE);
+}
+
 static void aw88081_dev_clear_int_status(struct aw_device *aw_dev)
 {
 	unsigned int int_status;
@@ -284,12 +332,91 @@ static void aw88081_dev_uls_hmute(struct aw_device *aw_dev, bool uls_hmute)
 				AW88081_ULS_HMUTE_DISABLE_VALUE);
 }
 
+static int aw88081_dev_reg_value_check(struct aw_device *aw_dev,
+					unsigned int reg_addr, unsigned int *reg_val)
+{
+	unsigned int read_vol;
+
+	if (reg_addr == AW88081_SYSCTRL_REG) {
+		*reg_val &= ~(~AW88081_EN_PA_MASK |
+			      ~AW88081_PWDN_MASK |
+			      ~AW88081_HMUTE_MASK |
+			      ~AW88081_ULS_HMUTE_MASK);
+
+		*reg_val |= AW88081_EN_PA_POWER_DOWN_VALUE |
+			    AW88081_PWDN_POWER_DOWN_VALUE |
+			    AW88081_HMUTE_ENABLE_VALUE |
+			    AW88081_ULS_HMUTE_ENABLE_VALUE;
+	}
+
+	if (reg_addr == AW88081_SYSCTRL2_REG) {
+		read_vol = (*reg_val & (~AW88081_VOL_MASK)) >>
+				AW88081_VOL_START_BIT;
+		aw_dev->volume_desc.init_volume = read_vol;
+	}
+
+	/* i2stxen */
+	if (reg_addr == AW88081_I2SCTRL3_REG) {
+		/* close tx */
+		*reg_val &= AW88081_I2STXEN_MASK;
+		*reg_val |= AW88081_I2STXEN_DISABLE_VALUE;
+	}
+
+	return 0;
+}
+
+static int aw88083_dev_reg_value_check(struct aw_device *aw_dev,
+					unsigned int reg_addr, unsigned int *reg_val)
+{
+	unsigned int read_vol;
+
+	if (reg_addr == AW88081_SYSCTRL_REG) {
+		*reg_val &= ~(~AW88083_AMPPD_MASK |
+			      ~AW88081_PWDN_MASK |
+			      ~AW88081_HMUTE_MASK |
+			      ~AW88083_I2C_WEN_MASK);
+
+		*reg_val |= AW88083_AMPPD_POWER_DOWN_VALUE |
+			    AW88081_PWDN_POWER_DOWN_VALUE |
+			    AW88081_HMUTE_ENABLE_VALUE |
+			    AW88083_I2C_WEN_ENABLE_VALUE;
+	}
+
+	if (reg_addr == AW88081_SYSCTRL2_REG) {
+		read_vol = (*reg_val & (~AW88081_VOL_MASK)) >> AW88081_VOL_START_BIT;
+		aw_dev->volume_desc.init_volume = read_vol;
+	}
+
+	return 0;
+}
+
+static int aw8808x_reg_value_check(struct aw88081 *aw88081,
+					unsigned int reg_addr, unsigned int *reg_val)
+{
+	struct aw_device *aw_dev = aw88081->aw_pa;
+	int ret;
+
+	switch (aw88081->devtype) {
+	case AW88081:
+		ret = aw88081_dev_reg_value_check(aw_dev, reg_addr, reg_val);
+		break;
+	case AW88083:
+		ret = aw88083_dev_reg_value_check(aw_dev, reg_addr, reg_val);
+		break;
+	default:
+		dev_err(aw_dev, "unsupported this device\n");
+		ret = -EINVAL;
+		break;
+	}
+
+	return ret;
+}
+
 static int aw88081_dev_reg_update(struct aw88081 *aw88081,
 					unsigned char *data, unsigned int len)
 {
 	struct aw_device *aw_dev = aw88081->aw_pa;
 	struct aw_volume_desc *vol_desc = &aw_dev->volume_desc;
-	unsigned int read_vol;
 	int data_len, i, ret;
 	int16_t *reg_data;
 	u16 reg_val;
@@ -312,30 +439,9 @@ static int aw88081_dev_reg_update(struct aw88081 *aw88081,
 		reg_addr = reg_data[i];
 		reg_val = reg_data[i + 1];
 
-		if (reg_addr == AW88081_SYSCTRL_REG) {
-			reg_val &= ~(~AW88081_EN_PA_MASK |
-				    ~AW88081_PWDN_MASK |
-				    ~AW88081_HMUTE_MASK |
-				    ~AW88081_ULS_HMUTE_MASK);
-
-			reg_val |= AW88081_EN_PA_POWER_DOWN_VALUE |
-				   AW88081_PWDN_POWER_DOWN_VALUE |
-				   AW88081_HMUTE_ENABLE_VALUE |
-				   AW88081_ULS_HMUTE_ENABLE_VALUE;
-		}
-
-		if (reg_addr == AW88081_SYSCTRL2_REG) {
-			read_vol = (reg_val & (~AW88081_VOL_MASK)) >>
-				AW88081_VOL_START_BIT;
-			aw_dev->volume_desc.init_volume = read_vol;
-		}
-
-		/* i2stxen */
-		if (reg_addr == AW88081_I2SCTRL3_REG) {
-			/* close tx */
-			reg_val &= AW88081_I2STXEN_MASK;
-			reg_val |= AW88081_I2STXEN_DISABLE_VALUE;
-		}
+		ret = aw8808x_reg_value_check(aw88081, reg_addr, &reg_val);
+		if (ret)
+			return ret;
 
 		ret = regmap_write(aw_dev->regmap, reg_addr, reg_val);
 		if (ret)
@@ -474,8 +580,59 @@ static int aw88081_dev_start(struct aw88081 *aw88081)
 	return ret;
 }
 
-static int aw88081_dev_stop(struct aw_device *aw_dev)
+static int aw88083_dev_start(struct aw88081 *aw88081)
+{
+	struct aw_device *aw_dev = aw88081->aw_pa;
+
+	if (aw_dev->status == AW88081_DEV_PW_ON) {
+		dev_dbg(aw_dev->dev, "already power on");
+		return 0;
+	}
+	aw88083_i2c_wen(aw88081, true);
+
+	/* power on */
+	aw88081_dev_pwd(aw_dev, false);
+	usleep_range(AW88081_2000_US, AW88081_2000_US + 10);
+
+	aw88083_dev_pllpd(aw_dev, true);
+	/* amppd on */
+	aw88083_dev_amppd(aw_dev, false);
+	usleep_range(AW88081_2000_US, AW88081_2000_US + 50);
+
+	/* close mute */
+	aw88081_dev_mute(aw_dev, false);
+
+	aw88083_i2c_wen(aw88081, false);
+
+	aw_dev->status = AW88081_DEV_PW_ON;
+
+	return 0;
+}
+
+static int aw8808x_dev_start(struct aw88081 *aw88081)
+{
+	int ret;
+
+	switch (aw88081->devtype) {
+	case AW88081:
+		ret = aw88081_dev_start(aw88081);
+		break;
+	case AW88083:
+		ret = aw88083_dev_start(aw88081);
+		break;
+	default:
+		ret = -EINVAL;
+		dev_err(aw88081->aw_pa->dev, "unsupport device\n");
+		break;
+	}
+
+	return ret;
+}
+
+static int aw88081_dev_stop(struct aw88081 *aw88081)
 {
+	struct aw_device *aw_dev = aw88081->aw_pa;
+
 	if (aw_dev->status == AW88081_DEV_PW_OFF) {
 		dev_dbg(aw_dev->dev, "already power off");
 		return 0;
@@ -503,6 +660,56 @@ static int aw88081_dev_stop(struct aw_device *aw_dev)
 	return 0;
 }
 
+static int aw88083_dev_stop(struct aw88081 *aw88081)
+{
+	struct aw_device *aw_dev = aw88081->aw_pa;
+
+	if (aw_dev->status == AW88081_DEV_PW_OFF) {
+		dev_dbg(aw_dev->dev, "already power off");
+		return 0;
+	}
+
+	aw_dev->status = AW88081_DEV_PW_OFF;
+
+	aw88083_i2c_wen(aw88081, true);
+	/* set mute */
+	aw88081_dev_mute(aw_dev, true);
+
+	usleep_range(AW88081_2000_US, AW88081_2000_US + 100);
+
+	/* enable amppd */
+	aw88083_dev_amppd(aw_dev, true);
+
+	aw88083_dev_pllpd(aw_dev, false);
+
+	/* set power down */
+	aw88081_dev_pwd(aw_dev, true);
+
+	aw88083_i2c_wen(aw88081, false);
+
+	return 0;
+}
+
+static int aw8808x_stop(struct aw88081 *aw88081)
+{
+	int ret;
+
+	switch (aw88081->devtype) {
+	case AW88081:
+		ret = aw88081_dev_stop(aw88081);
+		break;
+	case AW88083:
+		ret = aw88083_dev_stop(aw88081);
+		break;
+	default:
+		dev_err(aw88081->aw_pa->dev, "unsupport device\n");
+		ret = -EINVAL;
+		break;
+	}
+
+	return ret;
+}
+
 static int aw88081_reg_update(struct aw88081 *aw88081, bool force)
 {
 	struct aw_device *aw_dev = aw88081->aw_pa;
@@ -530,7 +737,7 @@ static int aw88081_reg_update(struct aw88081 *aw88081, bool force)
 	return 0;
 }
 
-static void aw88081_start_pa(struct aw88081 *aw88081)
+static void aw8808x_start_pa(struct aw88081 *aw88081)
 {
 	int ret, i;
 
@@ -540,7 +747,7 @@ static void aw88081_start_pa(struct aw88081 *aw88081)
 			dev_err(aw88081->aw_pa->dev, "fw update failed, cnt:%d\n", i);
 			continue;
 		}
-		ret = aw88081_dev_start(aw88081);
+		ret = aw8808x_dev_start(aw88081);
 		if (ret) {
 			dev_err(aw88081->aw_pa->dev, "aw88081 device start failed. retry = %d", i);
 			continue;
@@ -557,11 +764,11 @@ static void aw88081_startup_work(struct work_struct *work)
 		container_of(work, struct aw88081, start_work.work);
 
 	mutex_lock(&aw88081->lock);
-	aw88081_start_pa(aw88081);
+	aw8808x_start_pa(aw88081);
 	mutex_unlock(&aw88081->lock);
 }
 
-static void aw88081_start(struct aw88081 *aw88081, bool sync_start)
+static void aw8808x_start(struct aw88081 *aw88081, bool sync_start)
 {
 	if (aw88081->aw_pa->fw_status != AW88081_DEV_FW_OK)
 		return;
@@ -570,7 +777,7 @@ static void aw88081_start(struct aw88081 *aw88081, bool sync_start)
 		return;
 
 	if (sync_start == AW88081_SYNC_START)
-		aw88081_start_pa(aw88081);
+		aw8808x_start_pa(aw88081);
 	else
 		queue_delayed_work(system_wq,
 			&aw88081->start_work,
@@ -745,8 +952,8 @@ static int aw88081_profile_set(struct snd_kcontrol *kcontrol,
 	}
 
 	if (aw88081->aw_pa->status) {
-		aw88081_dev_stop(aw88081->aw_pa);
-		aw88081_start(aw88081, AW88081_SYNC_START);
+		aw8808x_stop(aw88081);
+		aw8808x_start(aw88081, AW88081_SYNC_START);
 	}
 
 	mutex_unlock(&aw88081->lock);
@@ -781,12 +988,15 @@ static int aw88081_volume_set(struct snd_kcontrol *kcontrol,
 	if (value < mc->min || value > mc->max)
 		return -EINVAL;
 
+	aw88083_i2c_wen(aw88081, true);
+
 	if (vol_desc->ctl_volume != value) {
 		vol_desc->ctl_volume = value;
 		aw88081_dev_set_volume(aw88081->aw_pa, vol_desc->ctl_volume);
 		return 1;
 	}
 
+	aw88083_i2c_wen(aw88081, false);
 	return 0;
 }
 
@@ -860,13 +1070,19 @@ static int aw88081_init(struct aw88081 *aw88081, struct i2c_client *i2c, struct
 		dev_err(&i2c->dev, "%s read chipid error. ret = %d", __func__, ret);
 		return ret;
 	}
-	if (chip_id != AW88081_CHIP_ID) {
+
+	switch (chip_id) {
+	case AW88081_CHIP_ID:
+		dev_dbg(&i2c->dev, "chip id = %x\n", chip_id);
+		break;
+	case AW88083_CHIP_ID:
+		dev_dbg(&i2c->dev, "chip id = %x\n", chip_id);
+		break;
+	default:
 		dev_err(&i2c->dev, "unsupported device");
 		return -ENXIO;
 	}
 
-	dev_dbg(&i2c->dev, "chip id = %x\n", chip_id);
-
 	aw_dev = devm_kzalloc(&i2c->dev, sizeof(*aw_dev), GFP_KERNEL);
 	if (!aw_dev)
 		return -ENOMEM;
@@ -875,7 +1091,7 @@ static int aw88081_init(struct aw88081 *aw88081, struct i2c_client *i2c, struct
 	aw_dev->i2c = i2c;
 	aw_dev->regmap = regmap;
 	aw_dev->dev = &i2c->dev;
-	aw_dev->chip_id = AW88081_CHIP_ID;
+	aw_dev->chip_id = chip_id;
 	aw_dev->acf = NULL;
 	aw_dev->prof_info.prof_desc = NULL;
 	aw_dev->prof_info.prof_type = AW88395_DEV_NONE_TYPE_ID;
@@ -912,21 +1128,8 @@ static int aw88081_dev_init(struct aw88081 *aw88081, struct aw_container *aw_cfg
 		return ret;
 	}
 
-	aw88081_dev_clear_int_status(aw_dev);
-
-	aw88081_dev_uls_hmute(aw_dev, true);
-
-	aw88081_dev_mute(aw_dev, true);
-
-	usleep_range(AW88081_5000_US, AW88081_5000_US + 10);
-
-	aw88081_dev_i2s_tx_enable(aw_dev, false);
-
-	usleep_range(AW88081_1000_US, AW88081_1000_US + 100);
-
-	aw88081_dev_amppd(aw_dev, true);
-
-	aw88081_dev_pwd(aw_dev, true);
+	aw_dev->status = AW88081_DEV_PW_ON;
+	aw8808x_stop(aw88081);
 
 	return 0;
 }
@@ -974,10 +1177,10 @@ static int aw88081_playback_event(struct snd_soc_dapm_widget *w,
 	mutex_lock(&aw88081->lock);
 	switch (event) {
 	case SND_SOC_DAPM_PRE_PMU:
-		aw88081_start(aw88081, AW88081_ASYNC_START);
+		aw8808x_start(aw88081, AW88081_ASYNC_START);
 		break;
 	case SND_SOC_DAPM_POST_PMD:
-		aw88081_dev_stop(aw88081->aw_pa);
+		aw8808x_stop(aw88081);
 		break;
 	default:
 		break;
@@ -1036,8 +1239,17 @@ static const struct snd_soc_component_driver soc_codec_dev_aw88081 = {
 	.num_controls = ARRAY_SIZE(aw88081_controls),
 };
 
+static const struct i2c_device_id aw88081_i2c_id[] = {
+	{ AW88081_I2C_NAME, AW88081},
+	{ AW88083_I2C_NAME, AW88083},
+	{ }
+};
+MODULE_DEVICE_TABLE(i2c, aw88081_i2c_id);
+
 static int aw88081_i2c_probe(struct i2c_client *i2c)
 {
+	const struct regmap_config *regmap_config;
+	const struct i2c_device_id *id;
 	struct aw88081 *aw88081;
 	int ret;
 
@@ -1049,11 +1261,25 @@ static int aw88081_i2c_probe(struct i2c_client *i2c)
 	if (!aw88081)
 		return -ENOMEM;
 
+	id = i2c_match_id(aw88081_i2c_id, i2c);
+	aw88081->devtype = id->driver_data;
+
 	mutex_init(&aw88081->lock);
 
 	i2c_set_clientdata(i2c, aw88081);
 
-	aw88081->regmap = devm_regmap_init_i2c(i2c, &aw88081_regmap_config);
+	switch (aw88081->devtype) {
+	case AW88081:
+		regmap_config = &aw88081_regmap_config;
+		break;
+	case AW88083:
+		regmap_config = &aw88083_regmap_config;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	aw88081->regmap = devm_regmap_init_i2c(i2c, regmap_config);
 	if (IS_ERR(aw88081->regmap))
 		return dev_err_probe(&i2c->dev, PTR_ERR(aw88081->regmap),
 						"failed to init regmap\n");
@@ -1068,12 +1294,6 @@ static int aw88081_i2c_probe(struct i2c_client *i2c)
 			aw88081_dai, ARRAY_SIZE(aw88081_dai));
 }
 
-static const struct i2c_device_id aw88081_i2c_id[] = {
-	{ AW88081_I2C_NAME },
-	{ }
-};
-MODULE_DEVICE_TABLE(i2c, aw88081_i2c_id);
-
 static struct i2c_driver aw88081_i2c_driver = {
 	.driver = {
 		.name = AW88081_I2C_NAME,
diff --git a/sound/soc/codecs/aw88081.h b/sound/soc/codecs/aw88081.h
index b4bf7288021a..c4679476f524 100644
--- a/sound/soc/codecs/aw88081.h
+++ b/sound/soc/codecs/aw88081.h
@@ -231,6 +231,49 @@
 #define AW88081_CCO_MUX_BYPASS_VALUE	\
 	(AW88081_CCO_MUX_BYPASS << AW88081_CCO_MUX_START_BIT)
 
+#define AW88083_I2C_WEN_START_BIT	(14)
+#define AW88083_I2C_WEN_BITS_LEN	(2)
+#define AW88083_I2C_WEN_MASK		\
+	(~(((1<<AW88083_I2C_WEN_BITS_LEN)-1) << AW88083_I2C_WEN_START_BIT))
+
+#define AW88083_I2C_WEN_DISABLE	(0)
+#define AW88083_I2C_WEN_DISABLE_VALUE	\
+	(AW88083_I2C_WEN_DISABLE << AW88083_I2C_WEN_START_BIT)
+
+#define AW88083_I2C_WEN_ENABLE		(2)
+#define AW88083_I2C_WEN_ENABLE_VALUE	\
+	(AW88083_I2C_WEN_ENABLE << AW88083_I2C_WEN_START_BIT)
+
+#define AW88083_PLL_PD_START_BIT	(2)
+#define AW88083_PLL_PD_BITS_LEN	(1)
+#define AW88083_PLL_PD_MASK		\
+	(~(((1<<AW88083_PLL_PD_BITS_LEN)-1) << AW88083_PLL_PD_START_BIT))
+
+#define AW88083_PLL_PD_POWER_DOWN	(1)
+#define AW88083_PLL_PD_POWER_DOWN_VALUE	\
+	(AW88083_PLL_PD_POWER_DOWN << AW88083_PLL_PD_START_BIT)
+
+#define AW88083_PLL_PD_WORKING		(0)
+#define AW88083_PLL_PD_WORKING_VALUE	\
+	(AW88083_PLL_PD_WORKING << AW88083_PLL_PD_START_BIT)
+
+#define AW88083_AMPPD_START_BIT	(1)
+#define AW88083_AMPPD_BITS_LEN		(1)
+#define AW88083_AMPPD_MASK		\
+	(~(((1<<AW88083_AMPPD_BITS_LEN)-1) << AW88083_AMPPD_START_BIT))
+
+#define AW88083_AMPPD_WORKING		(0)
+#define AW88083_AMPPD_WORKING_VALUE	\
+	(AW88083_AMPPD_WORKING << AW88083_AMPPD_START_BIT)
+
+#define AW88083_AMPPD_POWER_DOWN	(1)
+#define AW88083_AMPPD_POWER_DOWN_VALUE	\
+	(AW88083_AMPPD_POWER_DOWN << AW88083_AMPPD_START_BIT)
+
+#define AW88083_REG_MAX		(0x7D)
+#define AW88083_I2C_NAME		"aw88083"
+#define AW88083_CHIP_ID		0x2407
+
 #define AW88081_START_RETRIES		(5)
 #define AW88081_START_WORK_DELAY_MS	(0)
 
-- 
2.47.0


