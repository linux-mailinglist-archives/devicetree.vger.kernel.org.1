Return-Path: <devicetree+bounces-134097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E93E69FCABD
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 12:48:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D08C16157C
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 11:48:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D05081D516C;
	Thu, 26 Dec 2024 11:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XHm1dp+1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2A81CEAC3
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 11:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735213675; cv=none; b=IPlHLFdE2jhY56cyzojKPhyktIbJhlitt+PbZSwXLQm6bRcqE7zQ60MjlMS07DgjodtU9zGy8lyWd4M9V0OTB5bW9cdSWsREhfFuzlhBd/TfUM3oteWsau+fvE5fKs24NurazZdFb8NUidFcyysWueQ9MHCEG2jWFmKcGTzIt/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735213675; c=relaxed/simple;
	bh=0BqDDptdfBkZhLYLUkYSJGnMysaAnPbvUGT7eF+t3Vk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rj4yAgZ1T3NYojaKl0G81OGPAzufj7mrpRs8HKp3jG5bvBhsXQ4mnKeXvtTvhvfef5d3zMFWicLYfxUo7W42QatWOgKrE564jwg9t0mgGnjZH7jPgTxKK8CYg9m9/XdUDeDDQwnvloYhm6Jd1LThaK4knyAfLIKhTMhDJ3dnp48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XHm1dp+1; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4363ae65100so67943565e9.0
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 03:47:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735213672; x=1735818472; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=osHdO3RdnN23L1y+vtEXNkstLrikOjcWWGXIO5JHHtc=;
        b=XHm1dp+1WwjVkA1JwErz9Tr7kTrLoiHjVyeTVvy/bprRb3MDz485pqFYL9n7PpsEW7
         F5j2iDdfJN4uT4+rcgjsA43U6GpqX3rAI0422yffs8BAsXD4sKR3AYXNBL+ILvkYCVi+
         fgkBl13zEFWL8apGFOgL30lPb6vviUtO95E8JqAF5+6L4aLgxEJtTLMshELO/NErRh3f
         M3IomTTzIvFfRcjBGlIYQTvGdjbGdCG5XaLvEb/Qm40rNWZvSseswqjQw8CHf5O2KMQJ
         BFmCMD5ZWLd+zPzuu95rdqiOgFNKowrMoXrU3+c8yQgjgxa4ReRvqHllkKHu17lx/Hg/
         3FDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735213672; x=1735818472;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=osHdO3RdnN23L1y+vtEXNkstLrikOjcWWGXIO5JHHtc=;
        b=LGdKCYTUxsQhi+QhLmpxP/BfbHU7oJCYQC7Agw3sRchFEjn84RpXdT+A58v4dFyQgq
         I4fSI0bFY2nkTKsudPoB5eGQPgnRPwunj1Ml1vLugOgzE2k74JvT/sk2gI3/vNdVZTGU
         daungBwRTOzujRfROj4HGFWlhVu4n7ZFzh+Fd5NGazm5EsvdI08iEJ+cVAOp7lqlzU7c
         l3uVnsaUr/8//ABByKBze/Gm47rIcogWq9nmW3iRVEQGYOBB+TqR2e4Wvy6S4XV8Uv/+
         8k8y/rdfRq00pOmWGPZ+nwW223fT2waNLbhuaF0jYgIHdNZ36mG22CAMYVPT5BvftXCS
         f6bw==
X-Forwarded-Encrypted: i=1; AJvYcCUPvIqHHvGisx2dN1tuFdULRfVbp2UGnw9PyTGcMf/0NRl0NnAfUZIHcV0zB8Uts4n9fT4Nu7brXszE@vger.kernel.org
X-Gm-Message-State: AOJu0Yxa1dXdiK14vzpa4lLSEgOn4lL9W83X3ab57/pKpvntr7bedVXv
	DaPBqUN7MvnZhhKLJijs2wxntlXQDK4VD6QZ43AjIIzOTJen0/6vjU0qvWfNxV0=
X-Gm-Gg: ASbGncui8hpuwyq4sd+7AuivfcmuWdJ+8a+QlREy//eLe50x0RJd6jtVkZ2ijUWQDX0
	PzIOu1UwkWIVIpvDdM/XFYnUIRGJh2Gf0r9bKyoAXvWy2RrXbU37bVywAPB2LdISgsWTiknmMkX
	aprXwTAZD5C2VmbFwpoIZTXG8xtDbeg8/HOwHlW/HXABFYQEWG8UZT8OyM99Wd0jsULqVOTKUvW
	tw8sRMqmx3v5RACONmbIseh4Rcy1/+VxbjPvE3tzxIKUDJ/pAr6cDN4
