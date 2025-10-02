Return-Path: <devicetree+bounces-223432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22917BB4B24
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 19:30:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A7F7D1630E9
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 17:30:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73C132701D8;
	Thu,  2 Oct 2025 17:29:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="czC93znZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D46B526E715
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 17:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759426198; cv=none; b=H0KIhHW9jbnkeyO4jyIaeAmK5TZRStCwsxNIfTbGQ+azCR+9znL7uY1JLikEhCJBd/XmaKRcFl6ZwUvIObpeKtFsgGDGcjzMi+BYFSGskncfT+5DKgfejws0k+0490WuNQ+DG5Sja9Koo8h4quxpOxCTe0Rm4ScT6a80AsG2lug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759426198; c=relaxed/simple;
	bh=OHoKfenkkZeUL4aEKkXWaDMS5xwa9OVcn8G+fJH/DwU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=t34kQV62a9HzQDbU4akoGEwuY0VyH76T+PxK7767xQiTelSZpHSCqsK2QveDuE8XhaAr7jYV0GqYCU12HCl1WB/vSBHpgwENcjUPBoaANiy3+Mzea9OLBo0PY5OgoZiC/5rBhhto8/klvVNy8T2yRahBKLBA3qNoGHKmpBcIbUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=czC93znZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5929SMYM006667
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 17:29:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=2K4WALy+qgmjcjsUYfMFbKUPzKV0gN6DWu3
	a+fvLGiM=; b=czC93znZd5pUxJvPY66H/uaaTFdHbaRozXM3s7YrGOyfWxWc5r5
	HI09nU6HiCYhzDwlNRJSqO4qzJJaQoMRDg07qV8/+I+z9b7YulMQ2+JluTEdeyIA
	EOJYXMPBOrEOUiR//O5T1lLu5+NVLx7WFgvmLsQU2HTxMgURGD0g+nkAh2ZO25AY
	517XueFVV1iWej4IxG7Mmj9gv4ZUlZq2jl9m4TPE9zJvMuZQsTS1OsVs7BDDyJUl
	DZZDAA+mCkFJ8jsh4PGdDiIRxXLlr5bk85aD2aT2eq/K4UJen/Rhd8n0bmIwi5F6
	iRCS1H8Gjcw76b0opwE8bQbcZY/EmXbvj3Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8pdr8sb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 17:29:56 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-33428befbbaso1812258a91.0
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 10:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759426195; x=1760030995;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2K4WALy+qgmjcjsUYfMFbKUPzKV0gN6DWu3a+fvLGiM=;
        b=bo22Os6s3eo9efeFhHIlmdF+txCioHHoaG7AlSFHkLHj1aASMc3S1ccXTRgsm8SAfc
         8zQ5qLZKCoETDEOr4A0gipoQBPby2QgWQE1ImlCO7zyuhpfoVhDu3vj6ZonIc1pdpIT3
         Ipuu+Za8+5UwDaS46Tm8txxWlaw1X50UJBOsby5hCL5QjECe0wHfwaPOTw1gUE2WYAwJ
         uN6J5kmmFMEzIIHhVQV4Q61oUPqBLR64PMLQJhJHqYbJzm25JpQCLyfgIw+DHOe4a3dW
         sNFw0wG84GjGL0NdSrpnIh1AcJXho1Z352yO7nbUZu8ApqWXxvgun8SGlSOAZgCIIVlm
         xFLw==
X-Forwarded-Encrypted: i=1; AJvYcCXMuhFRDE38ye2gbnBlhu0OFiHTOeTVmGi7qt9mkiVEd4fBACjHcIfZtienF+bSQzHlBgMnZ5vfcPzI@vger.kernel.org
X-Gm-Message-State: AOJu0YyaXMGyFu0KR7EUGaW4hJss53Pgh0x4bylOudBXSFnXl9n2PkLr
	zWvgiPWbGxGHHebV+sCQ9Ar2Fc+vPHcYr6uiXC9Trs91Wes3kJBKyeOt91p685yY6qVDlcmfmMp
	ZY4GNdLYSmjoIiCqTNc5nkLxmo9Trpuyqc+LYXeX/EQ+l2Uno6lzyAaKzv3xryxvj
