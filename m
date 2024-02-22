Return-Path: <devicetree+bounces-44636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BCD4885F28B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 09:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4A40C283118
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 08:12:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F3FA1B59F;
	Thu, 22 Feb 2024 08:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LAW1J9Cy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05A20DDC
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 08:12:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708589574; cv=none; b=P9zobPWjbFSWeb7MKAaeWHy9Q8LIyHy4Bpg2n7qzjtGDMEStCcBRXNs/2cglX2AbIrvx1Jo1MJtwlb9kJ3fIGmyvH7+mkoVqbrJO105dxtrLTX8nOy9GwS1/SJCVxzq64HxFHRPzgLBb6JNQPcchTo8ZSk6AZuFuUrPoeHDxlNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708589574; c=relaxed/simple;
	bh=lACIWIIe6I6XBgEs4axVETypjgF0xMo4A+BUz4dsSHE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mw1kPzAVGk8jFjyCqWSxRH0YGwsgWOZuaZFIdr2aQvjzIBqkFjdgFNqrP9A0KYNl+Mu/l6ylCvyZplt3TT83Wi1nr2vVti18/RmIyeKX/CZSyL/9gygGJ9GCkebVDp7z69Dhs4OUeSikOR5M0MdyR3q/1DXS5R3dRJhiHDmr4IY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LAW1J9Cy; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1dc0e5b223eso29523465ad.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 00:12:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1708589566; x=1709194366; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=71zlVIznaIfi5FluR/+lVnei3BjKa6CskewcKRtvea4=;
        b=LAW1J9Cyv0IPyrQ7ReQwSt2I2kn0uf0klLK7STMVXaXN2OrDIaQe7lPcSEYwCoRaVZ
         s+BoYwXypRQnLS8B3X2MoYFBf5Jq5gJObjqOtuELGH7+TjxNlwEMt3PDjPmx8i+EI/Zv
         kqf3qiKNqVnq7xpu3cOuegmCXu+m5WVt6TE9cfBG/lw3S7uOxFFodzJznb4zed6XEgE5
         bvO2OCClckpnFfWM7hZeubz+kM286qsMXzkGlTAacgpJ06ppvcyGDcaEZIdygYjDmdy0
         F0mTUS01MiGKiKsBMP9FvTeyfmIIkKNIDA8dTmyr/uN07BvUk3Pmi0th1PjP8mGKQo6H
         BqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708589566; x=1709194366;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=71zlVIznaIfi5FluR/+lVnei3BjKa6CskewcKRtvea4=;
        b=jyMvC3O7D43sl3Lp97Nh2Dj8ug4s4KTo4bDBHyfgS/5Kez8da8aBbkw1JcEb/FOGZ+
         jaN4Ux1Jwvuv0zHHw/+KapNYBlngbG+yMe+KIsNv38cc98tE0VAMZcpFWw/nWm6XFrTw
         JEG0M+ZDpP6CSW+1OC6MAGXx9OGwObCzFPXhjYq8rf7MdBryClYRD/OWnwKWb3FsAii7
         KcvmCGG5gVJkVk2i1A9xvV1LrNf70GCSHF48IWw2dlsInqWREj2ABvHBcgrLTGq+nTIi
         Qj+H2tu3ZBjmPPRRboa1kbgeumsK5Pa37o6erzHiBFerpmH/n6eT5kcUuO9wLbF9OwJI
         fJDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIhGzCFNloV1ddBGABmEBX3WXGnJ5uA0h5dLKdvcrthwvDS/tvEONY8CAyiR4g4Eki9mbHJ2c+qCPouwukXcdzx1YVYfA+vlEOtg==
X-Gm-Message-State: AOJu0YxkzIuCKmdT8aI8lnyHX1mXGoMiAwUl6URhuwtM+g5jyMrPwy1Y
	rL6HF5RdaEzOaHSDRoxULN/+bjimlkXlqpKwP5Qm39ycJ7EZb+s4EuU1GheJiYk=
