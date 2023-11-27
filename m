Return-Path: <devicetree+bounces-19129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1887F9CB6
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 895B1281214
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:34:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2277815AD2;
	Mon, 27 Nov 2023 09:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uRnFLI3G"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6366210F
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:34:24 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a03a9009572so538065966b.3
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 01:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701077663; x=1701682463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xxjZg22ov6gQx8JLukqacT0gU0Tul8TKlesYhtgUQmM=;
        b=uRnFLI3Gf/3DWA6OhALjPc5CUCU0+HiFjvWK/ut47OrInttTGZjde0NZecte5GP+cU
         gBD7rWD89o1bSNzxwy8SVWAzlrYz9VdyJmsag4q37vESytMcVrCvNKuVoZ3/wxwOVEq3
         CS2w7GnrSIGlCuy2blrLIjrkMQc7SOADbZu3tmJ8Jf3FlmO1vbhKk3Di4/DYk4Nl45+j
         rSAEVA7wHM480BkmtW4Yg2Bd+FaefR2dk1qzYbmQZOkYItOYZz7LoPYuWAE7qq66cInR
         VhCFt2fkKSUQw4/ODHWv2SNEhg/HKzcWIxjgpEdFDzoc2qBZxvZnYjqQxCr9BIYuky4N
         C4hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701077663; x=1701682463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xxjZg22ov6gQx8JLukqacT0gU0Tul8TKlesYhtgUQmM=;
        b=vSbroMTIzWbDBd368rlrk5Uv6NsZzMQcA1szd84sIQtFgX2J1zTBaROiA7Ov7EHJ30
         p0iC/zbsvmMtgHSMtXhZXZcy2hYduXRkXcVllv/lDeEU9OCEjKkfZ7k+7AvTt9MC1aIl
         +n6sTB1QXYzEeVpAlBzGIbqHXV2CZsRmHddLCYc1+HVYxRM8mtpHqscdo/U1PQsg21Rn
         pDptZv+iDWhkXD/qXpysuDU5yzxusTxgJ3PIiIyNoqQ/awHdtc0vWZHBWwTffLBKN4H2
         5bHV0CSblMbSvFTRZzUJ+qokfPTjvmq0wTKy/tOsm+jh46W+PqRPZ0vATaJnle40RoCG
         k4YQ==
X-Gm-Message-State: AOJu0Yyg4miZ857977BBDuS/4KD3FCr4J5Ghl4VR+2ht+9z9sAvfzk9W
	UgA8DImx323n17bqOf6E/58+ZQ==
X-Google-Smtp-Source: AGHT+IHwjo3iCYneHAx17+3mDf/thozieQyTXj1EWQg79jKTCz1jo/XMchH7SbSIGHpMDbSOO2DORA==
X-Received: by 2002:a17:906:109b:b0:a0c:fe2f:c445 with SMTP id u27-20020a170906109b00b00a0cfe2fc445mr3149996eju.69.1701077662724;
        Mon, 27 Nov 2023 01:34:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id s20-20020a1709066c9400b009fd585a2155sm5452587ejr.0.2023.11.27.01.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 01:34:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] ARM: dts: stm32: minor whitespace cleanup around '='
Date: Mon, 27 Nov 2023 10:34:20 +0100
Message-Id: <20231127093420.20473-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Split previous commit touching entire 'st' directory.
---
 arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts | 2 +-
 arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
index afcd6285890c..69d693ae26dd 100644
--- a/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157a-dk1-scmi.dts
@@ -59,7 +59,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
index 39358d902000..89bfb4143ba7 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-dk2-scmi.dts
@@ -65,7 +65,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
index 07ea765a4553..ca7a3a0f16af 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ed1-scmi.dts
@@ -64,7 +64,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
diff --git a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
index 813086ec2489..f6510b93f912 100644
--- a/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
+++ b/arch/arm/boot/dts/st/stm32mp157c-ev1-scmi.dts
@@ -70,7 +70,7 @@ &m4_rproc {
 	/delete-property/ st,syscfg-holdboot;
 	resets = <&scmi_reset RST_SCMI_MCU>,
 		 <&scmi_reset RST_SCMI_MCU_HOLD_BOOT>;
-	reset-names =  "mcu_rst", "hold_boot";
+	reset-names = "mcu_rst", "hold_boot";
 };
 
 &rcc {
-- 
2.34.1


