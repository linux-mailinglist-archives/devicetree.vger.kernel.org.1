Return-Path: <devicetree+bounces-45432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7563C861EDA
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 22:23:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D484A1F25F40
	for <lists+devicetree@lfdr.de>; Fri, 23 Feb 2024 21:23:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBF6414EFD1;
	Fri, 23 Feb 2024 21:22:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PXHGLlnv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F4314DFF5
	for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 21:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708723323; cv=none; b=M+AMGG/hMs4HeFfYRJBhh+DV/qEX+eUkXwGlbNEO5MlKyog41z/lNYgWPWxF2u89U1FkdkaOLbXxqEYC1n8bKR9dIJQFxP87aolcGIgrkAO3kRMoHdcfzwuw/3yqRUmgws6CHYUJRav3eD4x6/y26r408hdoUdseYHnU+zkVP1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708723323; c=relaxed/simple;
	bh=AoSgDuu9pjteMsq9KiBmOosymRfNqx1ANKwVdseppF0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WsApXifMo/naSECLzpYHQ+1x+HVpqBCOMZD+e5lAcLm8sQnSQw/KAirH5zHtDm20xwJQ13jTiOb8/+s+igA7IMd2lJnqhXgDZ4N7fxmONyMGemiSX3XXB3x7SeNS74SpFZH0VgdTOYm226PcXOghWY50JJZ08h0Ut9KQqAXo6m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PXHGLlnv; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a3e8c1e4aa7so128204666b.2
        for <devicetree@vger.kernel.org>; Fri, 23 Feb 2024 13:22:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708723320; x=1709328120; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=owKhM76CwHPxarxv0Z7L+zq4KR4DDb0PXsONEpcHO3I=;
        b=PXHGLlnvdbv1X8YeHEpt/oVTy5iQPXc3x2t5qyrdReXUCuGGunQpB3WT1LnM1vQ3YZ
         nVDyNT5Wv4ccnpr/1HGhV+LwjU+yyPTibCQ7dzP8IQtnxyLUR7CIyIGWXoVp47T9vJxY
         YwMtLM7qBJgk5prglcAqIIMb1/JYPyDdf6unKNEDQTi1Je/gztvqrSI3htisvS0Ic0qR
         cE/tSCs9cgM0bft0BWJ5vW6YaPG8SSTQWSxNay4UhkgsE7E6LJ9OHW8TiHqI9U8Bltn2
         l7513EfS1an2U25quy2VBU+X8s4zxEYCGOyS0xf3QyVokCrnzaR/2+BYwqBBWoCjgcii
         IG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708723320; x=1709328120;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=owKhM76CwHPxarxv0Z7L+zq4KR4DDb0PXsONEpcHO3I=;
        b=h82uzYCWPHj7LtGJonC7HPfL3CTnEH84nEMiHbOKHEJzSdJvc15tbRLdrc0VDNiUe2
         S51Kzzg4DCP+oXlyh8I1ssmyhbk35hjLGRukvf3WBXiCUVWplB2nsOIArWUjFq+lW/0G
         0gOyiMIReZp5gVwIVFLyzVKYn0vih4vQa9qwhdnjv8DvdJoFqz2zNEg4QyC9xiBZogoH
         IoqWK8UgTSl5058+vwKKdcGcAH7mFBd7OR21COO4dPqq8weTAzXSehmyJmUjrAyuMtM5
         dkZLvo9pDcY0KwlLIgRgCyP4n5T34bci6kV4F9ngJYwS4Mh48cz3zaCV4wViM7XtgZzv
         eZfw==
X-Forwarded-Encrypted: i=1; AJvYcCUUMU6hYSMhQhIVyTALE8CwpO0S4jrxRrC0bFTXdvSKJYkNaA+wb1vo5I9XD3+WFYTdYbVZhRCw2Z3/wH55+NKhW/WEkhXYtGUY4w==
X-Gm-Message-State: AOJu0YwpYObQ2EnwFyaHKTx7BwqDO4MXZ/rOGzZcC8CDWm5fsHsq94MR
	OGh5hJ3Bko43S6Vz6t1HKhCwZi7aFLdCO8TtmtRU1mG8aJsYNhnGOnaUxx88BUc=
