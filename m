Return-Path: <devicetree+bounces-4150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C41067B16A2
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 10:56:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id DEA4C1C2097A
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 08:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D4E33999;
	Thu, 28 Sep 2023 08:56:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E8631A91
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 08:56:15 +0000 (UTC)
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C2ECCD6
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:10 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3af608eb367so1044514b6e.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 01:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695891369; x=1696496169; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CZNL2xap7oS9tgNofh5Q08A9m6sr7oqpmvudQ+aQQzo=;
        b=Pi6sg70SRjLSglgNkc5AykJsgPCuze6X1goXdzOuX1CbqC3ht2ksbmd4W2QAKL7fgD
         Joyw+Pml3skD+rkp0ewHnf407YrALIvSfU7ZqnT5aYdSMsxan9Dd0KxHxWbtnyD5oPCq
         P9UWpgFxgTpV0UwIQkPjKyGf+KxmasN8beyNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695891369; x=1696496169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CZNL2xap7oS9tgNofh5Q08A9m6sr7oqpmvudQ+aQQzo=;
        b=sVRI88XcJ2/DH7V/aBIAUaurLgQd+gY8DVuKBJvwFxDTFFwO/esyBxzk8A+R29/jiz
         Jv7QZ9mU06qpItDjMs8UlPKB+6ylf/wbgwJsyYcP3uAgFwX+wpb5Vepj2xGbaeMiKBLn
         47dfPFonO3S6ek2apRTFReAPshARzgoX8i/GT9Rg/kxx1GKYg3XutdMWUm/4Wq5x8bB+
         IqP75H3XCKIfEtyM4aWY7bjDlhcDb9PED0edSTffZFAKTdwU1Z/SdwX0+LtwF85X3wEx
         whBZo4ZLaABq17HwsDlmsmCfJbj6pdUIdC4GC9k26CwCQfCx0mwscqidXIAwgCdRA1pB
         7wmg==
X-Gm-Message-State: AOJu0YxF7FjklKpSkb/Gkqn+2FhOvcqOm1KWWG+KQS1UkAlSusLZBaL6
	JnjEBMAQWl+GcC4KY+6uxgnD0Q==
X-Google-Smtp-Source: AGHT+IHebtThJXaKtrU9g5yT/aInEDgutgbt2q6VlFhzqf+DJC7Yjfbm2/1ZK8V2h/BRrv/cAxfijQ==
X-Received: by 2002:a05:6808:1b29:b0:3a4:2941:af49 with SMTP id bx41-20020a0568081b2900b003a42941af49mr787460oib.22.1695891369299;
        Thu, 28 Sep 2023 01:56:09 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6747:c12a:dbfd:2cc7])
        by smtp.gmail.com with ESMTPSA id y7-20020aa78047000000b006879493aca0sm1754016pfm.26.2023.09.28.01.56.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Sep 2023 01:56:08 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Mark Brown <broonie@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Lee Jones <lee@kernel.org>,
	Zhiyong Tao <zhiyong.tao@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v4 06/12] regulator: mt6358: Use mt6397-regulator.h binding header for buck mode macros
Date: Thu, 28 Sep 2023 16:55:29 +0800
Message-ID: <20230928085537.3246669-7-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.582.g8ccd20d70d-goog
In-Reply-To: <20230928085537.3246669-1-wenst@chromium.org>
References: <20230928085537.3246669-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The (undocumented) possible values for the buck operating modes on the
MT6358 are the same as those on the MT6397, both for the device tree
bindings and the actual hardware register values.

Reuse the macros for the MT6397 PMIC in the MT6358 regulator driver by
including the mt6397-regulator.h binding header and replacing the
existing macros. This aligns it with other PMIC.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
Changes since v3:
none

Changes since v2:
- new patch

 drivers/regulator/mt6358-regulator.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/regulator/mt6358-regulator.c b/drivers/regulator/mt6358-regulator.c
index c4ecac5f3fc8..f966eedbbd6e 100644
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
 
@@ -371,10 +370,10 @@ static int mt6358_regulator_set_mode(struct regulator_dev *rdev,
 
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
@@ -402,9 +401,9 @@ static unsigned int mt6358_regulator_get_mode(struct regulator_dev *rdev)
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
2.42.0.582.g8ccd20d70d-goog


