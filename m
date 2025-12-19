Return-Path: <devicetree+bounces-248172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E03F3CCF968
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 12:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2FFA30680F9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 11:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1B6D318120;
	Fri, 19 Dec 2025 11:33:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRgUk0Ba";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="COBF2tCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA9E31813A
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766143999; cv=none; b=IZ00fhH798Uxrm3WQb63jUGFJYFJABZrwztMiYZr+KjfHY0VLNq08WyQTUPEBrQTueVdudaykZWURbm56q8a+tQlsfJ5jGsdPw0T0ZrZijFgvOWBZUNlYh6B+X7flN+zC2tx17reu3UExMWaIKzvwsxoePznr/ogh+wwIbJcr6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766143999; c=relaxed/simple;
	bh=rnHU/nRmdO9wlQ7vG9ynN3lPWFYGY9vBOvKwQNU/1Qs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AnkZo1vdp/0m2Wfv8FMTTGtI3lzW9p3mzJMm36he+S/EDEWgOXjroqxuyxGUrisD6b49RFRWONCKhk5STbrp+y2Z8/fgL51JFJE4hyadM2xgySW2avd22TkBhnNQ4Gl7pyYWoDrSRcoVPunwkBOSziObC0Q4/TRIDts0zMVt1SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRgUk0Ba; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=COBF2tCr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cCk84101209
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t3MQ2sjuSEVNzPt4n9bFCfdfNupVB5JynUQIY+wKyIg=; b=IRgUk0BaL98YRHdw
	FEZMn9WbkwO6u+fO6tIPOl4iCjGehponWnnuBx5fjse+IALS2oNo58eQgIxJ6MXh
	3Vxzt8llTx6j4CA/jgDHFwvFAtAEDSEl0VqteGPtNW2V+Tf70Lj4B75xfFQYi8HF
	2HhNq75uxxNPCp27W+ds/UN6WfbdJv6GednuNnkdxifSzvA2Cfpvd3mxHOHKmdyR
	kLTDosjLcYyvU124T5lACu9EM4hDhBlt37EcaYVA2hMu4P2a2KlS4PgKLvYPd6fs
	7Y+f6Qp7APYe+m8xxK+koJyH/wPBiu4z4m9y1zHcF7ZtrMMsqgLH9Tfpd+yjblNi
	TOrI/w==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2c2fx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 11:33:17 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7ab60fec3bcso540714b3a.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 03:33:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766143996; x=1766748796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t3MQ2sjuSEVNzPt4n9bFCfdfNupVB5JynUQIY+wKyIg=;
        b=COBF2tCr3y1wnkM/4BOaHG4pITs3XSc2WSQ9lLqgzgSID3dcbF/p7kYvEpRdQc9Bfs
         nL3HajYFh1Q32/wOwamHtS0m+U4t7dbHqsHX2P0KPPlL/455+nYeFoJQ6dTmW5hTy+2M
         PkeEJAVD788P+n0TAyD0O09c6WTVdZLTPRAXBZW6Q1v89p9mDe1EKmlzb0gIkF+XKCTS
         gIp6meiE+8YwnXV+G2i0Qt6wtLoHRH06OCoO8h/Vk/M4Z3m4ffPRuqLQxI2DuEUJnPoM
         Z3FHDnQR4Ou/T4kGEX4Bhjq6hHcyQIYiX74eiWab967YpUdV8qwcwMin1XLU1bELMe9T
         VIEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766143996; x=1766748796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t3MQ2sjuSEVNzPt4n9bFCfdfNupVB5JynUQIY+wKyIg=;
        b=SKktdybdLk9WpeT/AF7x3RkzHiQKVldG8sMyUqNrSdNPBPiozXrbCB4zSljjSwyaZC
         9E0doIP8okbz3C5xoL0I2PnlQ0xxOO9Pp+yCyTO94vhlEr9hJ1snmtwyZqVw+BX4as8m
         TLNytI+FGkt7NRiFwUcJm+NV5LI3IEIQkNFryOhV10bkvIVxC2aMNPYo9bntA4dlJF0a
         +0ou81XDlW82aTVrFgP4+D63B19DnyVQk50/qLd4dthrfKPFIA5J0XGx4MLlosjUyn8Q
         0Umn0CyZeXhgSiad3TWWyPz2FQbbkseGMPWwXV+wfltNiaoEpzMIGdqfjTkcd5NlRolS
         SLig==
