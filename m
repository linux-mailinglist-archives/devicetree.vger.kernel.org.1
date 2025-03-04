Return-Path: <devicetree+bounces-153815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B81A4DEC8
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 14:09:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39BFC189AA23
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 13:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C20205ADA;
	Tue,  4 Mar 2025 13:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cgSO9gDL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC67205509
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 13:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741093643; cv=none; b=M037zIYBJkol7JQhV+xx1GpJ8R1Zs6vmZA7d2qcJa2quhfiyyOM+wgv7B8elX8+U2FKSE4hna7VeLLQkHmxd5Xv2969i2wwQU9EPAS71bMf4qZQ7Qett69HBHmTQHOaEI5Rh5lLWHxnX9Zj5qkod2orGGPFwudTMKYQUrAEUscs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741093643; c=relaxed/simple;
	bh=TO/kj9+lLvHOlw6v676cGN2X1xrQoQT6nqKUEG+rBfQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NowYfnPW3IRVaHi/xymE05A3LUqblJH64YB8X00NtwxB5BIotagpTnWVv91tg//YxQoucqckCSBbg2c8jsdhU4c419GdeTkFa1ytwHW74LlQL9Fa/1QA1/ZAiDgRpHUTKDx3NtxXsbqdj4t5dcliOZNIjrdQ6sLrbf95+Lc/Mm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cgSO9gDL; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-390eb7c1024so3223745f8f.0
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 05:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741093638; x=1741698438; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Nln3oiv+wCOohYzCVrwCh2whMM1hc+Xd6ZxmtYAIQvg=;
        b=cgSO9gDL58k48jBjDE95W+iYW0KzS5IzZeNEu8aL+9n2oco07ik71yP7/qggFASjl5
         ANJAsKmzBFeMLuqPFu2NBBB3Xsi9v3h3VV99/miXN2AFR4Vkyo+A+8CcI1rTEzIBgZO7
         ApqNmSwu/JQ3pmLT+Df2IYxuy64L9NfUveC7Eij+qK2zP5Zyvo3AYd/CEPc4Q0zkefjW
         mQaoQYuGMJqzLEytMjdD/Tpc9gM/kAqx8bJRpHrKrgTwtI3293DNyh7M7YWVLNi1sjkJ
         C1hrU9QhF48EK8BP2cch5mE53Fmrx3IrcQxguMx7O8h7RZjNNVjTtkBX8CfARRRuxS66
         cKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741093639; x=1741698439;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nln3oiv+wCOohYzCVrwCh2whMM1hc+Xd6ZxmtYAIQvg=;
        b=P3l+COsZUVR2a+58GAhdy9ZNR2Jy78hgY5FDyooT4QvZSyBf82frnTJ62mzMGA3q+g
         VQSfeaOMNMH2iFPfB/CLbqOLXdRwGlvc/YwK36UFiBMlpTGjIxMhDY30DK3+VqFQfVf4
         2fcd9qx7aL9oPIFXsm3xfLUyV8jLimir6qTv9CZtpVNqxEWb0xSS6fIoD4l+D2hU1H7X
         JclccvMUhaFxXNWHDAmrISJreDL0P0STGSuSf+B+YlBsafoq+xPquvppM1Wgkzfbhqrf
         EYrNYCmyzHHlWdHerduWkfXDoaUALE9RZmySJQZDsS60EwJikA8NBahgLaTnv+4hmJeh
         PmRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2M0VNiRxfuwBJ6jowWGWI73zxiqfQ9c2xWQzjeZb82Gjny3opxMdO/KA+IgKcA7rJZCUzTyXsiMGk@vger.kernel.org
X-Gm-Message-State: AOJu0YwZUzItpIRY8q9McRUI9FbyCQROS1djtQ3MRl9v/wspysUBZth7
	btiErSt+sSqw9ARIFCzhKB5jNnGThgiHmpsIigtq0o//Eh4LAuozPULybCjWmM8=
X-Gm-Gg: ASbGncuSSBBwdaCdQyZJpdwwzz48J7RCe5J9bG+y/WWOnmXljdC4j79AGdjQCzBb3GX
	tBtyKrVHux+QmfQdgGTFJanD4EkbXVeJrHZ+XWAclqvawKXRbB6kQkusnuipA0ggKmHgAiGK/Vu
	BoQRqUuZGrkgCOwbFzxuX/OFU9EpIYrCyojhvnv6Zi/iGzqpjOnh+Ur/B6pAkmlw1/Xc90fmBaq
	2l/wm3afVDZq/64rW+QPG7Ophs1hlnKD7MCuzw5oJ6gPYdvnxYDiQu+lPkeADhKh/L4TazA4RSr
	F+ubiSSmXYfP52oeMWVzZ59wt0FLoLD/AZGYOQo5mb/77qkvUh/qVvi0w25wAZgKMsZ563U2+Pb
	PsLONyQ==
