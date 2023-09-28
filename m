Return-Path: <devicetree+bounces-4197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD28B7B18BC
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:58:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 5FACD28207B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:58:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 840263589E;
	Thu, 28 Sep 2023 10:58:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C19C3588D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:58:39 +0000 (UTC)
Received: from out28-124.mail.aliyun.com (out28-124.mail.aliyun.com [115.124.28.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BDE1A7;
	Thu, 28 Sep 2023 03:58:35 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.3076728|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0160282-0.00019851-0.983773;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047188;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=30;RT=30;SR=0;TI=SMTPD_---.UqYH8we_1695898702;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UqYH8we_1695898702)
          by smtp.aliyun-inc.com;
          Thu, 28 Sep 2023 18:58:30 +0800
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
Subject: [PATCH V6 06/10] ASoC: codecs: Modify i2c driver name
Date: Thu, 28 Sep 2023 18:57:23 +0800
Message-ID: <20230928105727.47273-7-wangweidong.a@awinic.com>
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

Change the name of the i2c driver, this is to
be consistent with the "awinic,aw88395.yaml" file

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88261.h         | 2 +-
 sound/soc/codecs/aw88395/aw88395.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/sound/soc/codecs/aw88261.h b/sound/soc/codecs/aw88261.h
index 4f3dbf438510..bd0841fa9b77 100644
--- a/sound/soc/codecs/aw88261.h
+++ b/sound/soc/codecs/aw88261.h
@@ -370,7 +370,7 @@
 #define AW88261_START_RETRIES		(5)
 #define AW88261_START_WORK_DELAY_MS	(0)
 
-#define AW88261_I2C_NAME		"aw88261_smartpa"
+#define AW88261_I2C_NAME		"aw88261"
 
 #define AW88261_RATES (SNDRV_PCM_RATE_8000_48000 | \
 			SNDRV_PCM_RATE_96000)
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


