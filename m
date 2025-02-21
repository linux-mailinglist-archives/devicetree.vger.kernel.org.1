Return-Path: <devicetree+bounces-149521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 26FCFA3FB48
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 17:30:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CEA857A9CF3
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 16:23:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DBB91EF08D;
	Fri, 21 Feb 2025 16:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kVJSfB8v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9FC1DDA24
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 16:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740155039; cv=none; b=cQyohzVLmWd92X5vDxuJG+cAbBBPVZfEyNBZ8OMX0T5ke0GGu4eVWFR+yuZXCHuGL16zTUHlyubZ7QCVOSRcvod97J5OpWNHrmil06Z6GUYIIDpLQhjp/wJuNq9mE5RcxNbpLYXZgTjHyrx/UeAwbO35GtrKvqJGuRqQpqv/X/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740155039; c=relaxed/simple;
	bh=KpHuLPF934rP2t1H3wJSjuXw8ygXmk03Uz/8hyPhB/E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZqtslB64HOwUV7AKkNZkhezQVDTA5hRF2r+8xP0zmwhTeLUEDATtpWNBJB+pxtQn14myr6FesPD6jCjILTypX5bhWyxd5bcXdpbMnOXgf6B3x+1Mpbbg1qXWEjswNVjTnBiikc0zQLuT9kuK+0SfqRLcyaxluAWGOlMNI5KgP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kVJSfB8v; arc=none smtp.client-ip=209.85.218.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-abad214f9c9so39347366b.0
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 08:23:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740155036; x=1740759836; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ci3Ph8zqjVgZAd6sVC6+WfoCrO0U6KJHgS9AYF+8LbU=;
        b=kVJSfB8vexJfC6UKZ+tJjNnEqmnr2ojdP3PCshIXpXCbTkV0lUTHat6Yj3OpDPSE5W
         7Bh/BIXNwOj5N7GGgYiUiQXeUEmhegewZoAllivFVLTeYJxRGVcdQQmGsHTHTRwoW6XD
         l6WDxpSG0OpUP2664pzSg19BXpIarrhnIQ9/Un+RQdRKTxGynSO9ZADK71ucgqi0O3m9
         MYNEO6Q8pHtvzFBcyLHGrbkUIFqS8SvwaKdVGylAtymaR2rMOb7uJheDMi96nONJ6Iun
         FYrYitT93umqPcKE6NSw9YtNT6z3TZhmJcEuf+Sbkwh3/0JE00fKJWwOmhaY4B5PQzwl
         heUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740155036; x=1740759836;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ci3Ph8zqjVgZAd6sVC6+WfoCrO0U6KJHgS9AYF+8LbU=;
        b=WP2eCP2o/lkHegYmZ7dNkpio/wWgeklGU/FHnBK9Kn+j33z6IswmfcLgxH1lj2Av11
         1gl+rBz4DilbL4Lor2sOTDGnKHaiKMBZwzfODWrV/m0eYDhCP4g7/rHtrqcCeCQNB1Qh
         fRuAhjsQFkf1RvcPBEuwAxOTVbNCjTbPZhNm26rQ/0BgUuMsnynbW1tsagfiHSFC+nYe
         RmcKcdhrtS0/EH/idiitEMmWfotdz1i7qIANNzy0sO9kkwNZJqboMU4rxM0x4+RUKRwv
         uheKqgR3mw3/SSt6znGZdkhwlOmXdUxe0JJ34DWkEShIB86Wnp/2N4U7mA+LJg42sBOW
         wG2g==
X-Forwarded-Encrypted: i=1; AJvYcCUyAkmfK1fV0ofBZ8LlOTcJLUOMRlwAFoEMPY//8xL93TqerbmUBVCSMHBAik8MAiTG8nes4ibHVF6h@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Lm6xiBUaSfIpXLG4yZgGDzLZVJ9oXYzZUCTjoPVmi9jIUfR7
	ih1iicU4W/pLZtpee/3MUpfYXkEYFJUqyimbGOMZukYme56BPXBuKcry08sKBJmGv9xGgDkq17P
	rmzY=
X-Gm-Gg: ASbGncvDjK7ZO8cgm+AxwS4NRhmbHz+jgKNIZs05zrCtQLtPEVHObnwNVlt0mBsAEfH
	nOIJNgkglgygp7vDlFJM2nzvZCfQOOlpfC1HMii1kLmMEo6bVjydRhjjHgaIHuATfsTHDJKuKFG
	oeKKn0eHC/j+w/GiKc6vo9K2XuhRlBwzg9dAia8duF7MfUN/6dxK+5uOzSAtT99GQbUy3tx6ypv
	cEwgGdUzU+FIVPElkAStbO9Pu9Pg+F/E+EE38VuA5S/M5ZOpDC9buaOyzwoYc3EebHLyPv6mjhT
	gwdr4dcj7RcEJzcJoSrSJoiDYIPOnGSPC6Cs+H2FSKAue1ASPzBodqJlpV+SxX2d6zBD+PJTUSb
	M
