Return-Path: <devicetree+bounces-32302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8641882EE94
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 12:59:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 368BD285484
	for <lists+devicetree@lfdr.de>; Tue, 16 Jan 2024 11:59:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F4361B958;
	Tue, 16 Jan 2024 11:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DMbwMIhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 978AA1B950
	for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 11:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-40e5afc18f5so54745105e9.3
        for <devicetree@vger.kernel.org>; Tue, 16 Jan 2024 03:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705406380; x=1706011180; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4mY+tIwBKHmUxob9qZlCJ14coqBFslOG9Pxb8dXi/Ag=;
        b=DMbwMIhWc9YAULkQpaZV2B2+1jhwM3RsttaozkThlzJfMQUrNLED/13rYnU+6gzOsa
         aHTAIbI0ZQavKHIeT81zLRKVaN7OOu2zThFDLQNCas/qKLuzLKx0v880ihTpesWwMNWo
         EasgmGRrScjGOCPRHQm/lNoane+Q3OUeqxmCTnhUR+eeea6w9uWK2SPfWkR1fmZbrycW
         9SR1EAhbXpvk6ytjhP1Sy+J7Ek4mnOP9SGf9d/D8sDV4K/9ZylZx1U7Jb0vGIpkt40dc
         JEsn84fOn88nIMjmPq3n6WABJRe6PoYJI4TBG1uav3Fy00dDotlnk03P0EtT09nfi2ef
         WsSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705406380; x=1706011180;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mY+tIwBKHmUxob9qZlCJ14coqBFslOG9Pxb8dXi/Ag=;
        b=TKaPmFiXnRziLuf2NO6mv8I+JaVSD8/0SRfPuaL1KsJDThDwXcFVNpInPg0hcQFVfV
         ITC187vSWnidqc/nTy/pYuwi+LoWu+CvjxdRsZPE9PAlgZJ0unRCS5lbsWFifYoOvKUK
         Gy5aA4IRaHwIdAFUhPkwIEBpmzWCzFW9ZcnBkfWIpNRQveRzg9Ij+7lxLteP0uRM+Jpr
         AadUF0qiE3pzu8TmzpCdpjCz+dR3/gSG/NOAV1O+TkdmEMqL0aRNrbz+X5niunGFkrYy
         cxWAKaRy9NUoS9x3R1kGpSKg3YJNLtmaOSePfqrka278KQ/NC5QeZY0Sh7p237Q7UL0P
         GPvg==
X-Gm-Message-State: AOJu0YwQWNSShSnDmnuWwVMl467A9Hfin1WiobXwUXRafM6H9wcGodvn
	fJMY74VmcbaQ0Xy6EHeV+Q4ShoqEs5KhOw==
X-Google-Smtp-Source: AGHT+IGYJaZEn2g6guZI4dv6kZznoWhyov0C2/HFwMpWczK/1npe7aC2mGDSbL9GE9DZBkZ84UN4ug==
X-Received: by 2002:a05:600c:211a:b0:40e:6ba4:e056 with SMTP id u26-20020a05600c211a00b0040e6ba4e056mr2674818wml.18.1705406379859;
        Tue, 16 Jan 2024 03:59:39 -0800 (PST)
Received: from mai.box.freepro.com ([2a05:6e02:1041:c10:fab3:687:ead6:5b40])
        by smtp.gmail.com with ESMTPSA id p31-20020a05600c1d9f00b0040e6ea6d2d0sm3279722wms.24.2024.01.16.03.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jan 2024 03:59:39 -0800 (PST)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: andersson@kernel.org
Cc: Amit Pundir <amit.pundir@linaro.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org (open list:ARM/QUALCOMM SUPPORT),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] arm64: dts: qcom: sdm845: Fix wild reboot during Antutu test
Date: Tue, 16 Jan 2024 12:59:20 +0100
Message-Id: <20240116115921.804185-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Running an Antutu benchmark makes the board to do a hard reboot.

Cause: it appears the gpu-bottom and gpu-top temperature sensors are showing
too high temperatures, above 115°C.

Out of tree configuratons show the gpu thermal zone is configured to
be mitigated at 85°C with devfreq.

Add the DT snippet to enable the thermal mitigation on the sdm845
based board.

Fixes: c79800103eb18 ("arm64: dts: sdm845: Add gpu and gmu device nodes")
Cc: Amit Pundir <amit.pundir@linaro.org>
Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 32 ++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index c2244824355a..20fefd6af0f8 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4764,6 +4764,8 @@ gpu: gpu@5000000 {
 			interconnects = <&mem_noc MASTER_GFX3D 0 &mem_noc SLAVE_EBI1 0>;
 			interconnect-names = "gfx-mem";
 
+			#cooling-cells = <2>;
+
 			status = "disabled";
 
 			gpu_opp_table: opp-table {
@@ -5603,12 +5605,25 @@ gpu-top-thermal {
 			thermal-sensors = <&tsens0 11>;
 
 			trips {
-				gpu1_alert0: trip-point0 {
+                                gpu1_alert0: trip-point0 {
+                                        temperature = <85000>;
+                                        hysteresis = <2000>;
+                                        type = "passive";
+                                };
+
+				gpu1_alert1: trip-point1 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&gpu1_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 
 		gpu-bottom-thermal {
@@ -5618,12 +5633,25 @@ gpu-bottom-thermal {
 			thermal-sensors = <&tsens0 12>;
 
 			trips {
-				gpu2_alert0: trip-point0 {
+                                gpu2_alert0: trip-point0 {
+                                        temperature = <85000>;
+                                        hysteresis = <2000>;
+                                        type = "passive";
+                                };
+
+				gpu2_alert1: trip-point1 {
 					temperature = <90000>;
 					hysteresis = <2000>;
 					type = "hot";
 				};
 			};
+
+			cooling-maps {
+ 				map0 {
+ 					trip = <&gpu2_alert0>;
+					cooling-device = <&gpu THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+                                };
+                        };
 		};
 
 		aoss1-thermal {
-- 
2.34.1


