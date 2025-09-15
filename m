Return-Path: <devicetree+bounces-217332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B300B5758A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:07:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 12FA316F41F
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:07:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D74C2FB979;
	Mon, 15 Sep 2025 10:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t0vNi0dT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BFAF2FB60A
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757930794; cv=none; b=N1tje2T/tWFNTbQ1u2GW7G7UkDbsvG3dUTuITj84vJNdBTuAJMjDb4/A5DQ2M/w4wo/X70rdOgRqKCUmKtP94N66M/MyF9GgEYYNb3GzCKvTfS9ZdIwgFQf4Qlj4HHQMNIec28iuEvxb3K9LPAVs3WNQqb1rtUpUaWPMrgvwBTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757930794; c=relaxed/simple;
	bh=+ShsOxehK3vPfQPw/3o19HKvX/iAMIQV9RlAhLMzWts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C53HNKWEG51N9HEEJ+EpNonzMidpxl4lpB0FvOK+b8Ex1vWwD3OhUZ/u44dvwJidyFwgXCArhbZKGdksvCLkC6CfspQPb3MPW0E7+pU6yYe0iCpKStX8RscVYzloYUzE+UTL/ynmWCgbg8d0cOWQ50zEMDd3waDKmsUvidlCEFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t0vNi0dT; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-45f29dd8490so12772955e9.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:06:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757930789; x=1758535589; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K2ZKUn+jq389hHmKRqBQRwd4GDWbmAFrDZJ0P/TID0k=;
        b=t0vNi0dTSvUT0p9EF92DxaFhINnHfNh91WVXQcv/ZaRKcoxtyKNb270nxMKPAI9CVE
         6J8ZNk3CDAocxOp0YNkPzDb9GkRXc89m7DSVofrdcMyRA4l3PIHqGsXlNHIgMZFF6MJf
         g8OgpX7DrthrCm/HR0k39SDroEV8mBodJRA1Yi9OjCZBShJKQOnFXkKz3i42az9O7GLh
         P7rSG8nfC+uaE3iiCuILHv5ngDyHB+Emfn017RYrskYkVurl0v+GyH58zyHy/UJ3ybOO
         KW2sluPge0wW2uVs92QF5ISYDS3c7n1OfbKJKEib+ywRkpdhvnagJqL2JV2QlV0Mzb4Z
         dAgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757930789; x=1758535589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K2ZKUn+jq389hHmKRqBQRwd4GDWbmAFrDZJ0P/TID0k=;
        b=v8KxFh7sehkauxTIV8NZJeZg7U/uokBe937Jq1DJPxtRSltPFz3gS/m5Stsd+2hH7C
         8q8QYhY0oDxLsWD8FRCU8avJXpcMdEvzS8jM4Jp4tJKQIGfPjBT+Rs/nREDGaS+vzebk
         mjMuj5GB1KSVoYuWNjDWDHLiiWYvagTGBPjgeRdpfwN9RqG8+1j3vGtXkNPYC9plGodb
         +LP0PN8iB33yy89som7pEKGo4kqhIh9h9Z8otWFWd9WoFDZOr1ALF4VhWHjRXBjlGdw1
         lrzRmC61Da3En/8YbRsneXyxmweZhoYHpYbOaB5LxqwKiI9y0mzYg2Jawkjisk5/KiVG
         WqLQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbO0gSpRqDcRXGjS7SVglUyNO9HhCdliEzbcHXuVoaXe6PO3uygSZibriDt73lBov+XDFcjXjnkqv/@vger.kernel.org
X-Gm-Message-State: AOJu0YysDG/dwcU5ngmuBkTzdG8w8n3fCwdXRFIry9UphVc6kSnuJJA0
	NMic9ZVqo/DPjWIfrGhnH36Uidu/OoD+YHyQMJcBVs1HkjWdcDZ/SQkujZ1HpSNOfgQ=
X-Gm-Gg: ASbGnctuB9g3mj9AHYe6nyqE0romGEw+UyzI6ycaEFbbF1gxHAJiULiUkyM87VZ0jXY
	1iwB9gmhwoJIwtaREThvCOe1gW1ncjTre8bRPspIA8BOc+KWga4Qq+7qrXqwQDltJnBxccWpjD/
	d3a1bF5lTKk/EmX1QHWCxXZv6/t1N71n/en4pD5d6GlsJH4+C0soUxwp0hHyRfZUo2F/fB5Op32
	bOYF3uZh3SdpkoBU/yyTrX+29vUHPfIe2NsQiFUmUQ+qSrJU3TuUKOpzaw8YYr1ftOQONDbOElD
	mrN3MaArEoG4ZxJOlW0yydjUdoY4hlgIwJZw+93geOB897yRTHHXKc7ePdNs0WpP9Hs7RNULjL+
	cgx0KSL16lrvcYqba9Ful65JgKGdru5EgS+tg1548vjkQ8w==