X-Google-Smtp-Source: AGHT+IHCYoRUigTQHthMUQoZpUPFJZB1WqCpQK7dd6TBXCVv1LDZKqeaHkVrMmDgVYcVwJ62qdHRKw==
X-Received: by 2002:a17:907:2d20:b0:ab6:b8e0:4f25 with SMTP id a640c23a62f3a-abc09a14d0dmr178187666b.4.1740155036160;
        Fri, 21 Feb 2025 08:23:56 -0800 (PST)
Received: from [127.0.1.1] (78-11-220-99.static.ip.netia.com.pl. [78.11.220.99])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9723a559sm1050545366b.96.2025.02.21.08.23.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 08:23:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 21 Feb 2025 17:23:49 +0100
Subject: [PATCH v3 1/3] arm64: dts: qcom: sm8750: Add CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250221-b4-sm8750-cdsp-v3-1-fe2891beeef7@linaro.org>
References: <20250221-b4-sm8750-cdsp-v3-0-fe2891beeef7@linaro.org>
In-Reply-To: <20250221-b4-sm8750-cdsp-v3-0-fe2891beeef7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6280;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=KpHuLPF934rP2t1H3wJSjuXw8ygXmk03Uz/8hyPhB/E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnuKiXBSJfy4dtE/zIRtJgigAmJIYI1K+2Wev2m
 UyKVhmVBZWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ7iolwAKCRDBN2bmhouD
 11G+D/0ctFwWoVytohb8jmiLDP2AbHBiawE9dTLTEE9bUeWM+WICAPSev4seg20Wv1xQWiF+DVd
 UYHwrzZRq0TdyBVI3+Tj9igN0p/grRG+6rOqEDMADaxHtRjRQnjzvhBbfTRGR0NZSbAmwf6lZzY
 hbhAQAVZDaHOUkGmaFHy6+B+IM9X1RY6cQ2o9+c3zy1P3bC+10D2XcUQztQDFWZ32MTJH/GXH0m
 T3+w9c3S6uHSW0lO0XWV5sWoxB7RC6QtC+vwWEHv43PKPRoH4Q0d4HjZJwDesB6LtBvWPeQAXHq
 FCLBmEyzX4eGO7XpbZ/6jV4LJiYfy5DAh67LIlA1kjX6wUdgdrC23AQCuzY3Yq4ks7Y8Pj34Bdc
 iZBQPLo0t2aXCceBW6ARPqpPB+HtNixH3bhnObu1t2a2z3Ba+a42RcTGg8FM3RiX5VZK6H1XqY9
 CnZgyTfaN2BQGpRC6o+UTp9gmhWLNxlC6lQ2f0qx2vAlRjZXeB6ZTs9+M9DJ6K5FGfgUUfbaoVh
 QtzLX6SawjI6Iy8A9y9gpOlWcn3o5GROwCZpd3eJGPX28Tg0z2TKkf+FhTdSy7m3dKg0wJSqgMz
 U+vtNcYggNQEl/4wMCE/rkDwmPWaHMlKEKjC5ypA0tiN4tNxmuTtnM2M7XhinUG1DDSCEF0+DjO
 XKuTyjH0/4BCzww==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add nodes for the CDSP and its SMP2P.  These are compatible with earlier
SM8650 with difference in one more interrupt.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 194 +++++++++++++++++++++++++++++++++++
 1 file changed, 194 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 55668ee979a465aa0149ff9317d2cbc733e9c27b..033e8153aa73cea00d1d4394c572bf8e19231305 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -545,6 +545,32 @@ smp2p_adsp_in: slave-kernel {
 		};
 	};
 
