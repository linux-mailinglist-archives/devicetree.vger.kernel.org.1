Return-Path: <devicetree+bounces-4195-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE09A7B18B6
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:58:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 9F7792820A0
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9DA3589C;
	Thu, 28 Sep 2023 10:58:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A8F63588D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:58:19 +0000 (UTC)
Received: from out28-74.mail.aliyun.com (out28-74.mail.aliyun.com [115.124.28.74])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF1B019D;
	Thu, 28 Sep 2023 03:58:17 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1038123|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.00093891-0.000127708-0.998933;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047190;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=30;RT=30;SR=0;TI=SMTPD_---.UqYH8d0_1695898685;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UqYH8d0_1695898685)
          by smtp.aliyun-inc.com;
          Thu, 28 Sep 2023 18:58:13 +0800
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
Subject: [PATCH V6 04/10] ASoC: codecs: Rename "sound-channel" to "awinic,audio-channel"
Date: Thu, 28 Sep 2023 18:57:21 +0800
Message-ID: <20230928105727.47273-5-wangweidong.a@awinic.com>
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
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Weidong Wang <wangweidong.a@awinic.com>

Rename "sound-channel" to "awinic,audio-channel",
this is to be consistent with the "awinic,aw88395.yaml" file

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88261.c                | 2 +-
 sound/soc/codecs/aw88395/aw88395_device.c | 6 +++---
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index a697b5006b45..7df641592330 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -1189,7 +1189,7 @@ static void aw88261_parse_channel_dt(struct aw88261 *aw88261)
 	u32 channel_value = AW88261_DEV_DEFAULT_CH;
 	u32 sync_enable = false;
 
-	of_property_read_u32(np, "sound-channel", &channel_value);
+	of_property_read_u32(np, "awinic,audio-channel", &channel_value);
 	of_property_read_u32(np, "sync-flag", &sync_enable);
 
 	aw_dev->channel = channel_value;
diff --git a/sound/soc/codecs/aw88395/aw88395_device.c b/sound/soc/codecs/aw88395/aw88395_device.c
index 25b32cdceeec..5ca4172cb788 100644
--- a/sound/soc/codecs/aw88395/aw88395_device.c
+++ b/sound/soc/codecs/aw88395/aw88395_device.c
@@ -1584,15 +1584,15 @@ static void aw88395_parse_channel_dt(struct aw_device *aw_dev)
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
-- 
2.41.0


