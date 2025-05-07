Return-Path: <devicetree+bounces-174714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B76ECAAE2B1
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 16:24:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7D248B2189A
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 14:20:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7406D28C2CB;
	Wed,  7 May 2025 14:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="V7JN6WA3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6303B28C030
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746627325; cv=none; b=rIJWIlEloKLzqgBBQf8pHQYpZB4Hqf35yugiOmQZgAFcv00SH2h9mk3PJ/R/+8Wk1sHD+Nj9YaQ+KU56vKac16e9gCSCUvg2VQtM+rxjAl0m3lE2QcooFqn/9/zB9JbdR/KpoLfwN44Zn7x7SB9a6HBr7D3VZNeb4pSxXJ6QXio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746627325; c=relaxed/simple;
	bh=RKMneX1wQOhwOyRqZHFY/RTQfW6urNlhtUZHaTk0CvU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=PzNmKVt3zonDubRLA/9gwWKEILuvOCbxxllmCtZUFC9jNkJFY1zLx4jBW5ZjGtqu9COYBLpajqUxSXu0aAMISLhigVGo7qvW2PF9ieNhknD2ntyOC1ptG6nbvXCpYh9R1aWO1zznBb5T9kNdAz5uUYvQsvFP5axUo8WakAtDKg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=V7JN6WA3; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5499614d3d2so6314480e87.3
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 07:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1746627321; x=1747232121; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8kbahxvpfkE5SUIJ9O+RAhHkMsjfPizkD68mJarweeM=;
        b=V7JN6WA3kO9kuBo1l87bOyniRKlsIKllpzU1KwqWf2Pl1IGYAFv2HWs3Z0OZpWqIWP
         2wtHHx1HtCiliJ0eFha76/mlGh8as/sNzPBj/PACgPiRfa7S4Gqs40L1wGiDLee5aLeS
         tN66l8tHbbLNdhJsmgKsnsLXvjSPqK9xctC/A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746627321; x=1747232121;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8kbahxvpfkE5SUIJ9O+RAhHkMsjfPizkD68mJarweeM=;
        b=txft5MZjo6UxusXNXXjvN4lFEq2tkhQ5YuTbbYbUiqCU3LqPUYqegBZ657Iuvo68wy
         IYIDnJQ0MdEobhkiXxU3qEDTMfzXhv0jAyBmFySARRgGBms0PzoYszbJOXvTVKFZb9Z4
         U7/jI2fhoxQl0TRGB9B6r8eQDkuk7TXpJzLCykhYoiikAaagJ6F5hkjbLImInsPMSiOk
         HQnFC36cSIJnZrtNTlGeWWQbRy1TKwcRNqwxBneUmmFos0VS4+W9Lo5iLkSWcdQI/swn
         TxggLS9YIsUestRm9F2J/104+iaMR2ZsptnZFfcct/lAYPyJ4VlYWk7WH1XtimEPYN2K
         0gOA==
X-Forwarded-Encrypted: i=1; AJvYcCUPFC08xL7fx3hRjweSvV8mmc4mSKScXYKUEIJBbWMA7ZBURWz5gXmmNoniciuoU0czQhf/ME6Dy83w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw949gbikWzhcdD0KfYzskZlPnCxJRnbu7bhylt8KgsKtcKTa7W
	870nBdFaxrweHamam3JYAePIQWQq5aPqcvOZ0Xp15eJnnitbHdLZf217UaBfmvirWYpHGRhZk+j
	D
X-Gm-Gg: ASbGncuPqh4zr/rQFNHkW3WAbfqsqwW3nDur/MWk6OYbeogcj3wUJ8GrCNrKLslLuHR
	ojSxggTnvyD9Gw6Nl4rC2UUZd8ECrVofa24b4HTkD5IeBKORooJpzqn42Riz0T7JXd+/7eTaC1k
	DL7WmrwJVN6O8yai30YfF4eZrM04C38MEo01VRfwpA/ZuNIhny8k9D4Y8Sc6Yv1dQDImTe61icv
	nCDH7+zxOL6EREN23/hvyLjW0y6kcupRZTFQVGqFcPk382X5hjj+ns3m90trgGAVuaXu6YQYOLQ
	P3cm3ZoG5owNYiqKNcBd+SiF6eNQfw910htgZxKpNQyfEFaXjbTk2v3Rdd5T6wfxnBNRDysMklL
	WLmrbEl6lQ56rZiK1kQhd+Q0ER4itoQ==
