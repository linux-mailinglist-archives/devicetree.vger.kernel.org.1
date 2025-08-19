Return-Path: <devicetree+bounces-206457-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E8245B2C54D
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 833DA3BDD6E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22737346A11;
	Tue, 19 Aug 2025 13:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wrq2nev5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126923469EC
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609447; cv=none; b=KKYHOjVp97nqynXVJ7p8K3KTmPHtVTRs1cYFVUaE9/RwQU10WfB9tybL6iWx10qZgUQD/hNnHNMB700dWZtZ4ckIi3Tjexj9Hc9gkmQlGOWhO4FWqBjcwkMZ7zeUBwpxSTKZ99v2ZH01i6XRJSWeMM7iFXFbT3FNdkjqmGjljsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609447; c=relaxed/simple;
	bh=Pnpje/yD2mbu06fLBXKGNz7nmahkchdYzCpSWoY4WVk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LMyUIa4aLSy8R3RQu1ZmzKjiAfckEZwikaiA9tpUVFaqtdJqF79Iv66drlWrnAcZBGfhXHGfa06x+Q9nqjKrhnzuS5PRxwlPJwymroh/ZLtzqTX4IG/txCuZTLTx5aoNMQnC39CTZvHAJRE4aDt6aZ1ekdFpWPnev5w1oeAHlh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wrq2nev5; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-61a3a7c09d9so332081a12.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609443; x=1756214243; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NLWaF7HuIdth5pkaPfonJRs/KLOso2d0qPaTSC6KAgc=;
        b=wrq2nev5WL3VomReOPL+JzKBmlBGvgLJe9wOHzBgLLrYE7VYwmsPnGgG//hWb54/Xn
         sP+vrdx4+HQw761pOR9QE5y6b+jXwkRCNsaO+yxqzEcxgceH1RohzWFo0VRSVU/JAfxQ
         2DeYaE5NMaxLxuU8kK3r5DjuMpCxXav3P/SJuv3gTjhwqWwar3iyfMBRhRDUMvez09Lu
         ndCzOpmkpKqimf/Rn4vR263NWr1S9+NmOUJqvPtus9aoc23KF/1eWfqxDjaFs1e9LtDR
         2jnvI0wlyWHUiT9TkpTRKzM7XdCuut+WQkC+is7TKaI+7KSwzioTjQH6DZQ5Ga4EL3S9
         wYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609443; x=1756214243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NLWaF7HuIdth5pkaPfonJRs/KLOso2d0qPaTSC6KAgc=;
        b=phtat2CzxIvDzanLtk27sVVgQbGmkFQcvU9u1fC/2iqTKb694yPo+rQZBJtkXPBQPU
         VwGF0GhyB/zhWqhZR3enE0ZAQacbZWXWRAQ3Al/uRPjAqFLKRnkwaklEMP1nmiwAgRYS
         5vRUQ8oEZFSLhT/diFUQkO4iK0O3SHqmU8fMqpMQLyamC3dLLfKr7/8UfIoxqxYDgKHe
         E2I6WWiAuW9BEriXWDaFBZ9VH7TOvrhW/YwXcBirT2xGNxsRF40LfUWOUhsHH+6s+gNd
         bubI8nJGftU+VFoawcRWviWXAUWsI0krQBrQifibCwRaUz7ANUBNe1cmUST1nwJvHFxI
         3SdQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6RhD1EnPggINuwfJRXkmbdzgNH2Je8JvT32xo63JxXgjyXvhCRYWJpP68IZZKVoyUUrNXulfyVAhR@vger.kernel.org
X-Gm-Message-State: AOJu0YyRhWC6rbBQadLHoTFTK/sYexWQeszYBkSD0TxgGd+Ii6cI6mjD
	GadAdGVebWlS4LMKtQF8Ny0h+/DD9p85IZYL5FFbLNCY3eAga3MYD1c+rOU4NeWuiPk=
X-Gm-Gg: ASbGncsU8gUSI50ckgL0VD2+QGSmmXEFS43Nw2FVbIepc2Q4ygh5HY3C2bAzGKK+zS1
	g81xOytSFfKbpN8P3JP8RSYEZzzZbsjOaipG5ksE875VnLiN3ORs5CYpeY2uGNyY8bJ+pMCFAVD
	y6/awN5bmQR3kcIPHf+H8ajMZJB//zAUX1qUDqjmTbQm3nAusxiNIzY+O6idxpk0NhZMhO6vheo
	/5mkRMV7OyBZQkzrNNitmwkxqFZg9AMvdabD/0FQPT+0Rztg3KjlZAwr31Rp0bXWAuMy/e67pJP
	Lw6fqPfmy6VVfMhnslvurZw2un+qqNQ9pyb+0MgDcAwqRtrN3kKRw+NxBJg64KJ4F0/F2huFVT5
	zBbwy2Es5o/QPDons/vmNWGcLL0J31sZEXA==
X-Google-Smtp-Source: AGHT+IFqVdFx8dYdzxew5mBOuHFWE4MTA2mlVIIIVmrCsF7ZiusdnuYpAiAtFVAeLfdmwIhLAm4dcw==
X-Received: by 2002:a50:ab41:0:b0:61a:927b:a79c with SMTP id 4fb4d7f45d1cf-61a927bbad5mr67491a12.8.1755609443185;
        Tue, 19 Aug 2025 06:17:23 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a758b8efesm1694229a12.50.2025.08.19.06.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:17:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] arm64: dts: qcom: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:17:19 +0200
