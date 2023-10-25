Return-Path: <devicetree+bounces-11838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 580617D6D22
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 15:32:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 834B61C208A5
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 13:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73A5227EFC;
	Wed, 25 Oct 2023 13:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="BfRBHG4C"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE2712D61E
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 13:32:03 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 143BC1BE8;
	Wed, 25 Oct 2023 06:31:47 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39PBgNuk004664;
	Wed, 25 Oct 2023 13:31:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : to : cc; s=qcppdkim1;
 bh=dYFl+B4guL/E227cT3dgqKN0vH60AC+11t3BFbj39iQ=;
 b=BfRBHG4Cbrvby8H4DK6f5tYDtecQHsH9bcegMZCDvQVMp4nbXYoO0NpIotJ1PmebaMGo
 G98owfGIE1no9sThgcDv3IdF1jc9RiHP2C37mNxMISIcBThK/77nWXr7TiQxweqHU31w
 Noa6QwAoTNdvCIIidgZMD1NzxEpLmDE4RnTp8+Ej8NWGZhTEog5MmgBamW0c7Tj7D+Da
 fTO3hWdCzzhHxwwl4bkssNZcBKuCvvfVMrn0+S4bz9u72e+/DnIspVd5Ji/DlIDANL5Y
 js+YScyPulhax7WG287evVSD6BeEeuAlMZObUL2F/oFOXMKdL1NFbMOrKKnsooTBnVXU MQ== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ty0tu0ces-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:31:43 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39PDVgFa029999
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 13:31:42 GMT
Received: from hu-kathirav-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Wed, 25 Oct 2023 06:31:39 -0700
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Date: Wed, 25 Oct 2023 19:01:25 +0530
Subject: [PATCH v2] arm64: dts: qcom: ipq9574: enable GPIO based LED
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231025-ipq9574-led-v2-1-59b2725697ad@quicinc.com>
X-B4-Tracking: v=1; b=H4sIAKwYOWUC/23MQQ6CMBCF4auQWTuGVrCUlfcwLGg7yCTaQqtEQ
 7i7lbXL/yXvWyFRZErQFitEWjhx8DnkoQA79v5GyC43yFKeRClr5GnWtarwTg4b4/reVFbb4Qz
 5MUUa+L1r1y73yOkZ4mfHF/Fb/zuLQIGmkUKR1soN5jK/2LK3Rxse0G3b9gUek1LMqAAAAA==
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698240699; l=1708;
 i=quic_kathirav@quicinc.com; s=20230906; h=from:subject:message-id;
 bh=aIf7ByeUVJVDW+2FK1qW8kZw2tJ1PyFbxMhu/7J7pLw=;
 b=H/67hhcc74lreQWLQGLzBYtiiDMucz+L3qkKqZxGyo489SZGBOU2MA8uy/Fe72cG86Vw0o9TH
 bcUWL1eReYBBD2ud2vFg2yI3X2vZYMqIpZ2amSQhgrr3lWUzZpj+FG4
X-Developer-Key: i=quic_kathirav@quicinc.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 3Hppbjaa49XBBSzXjMArpPD-4vbuZGt7
X-Proofpoint-GUID: 3Hppbjaa49XBBSzXjMArpPD-4vbuZGt7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_02,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 mlxlogscore=769
 suspectscore=0 bulkscore=0 mlxscore=0 phishscore=0 impostorscore=0
 priorityscore=1501 spamscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2310170001 definitions=main-2310250117

Add support for wlan-2g LED on GPIO64.

Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
---
Changes in v2:
- Added function and color property
- Link to v1: https://lore.kernel.org/r/20231025-ipq9574-led-v1-1-b8217e997dfb@quicinc.com
---
 arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index 49c9b6478357..91e104b0f865 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -10,6 +10,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
+#include <dt-bindings/leds/common.h>
 #include "ipq9574.dtsi"
 
 / {
@@ -51,6 +52,20 @@ button-wps {
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
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_WLAN;
+			gpios = <&tlmm 64 GPIO_ACTIVE_LOW>;
+			linux,default-trigger = "phy0tx";
+			default-state = "off";
+		};
+	};
 };
 
 &blsp1_spi0 {
@@ -117,6 +132,13 @@ gpio_keys_default: gpio-keys-default-state {
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


