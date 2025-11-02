Return-Path: <devicetree+bounces-234148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E1388C292DD
	for <lists+devicetree@lfdr.de>; Sun, 02 Nov 2025 17:51:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A09F3AD7C3
	for <lists+devicetree@lfdr.de>; Sun,  2 Nov 2025 16:51:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1636B299A87;
	Sun,  2 Nov 2025 16:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RAamxyzN";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TAhgusL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D0872639
	for <devicetree@vger.kernel.org>; Sun,  2 Nov 2025 16:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762102297; cv=none; b=jyQAdqNA0VEIwskZRQ9O0BYtZT+KvmaOu/nDECqbliE1shRE0ZJ5kreNaDIrTGlGZHotFVHU3v7FKN6fzDILFQnltZKatUcY//jCHWyxdXMmdhphBUsiHRl7DLr8Elt0J0S+psHYos34M+2MtCXQbZAi/z7hBb8U0afrKootd5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762102297; c=relaxed/simple;
	bh=9uM0tStFngDwtUSlKfZtaTwcdpjIXoy/QiF4EAxAfOE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Ug2GPRhVdPb/ubx4XVwi32gdGiAWS8xLr1pgA+JDZfKPpAA5B4Qrf/OIrWL9oCGsVdOgXLt8SQ7jw0Ib8Z99T8q329gVLc1IzhkEA3J9J5rBFrtDW3BQgcz+ijvkGTB0EOpGADNp4xCvyThC/57YcU4uNjWLL6mm8AxucHVpFvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RAamxyzN; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TAhgusL+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A2GfgRU591489
	for <devicetree@vger.kernel.org>; Sun, 2 Nov 2025 16:51:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=gAWYRe/oqqVPEztps6Yj94w9R+YuWWsCbrE
	va3arqTg=; b=RAamxyzN9oal6DDHDAcweAZ13f2Alal9ievRYtuKuVGlnOGw0iV
	nF05n6USJHy6evjkNSSvPJuSzxDCsq0Ejvtsi2QVTOHQM3Ul3YcbbfwbPH7E57v3
	GEaFkKQeUMkMQI9qS6plJQKBghD+FqjCSEF0oaorbT7B5uc2mgBHfPJzWn+G+Fd1
	ypoF6H6IaLdzwYHdno44aS5PHNd3S5vSWhIy9GZKtuMXg8hAUEEMaZ2hEgI3kCqK
	APkFtnB3plqB7CzpGraMY6U3lhoWg2IDIcZCXI34Q+MKk+WpSIiNqutR9wCtIZaL
	OlvhGIuAaTgLBEhQQbjekUwJmrE5izCoKVw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5ae32cfr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 16:51:34 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33da21394adso4277416a91.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 08:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762102294; x=1762707094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gAWYRe/oqqVPEztps6Yj94w9R+YuWWsCbrEva3arqTg=;
        b=TAhgusL+Lqon/BhugfS0jtUC1Oy8pwvBSmySJ43zLVqy34M14H/6hCKjMQ8lRV4+64
         X1/FfCxH5KcH+seUkB7xui9onRdqMih4MQpO7TVBirg1pU72CDH+IG8yuzxamcyJM9Em
         KpWPbDuiJ0isQQrECxJsHdEX9IHGGp4tRDZx2C5l1dyMCOmb6NEbc4wC8J60WfB4nVJH
         Z8HDKgTAIob80qhqlbyM7GlG/p6UzLtqkc2RXXl0uThr4JreRsASKwVr4UWdcAFLr0KE
         xc8kj5EjfuN4X3cXFe/j7/Ahy/NicizcU8cOWQTD4sL+iSK9oOGywjIUf8Sz0TyENk2J
         X0qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762102294; x=1762707094;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAWYRe/oqqVPEztps6Yj94w9R+YuWWsCbrEva3arqTg=;
        b=LHPB0v6gilAD5sNN+VUq2XByhI8I9i8KZDX9Bt9Npa1VoU9YQxBd+sRDLmJ6v47jDz
         5oEektJbmq3wj8Tl7URYp8lhVu2fwILNglS40Kla2XBc7yrCUd305fKZF1nApf/6mn4X
         2UdxFNqSHnmOKozcDk5hLI4vIPCUIgsAkkd6auZ4lxyIYR2+AZq4B7lt8f11yi2O7q1+
         w+i494svRSeLesyyj5Zc/C87SdI5UR/EhYQPtyrkM8hpUNj+ZrqBY76XqH0gG6vx5ZQE
         3vIp9lHLrYjfRAdeq4mxDG2IVDTBva3gUaoPpz5SEPE3Gve0gCbvWcmUDw+2zG/A7k26
         Z2uA==
