Return-Path: <devicetree+bounces-6147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5FE7B9F66
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 16:23:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id AC5AEB2097D
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 14:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA5C128E30;
	Thu,  5 Oct 2023 14:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="iPks4J0H"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A807286A6
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 14:23:38 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB32521A22;
	Thu,  5 Oct 2023 07:23:36 -0700 (PDT)
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3953UEqG028895;
	Thu, 5 Oct 2023 03:31:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=O9G6aJwwwtzXKgwKWSw8c7oRidhefF3dxtbgZvE+dvY=;
 b=iPks4J0HdIQy8fVM8icTif0VxyERHJLKI2DGETQwQRcGISZtnR1udCAwS/Oku0utlhJx
 sYRLOj90S9+T3QNJ3pwxV6mmaN7XGK7nIbbwDsAUIKjvR0EXv3SqP7g/cNpZhRq/+c/+
 JYz6PrMZJFfTeHVwnaGAr4HELU1pD6lrDA4wA3B9GR4U3pYJoBOvNynk5SDgSVVij5Hz
 nLuw5fDqlclbdUblwIRUTXWELo9/EzXrbUm18qxHOcsxljxBYrijjx4iERgq5PHNlQhA
 1sHyXcTrvNktEODnUMALLys1GGUEvqeDxzggx1CZ2aY48uSmxt3a/kPL16IFy2ZeXz2O zA== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3th8e1su29-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 03:31:36 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3953Vas5027258
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 5 Oct 2023 03:31:36 GMT
Received: from hu-devipriy-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Wed, 4 Oct 2023 20:31:30 -0700
From: Devi Priya <quic_devipriy@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <lee@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <thierry.reding@gmail.com>, <ndesaulniers@google.com>,
        <trix@redhat.com>, <baruch@tkos.co.il>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <llvm@lists.linux.dev>
CC: <linux-pwm@vger.kernel.org>, <u.kleine-koenig@pengutronix.de>,
        <nathan@kernel.org>
Subject: [PATCH V14 4/4] arm64: dts: qcom: ipq6018: add pwm node
Date: Thu, 5 Oct 2023 09:00:53 +0530
Message-ID: <20231005033053.2626465-5-quic_devipriy@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231005033053.2626465-1-quic_devipriy@quicinc.com>
References: <20231005033053.2626465-1-quic_devipriy@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: SVaF6ymWFxZxGP96sq_D7GpP2tcGlQb5
X-Proofpoint-ORIG-GUID: SVaF6ymWFxZxGP96sq_D7GpP2tcGlQb5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-04_13,2023-10-02_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 suspectscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0 spamscore=0
 bulkscore=0 mlxlogscore=999 malwarescore=0 impostorscore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2310050028
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Describe the PWM block on IPQ6018.

The PWM is in the TCSR area. Make &tcsr "simple-mfd" compatible, and add
&pwm as child of &tcsr.

Add also ipq6018 specific compatible string.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Co-developed-by: Baruch Siach <baruch.siach@siklu.com>
Signed-off-by: Baruch Siach <baruch.siach@siklu.com>
Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
---
v14:

  Moved ranges just after reg as suggested by Krzysztof

  Picked up the R-b tag

v13:

  No change

v12: 

  No change

v11:

  No change

v10:

  No change

v9:

  Add 'ranges' property (Rob)

v8:

  Add size cell to 'reg' (Rob)

v7:

  Use 'reg' instead of 'offset' (Rob)

  Add qcom,tcsr-ipq6018 (Rob)

  Drop clock-names (Bjorn)

v6:

  Make the PWM node child of TCSR (Rob Herring)

  Add assigned-clocks/assigned-clock-rates (Uwe Kleine-König)

v5: Use qcom,pwm-regs for TCSR phandle instead of direct regs

v3: s/qcom,pwm-ipq6018/qcom,ipq6018-pwm/ (Rob Herring)

 arch/arm64/boot/dts/qcom/ipq6018.dtsi | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq6018.dtsi b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
index e59b9df96c7e..565e61ce382f 100644
--- a/arch/arm64/boot/dts/qcom/ipq6018.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq6018.dtsi
@@ -390,8 +390,21 @@ tcsr_mutex: hwlock@1905000 {
 		};
 
 		tcsr: syscon@1937000 {
-			compatible = "qcom,tcsr-ipq6018", "syscon";
+			compatible = "qcom,tcsr-ipq6018", "syscon", "simple-mfd";
 			reg = <0x0 0x01937000 0x0 0x21000>;
+			ranges = <0x0 0x0 0x01937000 0x21000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			 pwm: pwm@a010 {
+				compatible = "qcom,ipq6018-pwm";
+				reg = <0xa010 0x20>;
+				clocks = <&gcc GCC_ADSS_PWM_CLK>;
+				assigned-clocks = <&gcc GCC_ADSS_PWM_CLK>;
+				assigned-clock-rates = <100000000>;
+				#pwm-cells = <2>;
+				status = "disabled";
+			};
 		};
 
 		usb2: usb@70f8800 {
-- 
2.34.1