X-Forwarded-Encrypted: i=1; AJvYcCUVIN0QXTuqZSAX4W5bMTEibxQnBK6JddwvutAzayMt22KRN2hEKNyZJWeTEIuB8wTW5T9zru5NEDuA@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl+2wFaIVeMibHejIvto0Zrc/B6Zyehn19B6MWq1cytxHcuE59
	UJcMTqrHR96G3SEzjzEAvh48wPrSIXSEma5Dc5fZur9XKaoxSMcecA6QwwfIYc1F/FNZQxNsZom
	NFAMFxVlAu+yq6mIQ7kE5RpcDTtNHJr7lcROR1C7yaOPKg4Q5g129MpHcyo5WbXZ5Q8vReY/3
X-Gm-Gg: AY/fxX7b6lnVvx+DskO+m1FgOhIZa5ExvzE5qTFhIJLVMYOAFC7VFogb65kP1el47Mt
	HCB9mtATlmEQFOSGD1mXi3XfCwNfVJEYHIq3J0EsXmGMs5V2i5FcKsc0feJw38ECyK+MtckhaW5
	4s8i9YBiP8s/9tkaMEsAf6rdFffIbtGqsIMb2NalkpfEvNcArDNOuG7Vnft6J+zvYUZe5SPeMpC
	tl6WUjGytPJERopp9yrxiLfm63geHki25wfiTfQax4zOE69Mq1pgcoYVxaPnI9r4coph1SUYvNc
	WSLbI1q6OKAtSfa56v7HtpzLC52cjfVR7cSPH/xJ6WkK5lDdziNW3CCJXEkk9LNZW8Jvyn4BR98
	21nbtZLJt0IHElVBWE1TjoCUbptXbwVikdizcYCJbq7EDCG5cBy6JmksftmRXUkDioeKaSja53K
	O05j+/I8m/7HeZ5Ygrn97eYz77juu7+w==
X-Received: by 2002:a05:6a00:2e26:b0:7a2:6ad5:a4eb with SMTP id d2e1a72fcca58-7ff66484282mr1813071b3a.4.1766143996095;
        Fri, 19 Dec 2025 03:33:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGkHU9/mt8BYffC+HXaReSby5YQ0/QJfVZttHFrhz0DrTLrbsytSeUBma+Xp/N6vZjtoWspDQ==
X-Received: by 2002:a05:6a00:2e26:b0:7a2:6ad5:a4eb with SMTP id d2e1a72fcca58-7ff66484282mr1813046b3a.4.1766143995540;
        Fri, 19 Dec 2025 03:33:15 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7b423d86sm2181867b3a.26.2025.12.19.03.33.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 03:33:15 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 17:02:10 +0530
