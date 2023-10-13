Return-Path: <devicetree+bounces-8448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB217C8366
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 12:43:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E744EB2098B
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C7A610970;
	Fri, 13 Oct 2023 10:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54BF663DC
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 10:42:53 +0000 (UTC)
Received: from out28-123.mail.aliyun.com (out28-123.mail.aliyun.com [115.124.28.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0396FB;
	Fri, 13 Oct 2023 03:42:48 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.08533934|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.00817213-0.000206141-0.991622;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047212;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=25;RT=25;SR=0;TI=SMTPD_---.V-L31GU_1697193757;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V-L31GU_1697193757)
          by smtp.aliyun-inc.com;
          Fri, 13 Oct 2023 18:42:44 +0800
From: wangweidong.a@awinic.com
To: lgirdwood@gmail.com,
	broonie@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	perex@perex.cz,
	tiwai@suse.com,
	wangweidong.a@awinic.com,
	herve.codina@bootlin.com,
	shumingf@realtek.com,
	rf@opensource.cirrus.com,
	arnd@arndb.de,
	13916275206@139.com,
	ryans.lee@analog.com,
	linus.walleij@linaro.org,
	ckeepax@opensource.cirrus.com,
	fido_max@inbox.ru,
	sebastian.reichel@collabora.com,
	colin.i.king@gmail.com,
	liweilei@awinic.com,
	trix@redhat.com,
	dan.carpenter@linaro.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V1 2/3] ASoC: codecs: Add code for bin parsing compatible with aw88399
Date: Fri, 13 Oct 2023 18:42:19 +0800
Message-ID: <20231013104220.279953-3-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231013104220.279953-1-wangweidong.a@awinic.com>
References: <20231013104220.279953-1-wangweidong.a@awinic.com>
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

Add aw88399 compatible code to the aw88395_lib.c file
so that it can parse aw88399's bin file.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 sound/soc/codecs/aw88395/aw88395_lib.c | 3 +++
 sound/soc/codecs/aw88395/aw88395_reg.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/sound/soc/codecs/aw88395/aw88395_lib.c b/sound/soc/codecs/aw88395/aw88395_lib.c
index 87dd0ccade4c..692ad9fa65a6 100644
--- a/sound/soc/codecs/aw88395/aw88395_lib.c
+++ b/sound/soc/codecs/aw88395/aw88395_lib.c
@@ -702,6 +702,7 @@ static int aw_dev_load_cfg_by_hdr(struct aw_device *aw_dev,
 	}
 
 	switch (aw_dev->chip_id) {
+	case AW88399_CHIP_ID:
 	case AW88395_CHIP_ID:
 		ret = aw88395_dev_cfg_get_valid_prof(aw_dev, *all_prof_info);
 		if (ret < 0)
@@ -791,6 +792,7 @@ static int aw_get_dev_scene_count_v1(struct aw_device *aw_dev, struct aw_contain
 
 	switch (aw_dev->chip_id) {
 	case AW88395_CHIP_ID:
+	case AW88399_CHIP_ID:
 		for (i = 0; i < cfg_hdr->ddt_num; ++i) {
 			if ((cfg_dde[i].data_type == ACF_SEC_TYPE_MULTIPLE_BIN) &&
 			    (aw_dev->chip_id == cfg_dde[i].chip_id) &&
@@ -832,6 +834,7 @@ static int aw_get_default_scene_count_v1(struct aw_device *aw_dev,
 
 	switch (aw_dev->chip_id) {
 	case AW88395_CHIP_ID:
+	case AW88399_CHIP_ID:
 		for (i = 0; i < cfg_hdr->ddt_num; ++i) {
 			if ((cfg_dde[i].data_type == ACF_SEC_TYPE_MULTIPLE_BIN) &&
 			    (aw_dev->chip_id == cfg_dde[i].chip_id) &&
diff --git a/sound/soc/codecs/aw88395/aw88395_reg.h b/sound/soc/codecs/aw88395/aw88395_reg.h
index e7a7c02efaf3..63d2bac85715 100644
--- a/sound/soc/codecs/aw88395/aw88395_reg.h
+++ b/sound/soc/codecs/aw88395/aw88395_reg.h
@@ -95,6 +95,7 @@
 #define AW88395_TM_REG			(0x7C)
 
 enum aw88395_id {
+	AW88399_CHIP_ID = 0x2183,
 	AW88395_CHIP_ID = 0x2049,
 	AW88261_CHIP_ID = 0x2113,
 };
-- 
2.41.0


