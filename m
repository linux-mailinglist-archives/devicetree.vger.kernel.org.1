Return-Path: <devicetree+bounces-10292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C6AB7D0A9D
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 10:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DD93B214A5
	for <lists+devicetree@lfdr.de>; Fri, 20 Oct 2023 08:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49AECA41;
	Fri, 20 Oct 2023 08:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0497D12E52
	for <devicetree@vger.kernel.org>; Fri, 20 Oct 2023 08:34:56 +0000 (UTC)
Received: from out28-217.mail.aliyun.com (out28-217.mail.aliyun.com [115.124.28.217])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9ACDBD4C;
	Fri, 20 Oct 2023 01:34:54 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1840043|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_alarm|0.00383916-7.02771e-05-0.996091;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047187;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.V3YjlUW_1697790882;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V3YjlUW_1697790882)
          by smtp.aliyun-inc.com;
          Fri, 20 Oct 2023 16:34:50 +0800
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
	ckeepax@opensource.cirrus.com,
	13916275206@139.com,
	ryans.lee@analog.com,
	linus.walleij@linaro.org,
	sebastian.reichel@collabora.com,
	ajye_huang@compal.corp-partner.google.com,
	harshit.m.mogalapalli@oracle.com,
	arnd@arndb.de,
	colin.i.king@gmail.com,
	dan.carpenter@linaro.org,
	trix@redhat.com,
	liweilei@awinic.com,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: yijiangtao@awinic.com
Subject: [PATCH V2 0/4] ASoC: codecs: Add aw88399 amplifier driver
Date: Fri, 20 Oct 2023 16:34:22 +0800
Message-ID: <20231020083426.302925-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Weidong Wang <wangweidong.a@awinic.com>

Add the awinic,aw88399 property to the awinic,aw88395.yaml file.

Add i2c and amplifier registration for
aw88399 and their associated operation functions.

v1 -> v2: Modify the reset mode
          Delete AW88399_DSP_I2C_WRITES macros
           and related debugging statements
          Change the value of max_register in aw88399
          Change the value of max_register in aw88261
          Delete the judgment of unnecessary pointers
          Modify the judgment of the ret return value

Weidong Wang (4):
  ASoC: dt-bindings: Add schema for "awinic,aw88399"
  ASoC: codecs: Modify max_register usage error
  ASoC: codecs: Add code for bin parsing compatible with aw88399
  ASoC: codecs: Add aw88399 amplifier driver

 .../bindings/sound/awinic,aw88395.yaml        |    1 +
 sound/soc/codecs/Kconfig                      |   14 +
 sound/soc/codecs/Makefile                     |    2 +
 sound/soc/codecs/aw88261.c                    |    2 +-
 sound/soc/codecs/aw88395/aw88395_lib.c        |    3 +
 sound/soc/codecs/aw88395/aw88395_reg.h        |    1 +
 sound/soc/codecs/aw88399.c                    | 1911 +++++++++++++++++
 sound/soc/codecs/aw88399.h                    |  599 ++++++
 8 files changed, 2532 insertions(+), 1 deletion(-)
 create mode 100644 sound/soc/codecs/aw88399.c
 create mode 100644 sound/soc/codecs/aw88399.h


base-commit: ce55c22ec8b223a90ff3e084d842f73cfba35588
-- 
2.41.0


