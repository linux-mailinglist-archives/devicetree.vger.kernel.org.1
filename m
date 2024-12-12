Return-Path: <devicetree+bounces-130055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 48A479EDCB2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 01:48:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3AC1B1880681
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 00:48:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F118B126BEE;
	Thu, 12 Dec 2024 00:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tQwIp+kb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E4B1096F
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 00:47:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733964461; cv=none; b=siGYrw26c0MajCe4/hN//4OoSdShI0RXQlme8YsoaLtjyOpCjCDMZrnANjTJq3bQ0Be+rJxYfyNUeEBLI/7VY+CktrS1Eq8hDyBOxAVB4noicZjkl1rFLJYVS+HdqlIPytBIzjHEmdBoxDxYAW89pbh2KpMlWnymIS00g+sHrZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733964461; c=relaxed/simple;
	bh=VcDfr3Lt5hKiAoZ77NfWvgJsCBvmpceDpK8hpp98ByU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VJ4yHVjQMPdRDVCn49phFQc2YxX2OA2AjlPpbrhQAryszkMIyVGZG+uQLnu5e+/3aIRQxlcsAjiWO565NVttDZcRJ12jYE52Ru1DbOwa0zg8v7YPPLj2+RoNKWGdieuRwybVkN3SSW3SWZSSCuHnjPAu7RFcqBLmKvOML2QOADE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tQwIp+kb; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3863494591bso7728f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 16:47:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733964458; x=1734569258; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZTnPl8WPue9GkuOReiVApSbo/qq5drlSaoqa3s2cxF8=;
        b=tQwIp+kbumVPMzylzw/vxzPNAOhBfHQezg8Cqu9SEOVVeGu7LGNnM7PBGo/e/yCyUu
         EZli5Q0bCgjI3+j55mW+yWQJKlSYEV+MDkPuhpzogwPQ8SMIIAly/QR5jgG5F08uUbdV
         BGBz8uwWlJKw6RwwIrApLqYAoQGvcx1dxz0g0tGSAj6E1opXZAzIyQ1jrGX92I4vLiOr
         mNaG8K3nrZwYlpr50WuJe5MvrcSjlAPwV1cIvU9/AE7pHQkxxoxPsSts2bZj6chSKeYr
         48WvXT/MFMXK/LM7FHfvCpam0DGRw6WnNv8VWgb93fb1faNQanyr/N/o5j9vRfRrjHgb
         CEdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733964458; x=1734569258;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZTnPl8WPue9GkuOReiVApSbo/qq5drlSaoqa3s2cxF8=;
        b=NkN41MUstyqQv+wpz4sNg0cGzi+slqObvVWSKAwMFItiR+/2d6a1A9ispo+CNLnBxu
         4R7PLHDDkREwm3N0ZfPihjIZGW8o6wspqE4+ewoLLOuinVU4SviDbgPxkPJAvX5ycjyo
         kSo4BtqRJbIfHqU3L+z4BguKd2j0dfCUUb/I3k1Cj9JKt/mTlOYtRFRU5hTCtPt8kPN/
         srpcu+840PuuSnPmcwC9kstzFA0Cy6f6z/VTBgBX9MRJahm7a+89fNSxzjoxtzlWngnW
         /Zij7FCz7E39K4MJOITEoi16mXwIQCLM+CcndpC+lQ3wuK/ClJl//kyZPpjtkA9ajAzh
         VESw==
X-Forwarded-Encrypted: i=1; AJvYcCX32y7NckzUA5JG+Rkb9O3/0ax44l4z+MEAfTmraTTautiE2B/Zm3nHHhqXeMIjZCkf64wkKT8+VY88@vger.kernel.org
X-Gm-Message-State: AOJu0YxQi5/FXrz3Y+fmlOSVqs1S0kUzV+1nVqcRWCt3ugsZQLr67QHL
	PtwBnb1mK8nGeiZiRB5BWp35LHhwTTooCheiS2htJ7JLhrZrMhdUSr/0yqd7//s=
X-Gm-Gg: ASbGncvkCD1Ce/ZV92x83MUuyybPAe/kiG3cD4W7ci+dVPJvhqRCz3SFPzDa524V8rZ
	HiKwxXdvfZmI3vuydpw+XT9B7fSE9rP2+frqLbKR4MElehH+ZK+QpLEzo/LMUHyt/bDf7aCPT+O
	T+vFatoMyd/0WpyX7OscJKZCO9PhuRdmu1W+M8lplEwK5rfMQEQnbV6GeeCCl2IJo1SGubV4jCz
	jeDYOmdrpl66UWvpM1kp/D0KECmVj00Wf03B/Tcnp6CWUIXIJ3NtR6f/yMzlgQPPzdAFnI3
X-Google-Smtp-Source: AGHT+IF6am6lPKI4xcRMhy4NNTcsJOmsxM27JO68aKAsm4zvbgjSuu3xAU+7ShZcg3XMlMDenV4jVw==
X-Received: by 2002:a5d:584c:0:b0:382:4115:1ccb with SMTP id ffacd0b85a97d-3864ce49607mr4242548f8f.7.1733964458438;
        Wed, 11 Dec 2024 16:47:38 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387824a4ef4sm2459660f8f.39.2024.12.11.16.47.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 16:47:37 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: broonie@kernel.org,
	konradybcio@kernel.org,
	konrad.dybcio@oss.qualcomm.com,
	andersson@kernel.org,
	srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com,
	lgirdwood@gmail.com,
	perex@perex.cz,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dmitry.baryshkov@linaro.org,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 04/14] arm64: dts: qcom: sm6115: add LPASS devices
