Return-Path: <devicetree+bounces-224613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 500C7BC63A8
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 20:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B01A405BF9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:00:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5466128FFF6;
	Wed,  8 Oct 2025 18:00:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQ+A2mB+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0CE619E98D
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:00:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946456; cv=none; b=laf+z2RL8gFC0L3pXkiwXpCpgB/bk7NGs+yAA1jysTw+j0j+6w8lE0qTHQgS+p5zQJaUPoVIcf/wF/KQGLjI4QChL/YQwP+UFPrMTEq+GYplRWLoTMn1w6DhVEAcV3j6+m+hZ97QI2WUiCRBWPgCVA3Zi5qFePCmrDgM1fnicAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946456; c=relaxed/simple;
	bh=YR9mVNwRIhtqJCcXjKJLvo3DvwzRIPwXvURQ/PSD4SE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=MzvUcHU6ZYcwcdYyS+yu4T1U8Ar3wm/fqPBMpI6kw52Qt2nupvChwTJ/yJjOE1gNuVMR28WZr0BRWbGLlLIZlsp6c6UWT2zGYecYfc5f1F0UAGaGTi5cK1d2m5hcikM0VUtoIewX8tk2NJXHEYYT2ewOhs0qc+xuF44mP0wHPWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQ+A2mB+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598HB4LV022701
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 18:00:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=c6sxwSB2cPbvejOnAz8AKEMGpUCr9YPSYtO
	vfUms1lk=; b=nQ+A2mB+wHvFnuwM7l4cGSUzvquGgGah17EJfkiGkWsyzTQE8vH
	G6p6ex3v3FpGLQLrZCxK4OBqP9fTBbOIDdqxEsedvdzZT1MFyF3Xv17Fe9SaD60r
	oEmbdc97cQftSMbE5hKCFm++IxCX6sfXNE9Dfz0pq8e2ZrsS6+Aqvih1C5+PTAbc
	uaUHfgKG0KVAYKEPARkt/VG+503ybzWvJWPYN6wFSKdyKPBEtQJX3FL5e8+pWOP9
	37D5TCMSEnYcnlPkcm1k0SiTm4TUM6AY1pvjhqC4eZ3IraVml1ip2OCSq+6QpOuv
	7wgpnLhmoIH13MnTWznk987GEP7rPqFs8AQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kr4qw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:00:53 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-339b704e2e3so328404a91.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759946452; x=1760551252;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c6sxwSB2cPbvejOnAz8AKEMGpUCr9YPSYtOvfUms1lk=;
        b=u5qJHHM/bbjA1DX8bzG24SEuYq/keNfZUIAn/thWab+Lk2JYzpmrm2CVENusu99VFK
         6pHfoCG+uUechHXaUOnsqsvo/CtJo/x7O7BFfWhntT7WyMHJ7Sw+49NIuihqLVOZF2gl
         K6i2WlYsns/M+HaU5LspnI6f7WRsSfsm4CKCJrjvzEOP1ThPmtQFLLTJ8GT/04KI9DUB
         M9vwFj70yXb0JanUKx86Tpu1J8FiOhjl/vM/17/M1UutYFUeTMeKCpjuFEUOKLrJgfS9
         Cz+yDmJTVTZDvHi5x1bcYrGyn/Mo23IEbzvFPHf8PyKC3DHTEf7mW290hvCgOxVbKdSQ
         cZUQ==
X-Forwarded-Encrypted: i=1; AJvYcCXaETPlUagZA5sgduKPcIwjUGoTbiF4svWQUvNBHo6HYUYXRaIpHOd/Kb2l/uJ5e2U2yewgQvXuj6BA@vger.kernel.org
X-Gm-Message-State: AOJu0YyLtDeCQNJGoHWCPWxxEvaTtRH92IgieK/cNXcZNDnDNeWxsAsu
	TgIkZx1rKrDowin3iZGyJdNE30ljesNlDredAI6pLl5Zk+M4833iixSVIzxccz3+1P+OoIVqJ8B
	QEHytUaFXNSeXOIHZgwbQpe+4nzpH50A4iUiDeC/5PYOxA+bGRiEKGNG68oi9dvHp
X-Gm-Gg: ASbGnctNUDa1LLg8YNfKX89pzq4S473hUuBh4OrlbFUmsO12LrNRdqXCKO6dbLKGUFd
	q0rbZlqO0mf/4fMTy0wIyl4JlGKJhHVtLfhkCkepAjBaUqBLZJb+tLD73qJYDwqgUXSXAiLQcwt
	P6FYK5By1IFDlut/Ro1T5c9vz0cDq6qr66hFYDDanul1KUxLB9gXftgdYUOu+kGAYu13qUmq6k+
	m4JOSmxiTrwuwBFauwBnyFNTQlvzXxQma2uuGR1g82ywdBVEeMmmwzFGGw520ACFDI6rMew/myK
	DVg/BxXuzG/WZxpT5uwSvlCl9asiESo1W7y36ER0c4aoSQWVacz2NscDYXHmZERXxyJJg6O0zOu
	pjVXnE9A=
