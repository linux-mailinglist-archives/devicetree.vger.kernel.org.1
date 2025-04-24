Return-Path: <devicetree+bounces-170297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11305A9A6DE
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5E871B86E9D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C5FA22B8B6;
	Thu, 24 Apr 2025 08:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yz9loXpl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F2E2248B9
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484490; cv=none; b=ar4EfifTJ/8qqGKHrI6FThUagooelqzUG7RN39A6EFpTQWVi7BL8fVXOvBwNLJRDLGh49pMZxt+gtupaCN+6e94X1qTO9MMZmvAivznMOm+Z9fY9zSkKnp7gKEIUzCIO6auspo0eoDY1fmDF1tSyL5xYOH7uZgFht7zxuRiPoE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484490; c=relaxed/simple;
	bh=LHO0E99+mqsaN7Q7RfkAZViQIO66yzeP+zbhS0t6qIw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=NnGL5SsLxeE3KtFaX+W02VX0c6bmgbQkd6lifh2/imH/MomMlhrYuFCmql0Xk2NcgSoP4Ee/IXQkWNwKBXRPORiVohulfFCt9EkCRkKCqRQodqgbcfAQMhNLrGcJc5NalS1cQbGkOOwjrs+zuZm66qIBgnL8PF/yfAevsdXSEgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yz9loXpl; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5ebf57360b6so120294a12.3
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484486; x=1746089286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OYyQh2WrGx5C4Z4w/0Sz/FjCGm+vwC4M1ks09hw0k+w=;
        b=Yz9loXplDcXO3NZzG+pT8UF9dXFgn2pvt0XGDljcxZv5DMaUQ4q9MFztiP/TTrQyfR
         r6NiQnQh2o+LpYRR8NUAMwT0TSGmi6xAtqNmblLzjaA6to7J0t+EfhPn0stXVYwg91c5
         iXE0k4TLvxVtwycFKyjuulW00E65wYViwf3z0UpDQr0sO8NcpaywnIL1X+E8Bw4RsGOD
         YGjgplFBMrGHe2QPZaRboNOIZa1t6xHW5aLnaPHT7NNUeBKsnPOy7ltDNbQea7geT13n
         cXCeLD9c4Ah3xmSDgKwlXSkiX5SdnErZvcSRamnWRuvLFyR2L4LBQjR1RDZbjqkyyVMz
         J4zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484486; x=1746089286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYyQh2WrGx5C4Z4w/0Sz/FjCGm+vwC4M1ks09hw0k+w=;
        b=pHDgNxNzTaqUaif5AOwF+ewsIOVePrbxa8yBD0tuclEmWa9xWxhUmHeJBFqlkWHjf+
         4d/wuaDiVxDIufTGQmqdr8EyA4+Bw57NRQQqVfTw3XE5dbJoMT8qMqXZMsPmN96PUgfm
         HzLmeFbi0XMbdCqagH1ni2UF8o/0wQ9gFfaerUfMe2ITzpJG6XSVurHczxIrQJdqrA2L
         pq7Y5xZo7fNW3Lr1v+Gq2Cs68zzE83x3SZT7A/Ko15ptRgbKJZPVeU8Uj0yJZI0eWmWq
         LHZOmkoxH4U1CP8fSVi63C83oDQInFOf5jWG6U+MQ3YlkYjQDbIG1W1fGxWJXJTOocBP
         rTxg==
X-Forwarded-Encrypted: i=1; AJvYcCVDTf5pExNYUHwICjg/UQG4f1ZxHsZKYcs+52HdUYGLntGSw/4UKknb25bZI79wgK7VpWiTIS2a/60U@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhs2TP/c8FPrfQ1AkRHtARvY/GWmJYMDJv2X3pVUAJleiy1qMS
	N6fSTXQgw7olt6LAQPBAZ/rMluGvamux4V65O9OaHrbJbwdZixvTeFPbGltfJSw=
X-Gm-Gg: ASbGncsJlMtFYU3WfBNhMiU6EChc5Rj15QR1//+44H/S6++klAWjKViRjtWuCgu5BFO
	sE+Qb2xNPFEXRgW/TY5vQ9EqqwSo7f5aa0vGQOW8r1DUXnn3QEFsjyH5mFT8p4skyw992Ur+v05
	REoA2duHEAj+j9hOjLATyaf8FwBDrnBYpiOdDgniotLz5/a84r2r7NdkBS75cAWyw+ByuBzKDb1
	H86ZuHpeFS46NNcQcC22kybOl5do+/O6O/dtRxZ//usur+9WEi/6XTpQyhm96e96455E7zyf6bG
	a/ud2MgGE5IRVhVFIWkqSR22qNTp3VPLiT4MqFiCZTzUqAcqpQ==
X-Google-Smtp-Source: AGHT+IHf70Oe4hiSF1tedfQvdAAS0RVFcgU5DnHiUpIFgTF7Q4luw0vTUVOjeQvCbbh328Kf2cO9bA==
X-Received: by 2002:a05:6402:2793:b0:5f4:35c7:ff65 with SMTP id 4fb4d7f45d1cf-5f6de3b0cdfmr705505a12.4.1745484485612;
        Thu, 24 Apr 2025 01:48:05 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f6f45fd3c1sm118998a12.3.2025.04.24.01.48.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:48:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Christoph Niedermaier <cniedermaier@dh-electronics.com>,
	Marek Vasut <marex@denx.de>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@dh-electronics.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: imx: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:59 +0200
Message-ID: <20250424084800.105300-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  imx8mm-var-som-symphony.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi        | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi           | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi         | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
index 62ed64663f49..6fe0602b5b9a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-beacon-som.dtsi
@@ -269,7 +269,7 @@ &usdhc1 {
 	mmc-pwrseq = <&usdhc1_pwrseq>;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
index cdfacbc35db5..190bde4edcd7 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som.dtsi
@@ -306,7 +306,7 @@ &usdhc1 {
 	keep-power-in-suspend;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
index 2a64115eebf1..0ee7420f964b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-beacon-som.dtsi
@@ -280,7 +280,7 @@ &usdhc1 {
 	mmc-pwrseq = <&usdhc1_pwrseq>;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
index bbb07c650da9..d20393c2d901 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-bsh-smm-s2-common.dtsi
@@ -265,7 +265,7 @@ &usdhc2 {
 	non-removable;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		compatible = "brcm,bcm4329-fmac";
 		reg = <1>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
index b364307868f2..38ef9e4fdf07 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-var-som.dtsi
@@ -300,7 +300,7 @@ &usdhc1 {
 	keep-power-in-suspend;
 	status = "okay";
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 	};
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
index a90e28c07e3f..7f754e0a5d69 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-dhcom-som.dtsi
@@ -590,7 +590,7 @@ &usdhc1 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	brcmf: bcrmf@1 {	/* muRata 2AE */
+	brcmf: wifi@1 {	/* muRata 2AE */
 		reg = <1>;
 		compatible = "cypress,cyw4373-fmac", "brcm,bcm4329-fmac";
 		/*
-- 
2.45.2


