Return-Path: <devicetree+bounces-3825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B7697B03B5
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E910C282284
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31DB22869C;
	Wed, 27 Sep 2023 12:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E0A8107BE
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:16:50 +0000 (UTC)
Received: from out28-125.mail.aliyun.com (out28-125.mail.aliyun.com [115.124.28.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E683BE;
	Wed, 27 Sep 2023 05:16:47 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.08141265|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0395652-0.000209205-0.960226;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047205;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=29;RT=29;SR=0;TI=SMTPD_---.Upkf2vE_1695816995;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.Upkf2vE_1695816995)
          by smtp.aliyun-inc.com;
          Wed, 27 Sep 2023 20:16:44 +0800
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
Subject: [PATCH V5 0/8] ASoC: codecs: Add aw87390 amplifier driver
Date: Wed, 27 Sep 2023 20:16:26 +0800
Message-ID: <20230927121634.94822-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
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

The awinic aw87390 is a new high efficiency, low noise,
constant large volume, 6th Smart K audio amplifier.

Add a DT schema for describing awinic aw87390 audio amplifiers.
They are controlled using I2C.

v4 -> v5: Adjust the order and context of the patch

Weidong Wang (8):
  ASoC: dt-bindings: awinic,aw88395: Add properties for multiple PA
    support
  ASoC: dt-bindings: Add schema for "awinic,aw87390"
  ASoC: codecs: Modify the code related to the property
  ASoC: codecs: Modify the transmission method of parameters
  ASoC: codecs: Add code for bin parsing compatible with aw87390
  ASoC: codecs: Modify the code related to the property
  ASoC: codecs: Modify the transmission mode of function parameters
  ASoC: codecs: Add aw87390 amplifier driver

 .../bindings/sound/awinic,aw87390.yaml        |  58 +++
 .../bindings/sound/awinic,aw88395.yaml        |  16 +
 sound/soc/codecs/Kconfig                      |  15 +-
 sound/soc/codecs/Makefile                     |   2 +
 sound/soc/codecs/aw87390.c                    | 462 ++++++++++++++++++
 sound/soc/codecs/aw87390.h                    |  85 ++++
 sound/soc/codecs/aw88261.c                    |  27 +-
 sound/soc/codecs/aw88261.h                    |   4 +-
 sound/soc/codecs/aw88395/aw88395.c            |   9 +-
 sound/soc/codecs/aw88395/aw88395.h            |   2 +-
 sound/soc/codecs/aw88395/aw88395_device.c     |  47 +-
 sound/soc/codecs/aw88395/aw88395_device.h     |   6 +-
 sound/soc/codecs/aw88395/aw88395_lib.c        |  25 +-
 sound/soc/codecs/aw88395/aw88395_reg.h        |   1 +
 14 files changed, 685 insertions(+), 74 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/awinic,aw87390.yaml
 create mode 100644 sound/soc/codecs/aw87390.c
 create mode 100644 sound/soc/codecs/aw87390.h


base-commit: 0e945134b680040b8613e962f586d91b6d40292d
-- 
2.41.0


