Return-Path: <devicetree+bounces-12761-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD6E7DB677
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED8BBB20CEF
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CCBDDC3;
	Mon, 30 Oct 2023 09:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="HV8P/K1/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77844DF40;
	Mon, 30 Oct 2023 09:48:06 +0000 (UTC)
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4FD7D44;
	Mon, 30 Oct 2023 02:48:01 -0700 (PDT)
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39U7KEmP025179;
	Mon, 30 Oct 2023 09:47:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : date :
 subject : mime-version : content-type : content-transfer-encoding :
 message-id : references : in-reply-to : to : cc; s=qcppdkim1;
 bh=kT3ioBmRWCOTcK8bn7Du1m7PCwGBwI/GHElbSnTpe7U=;
 b=HV8P/K1/6xsE27E53t4w6YWkkA7r0MvUoDjdTzR3sxK8SYnoQPuls5nP8mBe03cwVLSP
 sxTZynAPt5/3xlGN5ihmfYz2TY+C2oTYsQtVi/A63xrFeww+P7IFAg0ikEsVHspk8Rl3
 +T3NqMegWT6TkRFtjfZqxH9Nc7WK1KFynVEdWLdi1lNzQ0+7qiJF4cjPrILT7RxbxWoD
 rt3pGeBmJzZwAtZTeA1ITKonjbcJ5q5PuWSP/QfZDQth8geHi4j66UkLnRIjDGNVKUkq
 zzUculzACxjquHpM8rev2rFvLLk4Mkv1jO+Qkz2YKDVQfmp1R+8qK+CONVjSYr0AYGxh +A== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u280jr9xw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:52 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39U9lqth031375
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 09:47:52 GMT
Received: from hu-kathirav-blr.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 30 Oct 2023 02:47:46 -0700
From: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
Date: Mon, 30 Oct 2023 15:17:19 +0530
Subject: [PATCH 4/8] clk: qcom: ipq5332: add gpll0_out_aux clock
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20231030-ipq5332-nsscc-v1-4-6162a2c65f0a@quicinc.com>
References: <20231030-ipq5332-nsscc-v1-0-6162a2c65f0a@quicinc.com>
In-Reply-To: <20231030-ipq5332-nsscc-v1-0-6162a2c65f0a@quicinc.com>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Michael Turquette
	<mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Catalin Marinas
	<catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <linux-clk@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        "Kathiravan
 Thirumoorthy" <quic_kathirav@quicinc.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698659244; l=1460;
 i=quic_kathirav@quicinc.com; s=20230906; h=from:subject:message-id;
 bh=AMEeKniRFTiKycBkLXrAU9OUuKWH7z1VWO4bz7GJqok=;
 b=IE91GTSuRAnjGTi7zrKCc1axwVaHDJYCRByBpSDNJ3CMMrjEIzRD7XDnZf1GPd4a9nDg+XPhk
 fobq8qr/5jVBHgMwmBiPBewQX+e8aK8MOLxyqOro6mC5NzMoFYEICQW
X-Developer-Key: i=quic_kathirav@quicinc.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: abVPL1GMMoazH5cfxe3-p4mOWFC_wi7M
X-Proofpoint-ORIG-GUID: abVPL1GMMoazH5cfxe3-p4mOWFC_wi7M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_08,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 phishscore=0 mlxlogscore=999
 adultscore=0 spamscore=0 bulkscore=0 impostorscore=0 clxscore=1015
 mlxscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300074

Add support for gpll0_out_aux clock which acts as the parent for
certain networking subsystem (NSS) clocks.

Signed-off-by: Kathiravan Thirumoorthy <quic_kathirav@quicinc.com>
---
 drivers/clk/qcom/gcc-ipq5332.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/clk/qcom/gcc-ipq5332.c b/drivers/clk/qcom/gcc-ipq5332.c
index 235849876a9a..966bb7ca8854 100644
--- a/drivers/clk/qcom/gcc-ipq5332.c
+++ b/drivers/clk/qcom/gcc-ipq5332.c
@@ -87,6 +87,19 @@ static struct clk_alpha_pll_postdiv gpll0 = {
 	},
 };
 
+static struct clk_alpha_pll_postdiv gpll0_out_aux = {
+	.offset = 0x20000,
+	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_STROMER_PLUS],
+	.width = 4,
+	.clkr.hw.init = &(struct clk_init_data) {
+		.name = "gpll0_out_aux",
+		.parent_hws = (const struct clk_hw *[]) {
+				&gpll0_main.clkr.hw },
+		.num_parents = 1,
+		.ops = &clk_alpha_pll_postdiv_ro_ops,
+	},
+};
+
 static struct clk_alpha_pll gpll2_main = {
 	.offset = 0x21000,
 	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_STROMER_PLUS],
@@ -3393,6 +3406,7 @@ static struct clk_regmap *gcc_ipq5332_clocks[] = {
 	[GCC_PCIE3X1_0_PIPE_CLK_SRC] = &gcc_pcie3x1_0_pipe_clk_src.clkr,
 	[GCC_PCIE3X1_1_PIPE_CLK_SRC] = &gcc_pcie3x1_1_pipe_clk_src.clkr,
 	[GCC_USB0_PIPE_CLK_SRC] = &gcc_usb0_pipe_clk_src.clkr,
+	[GPLL0_OUT_AUX] = &gpll0_out_aux.clkr,
 };
 
 static const struct qcom_reset_map gcc_ipq5332_resets[] = {

-- 
2.34.1


