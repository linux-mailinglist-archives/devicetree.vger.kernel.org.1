Return-Path: <devicetree+bounces-15230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 542497E920E
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 19:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0830B280A9B
	for <lists+devicetree@lfdr.de>; Sun, 12 Nov 2023 18:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D601156EC;
	Sun, 12 Nov 2023 18:44:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FPmv6CSZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8098156CC
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 18:44:41 +0000 (UTC)
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7D104787
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:33 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5bf58914bacso40177817b3.3
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 10:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699814672; x=1700419472; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3kr66jRaA+T3X8byeyf1dqtY49llSG7smyrUdez14jA=;
        b=FPmv6CSZLddqkfmln/PSzoGsJUuRkBlotr5ye3Gwhcooc3g2nPm0aHQl2EAfzOiwKR
         YewrDhkmK39Kn+LEYjL5FOkQrPISwpLc/n+plIPjkixLmmUepOzR7qO3Spr6s899IYO2
         xsU5nYExeTsKfS3/eS1K5dTcC7yqRZf4dNsGnO7c5yve17yN3OzL/tPudiYeKpAL7pgP
         ItxwYvdaaO2LKExbqGMooUIrVJS+7l3RkrEOHw7p2nopa7ogHTk7yn7pyT72qLhuydTy
         JdpXvvwa8c1Wds4HJpWyvSCNoD1OfWKAi7yOu1bkNlkFCXnWLMNr0vpeVmQ4DUPcv5bA
         T8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699814672; x=1700419472;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3kr66jRaA+T3X8byeyf1dqtY49llSG7smyrUdez14jA=;
        b=GMOtQ3EhqwQ+I7KkaDw5VLZgkydYYO+89wK29Nvjr2QRIah7PS5qYGunctcHrbRNVE
         Hn1cYyyPkQ1cJdd5DbSNVtPD5Yiiy4nYoVS6yspVdIV7gUxTEiOm1YT7Jnp1/mMeTeQM
         bkVUxWnqi3madLkF917JoQ6dxPvzoEY6AY/px9BrWrQG0UwNgSzYQn1iSQKJUbgI4+hU
         HTcazzZx8eQC6dyqtbVfNhcXlvISIbTQMko5Bu3eNG1PTPU4E2Mf21kJIddD6JuvYrXj
         ETeEf13KBJV5UfFwYwiRy/+9P2SyxPueYfKczY6vqLvub2TP87wA0hKTn83zUfc0fSAN
         T4Uw==
X-Gm-Message-State: AOJu0YwIcd8CQ9vVCF0qJysKo+TEow1cCz311gDHQ7T95rKrRAt+00Pw
	RkRoR0+k+3eY1f6s2fpPYx6qKw==
X-Google-Smtp-Source: AGHT+IH160CC2bbd6hb0+hWvJ93VZ56cEe9TDT3ZQ5nhYIcdUyNl/fkhWkQtGX3wRQN8SQVfEXgSjw==
X-Received: by 2002:a81:5dc4:0:b0:5a7:ba09:52c7 with SMTP id r187-20020a815dc4000000b005a7ba0952c7mr4307128ywb.11.1699814672622;
        Sun, 12 Nov 2023 10:44:32 -0800 (PST)
Received: from krzk-bin.. ([12.161.6.170])
        by smtp.gmail.com with ESMTPSA id o195-20020a0dcccc000000b005a23fc389d8sm1306263ywd.103.2023.11.12.10.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Nov 2023 10:44:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sc8180x: drop duplicated PCI iommus property
Date: Sun, 12 Nov 2023 19:44:30 +0100
Message-Id: <20231112184430.3495-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The IOMMUs for PCI controller on SC8180x are defined in iommu-map, so
drop duplicared iommus:

  sc8180x-lenovo-flex-5g.dtb: pci@1c08000: Unevaluated properties are not allowed ('iommus' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Not tested on hardware.
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 31c9bf85ef34..a7abf3d703af 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -1736,7 +1736,6 @@ pcie0: pci@1c00000 {
 			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
 			assigned-clock-rates = <19200000>;
 
-			iommus = <&apps_smmu 0x1d80 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1d80 0x1>,
 				    <0x100 &apps_smmu 0x1d81 0x1>;
 
@@ -1833,7 +1832,6 @@ pcie3: pci@1c08000 {
 			assigned-clocks = <&gcc GCC_PCIE_3_AUX_CLK>;
 			assigned-clock-rates = <19200000>;
 
-			iommus = <&apps_smmu 0x1e00 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1e00 0x1>,
 				    <0x100 &apps_smmu 0x1e01 0x1>;
 
@@ -1931,7 +1929,6 @@ pcie1: pci@1c10000 {
 			assigned-clocks = <&gcc GCC_PCIE_1_AUX_CLK>;
 			assigned-clock-rates = <19200000>;
 
-			iommus = <&apps_smmu 0x1c80 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1c80 0x1>,
 				    <0x100 &apps_smmu 0x1c81 0x1>;
 
@@ -2029,7 +2026,6 @@ pcie2: pci@1c18000 {
 			assigned-clocks = <&gcc GCC_PCIE_2_AUX_CLK>;
 			assigned-clock-rates = <19200000>;
 
-			iommus = <&apps_smmu 0x1d00 0x7f>;
 			iommu-map = <0x0   &apps_smmu 0x1d00 0x1>,
 				    <0x100 &apps_smmu 0x1d01 0x1>;
 
-- 
2.34.1