X-Received: by 2002:a17:90b:3ecb:b0:335:228c:6f24 with SMTP id 98e67ed59e1d1-33b5139a113mr5381593a91.25.1759946451805;
        Wed, 08 Oct 2025 11:00:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtuXmE9bvl4iiQJELyPDjtYw8XUq6GY/62FUo81mMJCEIxBEhIN1phf3ar7Toth9ysScmE0Q==
X-Received: by 2002:a17:90b:3ecb:b0:335:228c:6f24 with SMTP id 98e67ed59e1d1-33b5139a113mr5381544a91.25.1759946451257;
        Wed, 08 Oct 2025 11:00:51 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b5137dea8sm4137586a91.13.2025.10.08.11.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:00:50 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v2] arm64: dts: qcom: lemans-evk: Add OTG support for primary USB controller
Date: Wed,  8 Oct 2025 23:30:36 +0530
Message-Id: <20251008180036.1770735-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX6Iyz9/frKlKw
 Slzr3o7xdeVuJ3mQ5lYgjsxLmhNxhEE/88+kknilxRaZPbnRwYWoichzmZ7OcB/EbfZ/8FqCeti
 5yAj3QQhIAk32myMCK3AFQE4vappYcuqNypG8JYyklVKNBMG7MHOYeLJseYgxsFmaoPk6qtr/ES
 m8oD6qoufV/lskxNF8wWhrOxnt9AFJpVoN8Q2z8BxYaGPTPk3PIRbutNVx2Lu5Cd2V3jB0/0RtZ
 BhQc4KaL1UGBS2siND6gdf8D3r4BYuh6/C6qpiXkJTHu9OSiMbPFjVtIU3oMVC6Ch7mvAgM4SRX
 UvkkETJsnG0++x5+z9BfG2MovfcBiqN4ARSSYX4aZ0R+B4I0ydQr5Sfdt5HUa9oG8UhFW7DXfgV
 fTsAdVpgir67Pjl7awTtlYhwHkvncA==
X-Proofpoint-GUID: 2FNSQOInW9VkBppyyQ1Tz6G4I2N0RNc1
X-Proofpoint-ORIG-GUID: 2FNSQOInW9VkBppyyQ1Tz6G4I2N0RNc1
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e6a6d5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SErXUjo2BbdcLd6G0UgA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

Enable OTG support for primary USB controller on EVK Platform. Add
HD3SS3220 Type-C port controller present between Type-C port and SoC
that provides role switch notifications to controller.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Changes in v2:
Removed redundant property of dr_mode setting.
Added power-role property in connector node.

Link to driver and bindings:
https://lore.kernel.org/all/20251008175750.1770454-1-krishna.kurapati@oss.qualcomm.com/

Link to v1:
https://lore.kernel.org/all/20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 122 +++++++++++++++++++++++-
 1 file changed, 121 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f4457..e06da1682f35 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -37,6 +37,33 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector0 {
+		compatible = "usb-c-connector";
+		label = "USB0-Type-C";
+		data-role = "dual";
+		power-role = "dual";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				usb0_con_hs_ep: endpoint {
+					remote-endpoint = <&usb3_hs_ep>;
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
@@ -101,6 +128,15 @@ platform {
 		};
 	};
 
+	vbus_supply_regulator_0: vbus-supply-regulator-0 {
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
 
@@ -453,6 +489,55 @@ &gpi_dma2 {
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
+		vbus-supply = <&vbus_supply_regulator_0>;
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
+					remote-endpoint = <&usb3_role_switch>;
+				};
+			};
+		};
+	};
+};
+
 &i2c18 {
 	status = "okay";
 
@@ -718,11 +803,24 @@ wake-pins {
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
@@ -751,9 +849,31 @@ &ufs_mem_phy {
 };
 
 &usb_0 {
-	dr_mode = "peripheral";
+	usb-role-switch;
 
 	status = "okay";
+
+	ports {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		port@0 {
+			reg = <0>;
+
+			usb3_hs_ep: endpoint {
+				remote-endpoint = <&usb0_con_hs_ep>;
+			};
+		};
+
+		port@1 {
+			reg = <1>;
+
+			usb3_role_switch: endpoint {
+				remote-endpoint = <&hd3ss3220_out_ep>;
+			};
+		};
+
+	};
 };
 
 &usb_0_hsphy {
-- 
2.34.1