X-Forwarded-Encrypted: i=1; AJvYcCXyyRDTvn2CRronQLRsT+BZJzHCPFNGXkH9vcba0snInxpuhS8KL25Q+pvGfZrFmkwajEM+s21rbDJs@vger.kernel.org
X-Gm-Message-State: AOJu0Yx08EPwg6BpjvnKYI31Dzcio2iPcrRVmQHPsOrB7DH+hcL1meSI
	iC0g1Jji9ALVYQmrfJxCTFGbvZ8XARYJzL3/OLOdR2rStdBUWI9p30xtWE2AAjsTbvyLbuXtcNm
	UKKhz3GuRuUhr6GEXPGUNMKsf+xaI2Qi5tFWsyGiJ1xPxrgxtfOSsqlsgPy3aN1mi
X-Gm-Gg: ASbGncsliNDLJ81d07Tkb8Lxcw+QKCp6o3cDuDuOePqEbhXMV/+/6su/APUJhl805K+
	pN8NLCbN01Z0wj9iFpbPwioATPf+QnNWlixiAcsp8AxSspYT08qde45dJhqZjvrqr8VUX4xQBjP
	EoEXbjUJ/0JmGjyp3AvraAI36WFA27kmwGu0guueIRJf3tS4kQEMoztAmHkAvAAernGeDmusRWl
	bBWYb4NoKTxfQeSY+sPABCvPLArqm2Oqk9zt0XtduWZ0D9oR4g8DNfmCr2B/o3Ms4E/tV+DQLa4
	J3Rus5pJYwJyfQomlLWLOCVc8ugcf2Hv4Wopo7VvW9ZU2ZjsjQjtiUgqc3mW5TxfROWq3eOI50y
	cVV3+BUdwJdls3M+RcMTUxsgfRGvpxWFtp3eE
X-Received: by 2002:a17:90b:5490:b0:33b:cbb2:31ed with SMTP id 98e67ed59e1d1-34082f057a0mr12425364a91.0.1762102293902;
        Sun, 02 Nov 2025 08:51:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNjv2nYc1CoJI1aBfHf91i+MIUBeEJL5Ob1AWJMBUPxSaAU4Oim9AeDWi83I4wS9zjrRzqpg==
X-Received: by 2002:a17:90b:5490:b0:33b:cbb2:31ed with SMTP id 98e67ed59e1d1-34082f057a0mr12425340a91.0.1762102293338;
        Sun, 02 Nov 2025 08:51:33 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3409288c7ebsm8258528a91.6.2025.11.02.08.51.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 08:51:33 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v4] arm64: dts: qcom: lemans-evk: Add OTG support for primary USB controller
Date: Sun,  2 Nov 2025 22:21:26 +0530
Message-Id: <20251102165126.2799143-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: FjG9AJWeNOacaBeXKp0oznmOKxV2J9LG
X-Proofpoint-GUID: FjG9AJWeNOacaBeXKp0oznmOKxV2J9LG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAyMDE1NiBTYWx0ZWRfXza+XIJK3kZ/M
 3opnvwCWJiDgrnDGYmVlPKh/zyuaNp9aFKx5/If0hqNfEj4t1xXM29n8B/mQhAe1tZRJkq4kzrx
 PYAD2WBu07l65evFmBRt86fLiF5QdmiIYzYzsyU2fOQojaByMHqbcrNics4SeQdV9/YYgOJTqSB
 pKacRFyPGGGju0HeNn3XX6XpZIxA8ZIuKx9JdHYpJ4Zlhz21AxlWR6uONYYFtGS4rmHdPChTLDi
 U9i9SQtqtEpZc/0YP8rfeE9HuW74s9WDfZAsz61M+V50cjwjyhShmF8e49fMAO/ZebxyR2dr48Q
 z3N+0k80uNP1OwhcOiDLGVGtrb8M4Xwq6M6XyBiVztCPY554CsvDHz66Jz6BMVZ3RDW3WdHV20l
 teDwppRSh9lJCcxM+N+TVqGQ3BRLLg==
X-Authority-Analysis: v=2.4 cv=CfUFJbrl c=1 sm=1 tr=0 ts=69078c16 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=uwWTS8yvPgOoQYSI5BYA:9
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 bulkscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511020156

