Return-Path: <devicetree+bounces-4658-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F5A7B35F1
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id E3E51289115
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 14:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0E0516D5;
	Fri, 29 Sep 2023 14:45:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C37651232
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 14:44:59 +0000 (UTC)
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20BCF193
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:58 -0700 (PDT)
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-6c4a25f6390so7828954a34.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 07:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695998697; x=1696603497; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=570noJze4N1Px27RwUIzjTarun0Tj8blQzlmY1B70TM=;
        b=asSNv5+IeFOpIOrTiY//1Ht1SEfYhOULNpMt+xmjVqva5chzEy6UPUO0Nr1mVett8h
         QL0GY6i4NbZrMGd9KF6/SdW7C8cj+yFX9G28oXHcMjIyB/VZFj9ctX53/1elwd8j2mrv
         ZbfX1cBzJJobyW770UBjRMpEh+3GcjVE1W4Ji7yIWyEDOwyIwi2m97d1VQtKidYDo0JA
         dBYc3hIwCCjwiWM7x5sYye1vyGgREF/9XaK6a9aIaO54MRXoDd/0gf5cwmDNTDWwtcK9
         ERUIAs1Jd0J3JpAFsHNzU2m3Xr/u6BELkb5068HN/d5IngcSjFNvsFWu5rP5GaSi0SwH
         UGkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695998697; x=1696603497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=570noJze4N1Px27RwUIzjTarun0Tj8blQzlmY1B70TM=;
        b=LooTilDhx+BthN4mvCM7rxV+19cGjfQTmwxsgBvO9lW+yoIq7R4G3sKzXWmJ/hcL86
         cUXdn8sMTvdZpfWh3y/o+GC3ej9oc9++MrT8WQ5pfDKQh3UvXfH8nRXLmzbN9jxlfulk
         fDceqcg17c33T3TvR/2bIIrlhTX8WlKHBWdRMCSwy/VD6ZNVWClrywB46ymVnhix6fVU
         T0iC7D0IuVdxW1D4Lq+9Zdo39OVcdPI3Zh0ggGMMjdlIhOgalYkXu2mFXEORLJ5pvdvV
         99x6QgPhUpqt+eD75yCdGhS85JhF61fUcdn4AvJesMz68x5eHPYtxgSNJ3gJe8xHNNfI
         qUDA==
X-Gm-Message-State: AOJu0Yz+g2Wnms19xxiteApKz0sU7V4P1ll2hF+aomw/tpvKJCgCGAwX
	BDd1uMamaxZ/vYhVn8uLmPM=
X-Google-Smtp-Source: AGHT+IF5ggSvkhs65lIZVx6vd23guozmMjvRw7YbnRlds9minER3vm7neRodmomPxzNEg9A+2lF5vQ==
X-Received: by 2002:a9d:6182:0:b0:6b8:7584:3aa4 with SMTP id g2-20020a9d6182000000b006b875843aa4mr4563194otk.4.1695998697344;
        Fri, 29 Sep 2023 07:44:57 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id q19-20020a9d6653000000b006b753685cc5sm3012619otm.79.2023.09.29.07.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 07:44:56 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	uwu@icenowy.me,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	andre.przywara@arm.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V6 1/4] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date: Fri, 29 Sep 2023 09:44:38 -0500
Message-Id: <20230929144441.3409-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230929144441.3409-1-macroalpha82@gmail.com>
References: <20230929144441.3409-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Chris Morgan <macromorgan@hotmail.com>

Add pinctrl nodes for pwm0 and pwm1.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Andre Przywara <andre.przywara@arm.com>
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index 3b9a282c2746..c87476ea31e2 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -414,6 +414,18 @@ mmc1_pins: mmc1-pins {
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			pwm0_pin: pwm0-pin {
+				pins = "PB4";
+				function = "pwm0";
+			};
+
+			/omit-if-no-ref/
+			pwm1_pin: pwm1-pin {
+				pins = "PB5";
+				function = "pwm1";
+			};
+
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC1", "PC2", "PC3";
 				function = "spi0";
-- 
2.34.1


