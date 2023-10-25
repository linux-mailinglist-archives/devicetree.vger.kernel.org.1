Return-Path: <devicetree+bounces-11530-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D74A57D61FD
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5B74CB20E71
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 06:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A9BA14294;
	Wed, 25 Oct 2023 06:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="p6gW9Xup"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D131C8836
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 06:59:16 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45CFD10E3;
	Tue, 24 Oct 2023 23:59:10 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39P5RBUe028836;
	Wed, 25 Oct 2023 06:59:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : to : cc; s=qcppdkim1;
 bh=jm0AJIxNIWSTRPzcxpYZ/riAaWPsV8BfuXd+7+yNIyg=;
 b=p6gW9XupXl4DcoIx3suqeHfmCI7JF+7WjzJzJjsUOeOdXePdtYO1+z6mQgA+3S//lGEM
 HdIssf0ssFopKUf8wMLGuvjYjWQZoBjh2I/M4P51cdOhKcuVyyQ2h+kpHKC5NtVMGlbk
 tYbc3sVNOf0WhnUfw9/x22k4vb3WJcHteOrjhQU1KWJ17hfZaAax4PiQOPFtgVCBBhNO
 cFonJMBt2jbe9PUB0HGYTTXQccHQlpkUqFljGSr0AytWRQEU5bckZ1UQBo22WmHvCxq7
 +AhCplcX6GfPtQCG8xtThOoHOB4b+yX+v7g+ZTrXJOGjxJK7+WdC2CmZzPx3B5QP3Hs8 kA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3txngvgw0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 06:59:05 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39P6x4tc020845
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 06:59:04 GMT
Received: from hu-kathirav-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Tue, 24 Oct 2023 23:59:00 -0700
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Date: Wed, 25 Oct 2023 12:28:52 +0530
Subject: [PATCH] arm64: dts: qcom: ipq9574: enable GPIO based LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231025-ipq9574-led-v1-1-b8217e997dfb@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAKu8OGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDAyNT3cyCQktTcxPdnNQUXYuklMTEJJNky+Q0MyWgjoKi1LTMCrBp0bG
 1tQCkZF65XQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Kathiravan Thirumoorthy
	<quic_kathirav@quicinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698217140; l=1313;
 i=quic_kathirav@quicinc.com; s=20230906; h=from:subject:message-id;
 bh=KUfPgtsNmQYnugjmK4hBeNKZ3ac7DYy6rwDzb4WmbB8=;
 b=KveIsJSWyP2/SkuzdEbSBd649/FyCjcBU4vsUVHXosFeV2ILRYiueJMFpy8WpRm+BljruhRQ9
 P980Cpt2FFCBqWOYoMTQWthHU98MOF+cVjf8Z7bA/OsuSZgQL9PkcR/
X-Developer-Key: i=quic_kathirav@quicinc.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: zJqCDf0XRVD3V8sNs2cw9SyllmTEVxBz
X-Proofpoint-ORIG-GUID: zJqCDf0XRVD3V8sNs2cw9SyllmTEVxBz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 spamscore=0
 bulkscore=0 mlxlogscore=520 impostorscore=0 mlxscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310250059

Add support for wlan-2g LED on GPIO64.

Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
---
 arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index 49c9b6478357..b6f90da31778 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -51,6 +51,18 @@ button-wps {
 			debounce-interval = <60>;
 		};
 	};
+
+	leds {
+		compatible = "gpio-leds";
+		pinctrl-0 = <&gpio_leds_default>;
+		pinctrl-names = "default";
+
+		led-0 {
+			gpios = <&tlmm 64 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tx";
+			default-state = "off";
+		};
+	};
 };
 
 &blsp1_spi0 {
@@ -117,6 +129,13 @@ gpio_keys_default: gpio-keys-default-state {
 		drive-strength = <8>;
 		bias-pull-up;
 	};
+
+	gpio_leds_default: gpio-leds-default-state {
+		pins = "gpio64";
+		function = "gpio";
+		drive-strength = <8>;
+		bias-pull-up;
+	};
 };
 
 &usb_0_dwc3 {

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231025-ipq9574-led-8bdaab4c9cf6

Best regards,
-- 
Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>