X-Google-Smtp-Source: AGHT+IHdlj7CpNVBpX0ik+NG/wdlK6dMWu7TW5P7ZwM+3Yc0y5PuGMTHr+/cHr3uiayAfwmPefwgnQ==
X-Received: by 2002:a17:907:2d23:b0:ac7:4d45:f13e with SMTP id a640c23a62f3a-ad1e8bc3151mr378991766b.13.1746627310389;
        Wed, 07 May 2025 07:15:10 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.amarulasolutions.com ([2.196.43.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c02f3sm927944966b.92.2025.05.07.07.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 07:15:10 -0700 (PDT)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: mxs: use padconfig macros
Date: Wed,  7 May 2025 16:14:58 +0200
Message-ID: <20250507141504.1332054-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Convert mx2{3,8} dts files to use the padconfig macros defined in
mxs-pinfunc.h.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

 arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts    |  6 +++---
 arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts     | 12 ++++++------
 arch/arm/boot/dts/nxp/mxs/imx28-cfa10036.dts |  6 +++---
 3 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
index cb661bf2d157..613f13b6c8a8 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-sansa.dts
@@ -93,9 +93,9 @@ MX23_PAD_LCD_DOTCK__GPIO_1_22
 						MX23_PAD_LCD_HSYNC__GPIO_1_24
 						MX23_PAD_PWM3__GPIO_1_29
 					>;
-					fsl,drive-strength = <0>;
-					fsl,voltage = <1>;
-					fsl,pull-up = <0>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 			};
 		};
diff --git a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
index 0b088c8ab6b6..fad08f6c008f 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx23-xfi3.dts
@@ -83,9 +83,9 @@ hog_pins_a: hog@0 {
 					fsl,pinmux-ids = <
 						MX23_PAD_GPMI_D07__GPIO_0_7
 					>;
-					fsl,drive-strength = <0>;
-					fsl,voltage = <1>;
-					fsl,pull-up = <0>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_DISABLE>;
 				};
 
 				key_pins_a: keys@0 {
@@ -94,9 +94,9 @@ key_pins_a: keys@0 {
 						MX23_PAD_ROTARYA__GPIO_2_7
 						MX23_PAD_ROTARYB__GPIO_2_8
 					>;
-					fsl,drive-strength = <0>;
-					fsl,voltage = <1>;
-					fsl,pull-up = <1>;
+					fsl,drive-strength = <MXS_DRIVE_4mA>;
+					fsl,voltage = <MXS_VOLTAGE_HIGH>;
+					fsl,pull-up = <MXS_PULL_ENABLE>;
 				};
 			};
 		};
diff --git a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10036.dts b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10036.dts
index d004b1cbb4ae..f170df37b3f8 100644
--- a/arch/arm/boot/dts/nxp/mxs/imx28-cfa10036.dts
+++ b/arch/arm/boot/dts/nxp/mxs/imx28-cfa10036.dts
@@ -102,9 +102,9 @@ mmc_pwr_cfa10036: mmc_pwr_cfa10036@0 {
 			0x31c3 /*
 			MX28_PAD_PWM3__GPIO_3_28 */
 		>;
-		fsl,drive-strength = <0>;
-		fsl,voltage = <1>;
-		fsl,pull-up = <0>;
+		fsl,drive-strength = <MXS_DRIVE_4mA>;
+		fsl,voltage = <MXS_VOLTAGE_HIGH>;
+		fsl,pull-up = <MXS_PULL_DISABLE>;
 	};
 };
 
-- 
2.43.0

base-commit: 0d8d44db295ccad20052d6301ef49ff01fb8ae2d
branch: modify-mx28-pad

