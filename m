Return-Path: <devicetree+bounces-97698-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2369B96313E
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 21:50:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48F901C2127D
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 19:50:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6342E1AC428;
	Wed, 28 Aug 2024 19:49:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="g0tkPWBW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD46E1A76CE
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 19:49:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724874591; cv=none; b=KD5/99gD+6J/eMIWqomoBCcpCWwPkKo14qGMi5zmxIyc265HjBY1zpZO2GKn3YjEvxCL89vU2fVsRnwXhN/dIBaQsUO/JRYA2VlERCkIS37BuHxIDYvrUeJMvEZ4M8bjhKcBv4J+HN8eCHWEGL49cQ/P+aKP3n4j7OYcvzWaNnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724874591; c=relaxed/simple;
	bh=eUQSFbMWChoNee0n5+L84Wfx+47DU/AnW3+npYXQNl4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=NOK6qgnasAYZqx22hCN9Yk6u73WIrOu8WQ/kQgoK3A/7MVxNhtpFLojlE8ZrJRjzg2J9YppJiHdEygz13J3ge+MWggnNvQwLTYv8UciOeu692JF+IAyaTRGHQkuPkN3DSUrY8Df4LUDZjrLLYPcUoDtbEWlI9jQjxY32ulY9srM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=g0tkPWBW; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-7142a93ea9cso5223065b3a.3
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 12:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724874589; x=1725479389; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+SXR1twHU89OP1PRqZ72KfqNwFw2tmTWKaVkxfiUSkY=;
        b=g0tkPWBWWGwk0KIwAsJhEfFHXs72pDocpbqlmNozdW5HqNUrG/9U2xEOk62l5zE0iL
         juS95Favfsvq/MAqkzbHUDfdmn/C/yotRwp5z93S73/F3Fj0YAUKpEkRZiEj29vWN8nb
         juqaZQ6us1ULErsMDMy2nWUxYczXPjW70vf5oRMWR1VfUretNyoMOznFYcf3S3qME9JC
         DJDqktIJlBolK4ZTSt60bDCad5ZSU6RJ5mt1bPD6qivrKH5RsDDi1yyGFUNIcRszUOO3
         7ZCM4oYMam8p9Qe3LAgCmSYLLAn/M/JZyXmqAFNV6Y8WU21KrJ1+9wMfyKQBkOx8NDqA
         vmww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724874589; x=1725479389;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+SXR1twHU89OP1PRqZ72KfqNwFw2tmTWKaVkxfiUSkY=;
        b=h82gNqetbLjxWuL3lFZOagYJYwDlDXxTtWKnbUq80iqo+uxw8CgPCH7AiVYa2YXeQR
         rxBMS9KGcHrNaRapAZQ94LMQBbiwTiRvnzLrWWUayFnJDYxUPxvozvwW5w/lQ+zduaAa
         sHFbmfkqA8wUnx5iLLVQQCrWmfRFiwVc7JelVgYtIm4XKGNudTu9pSity5tW/tNCSRbX
         FMtqM2uf/zxOj3FhoZ3Fh6b5u9jGhcuioG6KSksfEtKRcgDAGlYbiLJIH20a6bI+UqB6
         IV3/fpEcr7Xb4vdZtGN9oPKECXEk9GM9XZiBsL6YOhsNI40JdBPiRa0jdwkpriXvmrJP
         qFKw==
X-Forwarded-Encrypted: i=1; AJvYcCX40oBkn2JOJ2ubgr1bP96+kNIhIJx1akMbA4WZJyxLh102y8SDCH/h12qaRs+3M9FIhKofHBL2RT20@vger.kernel.org
X-Gm-Message-State: AOJu0YzXxpuDkrdCS4Xv5fO/r4rRGxX1qw5Y6E5448H/ECwR7veJ6lN+
	rcUVzuQCpCYRPtLKPh3I8Jpsqu2qzb/e2YKO7nxi/FqIfhOjzKSN
X-Google-Smtp-Source: AGHT+IHr71bsgsG/3lSg1MwoZbq43C18ITNxQOf4vQJjkTG8gTOPtrYSe9JcEKUfF4Q3H0IhvC6B2Q==
X-Received: by 2002:a05:6a00:4b04:b0:70d:2fb5:f996 with SMTP id d2e1a72fcca58-715dfaf3636mr784472b3a.11.1724874588816;
        Wed, 28 Aug 2024 12:49:48 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:4b3a:557e:6b5b:dbdc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7cd9ac9a347sm11240633a12.19.2024.08.28.12.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 12:49:48 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	lukma@denx.de,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx23/8: Rename apbh and apbx nodes
