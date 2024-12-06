Return-Path: <devicetree+bounces-128015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5DF9E742E
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 16:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 39D78168717
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 15:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1D2220CCF7;
	Fri,  6 Dec 2024 15:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vBCtfh4r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64B20C00C
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 15:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733499176; cv=none; b=O0RVFkHGhgzpwPCylQqPCTLfuz1JzDBvuCAHxdg5oRhmwTfSjPGDovuxIjiJsZQektwnAvndmSO9jQ+Gvgbs/BeEe/dT70lcGSZy/dE3IJ26PZPWfP2TJ2Yg0vILFjl8YAeRp7YWyDqOw9SBV93gE5jdmeKX+rKZpcYurPPWfgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733499176; c=relaxed/simple;
	bh=eZkXlPyaruX8crpL1/AvzdOvoDUQnQQd9zI2il3C2w0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sBUtu3HxsArSga0ANv824IN2frvFyip+bJo6lHmrLzBt5RLSIpfJSrcQQuPB2RDGyc7ipV2ghzclxsOIwT2zhTBCFdfHvPEAwM6p0IlT7R7vOTvA6HVaQS9IZV7us20FgT9pIhmHetwXg8im7iWaeVSck0pHJtczE1c25VnSUK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vBCtfh4r; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4349dea3e0dso2366905e9.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 07:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733499172; x=1734103972; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wCQZHcMvRi9iQ8s0t6z5HpqVIJgC7kyG4M3HNIWuLDA=;
        b=vBCtfh4rQgorFxs9yXcTCF/HRTqGDKw1EUDT5CddPYfz8d8lIaSHZnpIc4zUWSjPK6
         Wae+qZJGJrBWHxq+4sQb78yZkbqXyXuVcJ9R4OoFf0Cf4Ew4GnEzZslTKP/Olif2vJau
         50uMINJQ4EMI435cS1O+6izbdcPoClv7qy6ohkwGs93r13v6hIU02h1fXsql6oJygDvT
         H6ZjSqUYXpFVCraQldqi6JmyzqEzTdXfpUdUSJb3bKHkMMAQyXxd4zTSQCYkCD0FVaWy
         GfK4AAkELA8fWCLKlK+Ozd13drszArwjZBQbCpV1Uo3VKbzWJ25asdkVp10BGctcagJX
         kdGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733499172; x=1734103972;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wCQZHcMvRi9iQ8s0t6z5HpqVIJgC7kyG4M3HNIWuLDA=;
        b=lAYbm/AQvHS0L0mjQkk8hWpJeTrtE8Fs2SxuDUgQMpprZLS9BJAww1LWSOeYQXZDqK
         rmpNebAUHe4FI58HtUSCDc/xjjw9LLYffCJ23ew57bI+vtarBqvq1DsU0cN5kuJNaj01
         pDMCfObGcK0xPlA4x5f04iufwfuHZEEo7Hci0Tc+3IwtG33+Ao2Fn3OD9Texr+JaCYQs
         o76PMVP/EH3jWiAuE/Z7Tu/rMLgOWSb5H35emnIhleb2oZ0qAJfgjewUmkaTsyBa8rwP
         pry8lixgk8wOulaTpKelI42B5awt5/SoWeAqKEAqP0BBmWIvy+0XVl6C79COpSMuHZ8b
         ebRw==
X-Forwarded-Encrypted: i=1; AJvYcCWzofzph8Rf3jD2vVv+xrxfmcv2pMYJkQMvQplCVghF+vgzI/XP7ouZtQN83ECKFaC+QlModqgqyhOP@vger.kernel.org
X-Gm-Message-State: AOJu0YwYihK5Yrabz7LO4KpOt6ywZm8DO01v1MM+0ZAkXWHpf+RmNydx
	+69Y4EiG7NlCcFUOAfAwFdIjVowrNemucBY65V6rH5Ptm4vKQq+2+70b1bWJaos=
