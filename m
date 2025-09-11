Return-Path: <devicetree+bounces-216130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC15B53BA8
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 20:39:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B8681650DA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 18:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3D5F2DC78C;
	Thu, 11 Sep 2025 18:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RTvls2y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A2822DC76B
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757615929; cv=none; b=KX5kDA/98WLCbXJdO0e4DQ4OWhJTvTZn9N6pAOZYGfEOTiNg29YMtJWTzx4dmSylf156mW9NW+k7SHiRQILH7IIT1WEyFt/kdiXhuMEU1JklPJ5p5kVxfJ1W6zZP6M/mmqWBrQrtEY5Mw9z6Rg6cKeROu+aeYWSsWUNIbC2jGBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757615929; c=relaxed/simple;
	bh=lhy1VcmKCOKs2kPZLsxT9iR7fBKv8yka30yVgDt2xNc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Dk+6n+2JiEtKeFH3U5NLdOC3Dl5Uf09tK6DOBL8C9WJw6hsL/PCczUws/r4RUNrWsWArTaG4iiA8uZ7PmecPRhJuTzOfp7mQXJe5+z/iQowVb9eY8SfgGVFQNWhL81SPI9XtEYpi13MolMyrP5v6b9S77VYV6DucC/eYz2uB/PU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RTvls2y3; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-b03fa5c5a89so139274166b.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 11:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757615925; x=1758220725; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qTsAmyj/JOYYUEo4xJmHVkBDh83ZUOk02bdsqrMVGp4=;
        b=RTvls2y3RC6CYbhIpKY+HlSzZ7eNYiFV5/CKVNib4bkoqbDSlJ+GRlQBmQ/sfrnwOq
         2Eezevgziwl1wci9uWAi96tJ+R5CdvZPv77o370Bb2AR1eiGIJ5ZzsxE41IaqlCHw2oN
         3w6Z6ZcNxZ3iYyp5y5f5wLmw1ppFVZyNFoAz68Gx4ZA68C/0YqHbzL93I/7ie3dBy/U7
         HU3xaGGNHEWK347947mENF+GxzKFxG2rWny+D/8zMMT/ZhUzu47zZHUsufkQpTHi+/KR
         7nVtGb+ccLMsCJKEInGMViVyK8c4ABxi1Z5YVR0JutbPZy7xjUcq/5b6txroS6hD0ko4
         cbmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757615925; x=1758220725;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qTsAmyj/JOYYUEo4xJmHVkBDh83ZUOk02bdsqrMVGp4=;
        b=MyjN3wBxtPEJkNfXEkDbp4kIKCLsid6KzyihjbhsL/+BkOGVoYMOSjqibJ6+r8YdpT
         qQ0oBvfZQLbjT3NsZnfDm9QapDZyMxHf9wrogVLNQ4BbKIO3RvdM+xxak+7oagev0Lxc
         I99zJMW7KflG4OnLWa3dQ4x2wwjDCVwKeb4pJpSUoRnKsvcMv+PQZJQO030US/KoRBle
         Ll5wLS3g3XW7DzpLtRPhYV0gfINHzAWNlg7XklFMwTN0cluWy+VyWrRt9NCyvC8XbPIy
         kOoUnispprEB6eB6km5VYjemtCGs175FQshuSyNc4bTG8GQMa4eFoVYjUdveVdjvcGWR
         Z1fA==
X-Forwarded-Encrypted: i=1; AJvYcCXBDwuXIKQRg4FQDA3BbrSzsD7Ywz1tyB/ngutyqo8kHXMqAoW576Yfi7ys0IKB0ooQ7VkNqBtQQFkR@vger.kernel.org
X-Gm-Message-State: AOJu0YzuZglcdLAysxLCiF/HnX9PpNzd9U47iW7aEvXQ70E6aYpm5aWJ
	krKTfvar+47EWGKxJ0seyxIQ3f+P0TjtzI6WBP5SNE2429sDPkNUb7w8QL2fpUsTLHb5wjNcj/S
	rNnQmZKU=
X-Gm-Gg: ASbGncsmoXlnZmmd0dE+tO6tSigvYi7vD3URjky9eHlWfJSWYnb7nx4haSAQjlN+WxB
	if9EgzJ8zchtbi/GNztlCxKy+ZI6EXzHSCTc0eiPskfz4rdVRnomFMB3hgbSZMt29X6eR4/jBo4
	BylLyUl+jSLEOJGhmiqDbm4CfOp7rln46aiACdVEuu1XpQw5Vwlobe028RPFg4PPJc5PnwLm0Ov
	J+pQK/Xyfb/c2Ol8YRsVsa13SFtywDbpiYBI8oetHw+HzBXfE/zyau0m9o6c6dUvaWeKtAsePGa
	/SxJC/l12opWBk+xMN0be9DbMysl2zxW49myL3eMSf/SxNkJtnGLsgtRssd6QmNkM/1+IWQJWm6
	JhoboHpFQi+rUQYwkW7BPB1XiqD+TusUQ36IaO77fKIWI
X-Google-Smtp-Source: AGHT+IGnScMky1jaQN3N/9d83yEP3nqexnNHEitwDorxUh2bbjPeWQGbEG2JLh4duXeqBh2zoFg6XQ==
X-Received: by 2002:a17:907:e98a:b0:b07:6454:53f7 with SMTP id a640c23a62f3a-b07c3833aebmr13158866b.52.1757615924986;
        Thu, 11 Sep 2025 11:38:44 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:41:725:1e09:bed1:27ea])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b31715fdsm183999166b.49.2025.09.11.11.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 11:38:44 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Thu, 11 Sep 2025 20:38:24 +0200
Subject: [PATCH 1/4] arm64: dts: qcom: x1e80100: Add IRIS video codec
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-x1e-iris-dt-v1-1-63caf0fd202c@linaro.org>
References: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
In-Reply-To: <20250911-x1e-iris-dt-v1-0-63caf0fd202c@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>, 
 Vikash Garodia <vikash.garodia@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Add the IRIS video codec to accelerate video decoding/encoding. Copied
mostly from sm8550.dtsi, only the opp-table is slightly different for X1E.
For opp-240000000, we need to vote for a higher OPP on one of the power
domains, because the voltage requirements for the PLL and the derived
clocks differ (sm8550.dtsi has the same).

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 87 ++++++++++++++++++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index ba602eddfb54616ad38205570bc56a1f0e62c023..d6914165d055cd0c0e80541267e2671c7432799e 100644
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
+			 * enable in boards where the proper signed firmware
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


