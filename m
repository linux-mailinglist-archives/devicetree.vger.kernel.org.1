Return-Path: <devicetree+bounces-3112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5037AD5E6
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F0CB51C20432
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:29:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CDBD15E8B;
	Mon, 25 Sep 2023 10:29:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA2F15E88
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:29:03 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE993BE;
	Mon, 25 Sep 2023 03:29:02 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38PA7usD009687;
	Mon, 25 Sep 2023 10:28:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=yj7fYIgnT40zKCEw9gVfgAft6mXpSgmJ3XSg2/mSCrc=;
 b=UQWq4DMkHhXaGDnl4r0ggPJaC0noyN6JaDvJYFnMkT6r0dMhCT20e+z7IfhdQN7TeRYL
 wTMEVuxQ4qKkh2Vrvk4A+sVxKrCOBIIlG4OjTM7NGYdKarY59RyhJC5RxT5Y8j+DmlEu
 tIxj0ADa3M2uh3RVza4Kgdt7m+q+G1CRe7apvcoCWY86uEP1NBh5VSdKlshIvyyqTp/t
 VxfpnxBZmENzTYzrDa9foLPuf9WIOmO3f6GZaR6tocCWpOqIOymB+/n68i/zQiWrTH4D
 Q/ZLiq5hGXDIR0szfAwwAJU5DXuT6PkA592HqcL8nlBirhzDRO+kgfXMS1S8W83+YS6s +g== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tajapj24s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 10:28:50 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38PASnn7019426
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 25 Sep 2023 10:28:49 GMT
Received: from hu-gokulsri-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Mon, 25 Sep 2023 03:28:44 -0700
From: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
To: <dmitry.baryshkov@linaro.org>, <agross@kernel.org>, <andersson@kernel.org>,
        <konrad.dybcio@linaro.org>, <mturquette@baylibre.com>,
        <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <jassisinghbrar@gmail.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_varada@quicinc.com>, <quic_srichara@quicinc.com>,
        <quic_gokulsri@quicinc.com>
Subject: [PATCH V3 1/3] dt-bindings: clock: qcom,a53pll: add IPQ5018 compatible
Date: Mon, 25 Sep 2023 15:58:24 +0530
Message-ID: <20230925102826.405446-2-quic_gokulsri@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230925102826.405446-1-quic_gokulsri@quicinc.com>
References: <20230925102826.405446-1-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: VxU0dj9EKZE3njEQ2_coJuNbnVrw77EM
X-Proofpoint-GUID: VxU0dj9EKZE3njEQ2_coJuNbnVrw77EM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-25_07,2023-09-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 mlxscore=0 bulkscore=0 impostorscore=0 priorityscore=1501 mlxlogscore=910
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2309180000
 definitions=main-2309250076
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add IPQ5018 compatible to A53 PLL bindings.

Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/clock/qcom,a53pll.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,a53pll.yaml b/Documentation/devicetree/bindings/clock/qcom,a53pll.yaml
index 9436266828af..5ca927a8b1d5 100644
--- a/Documentation/devicetree/bindings/clock/qcom,a53pll.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,a53pll.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,ipq5018-a53pll
       - qcom,ipq5332-a53pll
       - qcom,ipq6018-a53pll
       - qcom,ipq8074-a53pll
-- 
2.34.1