X-Google-Smtp-Source: AGHT+IHeLbc3frMylDYltwQ8cOgvmrd0NrWT2qhU1h3cIZqdzzF2xLe3R2rHsgW8OV4J+LDhTPHLnQ==
X-Received: by 2002:a17:906:b2d1:b0:a3e:19cc:16a with SMTP id cf17-20020a170906b2d100b00a3e19cc016amr527297ejb.52.1708723320308;
        Fri, 23 Feb 2024 13:22:00 -0800 (PST)
Received: from [10.167.154.1] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id mj8-20020a170906af8800b00a3ee9305b02sm4091226ejb.20.2024.02.23.13.21.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Feb 2024 13:21:59 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Fri, 23 Feb 2024 22:21:42 +0100
Subject: [PATCH v2 6/7] arm64: dts: qcom: qcm2290: Add GPU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240219-topic-rb1_gpu-v2-6-2d3d6a0db040@linaro.org>
References: <20240219-topic-rb1_gpu-v2-0-2d3d6a0db040@linaro.org>
In-Reply-To: <20240219-topic-rb1_gpu-v2-0-2d3d6a0db040@linaro.org>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1708723303; l=5480;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=AoSgDuu9pjteMsq9KiBmOosymRfNqx1ANKwVdseppF0=;
 b=rP3BbPYu9Lk0i4cMD3ouuvpURtk1wBNHdPNoJxFyAalf/lctsjCLsdDya1DgWkHJfUmqVqpW6
 23HA+QF3miCALjkE2YfHcWwJaJdRYegaMRt4WOov53lOqIB1trfz9gN
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

Describe the GPU hardware on the QCM2290.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 154 ++++++++++++++++++++++++++++++++++
 1 file changed, 154 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 89beac833d43..ec5aef5d9c69 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -7,6 +7,7 @@
 
 #include <dt-bindings/clock/qcom,dispcc-qcm2290.h>
 #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
+#include <dt-bindings/clock/qcom,qcm2290-gpucc.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
@@ -737,6 +738,11 @@ qusb2_hstx_trim: hstx-trim@25b {
 				reg = <0x25b 0x1>;
 				bits = <1 4>;
 			};
+
+			gpu_speed_bin: gpu-speed-bin@2006 {
+				reg = <0x2006 0x2>;
+				bits = <5 8>;
+			};
 		};
 
 		pmu@1b8e300 {
@@ -1383,6 +1389,154 @@ usb_dwc3: usb@4e00000 {
 			};
 		};
 