X-Gm-Gg: ASbGncuZZFJEF7Nu/v/b3TuvF08BSzNa0uJEEgMoraL6vIL0vvNpUHobSeKbHnPSnkQ
	Hn2w8yM1J8cwDV5pGaQKOsKeN+Z+EmAyGgL6ay7+X16lZkC3veGKEw3+KT4S3q6+iPUFZ/aL3/Z
	Bwcn53HGeemdFL5jlBQhynNA8mGE4k1Nz0+9Q0VfxqTmBiv25a8F77/4/rmxtWBYG61A8UJ5VKY
	ulM1vfccarwzJU+rFJOk5S+GF+d+lQZSEjhavX8AwhXshrugCpMKWHdiXn2jQEJfg==
X-Google-Smtp-Source: AGHT+IETVZzXLvgDfNBKBtAiHy4A8nXWIBfY5wvIQr/9uMqFwRXZfIifox3UKttKKBdXgsszZh4ljg==
X-Received: by 2002:a05:600c:3b10:b0:42c:b9c8:2ba9 with SMTP id 5b1f17b1804b1-434dded7235mr12657805e9.6.1733499172353;
        Fri, 06 Dec 2024 07:32:52 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434da113580sm61158035e9.29.2024.12.06.07.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Dec 2024 07:32:51 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 06 Dec 2024 16:32:26 +0100
Subject: [PATCH 02/19] arm64: dts: qcom: sm8350: Fix CDSP memory base and
 length
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241206-dts-qcom-cdsp-mpss-base-address-v1-2-2f349e4d5a63@linaro.org>
References: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
In-Reply-To: <20241206-dts-qcom-cdsp-mpss-base-address-v1-0-2f349e4d5a63@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Luca Weiss <luca.weiss@fairphone.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=7882;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=eZkXlPyaruX8crpL1/AvzdOvoDUQnQQd9zI2il3C2w0=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnUxkOxMrudnhfM48tTmd0twXsbBXcFk4QaDhD4
 DskwcJKeZSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ1MZDgAKCRDBN2bmhouD
 12KjD/wMXzbb5JKfBH/byjIDNo3QiCjxi03k2ZTPP0DsgvqYAf6LvrMQ7gbAYqMdeZs1gzfq7JZ
 KPr2DfVBo9TiZOg4JS9QEo3OomYS7mQ8fkXqu9bSrFrhY9YOzdSvNfU0YhtOOp+CQxK0dNYiAG3
 uuL0zsv30GbWAGbrL4qKsCKWK7jlyfe8NlMs4qmoX7MN1Scpsc9/VS6vGGOdvSKe2EVfMzfC0Kn
 XGtYlcrtnJw9S4VipjdxT8Sdw71UC8CMqDJFQhsTqlnKVhjIaTn0+rcqID02i8vxVfbVPuF/xVJ
 C66JO42//fEQb+ko7uRz7HUq9dLdHlDJfB405xiy/Ol60ruwY0zJMK+34j2i/O06pUPKLrwRh8M
 k90y3ipoyT6S60e+6JenDaPb2Cm5hnX7xsVIk0FlWFheSLmpIfLDFyiIWl18HnPWUO0L7H+5pSd
 GWSSBjY4wH8mtKmCXp9ysdjO8kgyhaMkiAXh78KsxqWjQwmFC1g5VXZnUQlPgdTIO0t0bGhw/ro
 MWXyclx8yBO21IFTcQ5MrewVZnUit2zVfZEPysES3xx5gcd9RPhHqSoA38REXBGUC4/EHv82FH5
 awPoSFIy2Ep85r4Pw848GSk60FVNh8ayT6e1gJFMUypwZ4E4ygtn32uvrQTGCMYRsShDU5yNzvV
 0A5UXxty5eWN8hg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

