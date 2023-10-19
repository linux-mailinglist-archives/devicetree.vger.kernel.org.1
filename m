Return-Path: <devicetree+bounces-9958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6837CF2E8
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:41:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21E7E281FE9
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE028156F4;
	Thu, 19 Oct 2023 08:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="TF2hZK4R"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B91615AEF
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:41:48 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40523184;
	Thu, 19 Oct 2023 01:41:46 -0700 (PDT)
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J7skSb008038;
	Thu, 19 Oct 2023 08:41:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=752q2NEkSJqynU3w4XSYItex3HD6Wnytgigz8YSx60A=;
 b=TF2hZK4RrkCQ8upd6epd5ettqQ+LpIFOOMLE8vGV3Zv0xNsbvK0XOksVE9e44uU0/o0x
 lrt/gS6ZUPw8eTNgoS+FLxgprU3AlGggxvekj/21X7QpK4hdLaQ54XJhcgh/SeeJPvW3
 jieH25IMI72W59Dan+DncxOSHhuu+dmfhOPx38eegdnhKTLiUGIEAHo2tMhpyujODu7p
 Nnx/NsbKQ5N0KAnweUb9XqVpUNvNURgoF7PQa7OScvUmqDtHudXSh5WODSyrjw5g0+nY
 YlZLON+VtIBQVRY3pCNibhUuLvlF4CkI4+QPO0s4HcXMS86k6lbfduXM+vgIyfFWz/OH CQ== 
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tt8xsb9gj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 08:41:20 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA05.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J8fKqF005771
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 08:41:20 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 19 Oct 2023 01:41:14 -0700
From: Varadarajan Narayanan <quic_varada@quicinc.com>
To: <agross@kernel.org>, <andersson@kernel.org>, <konrad.dybcio@linaro.org>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <mturquette@baylibre.com>, <sboyd@kernel.org>,
        <rafael@kernel.org>, <viresh.kumar@linaro.org>, <ilia.lin@kernel.org>,
        <sivaprak@codeaurora.org>, <quic_kathirav@quicinc.com>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-pm@vger.kernel.org>
CC: Varadarajan Narayanan <quic_varada@quicinc.com>
Subject: [PATCH v4 4/9] clk: qcom: apss-ipq-pll: Fix 'l' value for ipq5332_pll_config
Date: Thu, 19 Oct 2023 14:10:38 +0530
Message-ID: <8053157ca734d5db09106f2d291bb6a156d38c49.1697694811.git.quic_varada@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1697694811.git.quic_varada@quicinc.com>
References: <cover.1697694811.git.quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01a.na.qualcomm.com (10.52.223.231)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: PfcWrbAlActJ00sAhhIsm6VyCvpWXtHH
X-Proofpoint-ORIG-GUID: PfcWrbAlActJ00sAhhIsm6VyCvpWXtHH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_06,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 mlxscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 phishscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2309180000 definitions=main-2310190072

The earlier 'l' value of 0x3e is for 1.5GHz. Not all SKUs support
this frequency. Hence set it to 0x2d to get 1.1GHz which is
supported in all SKUs.

The frequency can still increase above this initial configuration
made here when the cpufreq driver picks a different OPP.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v4:	Update commit log to indicate that cpufreq could subsequently
	change the frequency based on the selected OPP
---
 drivers/clk/qcom/apss-ipq-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-pll.c
index 18c4ffe..41279e5 100644
--- a/drivers/clk/qcom/apss-ipq-pll.c
+++ b/drivers/clk/qcom/apss-ipq-pll.c
@@ -74,7 +74,7 @@ static struct clk_alpha_pll ipq_pll_stromer_plus = {
 };
 
 static const struct alpha_pll_config ipq5332_pll_config = {
-	.l = 0x3e,
+	.l = 0x2d,
 	.config_ctl_val = 0x4001075b,
 	.config_ctl_hi_val = 0x304,
 	.main_output_mask = BIT(0),
-- 
2.7.4


