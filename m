Return-Path: <devicetree+bounces-13665-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AB7B87DFB01
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 20:38:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C5EDB1C20FDE
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 19:38:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02C37219E1;
	Thu,  2 Nov 2023 19:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hefring-com.20230601.gappssmtp.com header.i=@hefring-com.20230601.gappssmtp.com header.b="s+3Wx9al"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D91A2136C
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 19:38:07 +0000 (UTC)
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 040F81A8
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:38:05 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-778711ee748so80229285a.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 12:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hefring-com.20230601.gappssmtp.com; s=20230601; t=1698953884; x=1699558684; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6aaUx3IM/nYfDKWStA9Ff2X3zBWfKwgpoaBzpBVRw5U=;
        b=s+3Wx9alGYL3B6GcYlddhun4+VOnzPxSWOLIyS4a5d+mbApD14DHl2S82/O5bKKFF2
         LJrZPN+asfbs9NbxGqjaT2o1y0CDyHTqaLOtHpbZ7bhBTjIazanOUWyqQzxhDfRymnh2
         uA5RbeKN/nxnYRYqr43b2SthVRGvOSySh05T14r1RmCHlvJWzo7W6n4rL8+lhF+JGXG5
         WLJP6mbcupipsbwIZ96Ez4ctnk8GKEYnS8+64/jT9VKhOkKtASTxWt3H14b/YgypWCHx
         rgBB5+nDF2Vyw2QrQlA38MmVWNWqQPk1tyz8Ok+/c0HEAUrYxRoDqmZgiKbjYyPllP68
         SRlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698953884; x=1699558684;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6aaUx3IM/nYfDKWStA9Ff2X3zBWfKwgpoaBzpBVRw5U=;
        b=QqlKTH0lTZHzvoYkTOfEaEwUmNNbvWP0xx4mvQEcrC6rPulEhsH8MprnpBjIueB8g9
         zrYMsumJaofNg4iJra6GVRTRZKmPtcx+UKcbJJmG6x5Q2fg2rj9X/NRXQZFOYuPhrePD
         tIKkSxkd+2vOXA0LPwXBjxipvFlaZNZFOjFa9+yxNFDEYBmslvhOEdUQYA8L+yq+Chol
         nYiLPtUcY8iMIozI6KiYzlt84mCTBkUaxhzs7qAPuz3vWGTD9z4+FRDxiGCosj6tFeNs
         SCLRKAAn8TEQcpuCvIqyaOJg9g2Bk8MEQSy5ls4/zrHVD/oTMvZ9E9ejH7A8wPRxu7Md
         5WNQ==
X-Gm-Message-State: AOJu0YwNHOMDxQG857NVrpZiDqg5q3BFd9fxhbfXMu1/lG9YdjBMuf8h
	svxXEo33RIt//6My4mVIx/zTHA==
X-Google-Smtp-Source: AGHT+IGl1n2G2oeUX/4FgvKTLXfhf+P6aEP1OM//x0r4Ln54rPG+Aie8qOEQgGDLVsNuD/9Gag0UxA==
X-Received: by 2002:a05:6214:2688:b0:66d:9f40:4792 with SMTP id gm8-20020a056214268800b0066d9f404792mr26366649qvb.26.1698953884213;
        Thu, 02 Nov 2023 12:38:04 -0700 (PDT)
Received: from localhost.localdomain ([50.212.55.89])
        by smtp.gmail.com with ESMTPSA id a10-20020a0ce90a000000b0065b260eafd9sm30654qvo.87.2023.11.02.12.38.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Nov 2023 12:38:03 -0700 (PDT)
From: Ben Wolsieffer <ben.wolsieffer@hefring.com>
To: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Erwan Leray <erwan.leray@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	Ben Wolsieffer <ben.wolsieffer@hefring.com>
Subject: [PATCH v2 5/5] ARM: dts: stm32: add SPI support on STM32F746
Date: Thu,  2 Nov 2023 15:37:22 -0400
Message-ID: <20231102193722.3042245-6-ben.wolsieffer@hefring.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
References: <20231102193722.3042245-1-ben.wolsieffer@hefring.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree nodes for the STM32F746 SPI controllers.

Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
---
 arch/arm/boot/dts/st/stm32f746.dtsi | 60 +++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
index 53a8e2dec9a4..14ba51f2a13d 100644
--- a/arch/arm/boot/dts/st/stm32f746.dtsi
+++ b/arch/arm/boot/dts/st/stm32f746.dtsi
@@ -274,6 +274,26 @@ gcan3: gcan@40003600 {
 			clocks = <&rcc 0 STM32F7_APB1_CLOCK(CAN3)>;
 		};
 
+		spi2: spi@40003800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40003800 0x400>;
+			interrupts = <36>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(SPI2)>;
+			status = "disabled";
+		};
+
+		spi3: spi@40003c00 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40003c00 0x400>;
+			interrupts = <51>;
+			clocks = <&rcc 0 STM32F7_APB1_CLOCK(SPI3)>;
+			status = "disabled";
+		};
+
 		usart2: serial@40004400 {
 			compatible = "st,stm32f7-uart";
 			reg = <0x40004400 0x400>;
@@ -491,6 +511,26 @@ sdio1: mmc@40012c00 {
 			status = "disabled";
 		};
 
+		spi1: spi@40013000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40013000 0x400>;
+			interrupts = <35>;
+			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SPI1)>;
+			status = "disabled";
+		};
+
+		spi4: spi@40013400 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40013400 0x400>;
+			interrupts = <84>;
+			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SPI4)>;
+			status = "disabled";
+		};
+
 		syscfg: syscon@40013800 {
 			compatible = "st,stm32-syscfg", "syscon";
 			reg = <0x40013800 0x400>;
@@ -554,6 +594,26 @@ pwm {
 			};
 		};
 
+		spi5: spi@40015000 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40015000 0x400>;
+			interrupts = <85>;
+			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SPI5)>;
+			status = "disabled";
+		};
+
+		spi6: spi@40015400 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "st,stm32f7-spi";
+			reg = <0x40015400 0x400>;
+			interrupts = <86>;
+			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SPI6)>;
+			status = "disabled";
+		};
+
 		ltdc: display-controller@40016800 {
 			compatible = "st,stm32-ltdc";
 			reg = <0x40016800 0x200>;
-- 
2.42.0