Date: Wed, 28 Aug 2024 16:49:19 -0300
Message-Id: <20240828194919.3192996-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

According to simple-bus.yaml, apbh and apbx are not valid bus names.

Rename them to apbh-bus and apbx-bus to fix the following dt-schema
warnings:

'apbh@80000000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
'apbx@80040000' does not match '^([a-z][a-z0-9\\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm/boot/dts/nxp/mxs/imx23-evk.dts           | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts     | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts         | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts          | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx23.dtsi              | 4 ++--
 arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts      | 2 +-
 arch/arm/boot/dts/nxp/mxs/imx28.dtsi              | 4 ++--
 8 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts b/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts
index 7365fe4581a3..33b36af1656f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-evk.dts
@@ -52,7 +52,7 @@ panel_in: endpoint {
 	};
 
 	apb@80000000 {
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			nand-controller@8000c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&gpmi_pins_a &gpmi_pins_fixup>;
@@ -99,7 +99,7 @@ display_out: endpoint {
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			lradc@80050000 {
 				status = "okay";
 				fsl,lradc-touchscreen-wires = <4>;
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts b/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts
index 229e727b222e..e372e9327a47 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-olinuxino.dts
@@ -19,7 +19,7 @@ memory@40000000 {
 	};
 
 	apb@80000000 {
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			ssp0: spi@80010000 {
 				compatible = "fsl,imx23-mmc";
 				pinctrl-names = "default";
@@ -64,7 +64,7 @@ ssp1: spi@80034000 {
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			lradc@80050000 {
 				status = "okay";
 			};
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
index b23e7ada9c80..cb661bf2d157 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
@@ -55,7 +55,7 @@ memory@40000000 {
 	};
 
 	apb@80000000 {
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			ssp0: spi@80010000 {
 				compatible = "fsl,imx23-mmc";
 				pinctrl-names = "default";
@@ -100,7 +100,7 @@ MX23_PAD_PWM3__GPIO_1_29
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			pwm: pwm@80064000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&pwm2_pins_a>;
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts b/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts
index 69124ba6a666..b2b6f8514999 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-stmp378x_devb.dts
@@ -16,7 +16,7 @@ memory@40000000 {
 	};
 
 	apb@80000000 {
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			ssp0: spi@80010000 {
 				compatible = "fsl,imx23-mmc";
 				pinctrl-names = "default";
@@ -44,7 +44,7 @@ MX23_PAD_PWM4__GPIO_1_30
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			auart0: serial@8006c000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&auart0_pins_a>;
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
index 28341d8315c2..0b088c8ab6b6 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
@@ -54,7 +54,7 @@ memory@40000000 {
 	};
 
 	apb@80000000 {
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			ssp0: spi@80010000 {
 				compatible = "fsl,imx23-mmc";
 				pinctrl-names = "default";
@@ -101,7 +101,7 @@ MX23_PAD_ROTARYB__GPIO_2_8
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			i2c: i2c@80058000 {
 				pinctrl-names = "default";
 				pinctrl-0 = <&i2c_pins_a>;
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
index 0309592af1e1..5e21252fb7c9 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx23.dtsi
@@ -45,7 +45,7 @@ apb@80000000 {
 		reg = <0x80000000 0x80000>;
 		ranges;
 
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -476,7 +476,7 @@ tvenc@80038000 {
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts
index c72fe2d392f1..9053472ed6b9 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10037.dts
@@ -38,7 +38,7 @@ MX28_PAD_SSP2_SS2__GPIO_2_21
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			usbphy1: usbphy@8007e000 {
 				status = "okay";
 			};
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
index 4817fba2d938..bbea8b77386f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
+++ b/arch/arm/boot/dts/nxp/mxs/imx28.dtsi
@@ -56,7 +56,7 @@ apb@80000000 {
 		reg = <0x80000000 0x80000>;
 		ranges;
 
-		apbh@80000000 {
+		apbh-bus@80000000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
@@ -1092,7 +1092,7 @@ armjtag: armjtag@8003c800 {
 			};
 		};
 
-		apbx@80040000 {
+		apbx-bus@80040000 {
 			compatible = "simple-bus";
 			#address-cells = <1>;
 			#size-cells = <1>;
-- 
2.34.1


