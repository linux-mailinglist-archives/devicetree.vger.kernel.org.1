Return-Path: <devicetree+bounces-5448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39E1B7B6603
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 12:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 471BE1C208B2
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 10:04:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24B2C15E9C;
	Tue,  3 Oct 2023 10:04:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DAD915EBF
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 10:04:46 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FBC7AC;
	Tue,  3 Oct 2023 03:04:45 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3939M8Fn029146;
	Tue, 3 Oct 2023 10:04:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references; s=qcppdkim1;
 bh=f5inFJnXbum2m2FYBZiHNKdIg4LY5yKF6CnPbxeHeLs=;
 b=hMpIztcgNTyHS5FqPSi1HdCSiLpXsvDE/4pIx0kJ8rZPJ2ktaLwHjnKNbY8O8F2J2eOf
 5SZv82g/oLVKElWgAm8lGaiGE1qtk0Rza+XPB6cSn4v5RiEC4yx5bGCPSQT+Ee+euADR
 H/ROD5bioOxJxXdN/zjQSO3gBPM/MR2c7K7mFNFlCVXd6uEzpPC7ZU9GMLEwufU32LA1
 8gzj5MgIdNwWxLFnmN1+RZxKjAkC5hPl40Kp6Hsc7xbDI1UqS5EEqynuQUOZ2BUYBL6F
 Vz6Z2hYJlqYsMwT9PR2CjBVMsc8aN5aHef1ySAIrFalzkbX+uUmpsWhpVpywNtnp/ccO Tg== 
Received: from apblrppmta01.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com [103.229.18.19])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tgaw5gpp6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Oct 2023 10:04:38 +0000
Received: from pps.filterd (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTP id 393A4ZpR032591;
	Tue, 3 Oct 2023 10:04:35 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 3tecrkqvrp-1;
	Tue, 03 Oct 2023 10:04:35 +0000
Received: from APBLRPPMTA01.qualcomm.com (APBLRPPMTA01.qualcomm.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 393A4ZmV032607;
	Tue, 3 Oct 2023 10:04:35 GMT
Received: from hu-sgudaval-hyd.qualcomm.com (hu-rohiagar-hyd.qualcomm.com [10.213.106.138])
	by APBLRPPMTA01.qualcomm.com (PPS) with ESMTP id 393A4Z4x032606;
	Tue, 03 Oct 2023 10:04:35 +0000
Received: by hu-sgudaval-hyd.qualcomm.com (Postfix, from userid 3970568)
	id 687991ED5; Tue,  3 Oct 2023 15:34:34 +0530 (+0530)
From: Rohit Agarwal <quic_rohiagar@quicinc.com>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, dmitry.baryshkov@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rohit Agarwal <quic_rohiagar@quicinc.com>
Subject: [PATCH v3 3/3] arm64: dts: qcom: sdx75-idp: Enable USB3 and PHY support
Date: Tue,  3 Oct 2023 15:34:32 +0530
Message-Id: <1696327472-21776-4-git-send-email-quic_rohiagar@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1696327472-21776-1-git-send-email-quic_rohiagar@quicinc.com>
References: <1696327472-21776-1-git-send-email-quic_rohiagar@quicinc.com>
X-QCInternal: smtphost
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 7A16kFPDJ3povBPpVV4GcT9gAmtdgGei
X-Proofpoint-GUID: 7A16kFPDJ3povBPpVV4GcT9gAmtdgGei
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-03_06,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 bulkscore=0
 phishscore=0 priorityscore=1501 clxscore=1015 impostorscore=0 mlxscore=0
 lowpriorityscore=0 mlxlogscore=396 adultscore=0 spamscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310030070
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,SPF_HELO_NONE,
	SPF_NONE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Enable the support for USB3 controller, QMP PHY and HS PHY
on SDX75 IDP.

Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdx75-idp.dts | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdx75-idp.dts b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
index 10d1587..5f2ebe3 100644
--- a/arch/arm64/boot/dts/qcom/sdx75-idp.dts
+++ b/arch/arm64/boot/dts/qcom/sdx75-idp.dts
@@ -250,6 +250,11 @@
 	stdout-path = "serial0:115200n8";
 };
 
+&pm7550ba_eusb2_repeater {
+	vdd18-supply = <&vreg_l5b_1p776>;
+	vdd3-supply = <&vreg_l10b_3p08>;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -261,3 +266,27 @@
 &uart1 {
 	status = "okay";
 };
+
+&usb {
+	status = "okay";
+};
+
+&usb_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_hsphy {
+	vdd-supply = <&vreg_l4b_0p88>;
+	vdda12-supply = <&vreg_l1b_1p2>;
+
+	phys = <&pm7550ba_eusb2_repeater>;
+
+	status = "okay";
+};
+
+&usb_qmpphy {
+	vdda-phy-supply = <&vreg_l4b_0p88>;
+	vdda-pll-supply = <&vreg_l1b_1p2>;
+
+	status = "okay";
+};
-- 
2.7.4