The address space in CDSP PAS (Peripheral Authentication Service)
remoteproc node should point to the QDSP PUB address space
(QDSP6...SS_PUB): 0x0a30_0000 with length of 0x10000.  0x9890_0000,
value used so far, was copied from downstream DTS, is in the middle of
RAM/DDR space and downstream DTS describes the PIL loader, which is a
bit different interface.  Datasheet says that one of the main CDSP
address spaces is 0x0980_0000, which is oddly similar to 0x9890_0000,
but quite different.

Assume existing value (thus downstream DTS) is not really describing the
intended CDSP PAS region.

Correct the base address and length, which also moves the node to
different place to keep things sorted by unit address.  The diff looks
big, but only the unit address and "reg" property were changed.  This
should have no functional impact on Linux users, because PAS loader does
not use this address space at all.

Fixes: 177fcf0aeda2 ("arm64: dts: qcom: sm8350: Add remoteprocs")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 218 +++++++++++++++++------------------
 1 file changed, 109 insertions(+), 109 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5fae676af3a3da21066d01092b6b24fbc4ae4a40..2a62405c0c9eff959abc4cee57753a8b1545c9bf 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2496,6 +2496,115 @@ compute_noc: interconnect@a0c0000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		cdsp: remoteproc@a300000 {
+			compatible = "qcom,sm8350-cdsp-pas";
+			reg = <0x0 0x0a300000 0x0 0x10000>;
+
+			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 1 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 2 IRQ_TYPE_EDGE_RISING>,
+					      <&smp2p_cdsp_in 3 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "wdog", "fatal", "ready",
+					  "handover", "stop-ack";
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>;
+			clock-names = "xo";
+
+			power-domains = <&rpmhpd RPMHPD_CX>,
+					<&rpmhpd RPMHPD_MXC>;
+			power-domain-names = "cx", "mxc";
+
+			interconnects = <&compute_noc MASTER_CDSP_PROC 0 &mc_virt SLAVE_EBI1 0>;
+
+			memory-region = <&pil_cdsp_mem>;
+
+			qcom,qmp = <&aoss_qmp>;
+
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
+
+				label = "cdsp";
+				qcom,remote-pid = <5>;
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
+						iommus = <&apps_smmu 0x2161 0x0400>,
+							 <&apps_smmu 0x1181 0x0420>;
+					};
+
+					compute-cb@2 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <2>;
+						iommus = <&apps_smmu 0x2162 0x0400>,
+							 <&apps_smmu 0x1182 0x0420>;
+					};
+
+					compute-cb@3 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <3>;
+						iommus = <&apps_smmu 0x2163 0x0400>,
+							 <&apps_smmu 0x1183 0x0420>;
+					};
+
+					compute-cb@4 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <4>;
+						iommus = <&apps_smmu 0x2164 0x0400>,
+							 <&apps_smmu 0x1184 0x0420>;
+					};
+
+					compute-cb@5 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <5>;
+						iommus = <&apps_smmu 0x2165 0x0400>,
+							 <&apps_smmu 0x1185 0x0420>;
+					};
+
+					compute-cb@6 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <6>;
+						iommus = <&apps_smmu 0x2166 0x0400>,
+							 <&apps_smmu 0x1186 0x0420>;
+					};
+
+					compute-cb@7 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <7>;
+						iommus = <&apps_smmu 0x2167 0x0400>,
+							 <&apps_smmu 0x1187 0x0420>;
+					};
+
+					compute-cb@8 {
+						compatible = "qcom,fastrpc-compute-cb";
+						reg = <8>;
+						iommus = <&apps_smmu 0x2168 0x0400>,
+							 <&apps_smmu 0x1188 0x0420>;
+					};
+
+					/* note: secure cb9 in downstream */
+				};
+			};
+		};
+
 		usb_1: usb@a6f8800 {
 			compatible = "qcom,sm8350-dwc3", "qcom,dwc3";
 			reg = <0 0x0a6f8800 0 0x400>;
@@ -3589,115 +3698,6 @@ cpufreq_hw: cpufreq@18591000 {
 			#freq-domain-cells = <1>;
 			#clock-cells = <1>;
 		};
-
-		cdsp: remoteproc@98900000 {
-			compatible = "qcom,sm8350-cdsp-pas";
-			reg = <0 0x98900000 0 0x1400000>;
-
-			interrupts-extended = <&intc GIC_SPI 578 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp_in 0 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp_in 1 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp_in 2 IRQ_TYPE_EDGE_RISING>,
-					      <&smp2p_cdsp_in 3 IRQ_TYPE_EDGE_RISING>;
-			interrupt-names = "wdog", "fatal", "ready",
-					  "handover", "stop-ack";
-
-			clocks = <&rpmhcc RPMH_CXO_CLK>;
-			clock-names = "xo";
-
-			power-domains = <&rpmhpd RPMHPD_CX>,
-					<&rpmhpd RPMHPD_MXC>;
-			power-domain-names = "cx", "mxc";
-
-			interconnects = <&compute_noc MASTER_CDSP_PROC 0 &mc_virt SLAVE_EBI1 0>;
-
-			memory-region = <&pil_cdsp_mem>;
-
-			qcom,qmp = <&aoss_qmp>;
-
-			qcom,smem-states = <&smp2p_cdsp_out 0>;
-			qcom,smem-state-names = "stop";
-
-			status = "disabled";
-
-			glink-edge {
-				interrupts-extended = <&ipcc IPCC_CLIENT_CDSP
-							     IPCC_MPROC_SIGNAL_GLINK_QMP
-							     IRQ_TYPE_EDGE_RISING>;
-				mboxes = <&ipcc IPCC_CLIENT_CDSP
-						IPCC_MPROC_SIGNAL_GLINK_QMP>;
-
-				label = "cdsp";
-				qcom,remote-pid = <5>;
-
-				fastrpc {
-					compatible = "qcom,fastrpc";
-					qcom,glink-channels = "fastrpcglink-apps-dsp";
-					label = "cdsp";
-					qcom,non-secure-domain;
-					#address-cells = <1>;
-					#size-cells = <0>;
-
-					compute-cb@1 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <1>;
-						iommus = <&apps_smmu 0x2161 0x0400>,
-							 <&apps_smmu 0x1181 0x0420>;
-					};
-
-					compute-cb@2 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <2>;
-						iommus = <&apps_smmu 0x2162 0x0400>,
-							 <&apps_smmu 0x1182 0x0420>;
-					};
-
-					compute-cb@3 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <3>;
-						iommus = <&apps_smmu 0x2163 0x0400>,
-							 <&apps_smmu 0x1183 0x0420>;
-					};
-
-					compute-cb@4 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <4>;
-						iommus = <&apps_smmu 0x2164 0x0400>,
-							 <&apps_smmu 0x1184 0x0420>;
-					};
-
-					compute-cb@5 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <5>;
-						iommus = <&apps_smmu 0x2165 0x0400>,
-							 <&apps_smmu 0x1185 0x0420>;
-					};
-
-					compute-cb@6 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <6>;
-						iommus = <&apps_smmu 0x2166 0x0400>,
-							 <&apps_smmu 0x1186 0x0420>;
-					};
-
-					compute-cb@7 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <7>;
-						iommus = <&apps_smmu 0x2167 0x0400>,
-							 <&apps_smmu 0x1187 0x0420>;
-					};
-
-					compute-cb@8 {
-						compatible = "qcom,fastrpc-compute-cb";
-						reg = <8>;
-						iommus = <&apps_smmu 0x2168 0x0400>,
-							 <&apps_smmu 0x1188 0x0420>;
-					};
-
-					/* note: secure cb9 in downstream */
-				};
-			};
-		};
 	};
 
 	thermal_zones: thermal-zones {

-- 
2.43.0


