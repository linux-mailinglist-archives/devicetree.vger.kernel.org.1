Return-Path: <devicetree+bounces-9337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A867CCBB7
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 21:05:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B6EF71C20C5F
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 19:05:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124062EAEA;
	Tue, 17 Oct 2023 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="F3Dzh9O5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476582EAE3
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 19:05:52 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBDAA10A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:49 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-53e3e7e478bso7447325a12.0
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 12:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697569548; x=1698174348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4DYHyP5rpJlCrGLu/7YVXYPDawqI0/vUMpje/5y6E4=;
        b=F3Dzh9O5loghM9/63y5qKCEjs50agFE3KNtQITEcATMR6zxbZK2FyBfTkZqKUboLlZ
         ZlTDjKy9vVG1y3u9sNX7lD0CIEVdP3Nz9nqA/qW1xCEYihg7eJqeSETW7jixk5uwja+M
         OfEIx+pg4sDYuyKoYol+Xg2tVtIFa70VVvl/nB2dhryg5xpl2YaA1CgmYmFQMaJfzaZd
         kDZt77hfTWFN/eB+RTZaNyeAPhv4olQgLLGtMsUYr0ex6+zXTaKwyptAfaBDtC4j7mIF
         y3PAQyIT3ZI1N3XaC6JB6eVcr63t6TU/QYo+4Vh7CGKYVjJOST+4IaDwfHrUnrvD75DP
         RmPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697569548; x=1698174348;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4DYHyP5rpJlCrGLu/7YVXYPDawqI0/vUMpje/5y6E4=;
        b=cNyGn3gYaReo99gj6JY7PTTZSS3bvm1XgRjxY1PPO29S6QdIVXzMyTreSsiU1DPSUW
         XVH7LLAH/rM2kcpXucPvxca8Tt+YFOYAQjcKUXnUhOBHKteNjffIlYKdgCGPapZ2KkNt
         9nQWe/7pfVBzH4ijJz/9icdBqf4XakhToyNVSeGq8RIa13WBm1cPH71hCze2vdI5VFhd
         xrJRQhWP8UexDIcIcQVTKEqD/hMt0baC8qFMhCMELM8iFw4PECQ7W3AJ6STZiH5cT/cT
         /vgZLiOLQ658q6Uy/129TnDIdYjJAQplVkOKEmECEF0SlXMbGIu7H7o9hX39RajEN17B
         ++MQ==
X-Gm-Message-State: AOJu0YyqX1/YD2lpYoKc3sxVe2wSGwJmMp0e2bbgKWzCDs8I7kNjm9d+
	yhRl6+/O2DKgrofhOWBdU2o0Kg==
X-Google-Smtp-Source: AGHT+IE1d8gzvI8UJeLw/gO6durUM9+szimEzBZasfn/1pv7K2XCfq9TUaKMIAHdmRwjNmbGs2YMjQ==
X-Received: by 2002:a05:6402:5202:b0:53e:f9ef:ca6b with SMTP id s2-20020a056402520200b0053ef9efca6bmr2682060edd.7.1697569547959;
        Tue, 17 Oct 2023 12:05:47 -0700 (PDT)
Received: from ryzen9.fritz.box ([2a01:2a8:8f03:b001:fe65:a70:2777:ab31])
        by smtp.gmail.com with ESMTPSA id bq14-20020a056402214e00b00537963f692esm1637990edb.0.2023.10.17.12.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 12:05:47 -0700 (PDT)
From: =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To: daniel.lezcano@linaro.org,
	angelogioacchino.delregno@collabora.com,
	rafael@kernel.org,
	amitk@kernel.org,
	rui.zhang@intel.com,
	matthias.bgg@gmail.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	dunlap@infradead.org,
	e.xingchen@zte.com.cn,
	p.zabel@pengutronix.de
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	wenst@chromium.org,
	ames.lo@mediatek.com,
	rex-bc.chen@mediatek.com,
	nfraprado@collabora.com,
	abailon@baylibre.com,
	amergnat@baylibre.com,
	khilman@baylibre.com
Subject: [PATCH v5 1/5] dt-bindings: thermal: mediatek: Add LVTS thermal controller definition for mt8192
Date: Tue, 17 Oct 2023 21:05:41 +0200
Message-ID: <20231017190545.157282-2-bero@baylibre.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231017190545.157282-1-bero@baylibre.com>
References: <20231017190545.157282-1-bero@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Balsam CHIHI <bchihi@baylibre.com>

Add LVTS thermal controller definition for MT8192.

Signed-off-by: Balsam CHIHI <bchihi@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bernhard Rosenkränzer <bero@baylibre.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 .../thermal/mediatek,lvts-thermal.h           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/dt-bindings/thermal/mediatek,lvts-thermal.h b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
index 8fa5a46675c46..5e9eb62174268 100644
--- a/include/dt-bindings/thermal/mediatek,lvts-thermal.h
+++ b/include/dt-bindings/thermal/mediatek,lvts-thermal.h
@@ -26,4 +26,23 @@
 #define MT8195_AP_CAM0  15
 #define MT8195_AP_CAM1  16
 
+#define MT8192_MCU_BIG_CPU0     0
+#define MT8192_MCU_BIG_CPU1     1
+#define MT8192_MCU_BIG_CPU2     2
+#define MT8192_MCU_BIG_CPU3     3
+#define MT8192_MCU_LITTLE_CPU0  4
+#define MT8192_MCU_LITTLE_CPU1  5
+#define MT8192_MCU_LITTLE_CPU2  6
+#define MT8192_MCU_LITTLE_CPU3  7
+
+#define MT8192_AP_VPU0  8
+#define MT8192_AP_VPU1  9
+#define MT8192_AP_GPU0  10
+#define MT8192_AP_GPU1  11
+#define MT8192_AP_INFRA 12
+#define MT8192_AP_CAM   13
+#define MT8192_AP_MD0   14
+#define MT8192_AP_MD1   15
+#define MT8192_AP_MD2   16
+
 #endif /* __MEDIATEK_LVTS_DT_H */
-- 
2.42.0


