Return-Path: <devicetree+bounces-105896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A4D9A9883B3
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 14:00:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C82CB1C22BF7
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 12:00:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7479D18BC00;
	Fri, 27 Sep 2024 12:00:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="oXMuvDbb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 002C118B47B;
	Fri, 27 Sep 2024 12:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727438415; cv=none; b=bqeiwiNg95uRwgsJfZ13wrDbl1NqpJZ4hEDUQn8XYc4HoznLDfULpqJoGWF37K58lFuSgExV2t/bz6rN/ZkWEyVZwrTEzjI+yDsCiztWdK+1P1UoUlRo5nmhJFwtBM+3jImSx1CTLGZ+38RiQWa7HoqDuPgatoocq/uZw2Kv7jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727438415; c=relaxed/simple;
	bh=/n1l+08SIXcl6jEihesb7X5FdpgZZK7kyQjy+8BOwS4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=hMrrJAYf71AjGPsAq3ACUQHkqwcCiuUudi3fiYs94tpcsjBbqhnSU5NR5SuDIgsPd+mzqXt8/EYQoT473kb7Kvf3+oFLRILbdjEkCxj7PXw6rRSY0hfZAOJC7N+Hb83zZMnK/bnh9DlMQGABqT/fYuLkNhNky1HRshhzhq48+AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=oXMuvDbb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 48R6rjTV017002;
	Fri, 27 Sep 2024 12:00:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ahn7U8Yo0bz2XKR147lH9HgizZfOaNftsyT9uNb3ct0=; b=oXMuvDbbzlIqT+Bf
	5PIR7qo+e5/5xsO+Yl7MC6IStsCJB/A9c03Dih0L/F1I4nxjusQdrvV2sT+yIC+r
	XHYLjwn+pcPP5OFyYS+60TAnWzx2zdR6QGw0qcQrbrFnoU3y0Gqv5afhvvNCvTzd
	Cx6RdssGoexdDVXWpm0NxeOacDPDRtEWz1qqldZRLSxOtHaSu5sIo4lJwf0N9ERf
	8Z2EeNqPsYGy08Uewg1d5PlvL0xivOFo08cZphhddgU9ay1chHuOEoowuvHe0dDX
	naPwk0VpJl0gKQM2G8ImiCLWfwU+fuAYsU0kj8x4N5d3BWmDZNhtvcoDEr/BNfTH
	iwnt0g==
Received: from nasanppmta05.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 41spc32sm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 12:00:09 +0000 (GMT)
Received: from nasanex01c.na.qualcomm.com (nasanex01c.na.qualcomm.com [10.45.79.139])
	by NASANPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 48RC08QR028689
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 27 Sep 2024 12:00:08 GMT
Received: from cse-cd02-lnx.ap.qualcomm.com (10.80.80.8) by
 nasanex01c.na.qualcomm.com (10.45.79.139) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Fri, 27 Sep 2024 05:00:02 -0700
From: Tingguo Cheng <quic_tingguoc@quicinc.com>
Date: Fri, 27 Sep 2024 19:59:14 +0800
Subject: [PATCH v2 2/4] pmdomain: qcom: rpmhpd: Add qcs8300 power domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-2-18c030ad7b68@quicinc.com>
References: <20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-0-18c030ad7b68@quicinc.com>
In-Reply-To: <20240927-add_qcs615_qcs8300_powerdomains_driver_support-v2-0-18c030ad7b68@quicinc.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
CC: <kernel@quicinc.com>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <kernel@quicinc.com>,
        <quic_fenglinw@quicinc.com>, <quic_tingweiz@quicinc.com>,
        Tingguo Cheng
	<quic_tingguoc@quicinc.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727438390; l=1740;
 i=quic_tingguoc@quicinc.com; s=20240917; h=from:subject:message-id;
 bh=/n1l+08SIXcl6jEihesb7X5FdpgZZK7kyQjy+8BOwS4=;
 b=eMBmLtfApda5UyiGybtkY00gMaoBgvsNBlkeC99GuCGlquJqx7Kl15P8ZHJG0uIMudA90iYsD
 eUZkyVvwlCpAooGQdHVPvYcaQDVdBWYDbXW7XXIoqrUjkFkIQwKaHkf
X-Developer-Key: i=quic_tingguoc@quicinc.com; a=ed25519;
 pk=PiFYQPN5GCP7O6SA43tuKfHAbl9DewSKOuQA/GiHQrI=
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nasanex01c.na.qualcomm.com (10.45.79.139)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: LUnMn-Oxs7UZ73x0job5-tqTqpqIRASY
X-Proofpoint-ORIG-GUID: LUnMn-Oxs7UZ73x0job5-tqTqpqIRASY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 malwarescore=0 adultscore=0 phishscore=0 mlxlogscore=893
 bulkscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2408220000 definitions=main-2409270086

Add support for the power domains exposed by RPMh on the qcs8300
platform. MMCX depends on CX, so mark CX as the parent of MMCX.

Co-developed-by: Shazad Hussain <quic_shazhuss@quicinc.com>
Signed-off-by: Shazad Hussain <quic_shazhuss@quicinc.com>
Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
---
 drivers/pmdomain/qcom/rpmhpd.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index 65505e1e221986ad20751b658374dd0e74719703..d256110225dc517187b2ac1bbbb781eae78b7d59 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -624,7 +624,31 @@ static const struct rpmhpd_desc x1e80100_desc = {
 	.num_pds = ARRAY_SIZE(x1e80100_rpmhpds),
 };
 
+/* QCS8300 RPMH power domains */
+static struct rpmhpd *qcs8300_rpmhpds[] = {
+	[RPMHPD_CX] = &cx,
+	[RPMHPD_CX_AO] = &cx_ao,
+	[RPMHPD_EBI] = &ebi,
+	[RPMHPD_GFX] = &gfx,
+	[RPMHPD_LCX] = &lcx,
+	[RPMHPD_LMX] = &lmx,
+	[RPMHPD_MMCX] = &mmcx_w_cx_parent,
+	[RPMHPD_MMCX_AO] = &mmcx_ao_w_cx_parent,
+	[RPMHPD_MXC] = &mxc,
+	[RPMHPD_MXC_AO] = &mxc_ao,
+	[RPMHPD_MX] = &mx,
+	[RPMHPD_MX_AO] = &mx_ao,
+	[RPMHPD_NSP0] = &nsp0,
+	[RPMHPD_NSP1] = &nsp1,
+};
+
+static const struct rpmhpd_desc qcs8300_desc = {
+	.rpmhpds = qcs8300_rpmhpds,
+	.num_pds = ARRAY_SIZE(qcs8300_rpmhpds),
+};
+
 static const struct of_device_id rpmhpd_match_table[] = {
+	{ .compatible = "qcom,qcs8300-rpmhpd", .data = &qcs8300_desc },
 	{ .compatible = "qcom,qdu1000-rpmhpd", .data = &qdu1000_desc },
 	{ .compatible = "qcom,sa8155p-rpmhpd", .data = &sa8155p_desc },
 	{ .compatible = "qcom,sa8540p-rpmhpd", .data = &sa8540p_desc },

-- 
2.34.1


