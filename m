Return-Path: <devicetree+bounces-130380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 373869EF480
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:09:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6A42918996D9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:57:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 805EC22D4C6;
	Thu, 12 Dec 2024 16:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bi+N0Ctv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E422253FB
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:50:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734022255; cv=none; b=OrdJ4s9t4tGTj+dCJ3shFGhjQZR3Yf0VUa/OGs/t5Vqj+LBdGDf3wAFXbDNSJGjEyEDyceCIdZ2Q/m3gIqVj+oy2JnoYp7pfnNeDL0fV8EZ9qJJXHxDYbkGCxU2lXdmUixKlGlV7+N6XF8GLcEiGhdySUz2e6MoTkcvNu2HFmBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734022255; c=relaxed/simple;
	bh=sIhmfEp6EiWv8csO0CuaF4kwgOWRRyIe0k01jMlrCDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y8Q8T/XOm0HxAipr8CgNF+Rtp2yoV6+M8+BJ5LKqHUq2YRes771NuNbuoyp/WLMzqyOL/L0ljz2Q28/LeRdJztIwBvEVSd/kLl7LbF8UR3XnlTK1UsluTG/y7l9a132VdoXAcrXRJc/Jo/pgdr7s+Crzu4+0700us5pjUFdiyl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bi+N0Ctv; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-38634c35129so628400f8f.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:50:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734022252; x=1734627052; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=M9lSbMOTfhbYFTwB5k4YX11cdSZ30itLnwZ6t9D1jNk=;
        b=bi+N0Ctvvpa3JxwQ1FwPV7xFay21pCwHgjV1kuRJdbOunZyOttd7vLexmnoKKzdK8L
         tfxvsno/XaRHtnFkrangWdHnq9G4CBekOgLWhiBsJTuk9tFe347px5ZnYoJ8HTf33jIe
         pZug1cIRoOnfojAxR3GbaWlICNhbqeHp0tl3T5aUNbIE4hTZ5rXYCpNm1cZ3oYvu2ZCw
         eXLn8nOtlGOyvKAZe8JlcoZCOVNYHZ7XTPApScnvY2rVbZnvjcBTW2gw+7ijzoARtMN6
         uZFm3UgwEoGP1UuoorbynWaiadS3fqY2cgWvEwc13eDeNnWnZWAeENZyy8R4nVGtBYfR
         +LgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734022252; x=1734627052;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M9lSbMOTfhbYFTwB5k4YX11cdSZ30itLnwZ6t9D1jNk=;
        b=mOedeAOt+wrCxo1ns8yAlcd84UG6VyhSOm9dSEVZWCKppOi3+xEZFUlF9+CHXXFZww
         ZSa2luE64nWM6R5DZfWoln7AOivARGinHrPhNhGUGFuULSbn1gy8xd5/jEqIgB7fEUAH
         vHza+ErRjs2ylVFZcZVqE7Fjgd3DUC5txGssq6/y3+CenfgLwL4VPgQwylmfxJFy7tRd
         fSy9BiSZIZBJ4JgLCMurRfIfekW6KezP+yITjUT8mH9viPipoIpuA9ZFhze5xxixrCHN
         QkgD2r4tobxSLNQTwipLOsn93mFth7gAd48qYO/svEDt3b3YfOocNgE6Y6OjMbqzLPwP
         3ngQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtFdX+425lm+/6xR1YBeHahXD0Vtv01HJT/k7hKrrayIOA8MvOUtwdmEW8Kcaqu3+66D37lnytR+Ds@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1zf+bRnMnbpjXw9PkOINJwm2y6hOfG37EZHwBO3ZEkYVFDo53
	96zsve8Z1l3JNZzg/U1YqfxXdlFkeVmINnUeWPuZvbXviOf5ogpNSJt2e+bDcf8=
X-Gm-Gg: ASbGncspgo/oG4uXEWgCRskv18iBS3JhSOuJ8JZ6uM7pUKnZ2aI+sNaQhSJx4mgWLj8
	PxwE2EcE0VBDCeQE7lT8bbSPFFArb8SSeCuUyzLTW7xRnihNU9/SrJKYnnkY7bMbE6wzd0IwkgP
	h+mXhZvReCSPC7o5QKxo5aTSsWosoRj/I7SFXIwq+biMMl9BAGo8cbGUNRYn0/EfyfRHG4zmoev
	C3OJ4XbVB4UnxK2A3r7sJb06/zAiKHA47E65/cIs5IeIe3Pm/Y+La3t
X-Google-Smtp-Source: AGHT+IEyTYKfRpE6aMH53NZRDVK//qBKCrcKyafSIj5G8xqq4Q6eSjBsg526CQ95QPHfVy48MeQtZA==
X-Received: by 2002:a05:6000:2802:b0:385:df6d:6fc7 with SMTP id ffacd0b85a97d-3864ce9f30amr4202233f8f.25.1734022251727;
        Thu, 12 Dec 2024 08:50:51 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4a25sm4518264f8f.27.2024.12.12.08.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:50:51 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 12 Dec 2024 18:50:39 +0200
