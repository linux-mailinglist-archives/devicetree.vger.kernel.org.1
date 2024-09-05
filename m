Return-Path: <devicetree+bounces-100504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB2996DEA8
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 17:44:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E910AB20AF9
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 15:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC8119DF5B;
	Thu,  5 Sep 2024 15:44:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RSi45fZO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288AF19DF4D
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 15:44:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725551056; cv=none; b=D3ayvsGk32pX4/ur8LxZhdl0LUj9UOjxCpHA9m6FybF+LkvhWz/o1UmIiaf/iaLNBmysB+TyRm2+9BJSAjLCWSeg4tG8ZeY4rEUC87oWdRNupnvm8u3dY9bfHUwEn6FXWPl76JdFUQhN8Uq/ELVRqAOpv3Z3WEYp8NxfRyexrgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725551056; c=relaxed/simple;
	bh=kVHucip9iuBiEd53Vq2p/XquN6XA0tIzFSrHpuUQiLE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DHONCTaJngFaVFZ5r+b+cf+OYgPQcgMIzhmjPnznjh5gAosDdUzIax4/5u00H1yZ6gG95XtCGfPs/JSqXDG0uV3mBM7SEGQnh0bT4/saG4IWL33E0xfj6yBshzyBAyOkm73uM2Gb4hdvOQSm/jZM8oPu3dYKvWpP+9ezeJIVf5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RSi45fZO; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a868b4d67c6so5653066b.1
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 08:44:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725551053; x=1726155853; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iqi65QfaP95CNJyR6Va4WBN+o1z2XcxCEgZA0A1M7nA=;
        b=RSi45fZOgKaMKgZnr0L0VU8chAW0+WqgWLTQlo7V2ku32J0v+rZeyf/Y2zLJAxttlj
         bhb9dnDKwx1tFXlSR2Cjk/5suZ0qEwmFIkfd/5kZBXX09kDS/Oyc5M0DLl9+Nzple6n2
         f3cTrwH7i+eKWWIMLOmnVZUlgYoGYzd/IoXreniPNNPl+dIs1UGyyZlkifYhyjgAeaXo
         ZfENlSrSj+BPaNFmASgxLLGb5rUhRANN7ihy72n4/PT48NYLu0YV7u44A+sWpoSG7C+P
         sToJrYRLbiqo8KSJoHaWhExEHVKg3q1BqGuO+zw8CJE9kqH9iKtF2NUg4c97MSA7FK1l
         wRvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725551053; x=1726155853;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iqi65QfaP95CNJyR6Va4WBN+o1z2XcxCEgZA0A1M7nA=;
        b=KFzdenJUbLc32age+kV81B6vFb3ipegOEKTD16NSazkJxashT5LGEfsaP3MAb6iGfi
         dJuUho/MokXR36l/1IFQiAg4kuIf+jnkhnh0jFqZ5AXgzOWNOF3YVNZFkmmCm7uX+Y1l
         I7xtuqhd88a27vfl3guvQGq/5ZdpiwhNPim0hM6XETQkAVNnxFzOpDKgSnhSoAzoSrP+
         FEbW9vsUuxQX9g2VU/9YpC0YnhWIZtkznkOLR4g4pzItb9CYpj2sVW5vZz7N9a0peDUA
         kl12hEBfbCd5Unma4s6uSO6vXWi5y4dNxWCMpnpJVG0PtwKVg5WePwi87i4JDi98FBa2
         nIJg==
X-Forwarded-Encrypted: i=1; AJvYcCX6Wd5mSxJfMl9T7ch6uRIkd37SHPtZxGEM6TIaaKnRgV3YgTpNaUaKMk12mnYR1QeBzUb1N4jWpMza@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+gezBsn/LAUP+2ApOtYFjVHBtxcIW4yk8n6+Zj4LwbQkDaQCl
	GN0Cb/fv6bA3OlQOC+9XpkVgh4t/WQZWF/StKvU0No2pmLEHyyBcJ9HMugp1mcQ=
X-Google-Smtp-Source: AGHT+IHX+C4MbO/LsDmFFyfXxLAhaaorECoyZRHzh6xPFmaFoT+NdzZ7FPM591/lDkqiw7J7rS29pg==
X-Received: by 2002:a17:907:9689:b0:a7a:a2e3:3736 with SMTP id a640c23a62f3a-a89a37675f5mr830109266b.5.1725551053278;
        Thu, 05 Sep 2024 08:44:13 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a8a623e2f7dsm150265966b.210.2024.09.05.08.44.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Sep 2024 08:44:12 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: freescale: minor whitespace cleanup
Date: Thu,  5 Sep 2024 17:44:10 +0200
Message-ID: <20240905154410.423991-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi    | 2 +-
 arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi | 4 ++--
 arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts  | 4 ++--
 arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts    | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
index a4a10ce03bfe..ce6ef160fd55 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-conn.dtsi
@@ -350,7 +350,7 @@ dma_apbh: dma-controller@5b810000 {
 		power-domains = <&pd IMX_SC_R_NAND>;
 	};
 
-	gpmi: nand-controller@5b812000{
+	gpmi: nand-controller@5b812000 {
 		compatible = "fsl,imx8qxp-gpmi-nand";
 		reg = <0x5b812000 0x2000>, <0x5b814000 0x2000>;
 		reg-names = "gpmi-nand", "bch";
diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi
index 3036af49fc85..e24e639b98ee 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-audio.dtsi
@@ -304,7 +304,7 @@ &dsp_ram_lpcg {
 };
 
 /* edma2 called in imx8qm RM with the same address in edma0 of imx8qxp */
-&edma0{
+&edma0 {
 	reg = <0x591f0000 0x150000>;
 	dma-channels = <20>;
 	dma-channel-mask = <0>;
@@ -351,7 +351,7 @@ &edma0{
 };
 
 /* edma3 called in imx8qm RM with the same address in edma1 of imx8qxp */
-&edma1{
+&edma1 {
 	reg = <0x599f0000 0xc0000>;
 	dma-channels = <11>;
 	dma-channel-mask = <0xc0>;
diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
index 8d036b3962e9..6ec37aac5ef1 100644
--- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
@@ -273,7 +273,7 @@ buck2: BUCK2 {
 				regulator-ramp-delay = <3125>;
 			};
 
-			buck4: BUCK4{
+			buck4: BUCK4 {
 				regulator-name = "BUCK4";
 				regulator-min-microvolt = <1620000>;
 				regulator-max-microvolt = <3400000>;
@@ -281,7 +281,7 @@ buck4: BUCK4{
 				regulator-always-on;
 			};
 
-			buck5: BUCK5{
+			buck5: BUCK5 {
 				regulator-name = "BUCK5";
 				regulator-min-microvolt = <1620000>;
 				regulator-max-microvolt = <3400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
index f8a73612fa05..d7ea2a86de5f 100644
--- a/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
+++ b/arch/arm64/boot/dts/freescale/imx93-9x9-qsb.dts
@@ -221,7 +221,7 @@ buck2: BUCK2 {
 				regulator-ramp-delay = <3125>;
 			};
 
-			buck4: BUCK4{
+			buck4: BUCK4 {
 				regulator-name = "BUCK4";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
@@ -229,7 +229,7 @@ buck4: BUCK4{
 				regulator-always-on;
 			};
 
-			buck5: BUCK5{
+			buck5: BUCK5 {
 				regulator-name = "BUCK5";
 				regulator-min-microvolt = <600000>;
 				regulator-max-microvolt = <3400000>;
-- 
2.43.0