Date: Thu, 12 Dec 2024 00:47:17 +0000
Message-ID: <20241212004727.2903846-5-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241212004727.2903846-1-alexey.klimov@linaro.org>
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The rxmacro, txmacro, vamacro, soundwire nodes, lpass clock
controllers are required to support audio playback and
audio capture on sm6115 and its derivatives.

Cc: Konrad Dybcio <konradybcio@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Co-developed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 132 +++++++++++++++++++++++++++
 1 file changed, 132 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index df2241237b26..9412cbe23d88 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -2687,6 +2687,138 @@ funnel_apss1_in: endpoint {
 			};
 		};
 
+		rxmacro: codec@a600000 {
+			compatible = "qcom,sm6115-lpass-rx-macro";
+			reg = <0x0 0xa600000 0x0 0x1000>;
+
+			clocks = <&q6afecc LPASS_CLK_ID_RX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_RX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&vamacro>;
+			clock-names = "mclk",
+				      "npl",
+				      "dcodec",
+				      "fsgen";
+			assigned-clocks = <&q6afecc LPASS_CLK_ID_RX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+					  <&q6afecc LPASS_CLK_ID_RX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <22579200>,
+					       <22579200>;
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		swr1: soundwire@a610000 {
+			compatible = "qcom,soundwire-v1.6.0";
+			reg = <0x0 0x0a610000 0x0 0x2000>;
+			interrupts = <GIC_SPI 297 IRQ_TYPE_LEVEL_HIGH>;
+
+			clocks = <&rxmacro>;
+			clock-names = "iface";
+
+			resets = <&lpass_audiocc 0>;
+			reset-names = "swr_audio_cgcr";
+
+			label = "RX";
+			qcom,din-ports = <0>;
+			qcom,dout-ports = <5>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x1f 0x1f 0x07 0x00>;
+			qcom,ports-offset1 =		/bits/ 8 <0x00 0x00 0x0b 0x01 0x00>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x0b 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0x03 0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0x06 0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0x01 0x07 0x04 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0x00 0x01 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff 0xff 0x00>;
+			qcom,ports-lane-control =	/bits/ 8 <0x01 0x00 0x00 0x00 0x00>;
+
+			#sound-dai-cells = <1>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
+		txmacro: codec@a620000 {
+			compatible = "qcom,sm6115-lpass-tx-macro";
+			reg = <0x0 0x0a620000 0x0 0x1000>;
+
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&vamacro>;
+			clock-names = "mclk",
+				      "npl",
+				      "dcodec",
+				      "fsgen";
+			assigned-clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+					  <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>,
+					       <19200000>;
+			#clock-cells = <0>;
+			clock-output-names = "mclk";
+			#sound-dai-cells = <1>;
+		};
+
+		lpass_audiocc: clock-controller@a6a9000 {
+			compatible = "qcom,sm6115-lpassaudiocc";
+			reg = <0x0 0x0a6a9000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
+		vamacro: codec@a730000 {
+			compatible = "qcom,sm6115-lpass-va-macro";
+			reg = <0x0 0x0a730000 0x0 0x1000>;
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "mclk",
+				      "dcodec",
+				      "npl";
+			assigned-clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+					  <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			assigned-clock-rates = <19200000>,
+					       <19200000>;
+			#clock-cells = <0>;
+			clock-output-names = "fsgen";
+			#sound-dai-cells = <1>;
+		};
+
+		swr0: soundwire@a740000 {
+			compatible = "qcom,soundwire-v1.6.0";
+			reg = <0x0 0x0a740000 0x0 0x2000>;
+			interrupts = <GIC_SPI 296 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&txmacro>;
+			clock-names = "iface";
+
+			resets = <&lpasscc 0>;
+			reset-names = "swr_audio_cgcr";
+
+			label = "VA_TX";
+			qcom,din-ports = <3>;
+			qcom,dout-ports = <0>;
+
+			qcom,ports-sinterval-low =	/bits/ 8 <0x03 0x03 0x03>;
+			qcom,ports-offset1 =		/bits/ 8 <0x01 0x02 0x01>;
+			qcom,ports-offset2 =		/bits/ 8 <0x00 0x00 0x00>;
+			qcom,ports-hstart =		/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-hstop =		/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-word-length =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-block-pack-mode =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-block-group-count =	/bits/ 8 <0xff 0xff 0xff>;
+			qcom,ports-lane-control =	/bits/ 8 <0x00 0x00 0x00>;
+
+			#sound-dai-cells = <1>;
+			#address-cells = <2>;
+			#size-cells = <0>;
+		};
+
+		lpasscc: clock-controller@a7ec000 {
+			compatible = "qcom,sm6115-lpasscc";
+			reg = <0x0 0x0a7ec000 0x0 0x1000>;
+			#reset-cells = <1>;
+		};
+
 		remoteproc_adsp: remoteproc@ab00000 {
 			compatible = "qcom,sm6115-adsp-pas";
 			reg = <0x0 0x0ab00000 0x0 0x100>;
-- 
2.45.2


