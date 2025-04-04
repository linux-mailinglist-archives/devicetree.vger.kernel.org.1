Return-Path: <devicetree+bounces-163230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A402BA7BF89
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 16:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A8E117CD4B
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 14:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65CFF1F428D;
	Fri,  4 Apr 2025 14:35:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="DxeF1gMt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA1931F4264
	for <devicetree@vger.kernel.org>; Fri,  4 Apr 2025 14:35:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743777330; cv=none; b=aP++QvZVnoG4GCk36fGEFmswwW6flbxGNqnDUATXnjNZMlCahoRg0la/8y6q/Pwcc/AiXEs0dELRuo8iugvJgCbD8fZHVfytagakEZcAsm/Sf7SwrudJjKEbupvboajrn8vHFwUhSTCDPoFVhbC0XqesUb5G7FTVX5w3AaLxReA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743777330; c=relaxed/simple;
	bh=kN3isOiLK0vcA5KhRK4tMpjoibgtSSoo4ZVucn2ZDQw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N1VgdEmemt1I1lsuF2cgX52+Z6xsZXM1Gps+zraCODhzY/VJJSheyGpg2rKEeVHU1kS9/buFHEPN9/daay6phj3/YCQHKbhWGVvDqqbm8EUK5i0zwc61IdHYMo4XDb0JTBZetbWJq4loJPmQIqwHK8ebqZu0gNbOpATLEOuDsDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hefring.com; spf=none smtp.mailfrom=hefring.com; dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b=DxeF1gMt; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hefring.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=hefring.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7c081915cf3so260066885a.1
        for <devicetree@vger.kernel.org>; Fri, 04 Apr 2025 07:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1743777327; x=1744382127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bK+c3D63UjZ8jufbmxbZOM/a2XsXZv8kRnKHQX4cpEI=;
        b=DxeF1gMtoPBVJehJS7KpF+Q6N3V/jBChijFUApVL91UyONLtzWzsBYa2OhAAcP4jcG
         56YZVtrJMgljgspr6Pvc9nqufI2eaL2bs+Q/l7XX1rpUtNumSWoe+T/unaT0gZ7qwQKm
         LzYVWiUZ9xFCgshy0E/RIveJH/+k4W6Ag416OMqVfbXbZgIQAmuADlHquLViWa/qZoM4
         6E8gTMhYwl5Uo+o2T7vCEeHqeSHFLhbT/nUYp4DGQt1qi/l0jat5wpsWbdr5dOVBwdOS
         wVcuJB9bDxvu9y6IEU92qoxBzclIapVFamsvSiR03fPk1Xwra9eiGMcT5CrWAWZrU/kE
         Q/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743777327; x=1744382127;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bK+c3D63UjZ8jufbmxbZOM/a2XsXZv8kRnKHQX4cpEI=;
        b=CqAlnRpUeH7CnaZQZ15lR5TwVlbjhR6EUodGLwF4qvqGivCeR1SxRlk2yaALNH7B5h
         c0Nhyd5ZUaJ5LZ4U+rpYDdF5txM85pHl144wFTOe9uz4n3CbH8cvzuI7l98U0Hdrruum
         VL6+wlLP0k842IClp0jy37ssadlGtATdqdQNjDQFewT3CejtEGAf8lKEOj1fDtyJ3SUt
         iJN9bSZtRz/5/wmDH+acM0wiDIl5lT8mgX9+S5YgoHGG/ggPdGCNbxvejq7hNclbSstf
         327CeVXt34h2DxxonBWy/6bwM6th0yZbPV6uZVgLkiIQkQS82pWi3u7+Af9BXxpjC6+J
         /Xdw==
X-Forwarded-Encrypted: i=1; AJvYcCWbpsv001b3WDJtWOZK+soc9ZVjrjozfhfn3vVANXcOHWlh0DoH2dTo5xvDF0d2O/rRntjuKC/FJDMf@vger.kernel.org
X-Gm-Message-State: AOJu0YxphyBY1iXxIx1nDyeH9hnEce7PuWhFBY/3rGbzobOIGLsbSLDS
	3uU729R30DMX5KsN9QhsoC984QTFcWv3sAaoebV5L8TfYT13QJ7owFI5SQZI52g=
X-Gm-Gg: ASbGncuXOeJVz9kYUxNfpIAbzrwpGv1+JHzaz6KtshoSJVae82NSUIjUibLZ+eGoaXa
	Kk8eMGaAdhBz9bAX3FNumFz/TkTvQj1Ijb05Fr0OQMwk28Gk+xMHMCJym0JYwfIUmg1lf4tGZ9X
	zWmPi3aDQcTLZ/djADnLtXjHBecVIMWW7qMru5ZMvUBMZfkKoBVRQq4tn3ugN7KHZiZPEhKqCg/
	Z2gzvyCZpuy1L/d3baCCnoD5003oP4aPgsTiv++pqe30+8JaUBCHrQ43n8TplgNm9D8a7BYGeur
	BJeJrXLgt0VA0nw5eJ5Gh8vMQGw500MfElpEfEElTzxQ9WBO6dabKxEoELkkE8XlOFjTS6gM7dI
	=
X-Google-Smtp-Source: AGHT+IGpe2CJgpCsJsGayaNpUYmgMLrht7bkJyklskD3eOS7aHMmjw5yzUjbFsf/0aNBZKBvoN2DUw==
X-Received: by 2002:a05:620a:170a:b0:7c5:50dd:5079 with SMTP id af79cd13be357-7c774d2779cmr487860885a.1.1743777327595;
        Fri, 04 Apr 2025 07:35:27 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.90])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c76e735419sm224204585a.15.2025.04.04.07.35.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Apr 2025 07:35:27 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH] ARM: dts: stm32: add low power timer on STM32F746
Date: Fri,  4 Apr 2025 10:35:14 -0400
Message-ID: <20250404143514.860126-1-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree node for the low power timer on the STM32F746.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 arch/arm/boot/dts/st/stm32f746.dtsi | 34 +++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
index 2537b3d47e6f..208f8c6dfc9d 100644
--- a/arch/arm/boot/dts/st/stm32f746.dtsi
+++ b/arch/arm/boot/dts/st/stm32f746.dtsi
@@ -43,6 +43,7 @@
 #include "../armv7-m.dtsi"
 #include <dt-bindings/clock/stm32fx-clock.h>
 #include <dt-bindings/mfd/stm32f7-rcc.h>
+#include <dt-bindings/interrupt-controller/irq.h>
 
 / {
 	#address-cells = <1>;
@@ -245,6 +246,39 @@ pwm {
 			};
 		};
 
+		lptimer1: timer@40002400 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32-lptimer";
+			reg = <0x40002400 0x400>;
+			interrupts-extended = <&exti 23 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&rcc 1 CLK_LPTIMER>;
+			clock-names = "mux";
+			status = "disabled";
+
+			pwm {
+				compatible = "st,stm32-pwm-lp";
+				#pwm-cells = <3>;
+				status = "disabled";
+			};
+
+			trigger@0 {
+				compatible = "st,stm32-lptimer-trigger";
+				reg = <0>;
+				status = "disabled";
+			};
+
+			counter {
+				compatible = "st,stm32-lptimer-counter";
+				status = "disabled";
+			};
+
+			timer {
+				compatible = "st,stm32-lptimer-timer";
+				status = "disabled";
+			};
+		};
+
 		rtc: rtc@40002800 {
 			compatible = "st,stm32-rtc";
 			reg = <0x40002800 0x400>;
-- 
2.48.1