X-Gm-Gg: ASbGnct0c0m5dU+QXknzby32K36S8EgvkL2uwqaTraNSv60qevvukH5KWqkU+aH/6gE
	ptF6d4IPAW41PG9midGmX9QB0ohOhY+oJFp8k+M1qk6/AY2Fqx/8TCSBkU/1KWqmKubbqhDinW7
	gxO5oguEJWAvn1aG6SLzHGxmjKv1938eokWt/SdzinmJRQ/p2+w/Qy0Jas40spdGufTOtwRCcfr
	kAlM5SVkh6wUkY5FOJ758Kan34Jii8ezSB4ZYqHhsX+k9lIslnxMmI94BT5mYsIAJn87yxWZLGD
	6/g/hPVA/A9beKikAsW2zYTL+sORM3DUmjHWAkHHzyfxxQEACftOnbeK1a8c/uQ9uacEdEnu2dR
	fwz/Gu0I=
X-Received: by 2002:a17:90b:1b0e:b0:32d:ea1c:a4e5 with SMTP id 98e67ed59e1d1-339c27408fdmr161444a91.1.1759426195189;
        Thu, 02 Oct 2025 10:29:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTWw1Wn704AZLarxwHPh5CPrR0ny524F3pzD140Nw5R/Lo81Fvo1DKRlLwaL2oOOfz/aU6zA==
X-Received: by 2002:a17:90b:1b0e:b0:32d:ea1c:a4e5 with SMTP id 98e67ed59e1d1-339c27408fdmr161427a91.1.1759426194780;
        Thu, 02 Oct 2025 10:29:54 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6099adbcbesm2384206a12.4.2025.10.02.10.29.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 10:29:54 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: lemans-evk: Add OTG support for primary USB controller
Date: Thu,  2 Oct 2025 22:59:46 +0530
Message-Id: <20251002172946.589061-1-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 4qA0HtSbe3nm5GgBsMa1TDftp8fCewJU
X-Authority-Analysis: v=2.4 cv=MYZhep/f c=1 sm=1 tr=0 ts=68deb694 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=IWPWNUkvg928VfuaY9kA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: 4qA0HtSbe3nm5GgBsMa1TDftp8fCewJU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzNiBTYWx0ZWRfXzz6N21U5XfgS
 NUgyCyUoRtdJDlhyy6Crli0zPkcZx8pGi+ptumhL4aiJltm771oFr/d+M4dgKY1M8E/rbBUTN/g
 rLznI50YBthlWwMIJFdi0F8d9y/yO6gjrNJlt5MyFEywfiFvxHGXNpKOKHJsp33mbpMP8iboww8
 6G6xouMOe3JVS/2J0bnf2aNwc2cZOjNePWK/u5yi0GwS1GcRYGjTqstbE5YrpcUS9XNTBm+5SNi
 gmfBprQgic8296bQJBpLFXfT4oMjX5c7QicJPrwdIIT3HCYHh7FvZP/UqSya9seFUe+fuojVu5C
 +P4AXOBRvzWs7qyvb0HPGDYR0XpBXeuzyv/d1OARYSJJgQZTwRLkL645VcFRAVnx/kPY09dec5n
 D1y1hlNH68qQFV+iaZB2JY1PQvdF5A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-02_06,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0 impostorscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270036

Enable OTG support for primary USB controller on EVK Platform. Add
HD3SS3220 Type-C port controller present between Type-C port and SoC
that provides role switch notifications to controller.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
Link to driver and binding changes:
https://lore.kernel.org/all/20251002172539.586538-1-krishna.kurapati@oss.qualcomm.com/

 arch/arm64/boot/dts/qcom/lemans-evk.dts | 122 +++++++++++++++++++++++-
 1 file changed, 121 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f4457..0b6d8d2d19d6 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -37,6 +37,32 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	connector0 {
+		compatible = "usb-c-connector";
+		label = "USB0-Type-C";
+		data-role = "dual";
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
@@ -101,6 +127,15 @@ platform {
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
 
@@ -453,6 +488,55 @@ &gpi_dma2 {
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
 
@@ -718,11 +802,24 @@ wake-pins {
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
@@ -751,9 +848,32 @@ &ufs_mem_phy {
 };
 
 &usb_0 {
-	dr_mode = "peripheral";
+	dr_mode = "otg";
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


