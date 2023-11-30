Return-Path: <devicetree+bounces-20537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE8C7FFEC1
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 23:52:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC5711C20B56
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 22:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 170285EE93;
	Thu, 30 Nov 2023 22:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DuHPXXVG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33A19139
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 14:52:55 -0800 (PST)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1d03f90b0cbso1589685ad.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 14:52:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701384774; x=1701989574; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MUKRgd1eTO2JF+wEJYG4KlDqucWkq8lzdJJKjwBewvM=;
        b=DuHPXXVGuCVHk6qGow/oGQIzScj1CCnF+K2lFp84yarTnw+MBrF80yVjEepKvSahf7
         peoxYmhFzSC7M65pGkoF2PvOipq8DrVLjDn0rYhzlufS1RjvSHuWmj6xrOgOYwRKZ1hu
         zuwLapUYTR/1mBpUd0/KsnqrTAVBXQh3qWYC4v+4FdQaA2m4sW88MR9NCnwiI71PH4lg
         YXHPW8k1jzZcr4mWY4w1jOSNVaZpYQZzXVu/Q/GjLPWWbPHLV+BCOblHUNb8WoBLI2Kw
         FgQFVoQc5XzNeN8ZWcG9gixNckn4M8EH/mz0pVSRIMGIkBlrQAWjMzCWj3Stmy1Qn8QB
         qO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701384774; x=1701989574;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUKRgd1eTO2JF+wEJYG4KlDqucWkq8lzdJJKjwBewvM=;
        b=Ehho11133DmCnfENmKNZal2b+/XH95JqIFvm8yXmaDLv8u9MluK8r0/5xI7H34qGif
         2CopWzmPHzisva8bDukyYGsI35JeUwMyw44fuc/PBT0mScjpS7f2yj/ZkoRO7q6whB+g
         mbJkWb7tCIvHWsLti2qQM/wC85/izhiO+CfQbHl02L9cGmx0exVyHEJqFtuUAYQO8+Yh
         XtZb/xZ5iselCy35EOeXL/C6tVq6bk/NfutkMKnY7bEiiRRvhMhJJkAqsJxHcw5YlRoj
         bD14o+W/djeOGtg4PWu+IuHMZaRZ3D+h1XKOMt1+8ZiHrirzPFMW4AoPQy8i1PNVEbMB
         qQKg==
X-Gm-Message-State: AOJu0Yy96Lxf9PSLPEX5BqY1Zdq59um8QEJSX6kMe/E6eDfPTPZSITW8
	Ge9tOKYxkvKYgejUSNTadgQ=
X-Google-Smtp-Source: AGHT+IEFq4afi7bN8Y7vYfFpwRDOS9iZkNL064aQGl2S6xacAHyUOU4R6b3I3c/DTX2EKUv0g+iDSg==
X-Received: by 2002:a17:902:ed46:b0:1d0:45b2:d8b0 with SMTP id y6-20020a170902ed4600b001d045b2d8b0mr2112816plb.5.1701384774597;
        Thu, 30 Nov 2023 14:52:54 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:7fe2:efb7:8d19:3ded])
        by smtp.gmail.com with ESMTPSA id h6-20020a170902f7c600b001d0447e7fdasm1127413plw.269.2023.11.30.14.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 14:52:54 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	tharvey@gateworks.com,
	Fabio Estevam <festevam@denx.de>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH] arm64: dts: imx8mm-venice-gw7: Adjust PCI Ethernet nodes
Date: Thu, 30 Nov 2023 19:52:42 -0300
Message-Id: <20231130225242.988336-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

As per Rob Herring's feedback:

"The ethernet device should have a node name of
'ethernet'. The 'pcie' node name and 'device_type = "pci"' is for PCI
buses/bridges only."

Do it as suggested.

Fixes: d61c5068729a ("arm64: dts: imx8mm-venice-gw7: Fix pci sub-nodes")
Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi | 3 +--
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi | 3 +--
 arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts  | 3 +--
 3 files changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
index a337e8f20441..3f3f2a2c89cd 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw72xx.dtsi
@@ -178,9 +178,8 @@ pcie@3,0 {
 				#size-cells = <2>;
 				ranges;
 
-				eth1: pcie@0,0 {
+				eth1: ethernet@0,0 {
 					reg = <0x0000 0 0 0 0>;
-					device_type = "pci";
 					#address-cells = <3>;
 					#size-cells = <2>;
 					ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
index 2247d1c4e2af..06fed9376996 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw73xx.dtsi
@@ -198,9 +198,8 @@ pcie@4,0 {
 				#size-cells = <2>;
 				ranges;
 
-				eth1: pcie@0,0 {
+				eth1: ethernet@0,0 {
 					reg = <0x0000 0 0 0 0>;
-					device_type = "pci";
 					#address-cells = <3>;
 					#size-cells = <2>;
 					ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
index 7ef17c2b0e9d..c11260c26d0b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
@@ -640,9 +640,8 @@ pcie@0,0 {
 		#size-cells = <2>;
 		ranges;
 
-		eth1: pcie@0,0 {
+		eth1: ethernet@0,0 {
 			reg = <0x0000 0 0 0 0>;
-			device_type = "pci";
 			#address-cells = <3>;
 			#size-cells = <2>;
 			ranges;
-- 
2.34.1


