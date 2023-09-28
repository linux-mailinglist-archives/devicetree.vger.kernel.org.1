Return-Path: <devicetree+bounces-4196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4173D7B18BA
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E5E2528208A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92ECE3589D;
	Thu, 28 Sep 2023 10:58:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6120A3588D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:58:29 +0000 (UTC)
Received: from out28-195.mail.aliyun.com (out28-195.mail.aliyun.com [115.124.28.195])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 238BA1A5;
	Thu, 28 Sep 2023 03:58:25 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.06714053|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0119606-0.00394247-0.984097;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047194;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=30;RT=30;SR=0;TI=SMTPD_---.UqYH8mm_1695898693;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UqYH8mm_1695898693)
          by smtp.aliyun-inc.com;
          Thu, 28 Sep 2023 18:58:21 +0800
From: wangweidong.a@awinic.com
To: girdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	wangweidong.a@awinic.com,
	rf@opensource.cirrus.com,
	shumingf@realtek.com,
	herve.codina@bootlin.com,
	rdunlap@infradead.org,
	13916275206@139.com,
	ryans.lee@analog.com,
	linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com,
	doug@schmorgal.com,
	ajye_huang@compal.corp-partner.google.com,
	harshit.m.mogalapalli@oracle.com,
	arnd@arndb.de,
	yang.lee@linux.alibaba.com,
	u.kleine-koenig@pengutronix.de,
	liweilei@awinic.com,
	yijiangtao@awinic.com,
	trix@redhat.com,
	dan.carpenter@linaro.org,
	colin.i.king@gmail.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V6 05/10] ASoC: codecs: Modify the transmission method of parameters
Date: Thu, 28 Sep 2023 18:57:22 +0800
Message-ID: <20230928105727.47273-6-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230928105727.47273-1-wangweidong.a@awinic.com>
References: <20230928105727.47273-1-wangweidong.a@awinic.com>
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

Change the transmission mode of the "aw88395_dev_get_prof_name"
function parameter, Instead of using return values for data
transfer, parameters are used

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88395/aw88395.c        |  9 ++++-----
 sound/soc/codecs/aw88395/aw88395_device.c | 12 ++++++++----
 sound/soc/codecs/aw88395/aw88395_device.h |  2 +-
 3 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/sound/soc/codecs/aw88395/aw88395.c b/sound/soc/codecs/aw88395/aw88395.c
index 9dcd75dd799a..77227c8f01f6 100644
--- a/sound/soc/codecs/aw88395/aw88395.c
+++ b/sound/soc/codecs/aw88395/aw88395.c
@@ -175,9 +175,8 @@ static int aw88395_profile_info(struct snd_kcontrol *kcontrol,
 {
 	struct snd_soc_component *codec = snd_soc_kcontrol_component(kcontrol);
 	struct aw88395 *aw88395 = snd_soc_component_get_drvdata(codec);
-	const char *prof_name;
-	char *name;
-	int count;
+	char *prof_name, *name;
+	int count, ret;
 
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_ENUMERATED;
 	uinfo->count = 1;
@@ -196,8 +195,8 @@ static int aw88395_profile_info(struct snd_kcontrol *kcontrol,
 	name = uinfo->value.enumerated.name;
 	count = uinfo->value.enumerated.item;
 
-	prof_name = aw88395_dev_get_prof_name(aw88395->aw_pa, count);
-	if (!prof_name) {
+	ret = aw88395_dev_get_prof_name(aw88395->aw_pa, count, &prof_name);
+	if (ret) {
 		strscpy(uinfo->value.enumerated.name, "null",
 						strlen("null") + 1);
 		return 0;
diff --git a/sound/soc/codecs/aw88395/aw88395_device.c b/sound/soc/codecs/aw88395/aw88395_device.c
index 5ca4172cb788..fd1f67d5f22f 100644
--- a/sound/soc/codecs/aw88395/aw88395_device.c
+++ b/sound/soc/codecs/aw88395/aw88395_device.c
@@ -1296,7 +1296,9 @@ int aw88395_dev_fw_update(struct aw_device *aw_dev, bool up_dsp_fw_en, bool forc
 		return -EPERM;
 	}
 
-	prof_name = aw88395_dev_get_prof_name(aw_dev, aw_dev->prof_index);
+	ret = aw88395_dev_get_prof_name(aw_dev, aw_dev->prof_index, &prof_name);
+	if (ret)
+		return ret;
 
 	dev_dbg(aw_dev->dev, "start update %s", prof_name);
 
@@ -1644,7 +1646,7 @@ int aw88395_dev_set_profile_index(struct aw_device *aw_dev, int index)
 }
 EXPORT_SYMBOL_GPL(aw88395_dev_set_profile_index);
 
-char *aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index)
+int aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index, char **prof_name)
 {
 	struct aw_prof_info *prof_info = &aw_dev->prof_info;
 	struct aw_prof_desc *prof_desc;
@@ -1652,12 +1654,14 @@ char *aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index)
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
 EXPORT_SYMBOL_GPL(aw88395_dev_get_prof_name);
 
diff --git a/sound/soc/codecs/aw88395/aw88395_device.h b/sound/soc/codecs/aw88395/aw88395_device.h
index d32d16c89509..791c8c106557 100644
--- a/sound/soc/codecs/aw88395/aw88395_device.h
+++ b/sound/soc/codecs/aw88395/aw88395_device.h
@@ -181,7 +181,7 @@ int aw88395_dev_fw_update(struct aw_device *aw_dev, bool up_dsp_fw_en, bool forc
 void aw88395_dev_set_volume(struct aw_device *aw_dev, unsigned short set_vol);
 int aw88395_dev_get_prof_data(struct aw_device *aw_dev, int index,
 			struct aw_prof_desc **prof_desc);
-char *aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index);
+int aw88395_dev_get_prof_name(struct aw_device *aw_dev, int index, char **prof_name);
 int aw88395_dev_set_profile_index(struct aw_device *aw_dev, int index);
 int aw88395_dev_get_profile_index(struct aw_device *aw_dev);
 int aw88395_dev_get_profile_count(struct aw_device *aw_dev);
-- 
2.41.0