X-Google-Smtp-Source: AGHT+IGpTFcm31h9EpuPbAm3YUIJaoJyD95IH89so3fYUNBg2B1J+FhEDae5gGh7l1PFPh0SPC0Ycg==
X-Received: by 2002:a5d:6da3:0:b0:390:e85b:a8ee with SMTP id ffacd0b85a97d-390ec7c6a2fmr13832592f8f.1.1741093638590;
        Tue, 04 Mar 2025 05:07:18 -0800 (PST)
Received: from [127.0.1.1] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47b6cd8sm17401715f8f.44.2025.03.04.05.07.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Mar 2025 05:07:18 -0800 (PST)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Date: Tue, 04 Mar 2025 13:07:13 +0000
Subject: [PATCH 7/8] arm64: dts: qcom: sc8280xp: Add Venus
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-7-279c7ea55493@linaro.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
To: Stanimir Varbanov <stanimir.k.varbanov@gmail.com>, 
 Vikash Garodia <quic_vgarodia@quicinc.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.15-dev-33ea6

From: Konrad Dybcio <konradybcio@kernel.org>

Add the required nodes to enable Venus on sc8280xp.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
[ johan: use sm8350 videocc defines ]
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
[ bod: dropped video encoder/decoder declarations ]
[ bod: added interconnect tags ]
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 82 ++++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 01501acb1790a..fe8aa24d5d51e 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -10,6 +10,8 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sc8280xp-camcc.h>
 #include <dt-bindings/clock/qcom,sc8280xp-lpasscc.h>
+#include <dt-bindings/clock/qcom,sm8350-videocc.h>
+#include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,sc8280xp.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
@@ -690,6 +692,11 @@ reserved-region@85b00000 {
 			no-map;
 		};
 
+		pil_video_mem: pil_video_region@86700000 {
+			reg = <0 0x86700000 0 0x500000>;
+			no-map;
+		};
+
 		pil_adsp_mem: adsp-region@86c00000 {
 			reg = <0 0x86c00000 0 0x2000000>;
 			no-map;
@@ -3699,6 +3706,81 @@ usb_1_dwc3_ss: endpoint {
 			};
 		};
 
+		venus: video-codec@aa00000 {
+			compatible = "qcom,sm8350-venus";
+			reg = <0 0x0aa00000 0 0x100000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+			power-domains = <&videocc MVS0C_GDSC>,
+					<&videocc MVS0_GDSC>,
+					<&rpmhpd SC8280XP_MX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mx";
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&mmss_noc MASTER_VIDEO_P0 QCOM_ICC_TAG_ALWAYS
+					 &gem_noc SLAVE_LLCC QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem",
+					     "video-llcc";
+
+			operating-points-v2 = <&venus_opp_table>;
+			iommus = <&apps_smmu 0x2e00 0x400>;
+			memory-region = <&pil_video_mem>;
+
+			status = "disabled";
+
+			venus_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-720000000 {
+					opp-hz = /bits/ 64 <720000000>;
+					required-opps = <&rpmhpd_opp_low_svs>;
+				};
+
+				opp-1014000000 {
+					opp-hz = /bits/ 64 <1014000000>;
+					required-opps = <&rpmhpd_opp_svs>;
+				};
+
+				opp-1098000000 {
+					opp-hz = /bits/ 64 <1098000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-1332000000 {
+					opp-hz = /bits/ 64 <1332000000>;
+					required-opps = <&rpmhpd_opp_nom>;
+				};
+			};
+		};
+
+		videocc: clock-controller@abf0000 {
+			compatible = "qcom,sc8280xp-videocc";
+			reg = <0 0x0abf0000 0 0x10000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&rpmhcc RPMH_CXO_CLK_A>,
+				 <&sleep_clk>;
+			power-domains = <&rpmhpd SC8280XP_MMCX>;
+			required-opps = <&rpmhpd_opp_low_svs>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			#power-domain-cells = <1>;
+		};
+
 		cci0: cci@ac4a000 {
 			compatible = "qcom,sc8280xp-cci", "qcom,msm8996-cci";
 			reg = <0 0x0ac4a000 0 0x1000>;

-- 
2.47.2


