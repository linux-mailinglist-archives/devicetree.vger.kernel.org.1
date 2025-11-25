Return-Path: <devicetree+bounces-241948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A9457C84A03
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 12:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 03C1434E18F
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 11:04:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 297D23148D7;
	Tue, 25 Nov 2025 11:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NQC8kSvC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="byvYEyg7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B153148DC
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:04:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764068674; cv=none; b=H9b4Pza7Cuju3hlNDy3W2lBjmk26Gg6MconEL0bPcN+8Q7LEoMM/U0mKiXcgzSwlg0dAV9G53DPSyK/Ih+XGCFbNTXKJyPp3vYD1ipY0b94L15xWwzubRdbbsjxV1k20yFu3+UE8cQ56GDGACDXqivSmInzEc53GA6KIOth8BOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764068674; c=relaxed/simple;
	bh=C81a/S3qeVxwX6KustEahqnVYvCWUXx6O6Bf1Z6iLNY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CO0m+cWyyD4jW3HkkeclY7yvDKsKpOgTgw8Hs/uNH2BuQb4SLrgr4xhBFIX0Ndo8qM3/UDsuprCW4B8Bjaz+OO56zHRcStV5X4RbUTWSZGhYO+lvNsoN1r1dRPr2T6khFlP+NqJ96WoAhBPPFeQfoTLZ2APR0PZl077TBGmb3OA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NQC8kSvC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=byvYEyg7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AP9s8Qi1979710
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:04:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=bmZbL0K9SXCLEqNMiJE9LPy8YU2GVu0eUFh
	/6bJOQSo=; b=NQC8kSvC75nSPKwdBeTy3SZexncii4PXqifsXLnjsRLZymCDV+/
	OC4eNm5K65EAjsBQcSTDLp5HwIOhdM9BL8UrXNBf7gVbvzf98pNCbja6P1wYn1i4
	Wb7XObbfLq/uEq3mjtzYeBbccj/7rq/YMrO/SiDrTUE3jMnqNp24TCZ9BKTgty9l
	hHybtX+cnj8DNUPTOUHHCtlEwsEmadPhtKcb+rQjlCwvCiD0cW3+fdBdEPBQuYy1
	p7wWk6R9Yv3ic8zh+i33/sAtPEO1TE2m2+/QmWbMA25OGt8bgRyYrwc9fwwZyWpm
	zOumqn90MUUcm2I2lrQ5UnSaGVZlrADTFPg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4amw9gtcs5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 11:04:30 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b82c2c2ca2so12073616b3a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 03:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764068670; x=1764673470; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bmZbL0K9SXCLEqNMiJE9LPy8YU2GVu0eUFh/6bJOQSo=;
        b=byvYEyg75emCeRX0oI+8Z/EoAm7u/1F+pLigAV+lVoi1ucsnS/CPADg7eliGZtgP0C
         BHg7OeK4Ywuu9EbPAev6ngH0eeMGrA46VKEHuVgTDUqRksUSskvDOalV3q9qe+0wzoKF
         E2FkBoul+XDFFqw9l9Yfaiz5rapUOha+uPqGE+S3UEkkN6OAVdrkTFgqxym4Eo5FXMCS
         mDaimmDCz1JRJ9UW7lBPQaAiMqxK/bFsxSVIjgVUvjmjTWTU6TUQKQqsm/reRgiBrpeN
         4hHU42YofTaoNJ2KjQ4K9rxc4IyOmgWUV5/6O3RJiSSA1Mv3sxf9arLWedlXtSR+FpOE
         2UbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764068670; x=1764673470;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bmZbL0K9SXCLEqNMiJE9LPy8YU2GVu0eUFh/6bJOQSo=;
        b=ljVBkNoCh7f/jf85/HpeqiDfpmCbjvo1EOspcaZJDcYRpRQS31Dg2FhNVWB090+qhJ
         Ee00HwaUuhx/WTfkN0uMRmzVwXJnTs6ewzgE+TOoHlR439DzjQSrSRBgZUSd8imqJ5S1
         fR6mfyKoSknGZgzLKb/CipIsFIz78LhuDxxLVJwVQsYKLFUPmhtoIyvjk2AEjIj8es8R
         eA34/LXJHzWBc1nro0zO4D2eZVIIniKEjvnP0ZySkhot0BYe8Ul/2YvlM4ixct4dXv5f
         q27ZaaIAaXfqxkEYnHmXouSlzkdP8+4+ku8swiHOHxL3YdcWi8ZhCiFgTGqA8SUB/Phw
         IBxg==
X-Forwarded-Encrypted: i=1; AJvYcCVH0gS2VNfE07RGyssiWR4NIg2lFhwH/9vqVa9MBxbDw4pXvTWRTD9yjcZ+eqlXh0Q1L/72GXPIO/RK@vger.kernel.org
X-Gm-Message-State: AOJu0YyDRaD9XqDF55l6u99qYdKP61MftThaFXvTPwMXppolmSzDA6hr
	lwnLhETvmEcH3Ca2jHC23RbcGnU48KAnq5fp96ErvcmHpaXr2EiSwNrTem4T9zQU3y7TEJUHAJO
	dcjuly2/AAozbvggi0QGNOoy1hxfT2cqvYy+jrekxYSEzX+FhP4kT6/hxKACY+Xw2