X-Google-Smtp-Source: AGHT+IHPAJL6cu7RSH3WE6fAmuaVyPcr1z1aP7UDfSisRlzZCtIioRHasqYMwaX0+k6zz4u5vDTy8Q==
X-Received: by 2002:a17:902:ecc1:b0:1dc:19e:3d9d with SMTP id a1-20020a170902ecc100b001dc019e3d9dmr11278580plh.30.1708589565722;
        Thu, 22 Feb 2024 00:12:45 -0800 (PST)
Received: from hsinchu15.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id lf8-20020a170902fb4800b001db5ea825b2sm9412796plb.123.2024.02.22.00.12.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 00:12:45 -0800 (PST)
From: Nylon Chen <nylon.chen@sifive.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pwm@vger.kernel.org,
	conor@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	aou@eecs.berkeley.edu,
	thierry.reding@gmail.com,
	u.kleine-koenig@pengutronix.de
Cc: vincent.chen@sifive.com,
	zong.li@sifive.com,
	nylon.chen@sifive.com,
	nylon7717@gmail.com
Subject: [PATCH v9 1/3] riscv: dts: sifive: unleashed/unmatched: Remove PWM controlled LED's active-low properties
Date: Thu, 22 Feb 2024 16:12:29 +0800
Message-ID: <20240222081231.213406-2-nylon.chen@sifive.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240222081231.213406-1-nylon.chen@sifive.com>
References: <20240222081231.213406-1-nylon.chen@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This removes the active-low properties of the PWM-controlled LEDs in
the HiFive Unmatched device tree.

The reference is hifive-unleashed-a00.pdf[0] and hifive-unmatched-schematics-v3.pdf[1].

Link: https://sifive.cdn.prismic.io/sifive/c52a8e32-05ce-4aaf-95c8-7bf8453f8698_hifive-unleashed-a00-schematics-1.pdf [0]
Link: https://sifive.cdn.prismic.io/sifive/6a06d6c0-6e66-49b5-8e9e-e68ce76f4192_hifive-unmatched-schematics-v3.pdf [1]

Co-developed-by: Zong Li <zong.li@sifive.com>
Signed-off-by: Zong Li <zong.li@sifive.com>
Co-developed-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
---
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts | 12 ++++--------
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 12 ++++--------
 2 files changed, 8 insertions(+), 16 deletions(-)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
index 900a50526d77..06731b8c7bc3 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts
@@ -49,32 +49,28 @@ led-controller {
 		compatible = "pwm-leds";
 
 		led-d1 {
-			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 0 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d1";
 		};
 
 		led-d2 {
-			pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 1 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d2";
 		};
 
 		led-d3 {
-			pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 2 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d3";
 		};
 
 		led-d4 {
-			pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 3 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d4";
diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 07387f9c135c..b328ee80693f 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -51,8 +51,7 @@ led-controller-1 {
 		compatible = "pwm-leds";
 
 		led-d12 {
-			pwms = <&pwm0 0 7812500 PWM_POLARITY_INVERTED>;
-			active-low;
+			pwms = <&pwm0 0 7812500 0>;
 			color = <LED_COLOR_ID_GREEN>;
 			max-brightness = <255>;
 			label = "d12";
@@ -68,20 +67,17 @@ multi-led {
 			label = "d2";
 
 			led-red {
-				pwms = <&pwm0 2 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 2 7812500 0>;
 				color = <LED_COLOR_ID_RED>;
 			};
 
 			led-green {
-				pwms = <&pwm0 1 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 1 7812500 0>;
 				color = <LED_COLOR_ID_GREEN>;
 			};
 
 			led-blue {
-				pwms = <&pwm0 3 7812500 PWM_POLARITY_INVERTED>;
-				active-low;
+				pwms = <&pwm0 3 7812500 0>;
 				color = <LED_COLOR_ID_BLUE>;
 			};
 		};
-- 
2.43.0


