Return-Path: <devicetree+bounces-1362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EB67A600C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:48:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED8A51C20CA0
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:48:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75630339BF;
	Tue, 19 Sep 2023 10:47:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411BB1E511
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:47:42 +0000 (UTC)
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B6AA189
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:40 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-1c44c0f9138so24564555ad.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:47:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695120459; x=1695725259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3xQUn/IJIaVFS0x99xumnipF7RzW+wF0bxWwjg0oCIk=;
        b=HPZ3QuhOK8hf4Vk5Qx7kdD+K5prsC9/0Y2aVrjzjVsxNFbu9joD2Ou0lZqDqAnavy0
         YOQSbKM6L+WLCiA0/hlxq+inTIT7aBwsJnit2V+GLmppHUnVHIScGsa9RUTefOL21fwW
         Zl/BDv+eI6zSzpRl6xHhaghkdECFJWScLhtTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695120459; x=1695725259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3xQUn/IJIaVFS0x99xumnipF7RzW+wF0bxWwjg0oCIk=;
        b=RyMj3hjLx8iJhnPFcaPWI7zauR3biaFXemN6aR0suipM24h79i0X8tJV7NptAmDuoc
         qW+PN3NV0XFqSfimzIWXavaznhWNFEUxxI7DMQb0RblouhFYx0/d+QPHH1tWmS26UbJn
         x7VTD8sSp9BaL9aKGutesonkDfbmnwvoI+y7oXaK+RQudfRhf1/ltcMV67Tsnpj90NOV
         rlL2AniuF1kM5ZKQR9egJ3S8IEShinHfYYVRn0EYedAOOfEHjUapp0Ul2tk2TAEi+hG8
         AnRnxtBkPDJj4nDyJumrxu2z9CFFbmJuIcqWcFix9UMWKKLwlV01+VEcYnU7qJlnHncs
         udRQ==
X-Gm-Message-State: AOJu0YyiUcN/9prT2DUn2OQoefbEWpH2nEVTKcxNK94Pr9ExmsAFweTF
	HCgaynO8LutlLYx6wJqQo4q9Sw==
X-Google-Smtp-Source: AGHT+IFe+997cxzsySXWWAQS25qUgXP0auEIHzVPbzDEWEBNw4i2aKJTdNMm2yHSkRleB/3+4BvJcg==
X-Received: by 2002:a17:903:1cd:b0:1bf:650b:14fb with SMTP id e13-20020a17090301cd00b001bf650b14fbmr11811076plh.42.1695120459673;
        Tue, 19 Sep 2023 03:47:39 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:40a:900d:e731:5a43])
        by smtp.gmail.com with ESMTPSA id c10-20020a170902d48a00b001bc445e249asm6719578plg.124.2023.09.19.03.47.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Sep 2023 03:47:39 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v3 06/12] regulator: mt6358: Use mt6397-regulator.h binding header for buck mode macros
Date: Tue, 19 Sep 2023 18:43:49 +0800
Message-ID: <20230919104357.3971512-7-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.459.ge4e396fd5e-goog
In-Reply-To: <20230919104357.3971512-1-wenst@chromium.org>
References: <20230919104357.3971512-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The (undocumented) possible values for the buck operating modes on the
MT6358 are the same as those on the MT6397, both for the device tree
bindings and the actual hardware register values.

Reuse the macros for the MT6397 PMIC in the MT6358 regulator driver by
including the mt6397-regulator.h binding header and replacing the
existing macros. This aligns it with other PMIC.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v2:
- new patch

 drivers/regulator/mt6358-regulator.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index 4a6ad0ccf03b..c312e79a0a39 100644
--- a/drivers/regulator/mt6358-regulator.c
+++ b/drivers/regulator/mt6358-regulator.c
@@ -13,8 +13,7 @@
 #include <linux/regulator/mt6358-regulator.h>
 #include <linux/regulator/of_regulator.h>
 
-#define MT6358_BUCK_MODE_AUTO	0
-#define MT6358_BUCK_MODE_FORCE_PWM	1
+#include <dt-bindings/regulator/mediatek,mt6397-regulator.h>
 
 /*
  * MT6358 regulators' information
@@ -326,7 +325,7 @@ static const struct linear_range vldo28_ranges[] = {
 
 static unsigned int mt6358_map_mode(unsigned int mode)
 {
-	return mode == MT6358_BUCK_MODE_AUTO ?
+	return mode == MT6397_BUCK_MODE_AUTO ?
 		REGULATOR_MODE_NORMAL : REGULATOR_MODE_FAST;
 }
 
@@ -374,10 +373,10 @@ static int mt6358_regulator_set_mode(struct regulator_dev *rdev,
 
 	switch (mode) {
 	case REGULATOR_MODE_FAST:
-		val = MT6358_BUCK_MODE_FORCE_PWM;
+		val = MT6397_BUCK_MODE_FORCE_PWM;
 		break;
 	case REGULATOR_MODE_NORMAL:
-		val = MT6358_BUCK_MODE_AUTO;
+		val = MT6397_BUCK_MODE_AUTO;
 		break;
 	default:
 		return -EINVAL;
@@ -408,9 +407,9 @@ static unsigned int mt6358_regulator_get_mode(struct regulator_dev *rdev)
 	}
 
 	switch ((regval & info->modeset_mask) >> (ffs(info->modeset_mask) - 1)) {
-	case MT6358_BUCK_MODE_AUTO:
+	case MT6397_BUCK_MODE_AUTO:
 		return REGULATOR_MODE_NORMAL;
-	case MT6358_BUCK_MODE_FORCE_PWM:
+	case MT6397_BUCK_MODE_FORCE_PWM:
 		return REGULATOR_MODE_FAST;
 	default:
 		return -EINVAL;
-- 
2.42.0.459.ge4e396fd5e-goog


