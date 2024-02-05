Return-Path: <devicetree+bounces-38709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 787CF849F81
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 17:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD5171F23EB7
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 16:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1613B25745;
	Mon,  5 Feb 2024 16:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nhDNuqvZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF3E3FE4F
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 16:31:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707150691; cv=none; b=gsXXi63vcg6aR7oCjGQQx0Q4HLd+plDZMB40wkg2J8Uv9qmLei9jHOv2JdzUcx6dN7dl/vHxYQAnp6dNC6XWz5KgqgDPfxhcdCRt2T17pRghal0pQzmfs7iSZk9Z5bhBNW/R/sCmFESQKg9UD3xamn+yFMC8PnMJYUXcU2wTx8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707150691; c=relaxed/simple;
	bh=ZZsbEv/1D0ZyP4euZdUeoiAk7r963SzotEo4LThOh+U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=d9eIPejZD8lL4gs8+XvfCwUrDJLeVcDHNTym0uurRjLHPqB49M8SGOZfoeHzFl9vr1+F0DKQvNTldGbVL/hwtp2rmZOvrJzAAqJHE4yWTDA0Dk91Ozajf0rMlzKYB2myE+WL6SD+kzchxUOghJkzQKdWWMIbS20ehqogz1lnRwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nhDNuqvZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-40fd72f721dso13542305e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 08:31:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707150686; x=1707755486; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2mmVlSbLzbn2cV2V2PAlQSgzcyVZHi2ZF25snwbWCZc=;
        b=nhDNuqvZeWQZb2PNWgNNLxiIkUeJih5i+jwaJ+ttKlrx/IvYkZysrI6PxC4PByj9ga
         LO1L9LgUGOZuPOXUBhw+D66P+TBcdXn3egY66xYyfPey+bf9T52w4LX9SxRKWm96ecoV
         KyGCpg9+ft8LjX4upqJI/uSZRgEBBkv6k32oGSCa52D0lRZK+7KZ7KDwkRYx4BZ4Tv0l
         Nf8C0/UVB2H6OQDPbMIxCLBvytLu/VHAD2HQeIamnT1Vj5zWHYQapWwdClA/z3nlO3n3
         3qmBXAnM5LfM47lp0/0Bi0rVUtFOndHw1a2sxxsoQG8VIBbhNeYeQ3G54gngmj5+xnFm
         83Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707150686; x=1707755486;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2mmVlSbLzbn2cV2V2PAlQSgzcyVZHi2ZF25snwbWCZc=;
        b=D8K65ubYCjJXKHyMLLbnn8yKsnAgMkgqGdcURkLYuHelpccZvfSMra1ZyBhQax4baE
         Hppq0DhJ8DQKLGdLL4a3BexKFu7eMO8iZjjohdEvMPIVdi47PFpL9ZH7Tru5eukPVbov
         M1Wjymq8jCwM4jdoctxmpSoOtR5b+NqePqpWhUbE8oKql6mQCY/zXHL/VTUGWZ83EPzL
         IJxM5AAwU/3/EfE3QMMjd3KISEAnqZLJWDrdpbxK4l1ZNH1a61wD0EIOeuO1g3mDzPdT
         hWhmsmgMBqfoicPta5n1K69U1aihYAhL44FjzQcniq+lYgIJI/A4EpCtVT+wL2pMnN/t
         2jyg==
X-Gm-Message-State: AOJu0YxTbcDFflONrKz9PNkh6sqApUxvZrobb27+vlkhfqDroyVPtuUg
	4hDpBsOYYmyIp9EN0ib3A37O8+veMzvKwEha2b79q4VoLt8P0IXCFpIFBWzOdYw=
X-Google-Smtp-Source: AGHT+IHcgEDhpRHufFOfIzR3TF/r4pymEoTiZdyAKrASgnslqnqkgafBRgGBD93gn4gG46EdlplpMQ==
X-Received: by 2002:a05:600c:474a:b0:40f:b8e7:ad51 with SMTP id w10-20020a05600c474a00b0040fb8e7ad51mr243391wmo.31.1707150686641;
        Mon, 05 Feb 2024 08:31:26 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVU1Nn87lYzSBZIPKkkwJKjWuEWXZZivo1BmQx0+xQVU2KR/DPgWgYAGqJY77Y/ppeBuAQk1BBUqLv6K9Y6I0YAwL4/uR1kZHn1Lb46uSeJYIJTzlRZWPZ2P+y405r54RErKBo8DFuh+Mn8YQE08JgqOwBd5sVMc1dWu2tUJGg31LdPytZHimUwX67T1zJwU3SWr7jkxKJlNFcJWnKtXu3u2IQY86eK+cMEaw1tR5uwUiW5FfiFIE8NhHYwwpYPff35U8CREaVTlA7n
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c458b00b0040fdb244485sm303337wmo.40.2024.02.05.08.31.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 08:31:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sc8180x: describe all PCI MSI interrupts
Date: Mon,  5 Feb 2024 17:31:23 +0100
Message-Id: <20240205163123.81842-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Each group of MSI interrupts is mapped to the separate host interrupt.
Describe each of interrupts in the device tree for PCIe hosts.  This
also corrects PCIe1 and PCIe2 first MSI interrupt.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on HW.

Binding changes:
https://lore.kernel.org/all/20240205-dt-bindings-pci-qcom-split-continued-v1-0-c333cab5eeea@linaro.org/
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 72 ++++++++++++++++++++++++---
 1 file changed, 64 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 0430d99091e3..c999cd2ec6df 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -1708,8 +1708,22 @@ pcie0: pcie@1c00000 {
 			ranges = <0x01000000 0x0 0x60200000 0x0 0x60200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x60300000 0x0 0x60300000 0x0 0x3d00000>;
 
-			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 143 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 145 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 149 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
@@ -1805,8 +1819,22 @@ pcie3: pcie@1c08000 {
 			ranges = <0x01000000 0x0 0x40200000 0x0 0x40200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
 
-			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 434 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
@@ -1903,8 +1931,22 @@ pcie1: pcie@1c10000 {
 			ranges = <0x01000000 0x0 0x68200000 0x0 0x68200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x68300000 0x0 0x68300000 0x0 0x3d00000>;
 
-			interrupts = <GIC_SPI 755 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 756 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 755 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 754 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 753 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 752 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 751 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 750 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 749 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 747 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
@@ -2001,8 +2043,22 @@ pcie2: pcie@1c18000 {
 			ranges = <0x01000000 0x0 0x70200000 0x0 0x70200000 0x0 0x100000>,
 				 <0x02000000 0x0 0x70300000 0x0 0x70300000 0x0 0x3d00000>;
 
-			interrupts = <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>;
-			interrupt-names = "msi";
+			interrupts = <GIC_SPI 672 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 670 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 669 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 668 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 667 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 666 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 665 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "msi0",
+					  "msi1",
+					  "msi2",
+					  "msi3",
+					  "msi4",
+					  "msi5",
+					  "msi6",
+					  "msi7";
 			#interrupt-cells = <1>;
 			interrupt-map-mask = <0 0 0 0x7>;
 			interrupt-map = <0 0 0 1 &intc 0 663 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
-- 
2.34.1