Enable OTG support for primary USB controller on EVK Platform. Add
HD3SS3220 Type-C port controller present between Type-C port and SoC
that provides role switch notifications to controller.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v4:
- Moved remote endpoints to SoC file.
- Renamed vbus regulator name.
- Moved usb-role-swich property to SoC file.

Changes in v3:
- Moved "usb-role-switch" to lemans dtsi file
- Moved vbus supply to connector node

Link to v3 DT:
https://lore.kernel.org/all/20251024182138.2744861-1-krishna.kurapati@oss.qualcomm.com/

Link to v2:
https://lore.kernel.org/all/20251008180036.1770735-1-krishna.kurapati@oss.qualcomm.com/

Link to v6 bindings and driver changes:
https://lore.kernel.org/all/20251102164819.2798754-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 108 +++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  20 +++++
 2 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2..b96d667f1b40 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -38,6 +38,35 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector-0 {
+		compatible = "usb-c-connector";
+		label = "USB0-Type-C";
+		data-role = "dual";
+		power-role = "dual";
+
+		vbus-supply = <&vbus_supply_regulator_0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb0_con_hs_ep: endpoint {
+					remote-endpoint = <&usb3_0_hs_ep>;
+				};
+			};
+			port@1 {
+				reg = <1>;
+
+				usb0_con_ss_ep: endpoint {
+					remote-endpoint = <&hd3ss3220_in_ep>;
+				};
+			};
+		};
+	};
+
 	edp0-connector {
 		compatible = "dp-connector";
 		label = "EDP0";
@@ -102,6 +131,15 @@ platform {
 		};
 	};
 
+	vbus_supply_regulator_0: regulator-vbus-supply-0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_supply_0";
+		gpio = <&expander1 2 GPIO_ACTIVE_HIGH>;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		enable-active-high;
+	};
+
 	vmmc_sdc: regulator-vmmc-sdc {
 		compatible = "regulator-fixed";
 
@@ -454,6 +492,53 @@ &gpi_dma2 {
 	status = "okay";
 };
 
+&pmm8654au_2_gpios {
+	usb0_intr_state: usb0-intr-state {
+		pins = "gpio5";
+		function = "normal";
+		input-enable;
+		bias-pull-up;
+		power-source = <0>;
+	};
+};
+
+&i2c11 {
+	status = "okay";
+
+	hd3ss3220@67 {
+		compatible = "ti,hd3ss3220";
+		reg = <0x67>;
+
+		interrupts-extended = <&pmm8654au_2_gpios 5 IRQ_TYPE_EDGE_FALLING>;
+
+		id-gpios = <&tlmm 50 GPIO_ACTIVE_HIGH>;
+
+		pinctrl-0 = <&usb_id>, <&usb0_intr_state>;
+		pinctrl-names = "default";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				hd3ss3220_in_ep: endpoint {
+					remote-endpoint = <&usb0_con_ss_ep>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				hd3ss3220_out_ep: endpoint {
+					remote-endpoint = <&usb3_0_ss_ep>;
+				};
+			};
+		};
+	};
+};
+
 &i2c18 {
 	status = "okay";
 
@@ -746,11 +831,24 @@ wake-pins {
 		};
 	};
 
+	qup_i2c11_default: qup-i2c11-state {
+		pins = "gpio48", "gpio49";
+		function = "qup1_se4";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	sd_cd: sd-cd-state {
 		pins = "gpio36";
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	usb_id: usb-id-state {
+		pins = "gpio50";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {
@@ -779,11 +877,17 @@ &ufs_mem_phy {
 };
 
 &usb_0 {
-	dr_mode = "peripheral";
-
 	status = "okay";
 };
 
+&usb3_0_hs_ep {
+	remote-endpoint = <&usb0_con_hs_ep>;
+};
+
+&usb3_0_ss_ep {
+	remote-endpoint = <&hd3ss3220_out_ep>;
+};
+
 &usb_0_hsphy {
 	vdda-pll-supply = <&vreg_l7a>;
 	vdda18-supply = <&vreg_l6c>;
diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index 0b154d57ba24..5fa4a43a7350 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -4026,7 +4026,27 @@ usb_0: usb@a600000 {
 			snps,dis-u1-entry-quirk;
 			snps,dis-u2-entry-quirk;
 
+			usb-role-switch;
 			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					usb3_0_hs_ep: endpoint {
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					usb3_0_ss_ep: endpoint {
+					};
+				};
+			};
 		};
 
 		usb_1: usb@a800000 {
-- 
2.34.1