X-Google-Smtp-Source: AGHT+IFHeDqwo3IJZLE9ouwCOgN9pOpAvjMVBWaO9LQYeV0ooL5G9kS3F+W9S5ouSFSHfB9iUA813g==
X-Received: by 2002:a05:6000:4203:b0:3ea:63d:44c6 with SMTP id ffacd0b85a97d-3ea063d4b22mr3522864f8f.35.1757930788783;
        Mon, 15 Sep 2025 03:06:28 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:eee1:5042:e713:2e9a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd4cdsm17209127f8f.37.2025.09.15.03.06.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:06:28 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Mon, 15 Sep 2025 12:06:13 +0200
Subject: [PATCH v2 2/9] arm64: dts: qcom: x1e80100: Add IRIS video codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250915-x1e-iris-dt-v2-2-1f928de08fd4@linaro.org>
References: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
In-Reply-To: <20250915-x1e-iris-dt-v2-0-1f928de08fd4@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Alexey Klimov <alexey.klimov@linaro.org>, 
 Anthony Ruhier <aruhier@mailbox.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>
X-Mailer: b4 0.14.2

Add the IRIS video codec to accelerate video decoding/encoding. Copied
mostly from sm8550.dtsi, only the opp-table is slightly different for X1E.
For opp-240000000, we need to vote for a higher OPP on one of the power
domains, because the voltage requirements for the PLL and the derived
clocks differ (sm8550.dtsi has the same).

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Tested-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org> # x1e Inspiron 14p
Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED
Tested-by: Anthony Ruhier <aruhier@mailbox.org> # Lenovo Slim 7x
Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 87 ++++++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index ba602eddfb54616ad38205570bc56a1f0e62c023..a6305077f150d59ef8fdbd13fe3ba03d43646c91 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5234,6 +5234,93 @@ usb_1_ss1_dwc3_ss: endpoint {
 			};
 		};
 
+		iris: video-codec@aa00000 {
+			compatible = "qcom,x1e80100-iris", "qcom,sm8550-iris";
+
+			reg = <0 0x0aa00000 0 0xf0000>;
+			interrupts = <GIC_SPI 174 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&videocc VIDEO_CC_MVS0C_GDSC>,
+					<&videocc VIDEO_CC_MVS0_GDSC>,
+					<&rpmhpd RPMHPD_MXC>,
+					<&rpmhpd RPMHPD_MMCX>;
+			power-domain-names = "venus",
+					     "vcodec0",
+					     "mxc",
+					     "mmcx";
+			operating-points-v2 = <&iris_opp_table>;
+
+			clocks = <&gcc GCC_VIDEO_AXI0_CLK>,
+				 <&videocc VIDEO_CC_MVS0C_CLK>,
+				 <&videocc VIDEO_CC_MVS0_CLK>;
+			clock-names = "iface",
+				      "core",
+				      "vcodec0_core";
+
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &config_noc SLAVE_VENUS_CFG QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&mmss_noc MASTER_VIDEO QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
+			interconnect-names = "cpu-cfg",
+					     "video-mem";
+
+			memory-region = <&video_mem>;
+
+			resets = <&gcc GCC_VIDEO_AXI0_CLK_ARES>;
+			reset-names = "bus";
+
+			iommus = <&apps_smmu 0x1940 0>,
+				 <&apps_smmu 0x1947 0>;
+			dma-coherent;
+
+			/*
+			 * IRIS firmware is signed by vendors, only
+			 * enable on boards where the proper signed firmware
+			 * is available.
+			 */
+			status = "disabled";
+
+			iris_opp_table: opp-table {
+				compatible = "operating-points-v2";
+
+				opp-192000000 {
+					opp-hz = /bits/ 64 <192000000>;
+					required-opps = <&rpmhpd_opp_low_svs_d1>,
+							<&rpmhpd_opp_low_svs_d1>;
+				};
+
+				opp-240000000 {
+					opp-hz = /bits/ 64 <240000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_low_svs>;
+				};
+
+				opp-338000000 {
+					opp-hz = /bits/ 64 <338000000>;
+					required-opps = <&rpmhpd_opp_svs>,
+							<&rpmhpd_opp_svs>;
+				};
+
+				opp-366000000 {
+					opp-hz = /bits/ 64 <366000000>;
+					required-opps = <&rpmhpd_opp_svs_l1>,
+							<&rpmhpd_opp_svs_l1>;
+				};
+
+				opp-444000000 {
+					opp-hz = /bits/ 64 <444000000>;
+					required-opps = <&rpmhpd_opp_nom>,
+							<&rpmhpd_opp_nom>;
+				};
+
+				opp-481000000 {
+					opp-hz = /bits/ 64 <481000000>;
+					required-opps = <&rpmhpd_opp_turbo>,
+							<&rpmhpd_opp_turbo>;
+				};
+			};
+		};
+
 		videocc: clock-controller@aaf0000 {
 			compatible = "qcom,x1e80100-videocc";
 			reg = <0 0x0aaf0000 0 0x10000>;

-- 
2.50.1