X-Google-Smtp-Source: AGHT+IG8X4KOsvoOJiA8kRlyVaZlc3OFxX9yHy6E5+Jj7lEfllSiUvuE7sJouNEzPBF3uJ3u9VvgdA==
X-Received: by 2002:a05:600c:4f50:b0:434:fbe2:4f with SMTP id 5b1f17b1804b1-43668a3a33fmr178502185e9.23.1735213672046;
        Thu, 26 Dec 2024 03:47:52 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4364a379d69sm256925895e9.0.2024.12.26.03.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 03:47:51 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 26 Dec 2024 13:47:38 +0200
Subject: [PATCH v5 1/2] arm64: dts: qcom: x1e80100: Describe the SDHC
 controllers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241226-x1e80100-qcp-sdhc-v5-1-0b28f2e13c85@linaro.org>
References: <20241226-x1e80100-qcp-sdhc-v5-0-0b28f2e13c85@linaro.org>
In-Reply-To: <20241226-x1e80100-qcp-sdhc-v5-0-0b28f2e13c85@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=4945; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=0BqDDptdfBkZhLYLUkYSJGnMysaAnPbvUGT7eF+t3Vk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnbUJiG2/YURRBL7C/dtq2d3eOFj2PJtlracoUt
 /CA22yD4iKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ21CYgAKCRAbX0TJAJUV
 Vq24EADK/MCEaPXiBIocauiJ4GFZwkODVnAdawRsnSi2C59UHch1z2JaLWemv1ao2n558ydGAK5
 mCKoI5kCafbre0Dq4OMWG9edCHhF1w42h7Shmo4sZ17kSlbkwD2ROHGghZzYzWT/1fCYjLvf7YT
 0Wvz6573PFO/eshE2wXRQqDzqHdp7NgJbruVecKedr8QBqS7o47Y+tUUo1jBipooH5cuLXehqlu
 NyOqKYBEVGljFMr5IYYC3bGgbfZ0rqOJJkWBxxo4XD4XJLtkyUkRLaSZnO5u3L/2gbbbP8JTU/Z
 NsbMWREWSWdkoeDPWypbl48T7Yzv/kjitAGZrlDcqOJCTEQFGMw8R+LwNZ+axwBydmIwRUQAG+S
 wtordCBau2WDBgE5Ne8QcnzKqcdaKwb3gbUYKUSxUjvzJADAFWFIhnTuGsLz5EbL5BCSDdOnpLp
 +6+k5jKNcjqjEoRmbShtPAgKUPyrgS7I8oLwvUMfrTzMgrxy0/F+pR0E60bWlbfvC229d2vq8HQ
 4o/wCUh+98ENIvMLWLWq7sBtfHO44w1kxqooWWGY4RaL9PUpW33ZwCSPvxMB1TKm2B9CLjzp9iQ
 sXq4uLsVHsPfsS3s5bIOzPbe8r/i7z0hVHAHZThFgOalEBR5XsY9I0UEwRZVK5xmsGkjTljBLYi
 /dG6p7nJTlQHUdQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X Elite platform features two SDHC v5 controllers.

Describe the controllers along with the pin configuration in TLMM
for the SDC2, since they are hardwired and cannot be muxed to any
other function. The SDC4 pin configuration can be muxed to different
functions, so leave those to board specific dts.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 146 +++++++++++++++++++++++++++++++++
 1 file changed, 146 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index f25e2d3af4a40125360831367830cb3d217883cf..e05807cf0a8dde319691f1de00d60208a6c71b86 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -4094,6 +4094,112 @@ lpass_lpicx_noc: interconnect@7430000 {
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
+			interconnects = <&aggre2_noc MASTER_SDCC_2 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDCC_2 QCOM_ICC_TAG_ACTIVE_ONLY>;
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
+			interconnects = <&aggre2_noc MASTER_SDCC_4 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_SDCC_4 QCOM_ICC_TAG_ACTIVE_ONLY>;
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
@@ -5846,6 +5952,46 @@ rx-pins {
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


