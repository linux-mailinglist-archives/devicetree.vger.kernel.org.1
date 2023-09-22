Return-Path: <devicetree+bounces-2442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 963B07AACF6
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 10:43:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4813528328D
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 08:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E89441F;
	Fri, 22 Sep 2023 08:43:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D89C441E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 08:43:47 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36D12CA;
	Fri, 22 Sep 2023 01:43:46 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 38M7HPtc001796;
	Fri, 22 Sep 2023 08:43:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=qcppdkim1;
 bh=Ja+5MQ3dJWCBh4eujq/Q5yjxdh1AVrxPosuHids5UaA=;
 b=d4ShG+vYnv3n8+TJeSmYcfOE1uqA2OfoS0dLjOBReqCuq/M2Pe0+FQzCh/L1Yq9ZcIyD
 xrVznyt1Y4ftSy7Rb07oGl9YynBk1kCK900+S0Qa/MIP8c+eosk9k5u4O2EPZkxTEgGy
 tfldphHcipXAARXhcmKMYvYiE+ln6uaNbm7xzYLc6dXd5reGW5I8cvLGSsEnn/cc8DVP
 DQd25lqqMmVZ27yb1ohNn8RnREa+ETWeJDPD7D+aKSA0cTihiE7ny7IwpRAmqb3g3hgQ
 stp0Bg7sBnyzhpMxkLucjVLWmcBCVKgjGG8aqmLkwStYhqM3VbnZpIP901M8dvLaxp+T wg== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3t8tyxhe94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 08:43:33 +0000
Received: from nalasex01b.na.qualcomm.com (nalasex01b.na.qualcomm.com [10.47.209.197])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 38M8hWwI006677
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 08:43:32 GMT
Received: from hu-gokulsri-blr.qualcomm.com (10.80.80.8) by
 nalasex01b.na.qualcomm.com (10.47.209.197) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.36; Fri, 22 Sep 2023 01:43:27 -0700
From: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <mturquette@baylibre.com>, <sboyd@kernel.org>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <jassisinghbrar@gmail.com>,
        <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <quic_varada@quicinc.com>, <quic_srichara@quicinc.com>,
        <quic_gokulsri@quicinc.com>
Subject: [PATCH V2 2/3] clk: qcom: apss-ipq-pll: add support for IPQ5018
Date: Fri, 22 Sep 2023 14:13:02 +0530
Message-ID: <20230922084303.4164046-3-quic_gokulsri@quicinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230922084303.4164046-1-quic_gokulsri@quicinc.com>
References: <20230922084303.4164046-1-quic_gokulsri@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01b.na.qualcomm.com (10.47.209.197)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: kUk__jpeBgVbQRFN0xYlkyKWkQVc7mmr
X-Proofpoint-ORIG-GUID: kUk__jpeBgVbQRFN0xYlkyKWkQVc7mmr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_07,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 clxscore=1015
 mlxscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 malwarescore=0 spamscore=0 mlxlogscore=999 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2309220071
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

IPQ5018 APSS PLL is of type Stromer. Reuse Stromer Plus PLL offsets,
add configuration values and the compatible.

Co-developed-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <quic_gokulsri@quicinc.com>
---
 drivers/clk/qcom/apss-ipq-pll.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-pll.c
index e170331858cc..bebbc8c5ab68 100644
--- a/drivers/clk/qcom/apss-ipq-pll.c
+++ b/drivers/clk/qcom/apss-ipq-pll.c
@@ -73,6 +73,20 @@ static struct clk_alpha_pll ipq_pll_stromer_plus = {
 	},
 };
 
+static const struct alpha_pll_config ipq5018_pll_config = {
+	.l = 0x32,
+	.config_ctl_val = 0x4001075b,
+	.config_ctl_hi_val = 0x304,
+	.main_output_mask = BIT(0),
+	.aux_output_mask = BIT(1),
+	.early_output_mask = BIT(3),
+	.alpha_en_mask = BIT(24),
+	.status_val = 0x3,
+	.status_mask = GENMASK(10, 8),
+	.lock_det = BIT(2),
+	.test_ctl_hi_val = 0x00400003,
+};
+
 static const struct alpha_pll_config ipq5332_pll_config = {
 	.l = 0x3e,
 	.config_ctl_val = 0x4001075b,
@@ -129,6 +143,12 @@ struct apss_pll_data {
 	const struct alpha_pll_config *pll_config;
 };
 
+static const struct apss_pll_data ipq5018_pll_data = {
+	.pll_type = CLK_ALPHA_PLL_TYPE_STROMER_PLUS,
+	.pll = &ipq_pll_stromer_plus,
+	.pll_config = &ipq5018_pll_config,
+};
+
 static struct apss_pll_data ipq5332_pll_data = {
 	.pll_type = CLK_ALPHA_PLL_TYPE_STROMER_PLUS,
 	.pll = &ipq_pll_stromer_plus,
@@ -195,6 +215,7 @@ static int apss_ipq_pll_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id apss_ipq_pll_match_table[] = {
+	{ .compatible = "qcom,ipq5018-a53pll", .data = &ipq5018_pll_data },
 	{ .compatible = "qcom,ipq5332-a53pll", .data = &ipq5332_pll_data },
 	{ .compatible = "qcom,ipq6018-a53pll", .data = &ipq6018_pll_data },
 	{ .compatible = "qcom,ipq8074-a53pll", .data = &ipq8074_pll_data },
-- 
2.34.1


