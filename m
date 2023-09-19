Return-Path: <devicetree+bounces-1381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A89107A6065
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:58:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61CA428172F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:58:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01CC3588D;
	Tue, 19 Sep 2023 10:58:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B0358B5
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:58:26 +0000 (UTC)
Received: from out28-5.mail.aliyun.com (out28-5.mail.aliyun.com [115.124.28.5])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A21ECF2;
	Tue, 19 Sep 2023 03:58:24 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.06713574|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_social|0.00107258-5.78979e-05-0.99887;FP=10251858919629463530|1|1|19|0|-1|-1|-1;HT=ay29a033018047199;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.Uj4ESSi_1695121093;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.Uj4ESSi_1695121093)
          by smtp.aliyun-inc.com;
          Tue, 19 Sep 2023 18:58:20 +0800
From: wangweidong.a@awinic.com
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	wangweidong.a@awinic.com,
	rf@opensource.cirrus.com,
	herve.codina@bootlin.com,
	shumingf@realtek.com,
	ryans.lee@analog.com,
	13916275206@139.com,
	linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com,
	povik+lin@cutebit.org,
	harshit.m.mogalapalli@oracle.com,
	arnd@arndb.de,
	yijiangtao@awinic.com,
	yang.lee@linux.alibaba.com,
	liweilei@awinic.com,
	u.kleine-koenig@pengutronix.de,
	colin.i.king@gmail.com,
	trix@redhat.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 6/7] ASoC: codecs: Change the aw88261 variable name and i2c driver name
Date: Tue, 19 Sep 2023 18:57:23 +0800
Message-ID: <20230919105724.105624-7-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230919105724.105624-1-wangweidong.a@awinic.com>
References: <20230919105724.105624-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Weidong Wang <wangweidong.a@awinic.com>

Change "sound-channel" to "awinic,audio-channel".
Change "aw88261_smartpa" to "aw88261".
Change "sync-flag" to "awinic,sync-flag".
These changes are made to align with yaml files.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88261.c | 27 +++++++++++++--------------
 sound/soc/codecs/aw88261.h |  4 ++--
 2 files changed, 15 insertions(+), 16 deletions(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index a697b5006b45..45eaf931a69c 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -477,7 +477,7 @@ static int aw88261_dev_reg_update(struct aw88261 *aw88261,
 	return ret;
 }
 
-static char *aw88261_dev_get_prof_name(struct aw_device *aw_dev, int index)
+static int aw88261_dev_get_prof_name(struct aw_device *aw_dev, int index, char **prof_name)
 {
 	struct aw_prof_info *prof_info = &aw_dev->prof_info;
 	struct aw_prof_desc *prof_desc;
@@ -485,12 +485,14 @@ static char *aw88261_dev_get_prof_name(struct aw_device *aw_dev, int index)
 	if ((index >= aw_dev->prof_info.count) || (index < 0)) {
 		dev_err(aw_dev->dev, "index[%d] overflow count[%d]",
 			index, aw_dev->prof_info.count);
-		return NULL;
+		return -EINVAL;
 	}
 
 	prof_desc = &aw_dev->prof_info.prof_desc[index];
 
-	return prof_info->prof_name_list[prof_desc->id];
+	*prof_name = prof_info->prof_name_list[prof_desc->id];
+
+	return 0;
 }
 
 static int aw88261_dev_get_prof_data(struct aw_device *aw_dev, int index,
@@ -515,8 +517,8 @@ static int aw88261_dev_fw_update(struct aw88261 *aw88261)
 	char *prof_name;
 	int ret;
 
-	prof_name = aw88261_dev_get_prof_name(aw_dev, aw_dev->prof_index);
-	if (!prof_name) {
+	ret = aw88261_dev_get_prof_name(aw_dev, aw_dev->prof_index, &prof_name);
+	if (ret) {
 		dev_err(aw_dev->dev, "get prof name failed");
 		return -EINVAL;
 	}
@@ -818,9 +820,8 @@ static int aw88261_profile_info(struct snd_kcontrol *kcontrol,
 {
 	struct snd_soc_component *codec = snd_soc_kcontrol_component(kcontrol);
 	struct aw88261 *aw88261 = snd_soc_component_get_drvdata(codec);
-	const char *prof_name;
-	char *name;
-	int count;
+	char *prof_name, *name;
+	int count, ret;
 
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 	uinfo->count = 1;
@@ -839,8 +840,8 @@ static int aw88261_profile_info(struct snd_kcontrol *kcontrol,
 	name = uinfo->value.enumerated.name;
 	count = uinfo->value.enumerated.item;
 
-	prof_name = aw88261_dev_get_prof_name(aw88261->aw_pa, count);
-	if (!prof_name) {
+	ret = aw88261_dev_get_prof_name(aw88261->aw_pa, count, &prof_name);
+	if (ret) {
 		strscpy(uinfo->value.enumerated.name, "null",
 						strlen("null") + 1);
 		return 0;
@@ -1187,13 +1188,11 @@ static void aw88261_parse_channel_dt(struct aw88261 *aw88261)
 	struct aw_device *aw_dev = aw88261->aw_pa;
 	struct device_node *np = aw_dev->dev->of_node;
 	u32 channel_value = AW88261_DEV_DEFAULT_CH;
-	u32 sync_enable = false;
 
-	of_property_read_u32(np, "sound-channel", &channel_value);
-	of_property_read_u32(np, "sync-flag", &sync_enable);
+	of_property_read_u32(np, "awinic,audio-channel", &channel_value);
+	aw88261->phase_sync = of_property_read_bool(np, "awinic,sync-flag");
 
 	aw_dev->channel = channel_value;
-	aw88261->phase_sync = sync_enable;
 }
 
 static int aw88261_init(struct aw88261 **aw88261, struct i2c_client *i2c, struct regmap *regmap)
diff --git a/sound/soc/codecs/aw88261.h b/sound/soc/codecs/aw88261.h
index 4f3dbf438510..734d0f93ced9 100644
--- a/sound/soc/codecs/aw88261.h
+++ b/sound/soc/codecs/aw88261.h
@@ -370,7 +370,7 @@
 #define AW88261_START_RETRIES		(5)
 #define AW88261_START_WORK_DELAY_MS	(0)
 
-#define AW88261_I2C_NAME		"aw88261_smartpa"
+#define AW88261_I2C_NAME		"aw88261"
 
 #define AW88261_RATES (SNDRV_PCM_RATE_8000_48000 | \
 			SNDRV_PCM_RATE_96000)
@@ -453,7 +453,7 @@ struct aw88261 {
 	unsigned int mute_st;
 	unsigned int amppd_st;
 
-	unsigned char phase_sync;
+	bool phase_sync;
 };
 
 #endif
-- 
2.41.0


