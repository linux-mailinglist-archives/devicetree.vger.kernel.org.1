Return-Path: <devicetree+bounces-11793-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F4D7D6A0D
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:26:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DC5DB21133
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 11:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54F4273EE;
	Wed, 25 Oct 2023 11:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3CFC273DD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 11:26:48 +0000 (UTC)
Received: from out28-125.mail.aliyun.com (out28-125.mail.aliyun.com [115.124.28.125])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71D3116;
	Wed, 25 Oct 2023 04:26:46 -0700 (PDT)
X-Alimail-AntiSpam:AC=CONTINUE;BC=0.4519266|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.0212848-0.000550225-0.978165;FP=0|0|0|0|0|-1|-1|-1;HT=ay29a033018047203;MF=wangweidong.a@awinic.com;NM=1;PH=DS;RN=27;RT=27;SR=0;TI=SMTPD_---.V7r.p7O_1698233195;
Received: from ubuntu-VirtualBox..(mailfrom:wangweidong.a@awinic.com fp:SMTPD_---.V7r.p7O_1698233195)
          by smtp.aliyun-inc.com;
          Wed, 25 Oct 2023 19:26:42 +0800
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
	ajye_huang@compal.corp-partner.google.com,
	fido_max@inbox.ru,
	liweilei@awinic.com,
	yijiangtao@awinic.com,
	trix@redhat.com,
	colin.i.king@gmail.com,
	dan.carpenter@linaro.org,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V3 1/3] ASoC: dt-bindings: Add schema for "awinic,aw88399"
Date: Wed, 25 Oct 2023 19:26:23 +0800
Message-ID: <20231025112625.959587-2-wangweidong.a@awinic.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231025112625.959587-1-wangweidong.a@awinic.com>
References: <20231025112625.959587-1-wangweidong.a@awinic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Weidong Wang <wangweidong.a@awinic.com>

Add the awinic,aw88399 property to the awinic,aw88395.yaml file.

Signed-off-by: Weidong Wang <wangweidong.a@awinic.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/awinic,aw88395.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
index 5d5ebc72b721..ac5f2e0f42cb 100644
--- a/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
+++ b/Documentation/devicetree/bindings/sound/awinic,aw88395.yaml
@@ -19,6 +19,7 @@ properties:
     enum:
       - awinic,aw88395
       - awinic,aw88261
+      - awinic,aw88399
 
   reg:
     maxItems: 1
-- 
2.41.0


