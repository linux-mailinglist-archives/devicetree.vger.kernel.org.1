Return-Path: <devicetree+bounces-249938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ED364CE50BD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 14:41:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D13D13017675
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 13:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8496B27F00A;
	Sun, 28 Dec 2025 13:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QJLnQWfo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VH6E9/y9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAA811991CB
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766929254; cv=none; b=dw5ghwZO636tB70Qg4837eezNu/1u00/TxAok6hBMIUt+Kjalrc3lzOIQVp9HvkAsRKyZvW5vZ4bAtZ7aWPqeCopdyh9wmRoKC94r3tqiZYIOdZoHHapNeMYqGeUeshgS7bA8n1hfWCuGPWDaOh4wBLCwgnL95jnY9DIfaWvZnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766929254; c=relaxed/simple;
	bh=k/Njpnze+nuPh5icPHVzKpQj6jHIxAHjt/lh9sETAFE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ih/4dKNMaG7WJ694qS/D/TPar+ghh1nG9hSAi2fNsW1AlxYmjlBXiFEsllElxkqwcLej1NzFCbKbT2OUMg9UjZQoU4LiNm9CCUoDB6qgO7Nrm4+ho0y3XsENN/psDgKr2JvOocWd8BCF4W3KtwFMjtN5RZ8SPC6QLawHBAGeE1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QJLnQWfo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VH6E9/y9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BSALfjW2264427
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	duQBS9ohOlFNm6IRwEMoGkwoQ+1zip/dwqR8/8pxt2o=; b=QJLnQWfou/82bkfm
	l20YR2hxdJ1a8cEKKrfKONeTqVJL8S1j1t8gs0MM7IyzFkch4h/CSf9usZwavyuS
	s+rwpZ7GigAII3YZkygGD9YODw7vk/cGB33l/S6badbNRoB3ksLrXGcp7LGsJYps
	2/EQ5tQfJiPFsDY074yF+1G+PmTtvX210XWEsuW0djZC7iaSrl5zJ7ca+1+Nl6w1
	hHPs7OhLQ27JAzYl5j8raE4C10hVlxp2QxZ64gS/AC/wfqC80BVo+NFC+LzDGjhU
	r1Lj5jJ3qzaKyIFICmj5XnUBpJW0hN9NX8EJY6D9w64JKCRwvL+qrND5PuotL/d0
	ZNRhPQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba7p1t8p9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 13:40:52 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34abc9af332so2703779a91.3
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 05:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766929251; x=1767534051; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duQBS9ohOlFNm6IRwEMoGkwoQ+1zip/dwqR8/8pxt2o=;
        b=VH6E9/y9CufXcU2HwloVqfudd4E/b/u9KiwMRqocw81Q+IhzHoXfRlh4KqO4bPyqSd
         Xzq/3qEMWLzkwIiHVjLbCy/M3tlachKjWigM3F/7TxnI0LGUqvq/whMnontQElipspZY
         RIR+RJDl5m1zRh2ZvRER8Or549tG2wBQ7l8NYmKnnto+jgHkUpuQQfZ52Q07lUW9Tg7j
         bKXhDoCrsl5HDqNSqrrY0oF6MDXgp78weNJWaPAT+L8+YZzMfGOy3iWs03BItMU98Yax
         PWGSai5OmmnLabmhz6GoG1j23NHahDgTcQFCcIR1Fp8Bv3DUgfrlWbHyOKrtwIvo07Rh
         5FPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766929251; x=1767534051;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=duQBS9ohOlFNm6IRwEMoGkwoQ+1zip/dwqR8/8pxt2o=;
        b=mCFFg2HN1v1HAz8rq18D/BLp1b+W9O/8p0WDZcmEFGisgnXagFeUWRq6HmwvJKGAwX
         GuC5XTHE+RqswaHNFWEtI1SFDrBWtAfxpbYf+ZEat18q7pMY5x2n13x3f/+jOeEKZm/z
         Z7xWR9RkT0hXK6wMGVGFBiviEJbfwmy2ob+lINQLl5sREr39/6CEL25/DUbjQk8LKdWn
         x69aClgIjCOEFQu1YCL6QvsAhqGul0HKCT0wwHGtaLdmDuYjvosZEih0GvehBi46wDRB
         kwKJ0BJHANm01EahD2P1LdU7tIdYwGMl508MUHFqoSNyggUOWGI8MYcgXcuXWrv6W0oC
         3dHQ==
X-Forwarded-Encrypted: i=1; AJvYcCW55rT1DeWNAvV+nK/isRCT01OPpKwm9AdEnn2pINFMXHVFiC2aX8wQZMBDSMMHTvXw9ynkIP0xY1LL@vger.kernel.org
X-Gm-Message-State: AOJu0YzqnuMXTSD9+2uXGKhkMt/7mzCiv7NEV/e6/a587DbWS3Xksmrf
	9y9xRiSevpiCHKLbfN9PEMfv23brGYJWr6hyIVeEzNgl/MAf6QkCXXMm7k95Pe54TBAgDJcBnqo
	LeORrMVyf0yF7E8kBcXfmWqD6+xyPcv1oVEzLj3Sbuxf8/FOCZwUapcwqI2aIxaao
