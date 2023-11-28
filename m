Return-Path: <devicetree+bounces-19548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1597FB4B8
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 09:47:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F33C1C2104D
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 08:47:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 834181A29B;
	Tue, 28 Nov 2023 08:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CunShK0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FE1E183;
	Tue, 28 Nov 2023 00:46:59 -0800 (PST)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AS4L0nq007027;
	Tue, 28 Nov 2023 08:46:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=from : to : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding; s=qcppdkim1;
 bh=zITepasFwqWP6GIPuQ+Tbv+pAWBZy65O1vkCS7skhyM=;
 b=CunShK0w70mOuHNF2Vk91KAlgdF/KOMy++30KHhU/qbtBdONeZQ0VRQBEdeWby7JTQ7p
 JJQtMmjLF0gk+qxtElN1jKl8hjxhQDkQlrpeQlxzILj3EeUmkc4/nl6AFe5/FBXCy48j
 Goy+L7C0WID2AxkSkYuVHBCNgHW9nTDXGTxkT7gzwZdefKsLOw9vX7Q0UNp8eRX7h+db
 MMbwFiKz28Hdfy+VRXuYZHJcq3P/+ZYQ6y2gqHt0qM/97IjuwP7qdhAyeOb+8Bn021e9
 D6E/ARWV29TOEpr/4FMUd+BaOImpNS+SKPoE6vPSaIMQptnYx1qmHmh4JoiRO1AW6nG3 lA== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3umt4qjvar-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 08:46:54 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 3AS8knkI010193;
	Tue, 28 Nov 2023 08:46:49 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3uka0kw92m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 08:46:49 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 3AS8kn3T010174;
	Tue, 28 Nov 2023 08:46:49 GMT
Received: from hu-devc-blr-u22-a.qualcomm.com (hu-varada-blr.qualcomm.com [10.190.111.7])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTPS id 3AS8knk2010170
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 28 Nov 2023 08:46:49 +0000
Received: by hu-devc-blr-u22-a.qualcomm.com (Postfix, from userid 85203)
	id 4C107416F4; Tue, 28 Nov 2023 14:16:48 +0530 (+0530)
From: Varadarajan Narayanan <varada@hu-varada-blr.qualcomm.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        dmitry.baryshkov@linaro.org, quic_varada@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] arm64: dts: qcom: ipq9574: Fix USB 'vdda-pll-supply'
Date: Tue, 28 Nov 2023 14:16:46 +0530
Message-Id: <f98bbf0a515236709d999010f08c8f2470a31209.1701160842.git.varada@hu-varada-blr.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1701160842.git.varada@hu-varada-blr.qualcomm.com>
References: <cover.1701160842.git.varada@hu-varada-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: fqYlEX9CgOM0CWsnK4JH1HpCmsYyoNfG
X-Proofpoint-GUID: fqYlEX9CgOM0CWsnK4JH1HpCmsYyoNfG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-28_07,2023-11-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1034
 priorityscore=1501 malwarescore=0 bulkscore=0 mlxlogscore=395 mlxscore=0
 phishscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2311060000 definitions=main-2311280068

From: Varadarajan Narayanan <quic_varada@quicinc.com>

The earlier patch ec4f047679d5, incorrectly used 'l2'
as the vdda-pll-supply. However, 'l5' is the correct
ldo that supplies power to the USB PHY.

Fixes: ec4f047679d5 ("arm64: dts: qcom: ipq9574: Enable USB")
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
 arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
index 49c9b6478357..6d4c758c7f5f 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
@@ -96,6 +96,13 @@ mp5496_l2: l2 {
 			regulator-always-on;
 			regulator-boot-on;
 		};
+
+		mp5496_l5: l5 {
+			regulator-min-microvolt = <1800000>;
+			regulator-max-microvolt = <1800000>;
+			regulator-always-on;
+			regulator-boot-on;
+		};
 	};
 };
 
@@ -124,7 +131,7 @@ &usb_0_dwc3 {
 };
 
 &usb_0_qmpphy {
-	vdda-pll-supply = <&mp5496_l2>;
+	vdda-pll-supply = <&mp5496_l5>;
 	vdda-phy-supply = <&regulator_fixed_0p925>;
 
 	status = "okay";
@@ -132,7 +139,7 @@ &usb_0_qmpphy {
 
 &usb_0_qusbphy {
 	vdd-supply = <&regulator_fixed_0p925>;
-	vdda-pll-supply = <&mp5496_l2>;
+	vdda-pll-supply = <&mp5496_l5>;
 	vdda-phy-dpdm-supply = <&regulator_fixed_3p3>;
 
 	status = "okay";
-- 
2.34.1


