Return-Path: <devicetree+bounces-23184-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1D980A6CC
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 16:09:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 009801F214CA
	for <lists+devicetree@lfdr.de>; Fri,  8 Dec 2023 15:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33F70225D1;
	Fri,  8 Dec 2023 15:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="gYnmLR7Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5090D173F
	for <devicetree@vger.kernel.org>; Fri,  8 Dec 2023 07:09:06 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a1f33c13ff2so169182566b.3
        for <devicetree@vger.kernel.org>; Fri, 08 Dec 2023 07:09:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1702048145; x=1702652945; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sT2Zj3HrJ8sHtWfHdRU4zdRK1MHTM/dOy3+Qf7en0Fg=;
        b=gYnmLR7QGoebl8NMyFsBWAUsXovyRDtw1JiZmSADr0Dlq1QKpl/AbXwd3smb+CQR0y
         jANGma93Lqt6Sra1oKCIUz3BJzBuB8Lmx2Azf2vYIu4rTGxzxW65zMJqhWN/z3vaNGKz
         mz7WYpfZY4tjVm3qsWr5WMfJUHUycaUzxyjBVcuXWusrBU+eSYRmPMqlxk9u6R0lQ5d6
         gZFP0B9hR4TuMoa3W2KyHUunctOfg6KrSo71MjgU4YXkWW2uKO+2MI7+ZWTVG3u4jvNe
         xAELlSHp26i3nI1trDQ2poiMLsF+mCw4RL3fI2NEmqQ6Wco1C8LJM3iC+S2E9adtr093
         xhdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702048145; x=1702652945;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sT2Zj3HrJ8sHtWfHdRU4zdRK1MHTM/dOy3+Qf7en0Fg=;
        b=m1+lujN36r+Eefo7uctGj/le2jqtswSdT7mr2kTRUN8jNVpL/Uwqb3aPqEMbt/aJxH
         aA3nmjE/rne9TQp2pg8ic+R6PZf+rJBq9Hvds6UKsrpzBBy5B0ziKPXFKfDKI4EylUOz
         dz4gIbXXkCJQh4V1PcKEi9yBGyruuiZPCB7LQ3he9dPcIfJhffKZYsBSyBdCN7gERLx0
         ktupbYhbMHJIfBemuBDnUQDh23TkbjRx2X3OxzCMqzIP4YMypXOsAz0eF1pUl1P4shND
         MJIpXG5SoAXTJymj8g4mYNa3OkYyzeKWFZhwojfjfhdctlgSprJYu8E9J2GttVRaEWyP
         Aqrw==
X-Gm-Message-State: AOJu0Yw0p+3gL9hDIYaj6LxYmM71sBqbyas0O6C98fkIhLvTtZQbB6K1
	4P1MHnl0xx+NDcK+pMDOoNgvlQ==
X-Google-Smtp-Source: AGHT+IEbps1CxCjWp7PlUFJJO1S3IONR4gmI1FeIw1lqERRp811jh2vPtAdZpNvzqb91h8pG78FWuw==
X-Received: by 2002:a17:907:350f:b0:a16:3375:6c18 with SMTP id zz15-20020a170907350f00b00a1633756c18mr74053ejb.23.1702048144910;
        Fri, 08 Dec 2023 07:09:04 -0800 (PST)
Received: from [192.168.55.221] (tmo-113-102.customers.d1-online.com. [80.187.113.102])
        by smtp.gmail.com with ESMTPSA id r25-20020a170906351900b00a1cc1be1146sm1096114eja.217.2023.12.08.07.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 07:09:04 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 08 Dec 2023 16:08:03 +0100
Subject: [PATCH v3 07/11] arm64: dts: qcom: sc7280: Use WPSS PAS instead of
 PIL
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231208-sc7280-remoteprocs-v3-7-6aa394d33edf@fairphone.com>
References: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
In-Reply-To: <20231208-sc7280-remoteprocs-v3-0-6aa394d33edf@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

The wpss-pil driver wants to manage too many resources that cannot be
touched with standard Qualcomm firmware.

Use the compatible from the PAS driver and move the ChromeOS-specific
bits to sc7280-chrome-common.dtsi.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi | 19 ++++++++++++++++++-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 15 +++------------
 2 files changed, 21 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
index fd3ff576d1fc..8f7682fe254a 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-chrome-common.dtsi
@@ -92,8 +92,25 @@ spi_flash: flash@0 {
 };
 
 &remoteproc_wpss {
-	status = "okay";
+	compatible = "qcom,sc7280-wpss-pil";
+	clocks = <&gcc GCC_WPSS_AHB_BDG_MST_CLK>,
+		 <&gcc GCC_WPSS_AHB_CLK>,
+		 <&gcc GCC_WPSS_RSCP_CLK>,
+		 <&rpmhcc RPMH_CXO_CLK>;
+	clock-names = "ahb_bdg",
+		      "ahb",
+		      "rscp",
+		      "xo";
+
+	resets = <&aoss_reset AOSS_CC_WCSS_RESTART>,
+		 <&pdc_reset PDC_WPSS_SYNC_RESET>;
+	reset-names = "restart", "pdc_sync";
+
+	qcom,halt-regs = <&tcsr_1 0x17000>;
+
 	firmware-name = "ath11k/WCN6750/hw1.0/wpss.mdt";
+
+	status = "okay";
 };
 
 &scm {
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 221ab163c8ad..f404276361fa 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -3601,7 +3601,7 @@ qspi: spi@88dc000 {
 		};
 
 		remoteproc_wpss: remoteproc@8a00000 {
-			compatible = "qcom,sc7280-wpss-pil";
+			compatible = "qcom,sc7280-wpss-pas";
 			reg = <0 0x08a00000 0 0x10000>;
 
 			interrupts-extended = <&intc GIC_SPI 587 IRQ_TYPE_EDGE_RISING>,
@@ -3613,12 +3613,8 @@ remoteproc_wpss: remoteproc@8a00000 {
 			interrupt-names = "wdog", "fatal", "ready", "handover",
 					  "stop-ack", "shutdown-ack";
 
-			clocks = <&gcc GCC_WPSS_AHB_BDG_MST_CLK>,
-				 <&gcc GCC_WPSS_AHB_CLK>,
-				 <&gcc GCC_WPSS_RSCP_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>;
-			clock-names = "ahb_bdg", "ahb",
-				      "rscp", "xo";
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
 
 			power-domains = <&rpmhpd SC7280_CX>,
 					<&rpmhpd SC7280_MX>;
@@ -3631,11 +3627,6 @@ remoteproc_wpss: remoteproc@8a00000 {
 			qcom,smem-states = <&wpss_smp2p_out 0>;
 			qcom,smem-state-names = "stop";
 
-			resets = <&aoss_reset AOSS_CC_WCSS_RESTART>,
-				 <&pdc_reset PDC_WPSS_SYNC_RESET>;
-			reset-names = "restart", "pdc_sync";
-
-			qcom,halt-regs = <&tcsr_1 0x17000>;
 
 			status = "disabled";
 

-- 
2.43.0


