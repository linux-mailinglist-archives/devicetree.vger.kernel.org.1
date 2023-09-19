Return-Path: <devicetree+bounces-1380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7FDA7A6064
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:58:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 834A728111B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:58:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B553589E;
	Tue, 19 Sep 2023 10:58:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C74135880
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:58:18 +0000 (UTC)
Received: from out28-169.mail.aliyun.com (out28-169.mail.aliyun.com [115.124.28.169])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BFC7CD3;
	Tue, 19 Sep 2023 03:58:16 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.08387548|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0174443-0.000300907-0.982255;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047194;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.Uj4ESJm_1695121085;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.Uj4ESJm_1695121085)
          by smtp.aliyun-inc.com;
          Tue, 19 Sep 2023 18:58:12 +0800
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
Subject: [PATCH V4 5/7] ASoC: codecs: Modify i2c name and parameter transmission methodls
Date: Tue, 19 Sep 2023 18:57:22 +0800
Message-ID: <20230919105724.105624-6-wangweidong.a@awinic.com>
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

Modify aw888395_smartpa to aw88395 in order to
align with the awinic,aw88395.yaml file
Modify the transmission method of parameters.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88395/aw88395.c | 9 ++++-----
 sound/soc/codecs/aw88395/aw88395.h | 2 +-
 2 files changed, 5 insertions(+), 6 deletions(-)

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
diff --git a/sound/soc/codecs/aw88395/aw88395.h b/sound/soc/codecs/aw88395/aw88395.h
index 8036ba27f68d..c2a4f0cb8cd5 100644
--- a/sound/soc/codecs/aw88395/aw88395.h
+++ b/sound/soc/codecs/aw88395/aw88395.h
@@ -16,7 +16,7 @@
 
 #define AW88395_DSP_16_DATA_MASK		(0x0000ffff)
 
-#define AW88395_I2C_NAME			"aw88395_smartpa"
+#define AW88395_I2C_NAME			"aw88395"
 
 #define AW88395_RATES (SNDRV_PCM_RATE_8000_48000 | \
 			SNDRV_PCM_RATE_96000)
-- 
2.41.0


