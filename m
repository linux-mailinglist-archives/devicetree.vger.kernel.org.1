Return-Path: <devicetree+bounces-6513-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E34A37BBA19
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 16:19:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9D2742822B3
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:19:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28D5D262AA;
	Fri,  6 Oct 2023 14:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AvJlO3dP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36315C157
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 14:19:32 +0000 (UTC)
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2035DB
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 07:19:28 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-3232be274a0so2062390f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 07:19:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696601967; x=1697206767; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=emLkV2UaIMLS837NeYJskcNbCX7MRqsLLSL/k6u/yn4=;
        b=AvJlO3dPD4Ro/lUEDgCzGuhTfGB6MytdYOu+RnJi7AHrldH9knP2oATa4f17RIMtOn
         E1p8BO+SX4BH99kjLkaGFS1B5fh3Vx4EQ+Rp0953Zs0WLPYB2afxoOS7pS4Oc1hO+znh
         Qt4if7Va2UP5iKmDBSKzYblyW0TfEzmbIWzCfNWg/K8ASM5x9DZEYs+nFrntmT1l0G07
         qUiQsEZGzsaiKD+iF+s3xCh4Msv+B7FFGZf1QKQaC74R8t1gSkr7XV/DfGEQThTVeEig
         kORzfCmUN03NszNqaiOmmvtbJ+uOrpRvOYtYsOHW2dOh7RpXx1BVhOm3HCk12zajXa7U
         MJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696601967; x=1697206767;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=emLkV2UaIMLS837NeYJskcNbCX7MRqsLLSL/k6u/yn4=;
        b=TgZflWJCIq2bCkly6tDDjdce+yrbEuaXGvm8gBK19Zr67qYcNtWKP+Y7ifCW3mQBZc
         K+OYmYKbD2zEeLw0VyRA4I8a+oRRKSGevBslKQu/qnVyKKuCFmi7QWpN37mblbpvjIEx
         qiaEhV6Um/Er5u570ZWW9ND+RBfIvXqMtmHTFyFA+KIsDGeaOFsVTvY/ABWQm4DvOrRD
         DvxDMiu1JvT68aUYOqi4zoP6NfHV12shpmuYU9otzl05l6MtPe/3Mf0RzNJ8On4G+6Ux
         NpnaJxLM8jhL71dm29mGVVCCAWrmsGRIhr1vuWsRgBUDa4uzk1fVAyuWycfKrBm4wsU6
         ZN7g==
X-Gm-Message-State: AOJu0Yx2kezksnS7E1gLsOR0FkCeutnF1Iw7S10L65DtodIlQdzZPGdC
	4/Zz12f9jNmwfuEsvT18R8J3KA==
X-Google-Smtp-Source: AGHT+IFZtgIuveq5UIaO3n9ZJc/f6XqidNKNy9T9tT5+M1b1k0Awh+6++MuPoXnOPEeWHWdI0KwXcA==
X-Received: by 2002:a5d:4690:0:b0:318:720c:bb3 with SMTP id u16-20020a5d4690000000b00318720c0bb3mr4851212wrq.20.1696601967294;
        Fri, 06 Oct 2023 07:19:27 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:30eb:5a3:102a:599e])
        by smtp.googlemail.com with ESMTPSA id x14-20020a5d54ce000000b0031773a8e5c4sm1778479wrv.37.2023.10.06.07.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 07:19:26 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Da Xue <da.xue@libretech.co>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH] arm64: dts: amlogic: cottonwood: fix blue/green led inversion
Date: Fri,  6 Oct 2023 16:19:15 +0200
Message-Id: <20231006141915.3623097-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

While making the v2, blue and green LED pwms got inverted
This change fixes the problem

Fixes: 9f841514c9c2 ("arm64: dts: amlogic: add libretech cottonwood support")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
index ed826f673349..35e8f5bae990 100644
--- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -70,7 +70,7 @@ led {
 			function = LED_FUNCTION_ACTIVITY;
 			linux,default-trigger = "heartbeat";
 			max-brightness = <255>;
-			pwms = <&pwm_cd 1 1250 0>;
+			pwms = <&pwm_ab 1 1250 0>;
 			active-low;
 		};
 	};
@@ -83,7 +83,7 @@ led {
 			function = LED_FUNCTION_STATUS;
 			linux,default-trigger = "default-on";
 			max-brightness = <255>;
-			pwms = <&pwm_ab 1 1250 0>;
+			pwms = <&pwm_cd 1 1250 0>;
 			active-low;
 		};
 	};
-- 
2.40.1