Subject: [PATCH v4 1/2] arm64: dts: qcom: x1e80100: Describe the SDHC
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-x1e80100-qcp-sdhc-v4-1-a74c48ee68a3@linaro.org>
References: <20241212-x1e80100-qcp-sdhc-v4-0-a74c48ee68a3@linaro.org>
In-Reply-To: <20241212-x1e80100-qcp-sdhc-v4-0-a74c48ee68a3@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4749; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=sIhmfEp6EiWv8csO0CuaF4kwgOWRRyIe0k01jMlrCDc=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnWxRmQ6u1rxFVhZtdOrF+LjRiF8NBF3DTNfeOX
 HH6tRECqyuJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ1sUZgAKCRAbX0TJAJUV
 VjbFD/9UJ2SdMeBUGcbC3/7E5MkmE8dCQcpFkS4MavlMx/iS2StReAuYNwlnXBM770m6DPDCydH
 jxuFr0iWVnjpvRz5EtvXpHTdhR4UUY5x6lNmXjpw5/+vsgMuQhjOQPFK4lF2J41xC1vcM8zI4BN
 +y3YSj0pJuheV8rVHVc80aYYLvELZd7VdSeZLprlSfDetOSVMU5dfPTOQPaaqG99VQlFk0anW7L
 POsMV0nTxNfUbI6kbfQGvY4hui1IToIiKBxNEIqcXclG8jVud5KRyafwlpSCWPwL63DLPTMMxpb
 v6BGDyfTp9ZciLn2wKr+Y1cHM+KGxF0ehVaOPP644XulIQmFsNjltL32MJazMSVZuD3Bxi6V2n0
 ISxa//MGbv/IEAghXp2qgPzT0aC68H5NjMHhSbDBMfRsPK2GhB+urAvuMzi5ARmtLQCSTpoPdHA
 7CosmoeUrfzkfV63kL9PMEy3ynbCA3tdg0kaecamvL3T0NLyFVRoTOdSI/htmdkvLIGJjhP7Wtx
 3hi81wK9KEzi53rYaY98drW8RIm22tOjHuB24V207OVjXw/qEp2iJDE8w7LbtOn56OcAHqbsadT
 PjFTk/MQKt24pFIh5HkD1CmNeTIHm7kL71zxOdUN7KeRO79ZVvvbEMq6WvJ6u+Id3oALk75FfA+
 GbbTO136/Mj1oxA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite platform features two SDHC v5 controllers.

Describe the controllers along with the pin configuration in TLMM
for the SDC2, since they are hardwired and cannot be muxed to any
other function. The SDC4 pin configuration can be muxed to different
functions, so leave those to board specific dts.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 142 +++++++++++++++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index c18b99765c25c901b3d0a3fbaddc320c0a8c1716..1584df66ea915230995f0cf662cde813f4ae02a1 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4094,6 +4094,108 @@ lpass_lpicx_noc: interconnect@7430000 {
 			#interconnect-cells = <2>;
 		};
 
+		sdhc_2: mmc@8804000 {
+			compatible = "qcom,x1e80100-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x08804000 0 0x1000>;
+
+			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
+				 <&gcc GCC_SDCC2_APPS_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "iface", "core", "xo";
+			iommus = <&apps_smmu 0x520 0>;
+			qcom,dll-config = <0x0007642c>;
+			qcom,ddr-config = <0x80040868>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
+			operating-points-v2 = <&sdhc2_opp_table>;
+
+			interconnects = <&aggre2_noc MASTER_SDCC_2 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_2 0>;
+			interconnect-names = "sdhc-ddr", "cpu-sdhc";
+			bus-width = <4>;
+			dma-coherent;
+
+			status = "disabled";
+
+			sdhc2_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-19200000 {
+					opp-hz = /bits/ 64 <19200000>;
+					required-opps = <&rpmhpd_opp_min_svs>;
+				};
+
+				opp-50000000 {
+					opp-hz = /bits/ 64 <50000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+			};
+		};
+
+		sdhc_4: mmc@8844000 {
+			compatible = "qcom,x1e80100-sdhci", "qcom,sdhci-msm-v5";
+			reg = <0 0x08844000 0 0x1000>;
+
+			interrupts = <GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 227 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "hc_irq", "pwr_irq";
+
+			clocks = <&gcc GCC_SDCC4_AHB_CLK>,
+				 <&gcc GCC_SDCC4_APPS_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "iface", "core", "xo";
+			iommus = <&apps_smmu 0x160 0>;
+			qcom,dll-config = <0x0007642c>;
+			qcom,ddr-config = <0x80040868>;
+			power-domains = <&rpmhpd RPMHPD_CX>;
+			operating-points-v2 = <&sdhc4_opp_table>;
+
+			interconnects = <&aggre2_noc MASTER_SDCC_4 0 &mc_virt SLAVE_EBI1 0>,
+					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_4 0>;
+			interconnect-names = "sdhc-ddr", "cpu-sdhc";
+			bus-width = <4>;
+			dma-coherent;
+
+			status = "disabled";
+
+			sdhc4_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-19200000 {
+					opp-hz = /bits/ 64 <19200000>;
+					required-opps = <&rpmhpd_opp_min_svs>;
+				};
+
+				opp-50000000 {
+					opp-hz = /bits/ 64 <50000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-100000000 {
+					opp-hz = /bits/ 64 <100000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-202000000 {
+					opp-hz = /bits/ 64 <202000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+			};
+		};
+
 		usb_2_hsphy: phy@88e0000 {
 			compatible = "qcom,x1e80100-snps-eusb2-phy",
 				     "qcom,sm8550-snps-eusb2-phy";
@@ -5852,6 +5954,46 @@ rx-pins {
 					bias-disable;
 				};
 			};
+
+			sdc2_default: sdc2-default-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <16>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <10>;
+					bias-pull-up;
+				};
+			};
+
+			sdc2_sleep: sdc2-sleep-state {
+				clk-pins {
+					pins = "sdc2_clk";
+					drive-strength = <2>;
+					bias-disable;
+				};
+
+				cmd-pins {
+					pins = "sdc2_cmd";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+
+				data-pins {
+					pins = "sdc2_data";
+					drive-strength = <2>;
+					bias-pull-up;
+				};
+			};
 		};
 
 		apps_smmu: iommu@15000000 {

-- 
2.34.1


