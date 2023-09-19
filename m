Return-Path: <devicetree+bounces-1375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E712B7A6059
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1024D1C204F9
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:57:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 768CD35880;
	Tue, 19 Sep 2023 10:57:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEDA179CC
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:57:46 +0000 (UTC)
Received: from out28-52.mail.aliyun.com (out28-52.mail.aliyun.com [115.124.28.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBE3512D;
	Tue, 19 Sep 2023 03:57:44 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.3465002|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.42984-0.00186958-0.568291;FP=7261269027978073474|1|1|19|0|-1|-1|-1;HT=ay29a033018047194;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.Uj4ERmC_1695121054;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.Uj4ERmC_1695121054)
          by smtp.aliyun-inc.com;
          Tue, 19 Sep 2023 18:57:41 +0800
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
Subject: [PATCH V4 1/7] ASoC: dt-bindings: awinic,aw88395: Add properties for multiple PA support
Date: Tue, 19 Sep 2023 18:57:18 +0800
Message-ID: <20230919105724.105624-2-wangweidong.a@awinic.com>
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

Add two properties, the "awinic,audio-channel" property and the
"awinic,sync-flag". The "awinic,audio-channel" is used to make
different PA load different configurations, the "awinic,sync-flag"
is used to synchronize the phases of multiple PA. These two properties
will be read by the corresponding driver, allowing multi-PA to
achieve better playback effect.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
---
 .../bindings/sound/awinic,aw88395.yaml           | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
index 4051c2538caf..b977d3de87cb 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
@@ -32,11 +32,25 @@ properties:
   reset-gpios:
     maxItems: 1
 
+  awinic,audio-channel:
+    description:
+      It is used to distinguish multiple PA devices, so that different
+      configurations can be loaded to different PA devices
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 7
+
+  awinic,sync-flag:
+    description:
+      Flag bit used to keep the phase synchronized in the case of multiple PA
+    $ref: /schemas/types.yaml#/definitions/flag
+
 required:
   - compatible
   - reg
   - '#sound-dai-cells'
   - reset-gpios
+  - awinic,audio-channel
 
 unevaluatedProperties: false
 
@@ -51,5 +65,7 @@ examples:
             reg = <0x34>;
             #sound-dai-cells = <0>;
             reset-gpios = <&gpio 10 GPIO_ACTIVE_LOW>;
+            awinic,audio-channel = <0>;
+            awinic,sync-flag;
         };
     };
-- 
2.41.0