+	smp2p-cdsp {
+		compatible = "qcom,smp2p";
+
+		interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
+					     IPCC_MPROC_SIGNAL_SMP2P
+					     IRQ_TYPE_EDGE_RISING>;
+
+		mboxes = <&ipcc IPCC_CLIENT_CDSP
+				IPCC_MPROC_SIGNAL_SMP2P>;
+
+		qcom,smem = <94>, <432>;
+		qcom,local-pid = <0>;
+		qcom,remote-pid = <5>;
+
+		smp2p_cdsp_out: master-kernel {
+			qcom,entry-name = "master-kernel";
+			#qcom,smem-state-cells = <1>;
+		};
+
+		smp2p_cdsp_in: slave-kernel {
+			qcom,entry-name = "slave-kernel";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
 	soc: soc@0 {
 		compatible = "simple-bus";
 
@@ -3236,6 +3262,174 @@ nsp_noc: interconnect@320c0000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 			#interconnect-cells = <2>;
 		};
+
+		remoteproc_cdsp: remoteproc@32300000 {
+			compatible = "qcom,sm8750-cdsp-pas", "qcom,sm8650-cdsp-pas";
+			reg = <0x0 0x32300000 0x0 0x10000>;
+
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 3 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 7 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog",
+					  "fatal",
+					  "ready",
+					  "handover",
+					  "stop-ack",
+					  "shutdown-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			interconnects = <&nsp_noc MASTER_CDSP_PROC QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+
+			power-domains = <&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_NSP>;
+			power-domain-names = "cx",
+					     "mxc",
+					     "nsp";
+
+			memory-region = <&cdsp_mem>, <&q6_cdsp_dtb_mem>, <&global_sync_mem>;
+			qcom,qmp = <&aoss_qmp>;
+			qcom,smem-states = <&smp2p_cdsp_out 0>;
+			qcom,smem-state-names = "stop";
+
+			status = "disabled";
+
+			glink-edge {
+				interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
+							     IPCC_MPROC_SIGNAL_GLINK_QMP
+							     IRQ_TYPE_EDGE_RISING>;
+				mboxes = <&ipcc IPCC_CLIENT_CDSP
+						IPCC_MPROC_SIGNAL_GLINK_QMP>;
+				qcom,remote-pid = <5>;
+				label = "cdsp";
+
+				fastrpc {
+					compatible = "qcom,fastrpc";
+					qcom,glink-channels = "fastrpcglink-apps-dsp";
+					label = "cdsp";
+					qcom,non-secure-domain;
+					#address-cells = <1>;
+					#size-cells = <0>;
+
+					compute-cb@1 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <1>;
+						iommus = <&apps_smmu 0x19c1 0x0>,
+							 <&apps_smmu 0x0c21 0x0>,
+							 <&apps_smmu 0x0c01 0x40>;
+						dma-coherent;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x1962 0x0>,
+							 <&apps_smmu 0x0c02 0x20>,
+							 <&apps_smmu 0x0c42 0x0>,
+							 <&apps_smmu 0x19c2 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x1963 0x0>,
+							 <&apps_smmu 0x0c23 0x0>,
+							 <&apps_smmu 0x0c03 0x40>,
+							 <&apps_smmu 0x19c3 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x1964 0x0>,
+							 <&apps_smmu 0x0c24 0x0>,
+							 <&apps_smmu 0x0c04 0x40>,
+							 <&apps_smmu 0x19c4 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x1965 0x0>,
+							 <&apps_smmu 0x0c25 0x0>,
+							 <&apps_smmu 0x0c05 0x40>,
+							 <&apps_smmu 0x19c5 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x1966 0x0>,
+							 <&apps_smmu 0x0c06 0x20>,
+							 <&apps_smmu 0x0c46 0x0>,
+							 <&apps_smmu 0x19c6 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x1967 0x0>,
+							 <&apps_smmu 0x0c27 0x0>,
+							 <&apps_smmu 0x0c07 0x40>,
+							 <&apps_smmu 0x19c7 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x1968 0x0>,
+							 <&apps_smmu 0x0c08 0x20>,
+							 <&apps_smmu 0x0c48 0x0>,
+							 <&apps_smmu 0x19c8 0x0>;
+						dma-coherent;
+					};
+
+					/* note: secure cb9 in downstream */
+
+					compute-cb@12 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <12>;
+						iommus = <&apps_smmu 0x196c 0x0>,
+							 <&apps_smmu 0x0c2c 0x20>,
+							 <&apps_smmu 0x0c0c 0x40>,
+							 <&apps_smmu 0x19cc 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@13 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <13>;
+						iommus = <&apps_smmu 0x196d 0x0>,
+							 <&apps_smmu 0x0c0d 0x20>,
+							 <&apps_smmu 0x0c2e 0x0>,
+							 <&apps_smmu 0x0c4d 0x0>,
+							 <&apps_smmu 0x19cd 0x0>;
+						dma-coherent;
+					};
+
+					compute-cb@14 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <14>;
+						iommus = <&apps_smmu 0x196e 0x0>,
+							 <&apps_smmu 0x0c0e 0x20>,
+							 <&apps_smmu 0x19ce 0x0>;
+						dma-coherent;
+					};
+				};
+			};
+		};
 	};
 
 	timer {

-- 
2.43.0


