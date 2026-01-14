Return-Path: <devicetree+bounces-255000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CCDFD1E438
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:59:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B67553002940
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32B58392829;
	Wed, 14 Jan 2026 10:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RiLb5Ugs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDA5E395D86
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:57:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768388358; cv=none; b=nlQ9JWR1gdDwdX/6r5uwWuGYUBRzi1xcWQ71UqF6a4NOn4awBSrfDTNhpOBlTfL0ODz0icyE7WAe5R71ZM0fu9rRp4rHqHCoZfmNARxNmat3h+HEUUcgKhzTTFIPNtaNfsWV/9UfrTtb0neTOcI/Exn3MSHHmneTTNvHyRpCERw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768388358; c=relaxed/simple;
	bh=W8u+gzsHZy6ebZql34frIrFbK3qpJg2S4BzsWFuq4nw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=TV9zW9/mBOsFsVtB70Uli/U0b6KbGAu2QhToAmbHlAl7tlYGcMyJjQx97ETWvCLHK4rfOzjyEihCjogTwg6GcgZ/ho99vDt2Xb/uWu41uDsuM+m/DAG1plAx6hvWudBSlA6tFK8kvYSbwYeE8uVFYmFJO/nwSLRs0O/FV//OGcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RiLb5Ugs; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47edd6111b4so13300235e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768388275; x=1768993075; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NTbxvXk9ZCcVK0Yjbx8jIbzwKRtMfnnLMgPkZEeFVrk=;
        b=RiLb5UgsEDB50F3n235RR2Wdv4EhPDkSGbWFXaZTgcGtf5eK+rsPM4PFdFjJ/lqOta
         wq6zjo5n7Sh9gBQFpIm9UMVOKyWp079Y63fK74ATauMwMX1ZPlYwqbmFT1VJk/2uY/jX
         siemi3dc4/hcB7brJFHUgke4rkMFMSvC52yS9yj3lbxcGdD8UAHU2NJmDkkmEIZENPq/
         BoR+XfBnNXL/glAi+aXqNx4hR/35fwPTBFvita6UVh4/00qamzMd1DX0JTSoX2rSQKk+
         M5erSvHFG6QF2Par675l490IrNvVJYxyRg5+uDT+/886rzs7yGypfo7XfOhNYpTeknKt
         EDQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768388275; x=1768993075;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NTbxvXk9ZCcVK0Yjbx8jIbzwKRtMfnnLMgPkZEeFVrk=;
        b=usQyza6Wq5bW8YAfiO7zwK4tM+p0rqAfMnp37GIdti5hH/MXNoo10ROew4JZOcR/D1
         761wt5OEVbyiX//EtXK9AlThinHRN0p1Zkm2Ppqjn3w14fXGDHzECHydVugJGYBFXKG0
         9cw43JgdzMtaYNLgd4+RylyNtyIo1KBCFd4gTavTddz4iiFmVkUhTlF6Oc2FkjDbA8Fu
         yhXu1xSbBa7WZNasMSSQxRIq5Fur4URX+N36duMFZk/IFKeHrQbnqlAqNkjflpusCS6e
         lth1+iMU/PdZwj/UuV6CBw/um8pQd1D0NnKC12OYmjdXI/Y4VWSzaZ1KeMd5/vZzD4tq
         8vnQ==
X-Gm-Message-State: AOJu0Yx7Gtj/M5huKliI/HrD2++fS2h1QYis/O2PBQg4DJaSJk0qstEx
	xfFkvs6QiIraOW58RCWoJ6Y0ACLTcvFv8nuRD/Cf63aNU4lncMvpFxmdj7e++VMv7PlBfpZBYtD
	oW04MXi8=
X-Gm-Gg: AY/fxX6VbWxOdhktElRapELN5n8RhLimKqMarw3lSOWojK84srIqjeoayUnafdru+P5
	W21SzlD/Ii0P0EYPU3yKAHj2tlRJD3x5UQ6zRGbJAGCRVpRwbHSqGQcI1V6emYDq2/pkTreZnN+
	QJOrwNsm8FuFnT7/hmc6yizxtaLAipYZ9oykI3NLnmrrorJN2TZeU+yt05AqJxfDakKrnKaOveM
	haCRr//8cOdpPcaEtiAe1+M+9pTTDv3gW8GLAcLEsmbC+sZ/Up0DrRCOcAGJc5UdY85vkv+Xohm
	hoahuxo1AOGktBwJrGW10gly0SGtbX70YULUurEbgMAhRNXE0KwTeuBZtX4iLPy6cq/qRzVKx6o
	ogauHOnYdBLrCeI0a35r5flqjDdBkV+sLjA4MY7HsLBTI8XkeGZMduE4AC9lSPb2lFxScYhjq1P
	lKEOg0jpG5/g==
