Return-Path: <devicetree+bounces-11142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5A07D482A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:14:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DF6F91C20AC1
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21A1D13AC8;
	Tue, 24 Oct 2023 07:14:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1D7538D
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:14:43 +0000 (UTC)
Received: from out28-219.mail.aliyun.com (out28-219.mail.aliyun.com [115.124.28.219])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A351F10C;
	Tue, 24 Oct 2023 00:14:38 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.1912555|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_alarm|0.00383916-7.02771e-05-0.996091;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047202;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.V6azpiD_1698131664;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V6azpiD_1698131664)
          by smtp.aliyun-inc.com;
          Tue, 24 Oct 2023 15:14:32 +0800
From: wangweidong.a@awinic.com
To: broonie@kernel.org
Cc: 13916275206@139.com,
	ajye_huang@compal.corp-partner.google.com,
	alsa-devel@alsa-project.org,
	arnd@arndb.de,
	ckeepax@opensource.cirrus.com,
	colin.i.king@gmail.com,
	conor+dt@kernel.org,
	dan.carpenter@linaro.org,
	devicetree@vger.kernel.org,
	harshit.m.mogalapalli@oracle.com,
	herve.codina@bootlin.com,
	krzysztof.kozlowski+dt@linaro.org,
	lgirdwood@gmail.com,
	linus.walleij@linaro.org,
	linux-kernel@vger.kernel.org,
	liweilei@awinic.com,
	perex@perex.cz,
	rf@opensource.cirrus.com,
	robh+dt@kernel.org,
	ryans.lee@analog.com,
	sebastian.reichel@collabora.com,
	shumingf@realtek.com,
	tiwai@suse.com,
	trix@redhat.com,
	wangweidong.a@awinic.com,
	yijiangtao@awinic.com
Subject: [PATCH V2 0/4] ASoC: codecs: Add aw88399 amplifier driver
Date: Tue, 24 Oct 2023 15:14:15 +0800
Message-ID: <20231024071419.85647-1-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
References: <21bfa0bb-d936-402d-9ca9-6bcf181a0f35@sirena.org.uk>
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