+		gpu: gpu@5900000 {
+			compatible = "qcom,adreno-07000200", "qcom,adreno";
+			reg = <0x0 0x05900000 0x0 0x40000>;
+			reg-names = "kgsl_3d0_reg_memory";
+
+			interrupts = <GIC_SPI 177 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>,
+				 <&gpucc GPU_CC_AHB_CLK>,
+				 <&gcc GCC_BIMC_GPU_AXI_CLK>,
+				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_CX_GMU_CLK>,
+				 <&gpucc GPU_CC_CXO_CLK>;
+			clock-names = "core",
+				      "iface",
+				      "mem_iface",
+				      "alt_mem_iface",
+				      "gmu",
+				      "xo";
+
+			interconnects = <&bimc MASTER_GFX3D RPM_ALWAYS_TAG
+					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
+			interconnect-names = "gfx-mem";
+
+			iommus = <&adreno_smmu 0 1>,
+				 <&adreno_smmu 2 0>;
+			operating-points-v2 = <&gpu_opp_table>;
+			power-domains = <&rpmpd QCM2290_VDDCX>;
+			qcom,gmu = <&gmu_wrapper>;
+
+			nvmem-cells = <&gpu_speed_bin>;
+			nvmem-cell-names = "speed_bin";
+			#cooling-cells = <2>;
+
+			status = "disabled";
+
+			zap-shader {
+				memory-region = <&pil_gpu_mem>;
+			};
+
+			gpu_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				/* TODO: Scale RPM_SMD_BIMC_GPU_CLK w/ turbo freqs */
+				opp-1123200000 {
+					opp-hz = /bits/ 64 <1123200000>;
+					required-opps = <&rpmpd_opp_turbo_plus>;
+					opp-peak-kBps = <6881000>;
+					opp-supported-hw = <0x3>;
+					turbo-mode;
+				};
+
+				opp-1017600000 {
+					opp-hz = /bits/ 64 <1017600000>;
+					required-opps = <&rpmpd_opp_turbo>;
+					opp-peak-kBps = <6881000>;
+					opp-supported-hw = <0x3>;
+					turbo-mode;
+				};
+
+				opp-921600000 {
+					opp-hz = /bits/ 64 <921600000>;
+					required-opps = <&rpmpd_opp_nom_plus>;
+					opp-peak-kBps = <6881000>;
+					opp-supported-hw = <0x3>;
+				};
+
+				opp-844800000 {
+					opp-hz = /bits/ 64 <844800000>;
+					required-opps = <&rpmpd_opp_nom>;
+					opp-peak-kBps = <6881000>;
+					opp-supported-hw = <0x7>;
+				};
+
+				opp-672000000 {
+					opp-hz = /bits/ 64 <672000000>;
+					required-opps = <&rpmpd_opp_svs_plus>;
+					opp-peak-kBps = <3879000>;
+					opp-supported-hw = <0xf>;
+				};
+
+				opp-537600000 {
+					opp-hz = /bits/ 64 <537600000>;
+					required-opps = <&rpmpd_opp_svs>;
+					opp-peak-kBps = <2929000>;
+					opp-supported-hw = <0xf>;
+				};
+
+				opp-355200000 {
+					opp-hz = /bits/ 64 <355200000>;
+					required-opps = <&rpmpd_opp_low_svs>;
+					opp-peak-kBps = <1720000>;
+					opp-supported-hw = <0xf>;
+				};
+			};
+		};
+
+		gmu_wrapper: gmu@596a000 {
+			compatible = "qcom,adreno-gmu-wrapper";
+			reg = <0x0 0x0596a000 0x0 0x30000>;
+			reg-names = "gmu";
+			power-domains = <&gpucc GPU_CX_GDSC>,
+					<&gpucc GPU_GX_GDSC>;
+			power-domain-names = "cx",
+					     "gx";
+		};
+
+		gpucc: clock-controller@5990000 {
+			compatible = "qcom,qcm2290-gpucc";
+			reg = <0x0 0x05990000 0x0 0x9000>;
+			clocks = <&gcc GCC_GPU_CFG_AHB_CLK>,
+				 <&rpmcc RPM_SMD_XO_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_CLK_SRC>,
+				 <&gcc GCC_GPU_GPLL0_DIV_CLK_SRC>;
+			power-domains = <&rpmpd QCM2290_VDDCX>;
+			required-opps = <&rpmpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
+		adreno_smmu: iommu@59a0000 {
+			compatible = "qcom,qcm2290-smmu-500", "qcom,adreno-smmu",
+				     "qcom,smmu-500", "arm,mmu-500";
+			reg = <0x0 0x059a0000 0x0 0x10000>;
+			interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 167 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 168 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 169 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 170 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 171 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 172 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 173 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
+				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>,
+				 <&gcc GCC_GPU_SNOC_DVM_GFX_CLK>;
+			clock-names = "mem",
+				      "hlos",
+				      "iface";
+
+			power-domains = <&gpucc GPU_CX_GDSC>;
+
+			#global-interrupts = <1>;
+			#iommu-cells = <2>;
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;

-- 
2.43.2