X-Received: by 2002:a05:600c:c4a6:b0:47d:3690:7490 with SMTP id 5b1f17b1804b1-47ee47c8db0mr19638695e9.9.1768388274920;
        Wed, 14 Jan 2026 02:57:54 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:f2cc:bd72:2de3:86cd])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-47ee6f59cf4sm6412055e9.12.2026.01.14.02.57.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:57:54 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 11:57:40 +0100
Subject: [PATCH] arm64: dts: amlogic: drop useless assigned-clock-parents
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-parent-clock-cleanup-v1-1-31078b1e4a2c@baylibre.com>
X-B4-Tracking: v=1; b=H4sIAKN2Z2kC/x3MwQqFIBBA0V+JWTegUgb9SrSQaaqhUtHeI4j+P
 Wlz4WzuDZmTcIa+uiHxX7IEX6DrCmh1fmGUqRiMMlZp3aA79rAIYXSJ/Ym0B9pK2flfxHYmo6a
 WbGc7KIuYeJbr2w/j87zbTJ2XbgAAAA==
X-Change-ID: 20260114-amlogic-parent-clock-cleanup-5fc20d5c6767
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=32381; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=W8u+gzsHZy6ebZql34frIrFbK3qpJg2S4BzsWFuq4nw=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ3avCADO7t27VTMaJ0eSWe6JlNhXv13AY/cum
 pFw1D65I4GJAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWd2rwAKCRDm/A8cN/La
 hfmbEACItQDn5r+nJKBqhws6qAKhmstPhWWysdRKK+jqXfjV+5t/5ETIWnSUSToQukBlrH2fIYY
 95TdUhnBNy6Z6WURkPIHuylmr0dV9I+fd05mOhcF7tS5WTsH+vkJjpOBzOnTPNry5gzWQ6BpmIL
 EKnwLI/5fbqir2NL631s5MagxEo/gADx42y2BLS4AWahAQrm89FbiN8dN76xrQv5udbqSiMfzNy
 YCco9ng3h6vjAE1h6YCu420zsJV1+SmRXQo+SgOl17qY/lawZDXBt0sYr5vgY0H5eD+gdDvjWqA
 YbxctTmgOx7zOcLrLVpFQGuvRfCf17ONG1fqYd0HQvSYnxZbwkn27ciJihq0l4Z4HxReEqXlTL2
 /rcdm2kCbMPSOywpf6qz0vNFoWYgYGprDDwkpigHT+aBm+DA843eL2Be+e96m3/Eh/sv+Z48l/x
 RXW8gXlkCmXQIanBJRQueoe7ctPO/3q7c3LXeKn3DuXNueshj/xoqaGlr7DxEqHfxZqqWQO6CZZ
 KT30oka1iK+c/g7+X7/opOz7eZpb8J1Lowja17PYOm6hKwJhrQL3JAz4eoDPQo5h3eo549uQjri
 l25DWy77dkYDlZZrVbCQ+Gesmoc8azG26DzBk0Q1Tu0HkgXRi0mar5SS7TSGfmGXNyDk2aWZ9ly
 FCJ28X7DK2wVIVA==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

Amlogic sound card assigned-clock-parents only have <0> and are useless.
Remove them.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts                      | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts                   | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts               | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts                   | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts                     | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts                  | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts       | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi                | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi                | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts                 | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts               | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts                   | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts          | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi               | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts               | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts              | 1 -
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi              | 1 -
 arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi                 | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts                  | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts              | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts                 | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts                     | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts                     | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts              | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts        | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts      | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts          | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts     | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts        | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts              | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts               | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts                 | 1 -
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts                  | 1 -
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi                  | 1 -
 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi         | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts           | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts                | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts           | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts               | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts                   | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi                   | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts                    | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts              | 1 -
 arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts                   | 1 -
 51 files changed, 51 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
