Return-Path: <devicetree+bounces-9956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F29E87CF2E1
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE448281032
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 08:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 526EF156DB;
	Thu, 19 Oct 2023 08:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="b/yzMXIb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ACA156C1
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 08:41:41 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7127A12A;
	Thu, 19 Oct 2023 01:41:40 -0700 (PDT)
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39J7sZvf031917;
	Thu, 19 Oct 2023 08:41:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=qcppdkim1;
 bh=2D+d4VEjOV3Ir+15KuGEfBVLg9k/jCvwAdwiFzJmVdM=;
 b=b/yzMXIbrmVcQ6c2sVfKlEz8Ob3lQgHT9j/djdCU8bxVOFNSdoF1EWk6+8bGpkBhu2ve
 KN/Od1nyr0VFbvKKqOfEIjN0fQTvEXE6IMFTDgt45mymoWPGvucEtkeVg2LA8oI9bHUg
 Ep5cMq4DgO8PMz8IPs3uclqd79phXf2qhXPkch0FN/mNYz3e3KLE1SVStSfO8tHJdAX1
 xWZhxP04uNxuQHw9vwJY+cnqHvtZYhXeyv7T7eEDwJd9EIStw46Qz4NdzrnGOMou8vwt
 Qjuih9ZyHyZC95NBRiLc2SUi/19gqejf/Q3wi2JMcdFsbEhC9QKcwJj+TwhBG1ftKKNh BA== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ttnnah9rt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 08:41:14 +0000
Received: from nasanex01a.na.qualcomm.com (nasanex01a.na.qualcomm.com [10.52.223.231])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39J8fEZo022901
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 19 Oct 2023 08:41:14 GMT
Received: from varda-linux.qualcomm.com (10.80.80.8) by
 nasanex01a.na.qualcomm.com (10.52.223.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Thu, 19 Oct 2023 01:41:08 -0700
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
Subject: [PATCH v4 3/9] clk: qcom: apss-ipq-pll: Use stromer plus ops for stromer plus pll
Date: Thu, 19 Oct 2023 14:10:37 +0530
Message-ID: <9ea8deab1c8b49008acb91510e9e1b1c1e0b4f3d.1697694811.git.quic_varada@quicinc.com>
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
X-Proofpoint-GUID: HPnvVYsFwqZAMZe0_8vSXhDzPyOnnVzW
X-Proofpoint-ORIG-GUID: HPnvVYsFwqZAMZe0_8vSXhDzPyOnnVzW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-19_06,2023-10-18_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0 mlxscore=0
 phishscore=0 adultscore=0 malwarescore=0 spamscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=772 impostorscore=0 suspectscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2309180000 definitions=main-2310190072

The set rate and determine rate operations are different between
Stromer and Stromer Plus PLLs. Since the programming sequence is
different, the PLLs dont get configured properly and random,
inexplicable crash/freeze is seen. Hence, use stromer plus ops
for ipq_pll_stromer_plus.

Acked-by: Stephen Boyd <sboyd@kernel.org>
Fixes: c7ef7fbb1ccf ("clk: qcom: apss-ipq-pll: add support for IPQ5332")
Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
---
v4:	Update commit log to include
		"What goes wrong if we don't have this patch?"
v2:	Add Fixes tag
---
 drivers/clk/qcom/apss-ipq-pll.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/apss-ipq-pll.c b/drivers/clk/qcom/apss-ipq-pll.c
index e170331..18c4ffe 100644
--- a/drivers/clk/qcom/apss-ipq-pll.c
+++ b/drivers/clk/qcom/apss-ipq-pll.c
@@ -68,7 +68,7 @@ static struct clk_alpha_pll ipq_pll_stromer_plus = {
 				.fw_name = "xo",
 			},
 			.num_parents = 1,
-			.ops = &clk_alpha_pll_stromer_ops,
+			.ops = &clk_alpha_pll_stromer_plus_ops,
 		},
 	},
 };
-- 
2.7.4


