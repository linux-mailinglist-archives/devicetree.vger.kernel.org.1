Return-Path: <devicetree+bounces-2167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBAA7A9CA1
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:22:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42C2A283621
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:20:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED75444481;
	Thu, 21 Sep 2023 18:11:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBF904D8E4
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:11:31 +0000 (UTC)
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D88CE663E3
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:10:52 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-68c576d35feso1134208b3a.2
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695319852; x=1695924652; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=y1utggLI0BiGHlTHHR5/pvUEGIO1xYD0ZyabcazoGu4=;
        b=QBUH+XOO9TXMUZZituLd4ZPekUmLhJQKCeuCxqwXdMHZ2EdZW5ZY/hS+3jm73cYM2m
         qXB+wCvy5qUn7KOTQOUnIBd09UXn8DVBhEhBUQ7gfMfFXxgYQi6PZB4sf1A+fLVd2OLJ
         YSicNz597jH20rTmlRWVUlQ2EQ06sXJGC2zYPDPQdil2KJKPu9QA18gJekTOd0eg9LxO
         hVKz6cKSIFpDhgh74msPXPGqFC+yQwsdhuEAsyMumPPDuqCGeVAp4d/AGtRGd9dxWOdM
         tS8hagTal1k/rqSh49u0sv4uEBjX9Gcg+vOgMGREGmn5VxiS+664Qlk/9/n/QLh0GBNS
         PlBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695319852; x=1695924652;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y1utggLI0BiGHlTHHR5/pvUEGIO1xYD0ZyabcazoGu4=;
        b=gAii21spo1q2Xa9TRHMiUxTwgy6rZRUCHeAMmYwcvPbQfzlHjaTpi/paBFDS51Dzf/
         kqsHfSwHtmcO4UnyKO7RKbhP/AaLhdijSAz2erN3jzEzdSKFiP1MQBh0GNi9HdI586yd
         Gg0o+V08Eub/97Z7Nmlv2e3cl8k5bawlbFR7em1jd1WY+W8zvq2fF3+YeSpXUXpqGX/I
         5cbG/atNxEX4VJNnoTr9Oz66vO4Oqk96yoES4AnR4T0N++PAYWJY6NYOBfHrf441i2qY
         dA7AYiBDOLvyC9qjV0bz04IhfaSow5L5sKKuyfkECg7JK78val35S4g72T38XZQxIwdW
         +1lw==
X-Gm-Message-State: AOJu0YzruqUQI1azyeMDhB00ia4WDwzUz8DfnSfKrK077BiN/AnwePFl
	WatgE8ne2Z6Gg20Ir/VzxFA4QxsoQT0=
X-Google-Smtp-Source: AGHT+IEErlN0UsLsx7gN9nGZwWXOOBiY2PgXFRk34l0suHipPoBbKDD5ZjskrrWrghU3r2jMh6AqRg==
X-Received: by 2002:a05:6871:687:b0:1d6:4b84:c7ed with SMTP id l7-20020a056871068700b001d64b84c7edmr4805468oao.23.1695304302615;
        Thu, 21 Sep 2023 06:51:42 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z19-20020a056870e15300b001d7034bc222sm547064oaa.15.2023.09.21.06.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 06:51:42 -0700 (PDT)
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
Subject: [PATCH V5 1/4] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date: Thu, 21 Sep 2023 08:51:33 -0500
Message-Id: <20230921135136.97491-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230921135136.97491-1-macroalpha82@gmail.com>
References: <20230921135136.97491-1-macroalpha82@gmail.com>
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