X-Gm-Gg: AY/fxX4R1B5CpWvLkPfKNO2FJap2iiRKX/vgT9ln4s2Uy4sZkixszvb4T2VVWRAEzBi
	ZBL/A4VCRPUYjTWv02bs8mjnKQK8a1A2Zs70CMpGjbpKr1anbGQfLJr8jtnh92C3aOJRIM6+ZCC
	5r4Lz79xA2Y0btp482F6rRC+97fK0NiQ+5FIQpTg3XU9a7jTJEknLAr8HnV3OImtC3jH17BS3mY
	z9MeOeSPGNraQ+W+ZOWRhIoB7E6McMUeJ4CWws9H4s9HwoPqUAmmzFgqwsLU1v2sZdYaYZdoNJQ
	XYENQoGEQQCuLAmyKoj8P+6pmiA0GCNvDq6OX4N++O9xsscTtBdkc1WEfcuTGqvt2OIP5Nh6v13
	4h2PTS4GA0GPGa3TVa+okLG7tZ0qWLMWzezW1r00+wpRk1qb7YghIYsiAgXiMOyXV11yUovFqVH
	Bqd9QbYkm2hPdAx3u5L7qRj1OSbvsaJg==
X-Received: by 2002:a05:6a20:2443:b0:35d:fce2:cb28 with SMTP id adf61e73a8af0-376aacfc080mr20160679637.8.1766929251545;
        Sun, 28 Dec 2025 05:40:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHWBl2/iVTYcL4cfKwWO2mEURuD4SYkiw+XZEZa0EvXxOeG4sQ88pn0lTKI8UK2xr3YqCZfow==
X-Received: by 2002:a05:6a20:2443:b0:35d:fce2:cb28 with SMTP id adf61e73a8af0-376aacfc080mr20160670637.8.1766929251125;
        Sun, 28 Dec 2025 05:40:51 -0800 (PST)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7c14747csm22981950a12.27.2025.12.28.05.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Dec 2025 05:40:50 -0800 (PST)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Sun, 28 Dec 2025 19:10:38 +0530
Subject: [PATCH v3 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge with
 displayport
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251228-lt8713sx-bridge-linux-for-next-v3-1-3f77ad84d7d1@oss.qualcomm.com>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
In-Reply-To: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766929244; l=3707;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=k/Njpnze+nuPh5icPHVzKpQj6jHIxAHjt/lh9sETAFE=;
 b=LM6+QhctANW1EUfU3fVQMuqrt/kwFFFzx8uHt3NulFQctPBniN85dOwrrEVot2nfDqPGMdXhA
 vgHJI3R/1wGDsGW2ag5K5Azfte7E1kJSU5Rsh9P8GuiFEWfBHJiqD77
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-ORIG-GUID: q1oVFctDRWF8g_R2Oy-pFKRz-IIhDKUB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI4MDEyNiBTYWx0ZWRfXzDHIdIiOaKyJ
 sIn5DWA4e2D3ULUQLjFn+sVDkpelPAcamfuup0aioaS3Z4fS7zdnxs9IIY+Pkyw3OxhFonrjfZF
 yaKMC8CRVwz3uwjK4UILujgGKL7GKRCz63+eQLpLdcNfTH6Cvw7deo/K4myNvYPOF/QVEPdFT+r
 XumC39lplsBaIAfIwBZMTQF61z2WuJB9qT6qypn2o4AimkSxoJnQhF4LCSl23L9Wp/eIcs0vwWU
 Z8q969POAG1n2Dol+k0sXuL5eLQwwBAWmD/cQYipa7OE/kWMUge1hp569HSP6qGlfwrAgghLwwf
 E74GVorL3tnl4g9tE6sJvlOxHhANFHXAonL2i0rJ+BNagW5If7xSMMNPT2nv9UAcpEKamqJZtEj
 ZKHKx+RmqdZDHvFS1EUQliuuL2YSjDOJtk8ueHZpiO1UcJLQwBlD/9efupGRWjOwCdFdm7nOZRu
 o1XVBgKDK4/2U5bxZvg==
X-Proofpoint-GUID: q1oVFctDRWF8g_R2Oy-pFKRz-IIhDKUB
X-Authority-Analysis: v=2.4 cv=PKMCOPqC c=1 sm=1 tr=0 ts=69513364 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Ov8SyQ6_pS9HVYgZQC4A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-28_05,2025-12-26_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512280126

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
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
 2 files changed, 95 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index bb35893da73d..262e7403f81a 100644
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
@@ -317,6 +341,42 @@ &gpu_zap_shader {
 	firmware-name = "qcom/qcs8300/a623_zap.mbn";
 };
 
+&i2c0 {
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
@@ -396,10 +456,39 @@ expander6: gpio@3e {
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
 
+&qup_i2c0_data_clk {
+	drive-strength = <2>;
+	bias-pull-up;
+};
+
 &qupv3_id_0 {
 	firmware-name = "qcom/qcs8300/qupv3fw.elf";
 	status = "okay";
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