X-Gm-Gg: ASbGnctV+Eaj3UVyStvtW4qyN8SzBRn8IawaRNrRlItf1U6/GCtOBrkcWbuSyLed98C
	q8pfvhLouI/aDSUxFVlJ6wmrKGxLqeyMBpK9JmpEYH6cVMPvpjj1JW79zSuMXBwWNT0u15BnTjG
	glsVFAzwmzNnBnYlJWJki96M97HCsKI1r1N9B8x0ZdM2K/3JKtyJLMhqo1lu9Zk4V9hnGIEDtbn
	N+QzPb8RaVyWRgeRot0W9dx3wzCIn+CqQcKK52cA6tQX3SssAPoG7nfFVO56y6GXBc7JX+lvAIk
	ZNTYRTvTYm28Cn9GYxo0TOE95yOeuIHZf+8ulCjAvDaO5npaBAVTYwKoUcujt9o2vUrnGaDcSzF
	F4tE+GwWWq1tFgVDuvWU0rYoPFL37MhgkfZ6jAnGQ87EavB8=
X-Received: by 2002:a05:6a20:6a09:b0:34f:99ce:4c31 with SMTP id adf61e73a8af0-36150f2bcaemr16473001637.46.1764068669896;
        Tue, 25 Nov 2025 03:04:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG3EgxkznJ2A0mFcbO/HmImQrEPdXFN7U30098LSRHBrbhyt6jlvdhm0VqwSSni0qCbeEcI2A==
X-Received: by 2002:a05:6a20:6a09:b0:34f:99ce:4c31 with SMTP id adf61e73a8af0-36150f2bcaemr16472963637.46.1764068669393;
        Tue, 25 Nov 2025 03:04:29 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bd75def6314sm15893495a12.7.2025.11.25.03.04.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 03:04:28 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v5] arm64: dts: qcom: lemans-evk: Add OTG support for primary USB controller
Date: Tue, 25 Nov 2025 16:34:20 +0530
Message-Id: <20251125110420.2192971-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI1MDA4OSBTYWx0ZWRfX3rIADXFSJcc9
 qM9OLYH+dXHTV5Gj+Di2PdaBqWJe2EOxNtzrLLG+QHSdLD0awt7VJVjuDMP6OCGdbhtc3zew/B7
 lCv2te9kOa4SbjRwXrlZMJn9RFlMVjV+8c6eEomdL0PRXXjRvJ5PNDzGJ/Grff/C5ZF7npAU5bJ
 ooCaOVzvf3j5betc8k2KygAgBBk4hzqITJIMSoOvnKvjyAvMEhwVR6Kf5UKBcv4jLtD0+3O8lSC
 IGf1KRec6cngiK8c4G0+Zr+bhTnnT4OwU3KcYA358tJBgp9d+xvGVYyvHxE2WjEkCQidC1hcQ4j
 GlPNmZDVGT7ojcjlqb3S/blmK8o/RzmmEcVFrVVpvmzm2LD6qaVYwCLo3CZ7quksuHFevpmswxL
 TE/dhKVyfvlehviT/xfXdrudaLJVKQ==
X-Authority-Analysis: v=2.4 cv=H53WAuYi c=1 sm=1 tr=0 ts=69258d3e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7f_fPzOtc9ZKcCOMuPUA:9
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: HGfdMVPLWYVp42dm3nXpMpIinQB2zacL
X-Proofpoint-GUID: HGfdMVPLWYVp42dm3nXpMpIinQB2zacL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-24_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511250089

Enable OTG support for primary USB controller on EVK Platform. Add
HD3SS3220 Type-C port controller present between Type-C port and SoC
that provides role switch notifications to controller.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v5:
- Re-organised pmic gpio node to maintain alphanumeric order

Link to v4:
https://lore.kernel.org/all/20251102165126.2799143-1-krishna.kurapati@oss.qualcomm.com/

Changes in v4:
- Moved remote endpoints to SoC file.
- Renamed vbus regulator name.
- Moved usb-role-swich property to SoC file.

Link to v3:
https://lore.kernel.org/all/20251024182138.2744861-1-krishna.kurapati@oss.qualcomm.com/

Changes in v3:
- Moved "usb-role-switch" to lemans dtsi file
- Moved vbus supply to connector node

Link to v2:
https://lore.kernel.org/all/20251008180036.1770735-1-krishna.kurapati@oss.qualcomm.com/

Changes in v2:
- Removed redundant property of dr_mode setting.
- Added power-role property in connector node.

Link to v1:
https://lore.kernel.org/all/20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 108 +++++++++++++++++++++++-
 arch/arm64/boot/dts/qcom/lemans.dtsi    |  20 +++++
 2 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b40fa203e4a2..3d73fc2a893e 100644
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
 
@@ -454,6 +492,43 @@ &gpi_dma2 {
 	status = "okay";
 };
 
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
 
@@ -607,6 +682,16 @@ &pmm8654au_0_pon_resin {
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
 &qup_i2c19_default {
 	drive-strength = <2>;
 	bias-pull-up;
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


