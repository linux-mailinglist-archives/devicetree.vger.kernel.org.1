Return-Path: <devicetree+bounces-4200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BEE7B18C4
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 12:59:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 544C22820DA
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A981358A2;
	Thu, 28 Sep 2023 10:59:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EF803588D
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 10:58:59 +0000 (UTC)
Received: from out28-148.mail.aliyun.com (out28-148.mail.aliyun.com [115.124.28.148])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA40193;
	Thu, 28 Sep 2023 03:58:51 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.09813568|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_social|0.00100706-9.29909e-05-0.9989;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047190;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=30;RT=30;SR=0;TI=SMTPD_---.UqYH9DX_1695898719;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.UqYH9DX_1695898719)
          by smtp.aliyun-inc.com;
          Thu, 28 Sep 2023 18:58:47 +0800
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
Subject: [PATCH V6 08/10] ASoC: codecs: Rename "sync-flag" to "awinic,sync-flag"
Date: Thu, 28 Sep 2023 18:57:25 +0800
Message-ID: <20230928105727.47273-9-wangweidong.a@awinic.com>
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

Rename "sync-flag" to "awinic,sync-flag", this is to be
consistent with the "awinic,aw88395.yaml" file

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88261.c | 4 +---
 sound/soc/codecs/aw88261.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/sound/soc/codecs/aw88261.c b/sound/soc/codecs/aw88261.c
index 7df641592330..61179e235fbf 100644
--- a/sound/soc/codecs/aw88261.c
+++ b/sound/soc/codecs/aw88261.c
@@ -1187,13 +1187,11 @@ static void aw88261_parse_channel_dt(struct aw88261 *aw88261)
 	struct aw_device *aw_dev = aw88261->aw_pa;
 	struct device_node *np = aw_dev->dev->of_node;
 	u32 channel_value = AW88261_DEV_DEFAULT_CH;
-	u32 sync_enable = false;
 
 	of_property_read_u32(np, "awinic,audio-channel", &channel_value);
-	of_property_read_u32(np, "sync-flag", &sync_enable);
+	aw88261->phase_sync = of_property_read_bool(np, "awinic,sync-flag");
 
 	aw_dev->channel = channel_value;
-	aw88261->phase_sync = sync_enable;
 }
 
 static int aw88261_init(struct aw88261 **aw88261, struct i2c_client *i2c, struct regmap *regmap)
diff --git a/sound/soc/codecs/aw88261.h b/sound/soc/codecs/aw88261.h
index bd0841fa9b77..734d0f93ced9 100644
--- a/sound/soc/codecs/aw88261.h
+++ b/sound/soc/codecs/aw88261.h
@@ -453,7 +453,7 @@ struct aw88261 {
 	unsigned int mute_st;
 	unsigned int amppd_st;
 
-	unsigned char phase_sync;
+	bool phase_sync;
 };
 
 #endif
-- 
2.41.0