Subject: [PATCH v2 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-lt8713sx-bridge-linux-for-next-v2-1-2e53f5490eb9@oss.qualcomm.com>
References: <20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com>
In-Reply-To: <20251219-lt8713sx-bridge-linux-for-next-v2-0-2e53f5490eb9@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766143989; l=3938;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=rnHU/nRmdO9wlQ7vG9ynN3lPWFYGY9vBOvKwQNU/1Qs=;
 b=JdTQLjkH5e1Ls27aJcWOyBhVZB6MKY88VjCUM6KGQrqRXEAGWewUq2ezThj+ERlaXRBSkrUwp
 +H0mhpPBHuPDEVV2SxxBh2xAtVXHWg+s8EnzwD47dinU/XDD9RcMYWO
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA5NSBTYWx0ZWRfXxN8EG9LoKsLF
 JwF+pDliTwxG4bTiO6aGHXIVQGPt9csU+jfrDuLBIS1PP14wcsq8ufRMMR9lu71NnAFnstSrmBv
 g/97fSvvz3R7yiY9dlsEc69Qm+/D+HiC25zAgOIzYiKGOf8+dUvkTFnr6VfyvBN7CZS5RJp9VXe
 kelrYUOPRyGnW9QTPstzZLIphZJfbpGkZElVbhCdOCYqaTt0ZWbGhJtsIJKK1uc9x7D3jGVduU1
 dla52l1JCTzmutUBkkFhpvWOaAm+9lV2zP2ogydnHL+QkonEbdrXYmw2TrcQ6d8EyfXIFRJQSaq
 cgJMQPcwDMo7ZPPQfqEL9VtRdRMJ4Cl85fFju1rFbEiwMBXRkMlVlH8yy4FAvPRl9mvLsP4IF6Y
 ncJfnaB7s4g2FGkf+pixzGUNKK+WpK0ww+Pl/JzSXngh/NVIQXZASKDupvs06QPlBH88voTlKnJ
 k7KPtUhxVwmKPxhreAA==
X-Authority-Analysis: v=2.4 cv=dOmrWeZb c=1 sm=1 tr=0 ts=694537fd cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ov8SyQ6_pS9HVYgZQC4A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: b7PV8Bu84EwVsZA_wVcyG51CwRFRX6cY
X-Proofpoint-GUID: b7PV8Bu84EwVsZA_wVcyG51CwRFRX6cY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_03,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 malwarescore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512190095

Monaco-evk has LT8713sx which act as DP to 3 DP output
converter. Edp PHY from monaco soc is connected to lt8713sx
as input and output of lt8713sx is connected to 3 mini DP ports.

Two ports are available in mainboard and one port
is available on Mezz board.

lt8713sx is connected to soc over i2c0 and with reset gpio
connected to pin6 of ioexpander5.

Enable the edp nodes from monaco and enable lontium lt8713sx
bridge node.

Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 94 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
 2 files changed, 100 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..eb321867f1de 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -32,6 +32,30 @@ dmic: audio-codec-0 {
 		num-channels = <1>;
 	};
 
+	dp-connector0 {
+		compatible = "dp-connector";
+		label = "DP";
+		type = "mini";
+
+		port {
+			dp0_connector_in: endpoint {
+				remote-endpoint = <&lt8713sx_dp0_out>;
+			};
+		};
+	};
+
+	dp-connector1 {
+		compatible = "dp-connector";
+		label = "DP";
+		type = "mini";
+
+		port {
+			dp1_connector_in: endpoint {
+				remote-endpoint = <&lt8713sx_dp1_out>;
+			};
+		};
+	};
+
 	max98357a: audio-codec-1 {
 		compatible = "maxim,max98357a";
 		#sound-dai-cells = <0>;
@@ -317,6 +341,45 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcs8300/a623_zap.mbn";
 };
 
+&i2c0 {
+	pinctrl-0 = <&qup_i2c0_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+
+	bridge@4f {
+		compatible = "lontium,lt8713sx";
+		reg = <0x4f>;
+		reset-gpios = <&expander5 6 GPIO_ACTIVE_LOW>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				lt8713sx_dp_in: endpoint {
+					remote-endpoint = <&mdss_dp0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				lt8713sx_dp0_out: endpoint {
+					remote-endpoint = <&dp0_connector_in>;
+				};
+			};
+
+			port@2 {
+				reg = <2>;
+				lt8713sx_dp1_out: endpoint {
+					remote-endpoint = <&dp1_connector_in>;
+				};
+			};
+		};
+	};
+};
+
 &i2c1 {
 	pinctrl-0 = <&qup_i2c1_default>;
 	pinctrl-names = "default";
@@ -396,6 +459,30 @@ expander6: gpio@3e {
 	};
 };
 
+&mdss {
+	status = "okay";
+};
+
+&mdss_dp0 {
+	pinctrl-0 = <&dp_hot_plug_det>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&mdss_dp0_out {
+	data-lanes = <0 1 2 3>;
+	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
+	remote-endpoint = <&lt8713sx_dp_in>;
+};
+
+&mdss_dp0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l4a>;
+
+	status = "okay";
+};
+
 &iris {
 	status = "okay";
 };
@@ -451,6 +538,13 @@ ethernet0_mdio: ethernet0-mdio-pins {
 		};
 	};
 
+	qup_i2c0_default: qup-i2c0-state {
+		pins = "gpio17", "gpio18";
+		function = "qup0_se0";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	qup_i2c1_default: qup-i2c1-state {
 		pins = "gpio19", "gpio20";
 		function = "qup0_se1";
diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/qcom/monaco.dtsi
index e44fd5c33816..7f6c681fb1b4 100644
--- a/arch/arm64/boot/dts/qcom/monaco.dtsi
+++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
@@ -5117,6 +5117,12 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;
 
+			dp_hot_plug_det: dp-hot-plug-det-state {
+				pins = "gpio94";
+				function = "edp0_hot";
+				bias-disable;
+			};
+
 			hs0_mi2s_active: hs0-mi2s-active-state {
 				pins = "gpio106", "gpio107", "gpio108", "gpio109";
 				function = "hs0_mi2s";

-- 
2.34.1


