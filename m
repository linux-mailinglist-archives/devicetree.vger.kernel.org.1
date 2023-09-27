Return-Path: <devicetree+bounces-3828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 291FA7B03BF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:17:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 4758E1C208CF
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC4CF286A5;
	Wed, 27 Sep 2023 12:17:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78A68107BE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:17:16 +0000 (UTC)
Received: from out28-50.mail.aliyun.com (out28-50.mail.aliyun.com [115.124.28.50])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21AD113A;
	Wed, 27 Sep 2023 05:17:13 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.06718741|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_alarm|0.000977324-0.000179762-0.998843;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047212;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=29;RT=29;SR=0;TI=SMTPD_---.Upkf3Ko_1695817022;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.Upkf3Ko_1695817022)
          by smtp.aliyun-inc.com;
          Wed, 27 Sep 2023 20:17:10 +0800
From: wangweidong.a@awinic.com
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	wangweidong.a@awinic.com,
	shumingf@realtek.com,
	rf@opensource.cirrus.com,
	herve.codina@bootlin.com,
	arnd@arndb.de,
	13916275206@139.com,
	ryans.lee@analog.com,
	linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com,
	doug@schmorgal.com,
	fido_max@inbox.ru,
	harshit.m.mogalapalli@oracle.com,
	liweilei@awinic.com,
	yang.lee@linux.alibaba.com,
	u.kleine-koenig@pengutronix.de,
	yijiangtao@awinic.com,
	dan.carpenter@linaro.org,
	colin.i.king@gmail.com,
	trix@redhat.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V5 3/8] ASoC: codecs: Modify the code related to the property
Date: Wed, 27 Sep 2023 20:16:29 +0800
Message-ID: <20230927121634.94822-4-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230927121634.94822-1-wangweidong.a@awinic.com>
References: <20230927121634.94822-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Weidong Wang <wangweidong.a@awinic.com>

Remove the "fade-enable" property because other properties
already implement this functionality.
Rename "sound-channel" to "awinic,audio-channel",
this is to be consistent with the "awinic,aw88395.yaml" file

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88395/aw88395_device.c | 35 ++---------------------
 sound/soc/codecs/aw88395/aw88395_device.h |  4 +--
 2 files changed, 4 insertions(+), 35 deletions(-)

diff --git a/sound/soc/codecs/aw88395/aw88395_device.c b/sound/soc/codecs/aw88395/aw88395_device.c
index 33eda3741464..5ca4172cb788 100644
--- a/sound/soc/codecs/aw88395/aw88395_device.c
+++ b/sound/soc/codecs/aw88395/aw88395_device.c
@@ -297,9 +297,6 @@ static void aw_dev_fade_in(struct aw_device *aw_dev)
 	int fade_step = aw_dev->fade_step;
 	int i;
 
-	if (!aw_dev->fade_en)
-		return;
-
 	if (fade_step == 0 || aw_dev->fade_in_time == 0) {
 		aw_dev_set_volume(aw_dev, fade_in_vol);
 		return;
@@ -320,9 +317,6 @@ static void aw_dev_fade_out(struct aw_device *aw_dev)
 	int fade_step = aw_dev->fade_step;
 	int i;
 
-	if (!aw_dev->fade_en)
-		return;
-
 	if (fade_step == 0 || aw_dev->fade_out_time == 0) {
 		aw_dev_set_volume(aw_dev, AW88395_MUTE_VOL);
 		return;
@@ -1062,10 +1056,6 @@ static int aw_dev_update_reg_container(struct aw_device *aw_dev,
 		aw_dev_set_volume(aw_dev, vol_desc->ctl_volume);
 	}
 
-	/* keep min volume */
-	if (aw_dev->fade_en)
-		aw_dev_set_volume(aw_dev, AW88395_MUTE_VOL);
-
 	aw_dev_get_dsp_config(aw_dev, &aw_dev->dsp_cfg);
 
 	return ret;
@@ -1594,37 +1584,19 @@ static void aw88395_parse_channel_dt(struct aw_device *aw_dev)
 	u32 channel_value;
 	int ret;
 
-	ret = of_property_read_u32(np, "sound-channel", &channel_value);
+	ret = of_property_read_u32(np, "awinic,audio-channel", &channel_value);
 	if (ret) {
 		dev_dbg(aw_dev->dev,
-			"read sound-channel failed,use default 0");
+			"read audio-channel failed,use default 0");
 		aw_dev->channel = AW88395_DEV_DEFAULT_CH;
 		return;
 	}
 
-	dev_dbg(aw_dev->dev, "read sound-channel value is: %d",
+	dev_dbg(aw_dev->dev, "read audio-channel value is: %d",
 			channel_value);
 	aw_dev->channel = channel_value;
 }
 
-static void aw88395_parse_fade_enable_dt(struct aw_device *aw_dev)
-{
-	struct device_node *np = aw_dev->dev->of_node;
-	u32 fade_en;
-	int ret;
-
-	ret = of_property_read_u32(np, "fade-enable", &fade_en);
-	if (ret) {
-		dev_dbg(aw_dev->dev,
-			"read fade-enable failed, close fade_in_out");
-		fade_en = AW88395_FADE_IN_OUT_DEFAULT;
-	}
-
-	dev_dbg(aw_dev->dev, "read fade-enable value is: %d", fade_en);
-
-	aw_dev->fade_en = fade_en;
-}
-
 static int aw_dev_init(struct aw_device *aw_dev)
 {
 	aw_dev->chip_id = AW88395_CHIP_ID;
@@ -1639,7 +1611,6 @@ static int aw_dev_init(struct aw_device *aw_dev)
 	aw_dev->fade_step = AW88395_VOLUME_STEP_DB;
 	aw_dev->volume_desc.ctl_volume = AW88395_VOL_DEFAULT_VALUE;
 	aw88395_parse_channel_dt(aw_dev);
-	aw88395_parse_fade_enable_dt(aw_dev);
 
 	return 0;
 }
diff --git a/sound/soc/codecs/aw88395/aw88395_device.h b/sound/soc/codecs/aw88395/aw88395_device.h
index caf730753167..d32d16c89509 100644
--- a/sound/soc/codecs/aw88395/aw88395_device.h
+++ b/sound/soc/codecs/aw88395/aw88395_device.h
@@ -141,6 +141,7 @@ struct aw_device {
 	unsigned char prof_cur;
 	unsigned char prof_index;
 	unsigned char dsp_crc_st;
+	unsigned char dsp_cfg;
 	u16 chip_id;
 
 	unsigned int channel;
@@ -151,9 +152,6 @@ struct aw_device {
 	struct regmap *regmap;
 	char *acf;
 
-	u32 fade_en;
-	unsigned char dsp_cfg;
-
 	u32 dsp_fw_len;
 	u32 dsp_cfg_len;
 	u8 platform;
-- 
2.41.0