Message-ID: <20250819131717.86713-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250819131717.86713-3-krzysztof.kozlowski@linaro.org>
References: <20250819131717.86713-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=4596; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Pnpje/yD2mbu06fLBXKGNz7nmahkchdYzCpSWoY4WVk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHleU1tgOrkzKvXPYz9ORrBJeJVCc5TtrDkTu
 A1rgL26bbuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5XgAKCRDBN2bmhouD
 1wP0D/0XWmx607jRKjb2i6NISVgGXZs0lofJ5ZbOAamm730NJbCsRsRuTw1u5nXtnX2lJMC6uxS
 qEapC1HnsnEIwMkyS28lLpAFsC0Elf3hUwknWdwpWelV/Z8fKIS/+SOiMr5Sr8QQcwK3pNRIxzS
 E405ujMDiq7ITWFTymvwm9WGmdmtnJcHwH1PbUWAIpQohhYEK/kAvaoL8E+wnHEHeI74VIf0T54
 COAk1mxfS3PWkHkecMM37irr4EbuxN7ZC6eutMq9Ys8GXTAMMpyDokk2PZp34te2h1n80njaOAj
 Lra1m8pVrhuFsC3kf2EYoslxKFNBVPOcYhhRE7fzNU69mJCP/ee9f3+iVJRNe5RVjJXecpTfDhu
 733Y5hRBBCGRJlN8oFQzGWd5uzEKSsEgVlJcgpuqofvV+eVOWBuJNxS6QznjSSUxo48ycTQDtdZ
 yD+Uj4QhiW8F29Of3FPitQp0irbuZBTegKC0W29W9qKkim8emMRu7siqrl0SlHQj2vrAU/8gFEc
 oprS8JC4R+99P/iIzbGqhyHWzj3G8F/Km+t838dT1nTVd1J7CuT04jhtXQjarvB8JwOSUyGYJ6H
 jOSxD62//gJE55Rhekl0nXli1FUi+abMh6yDVs48EdgOyI0VJxtLv7eLU674aEapHUxtXOf1SCO XBty1EZm1ZDeYhQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/ipq5018.dtsi                   | 4 ++--
 arch/arm64/boot/dts/qcom/msm8998.dtsi                   | 6 +++---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi                   | 8 ++++----
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
 4 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
index 4ddb56d63f8f..2c7d74d9388d 100644
--- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
@@ -717,7 +717,7 @@ pcie1: pcie@80000000 {
 			max-link-speed = <2>;
 
 			phys = <&pcie1_phy>;
-			phy-names ="pciephy";
+			phy-names = "pciephy";
 
 			ranges = <0x01000000 0 0x00000000 0x80200000 0 0x00100000>,
 				 <0x02000000 0 0x80300000 0x80300000 0 0x10000000>;
@@ -818,7 +818,7 @@ pcie0: pcie@a0000000 {
 			max-link-speed = <2>;
 
 			phys = <&pcie0_phy>;
-			phy-names ="pciephy";
+			phy-names = "pciephy";
 
 			ranges = <0x01000000 0 0x00000000 0xa0200000 0 0x00100000>,
 				 <0x02000000 0 0xa0300000 0xa0300000 0 0x10000000>;
diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 0b0a9379cb05..5c75fba16ce2 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -3082,9 +3082,9 @@ mdss_dsi1_phy: phy@c996400 {
 
 			mdss_hdmi: hdmi-tx@c9a0000 {
 				compatible = "qcom,hdmi-tx-8998";
-				reg =	<0x0c9a0000 0x50c>,
-					<0x00780000 0x6220>,
-					<0x0c9e0000 0x2c>;
+				reg = <0x0c9a0000 0x50c>,
+				      <0x00780000 0x6220>,
+				      <0x0c9e0000 0x2c>;
 				reg-names = "core_physical",
 					    "qfprom_physical",
 					    "hdcp_physical";
diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 3cf1d4bc7e4a..5edb137d1471 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -1100,7 +1100,7 @@ uart1: serial@984000 {
 					    <&qup_uart1_tx>, <&qup_uart1_rx>;
 				pinctrl-names = "default";
 				interrupts = <GIC_SPI 551 IRQ_TYPE_LEVEL_HIGH>;
-				interconnects =	<&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
 						 &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>;
@@ -1267,7 +1267,7 @@ i2c4: i2c@990000 {
 				interrupts = <GIC_SPI 531 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interconnects =	<&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
 						 &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
@@ -1340,7 +1340,7 @@ i2c5: i2c@994000 {
 				interrupts = <GIC_SPI 535 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interconnects =	<&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
 						 &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
@@ -1413,7 +1413,7 @@ i2c6: i2c@998000 {
 				interrupts = <GIC_SPI 536 IRQ_TYPE_LEVEL_HIGH>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				interconnects =	<&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
+				interconnects = <&clk_virt MASTER_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS
 						 &clk_virt SLAVE_QUP_CORE_0 QCOM_ICC_TAG_ALWAYS>,
 						<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
 						 &config_noc SLAVE_QUP_0 QCOM_ICC_TAG_ALWAYS>,
diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
index 9076d8eb4d50..03b63b987a18 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
@@ -701,7 +701,7 @@ &sound {
 	pinctrl-names = "default";
 	status = "okay";
 
-	audio-routing =	"RX_BIAS", "MCLK",
+	audio-routing = "RX_BIAS", "MCLK",
 			"AMIC2", "MIC BIAS2",	/* Headset Mic */
 			"AMIC3", "MIC BIAS2",	/* FM radio left Tx */
 			"AMIC4", "MIC BIAS2",	/* FM radio right Tx */
-- 
2.48.1