index 9611775b81ee..285c6ac1dd61 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
@@ -275,7 +275,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_HIFI_PLL>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <589824000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
index d0a3b4b9229c..ac6696e7e1df 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
@@ -183,7 +183,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
index 4353485c6f26..3d62c67ccc76 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
@@ -145,7 +145,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index f39fcabc763f..5bc4d7780f5a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -208,7 +208,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index b5bf8ecc91e6..b1f012511d60 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -245,7 +245,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 5ab460a3e637..a8a57147475f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -165,7 +165,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
index 2d74456e685d..cdb522f5365a 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
@@ -77,7 +77,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
index 0f48c32bec97..2d4071c51f3d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
@@ -86,7 +86,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 					<&clkc CLKID_MPLL0>,
 					<&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 1b08303c4282..10f62f151902 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -201,7 +201,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
index 8e3e3354ed67..a69d5531c540 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
@@ -47,7 +47,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
index 369c5cf889b6..8758a68136ea 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
@@ -55,7 +55,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
index 654449afd3a4..a9478e2cce4d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
@@ -56,7 +56,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
index e20311386745..a2ff5040eadf 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
@@ -44,7 +44,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
index d5938a4a6da3..c3e8083ba08c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
@@ -241,7 +241,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 3bca8023638d..edb7ed6b0ec0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -102,7 +102,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
index 1b9097a30251..15795889cb53 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
@@ -46,7 +46,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 1e5c6f984945..5e0abda613e4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -183,7 +183,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 4c1a75b926ee..dbd72fe0f53f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -39,7 +39,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index 2da49cfbde77..c2bf6f4cdfd2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -201,7 +201,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
index b4f88ed6273b..8d216a594d7b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -136,7 +136,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
index 073b47ce8c3c..ff3ba97872ec 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
@@ -52,7 +52,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index 2ecc6ebd5a43..5d9ddb814164 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -142,7 +142,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index c09da40ff7b0..ab8e06aa2b32 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -149,7 +149,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index 12e26f99d4f0..5943bc810678 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -184,7 +184,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
index bfac00e76ba3..b5981c0b1494 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
@@ -75,7 +75,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
index c10f66031ecd..602777702984 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
@@ -24,7 +24,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 6ff567225fee..a4d354cc93a5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -115,7 +115,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
index ec281a9e9e77..a22a8a435427 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
@@ -23,7 +23,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
index 924414861b72..6a1b65bf84da 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
@@ -55,7 +55,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
index c6132fb71dfc..3a9a801f33d4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
@@ -130,7 +130,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index ca7c4e8e7cac..75db2a5c96b3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -135,7 +135,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts
index cac15b89c573..9e571b96bde6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805y-xiaomi-aquaman.dts
@@ -125,7 +125,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index 4e89d6f6bb57..0a6664275bcb 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -74,7 +74,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
index 6cbdfde00e12..277fb34981c7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
@@ -167,7 +167,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
index 401064b0428d..fe1df108892c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
@@ -149,7 +149,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
index 8b41e340f919..9da495cca787 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
@@ -57,7 +57,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
index a9c5881c9783..1e4d3fdd0b22 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
@@ -98,7 +98,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 2a09b3d550e2..5b1aafe16d5c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -157,7 +157,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
index 773107cc47dd..81f5eb3da5dc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
@@ -93,7 +93,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index 9d5a481b309f..9626a2621a3d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -108,7 +108,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index 7daa9b122d5c..73aa6b5a5de7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -189,7 +189,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
index ac9c4c2673b1..cb8b0f98beb4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -207,7 +207,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
index 3c43d3490e14..7c67e459c602 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
index 445c1671ede7..e841c44c69de 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
index eeaff22edade..8d12bd1702d3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
index 697855fec476..0cd306569312 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
@@ -64,7 +64,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
index 7b3a014d4cde..3c671676e453 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index c4524eb4f099..5cd6a2c13eb1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -181,7 +181,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 024d2eb8e6ee..64b4e4b209b8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -246,7 +246,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
index e4a3a2a8ad06..ecb6aa79302d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
index fff92e0d6dd5..24a6a679b377 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
@@ -29,7 +29,6 @@ sound {
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
-		assigned-clock-parents = <0>, <0>, <0>;
 		assigned-clock-rates = <294912000>,
 				       <270950400>,
 				       <393216000>;

---
base-commit: 8f0b4cce4481fb22653697cced8d0d04027cb1e8
change-id: 20260114-amlogic-parent-clock-cleanup-5fc20d5c6767

Best regards,
-- 
Jerome


