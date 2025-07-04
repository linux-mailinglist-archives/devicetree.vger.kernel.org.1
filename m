Return-Path: <devicetree+bounces-192986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAB0AF8BA6
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:31:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 446C37632B6
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 091862FD86F;
	Fri,  4 Jul 2025 08:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aETx4hfp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581182FD5B0
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616953; cv=none; b=JWwdxWVStvJixMb/fZuALUgz7aFEl7c3Fg7Kb0XvaZpSoYKe9oxxkkEkJEvNdaczFTUgZ22/QoQl7KULN3tYMFUi65T+JEDJUGxfIt4vGurlC3gDuaAlu1PJFHNaKheEcdY5DziSjdpGX4LSonI/cOxKTGpGlKvUQubhorG4J9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616953; c=relaxed/simple;
	bh=sy7etJvp40+QN1X3+XD1Dp8MZZyvRF5vVAH/CZcE3wE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I9/2sLNu/fsXjpamHniWijf26utUF0lZOzEDaSfW85hYqSgP6/2EvGqpwFPJ5y28TuVrY0xxXY7g8cQYSeLWnsrWuRl2HzrfDG6A1PqVWsUzewnvzBetY5k44X7HO9UCukdnaX2pDkHp4ACJscMzrulueGTvWqQ38X0CICO870A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aETx4hfp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56460fjK032111
	for <devicetree@vger.kernel.org>; Fri, 4 Jul 2025 08:15:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Gxypdv/U/yE
	GEYqfSc5KaSCh1BNkteGVz6FdJmGRaQA=; b=aETx4hfpVL0ZNrTEYpB7RgT53hp
	q1z3tHXZ4enibFR6oAtQrvteQSE3RXSzVA3s2e+yPzzC9umodbFeODEvaM+nw1WF
	FVfxhIN0v1TbwdKsTgb6YSZgCm7P+6iV6NKszi+hqh9pydleNHW+NxVqndaI8C0Z
	LdeVbHeBYlKIbNV+YLeHX7nbkqtmXFqiDWnBslnsrRZ8fRUOPWnW+CeRONt9ai3o
	93WQQeLgbmoBDWtjeSyqofVzXNC9TEsNRg3R92Ik5p9I1jBkvyR/PWUVX+X7PunM
	9LpTy4FQ8BCHTIYteRn/ct0eXrHjsERKMVRpZ9acADboK0Mb729U7cx/NgA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j63kkddp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 08:15:51 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c760637fe5so96644885a.0
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:15:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616950; x=1752221750;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gxypdv/U/yEGEYqfSc5KaSCh1BNkteGVz6FdJmGRaQA=;
        b=XOv21sj7E2xAMjUff2oiK+SX/FX7Oal97lNU+cHe0HopQ0q0/ji9PgJh6b1NKgJ7wV
         s0ucrwK0uwGdNWRmpNXGjyFvNiwb96meMEY+iNfWmrDIGwfXI2DNqV48NUKPpJW/6o/2
         4FygqJMgwmgVwbFQgLHEN5pNMOmcSSlSuJdt9KSyWpakutZ2K3yGIiMwP40db4uvzYOo
         67+xT152ui4xA0am8zedGG6tsShW/cnUfGbjhnqDN3SBcOHJrYJJ8xPgQDF1ImqMSLov
         WnC9kI78txWy2YplP4HnNM6/nZ3sy1C88Z2ip6PhQMxpQOqLny1Ft917VYb2SOsAiROv
         I6mw==
X-Forwarded-Encrypted: i=1; AJvYcCXt53SSqa9Z+Ic9UR/0xwKKDP7PFnB3OUXOay1hik95EpxDc+k8vm/xsAWltaG2EP9ITA0FdBd7uUoX@vger.kernel.org
X-Gm-Message-State: AOJu0YwsNpX0ZLg+uuH1UhXA4Q6NsPr76Zs8KBO7DBqRWONTs364eJut
	QPq3Hb3/aeCe+keixt1do9Sx7HttjpKJwmsYFPmPWHnNBteXbmU81QO1vqwOtyND5jEJn0jVzMs
	W4YNVCQ25U3urpMuNJoGClxJdp2SwqKDmm6cb985c8E1v/iZk+5cEw6G6SPxsxOa01qzmrmZZ
X-Gm-Gg: ASbGnctXtzibYDmweKcLRAmeu+ccECkm2RwA19QLYI47SJtOt4O5ktsEAIa4iLohOSW
	eahUHRv7+Qctf6ieVik9GmPu+OKNsRznqOzS1n/hzi25SA4G67MSJ1yMty7EXhHpke+mexiST+1
	Hb8Rrknkuyk6G8gQXzyjZC/qwzHNm7YJXxBJczHQ4dWVo18aa6yy8EMbsRX7qoBI1LVV0J5JoDs
	a/YJVbC+uXbJsWU+sDeNqbC2moGrCQb8BysNfHqJFl4zEmp1bqEWStuiCtJBAqC3616GkwF7G8D
	pXDRtL6AdhkJ4bz69CX8nM1RqW7QlybNt8b7+MZ8as0LxbdWCg+hzoaYWg==
X-Received: by 2002:a05:620a:24d6:b0:7d3:ed4d:44ca with SMTP id af79cd13be357-7d5ddb1cda4mr228638985a.2.1751616949647;
        Fri, 04 Jul 2025 01:15:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHME8Y9iUvRS5npKty8GDF56gtVMuYr31YaHnLQQ6F1/9c4y7rEu6QkQa64xj6uqVmhGIt1A==
X-Received: by 2002:a05:620a:24d6:b0:7d3:ed4d:44ca with SMTP id af79cd13be357-7d5ddb1cda4mr228635285a.2.1751616949127;
        Fri, 04 Jul 2025 01:15:49 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:e0ed:c3b0:c674:7c4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454a9989fcesm47991835e9.16.2025.07.04.01.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jul 2025 01:15:48 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v5 4/6] media: qcom: camss: add support for QCM2290 camss
Date: Fri,  4 Jul 2025 10:15:35 +0200
Message-Id: <20250704081537.1716613-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
References: <20250704081537.1716613-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=ZKfXmW7b c=1 sm=1 tr=0 ts=68678db7 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=c8dJUS_lH9wIvx9YmlQA:9
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA0MDA2NCBTYWx0ZWRfXwaMoK4DFaJ4t
 6UBB2JgVUgmaZE8EJfQdPYyUifp+zizeFfrlaBKxw4MjSbQYFxjh5R9OSgONzfPy7cT4GAhn6z2
 aHF9vdTuE1GG6fctp1faqsNn3vUbmj8AtTRaRnfs+4vvII6Mg/ETmsrkmCiOdpLwR4BJ9EFnPxT
 Qwso5UR48ct7MguQrVKxO0qMwesxqWvsGRfwfuioejDowHaF1ebwqYowWOulRQO4Ew3CDWBEBNc
 KqnY0c+8ZWREPFCi52lLuyRlDSXa+q4idOaSvWtiBQn3y7r/ZxKhQy9W9UDWs2ucRkNWBDyJ3Nr
 PvsbctToKCio/IZguTivGrH+4VnJW/rNCL5xuUG6ood6PWeqVpU39paZqy61jvq8ksVIebtSz+f
 rErzIneVZthNCETZkGiFdL0kZwUhYrgR7YpDCFjQpPtX3TxkVFTxodgSzi2vMpg39FzR1Rnu
X-Proofpoint-ORIG-GUID: xjUk1OPQMqq1qwjK79cnMQGPHMH9yPWD
X-Proofpoint-GUID: xjUk1OPQMqq1qwjK79cnMQGPHMH9yPWD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_03,2025-07-02_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 mlxlogscore=999 spamscore=0 suspectscore=0
 bulkscore=0 priorityscore=1501 lowpriorityscore=0 phishscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507040064

The camera subsystem for QCM2290 which is based on Spectra 340.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 148 ++++++++++++++++++
 2 files changed, 150 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss-vfe.c b/drivers/media/platform/qcom/camss/camss-vfe.c
index 4bca6c3abaff..c575c9767492 100644
--- a/drivers/media/platform/qcom/camss/camss-vfe.c
+++ b/drivers/media/platform/qcom/camss/camss-vfe.c
@@ -340,6 +340,7 @@ static u32 vfe_src_pad_code(struct vfe_line *line, u32 sink_code,
 		}
 		break;
 	case CAMSS_660:
+	case CAMSS_2290:
 	case CAMSS_7280:
 	case CAMSS_8x96:
 	case CAMSS_8250:
@@ -1969,6 +1970,7 @@ static int vfe_bpl_align(struct vfe_device *vfe)
 	int ret = 8;
 
 	switch (vfe->camss->res->version) {
+	case CAMSS_2290:
 	case CAMSS_7280:
 	case CAMSS_8250:
 	case CAMSS_8280XP:
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 06f42875702f..6d5b954b08c7 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -515,6 +515,140 @@ static const struct camss_subdev_resources vfe_res_8x96[] = {
 	}
 };
 
+static const struct camss_subdev_resources csiphy_res_2290[] = {
+	/* CSIPHY0 */
+	{
+		.regulators = { "vdd-csiphy-1p2", "vdd-csiphy-1p8" },
+		.clock = { "top_ahb", "ahb", "csiphy0", "csiphy0_timer" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 240000000, 341330000, 384000000 },
+				{ 100000000, 200000000, 268800000 }  },
+		.reg = { "csiphy0" },
+		.interrupt = { "csiphy0" },
+		.csiphy = {
+			.id = 0,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	},
+
+	/* CSIPHY1 */
+	{
+		.regulators = { "vdd-csiphy-1p2", "vdd-csiphy-1p8" },
+		.clock = { "top_ahb", "ahb", "csiphy1", "csiphy1_timer" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 240000000, 341330000, 384000000 },
+				{ 100000000, 200000000, 268800000 }  },
+		.reg = { "csiphy1" },
+		.interrupt = { "csiphy1" },
+		.csiphy = {
+			.id = 1,
+			.hw_ops = &csiphy_ops_3ph_1_0,
+			.formats = &csiphy_formats_sdm845
+		}
+	}
+};
+
+static const struct camss_subdev_resources csid_res_2290[] = {
+	/* CSID0 */
+	{
+		.regulators = {},
+		.clock = { "top_ahb", "ahb", "csi0", "vfe0_cphy_rx", "vfe0" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 192000000, 240000000, 384000000, 426400000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid0" },
+		.interrupt = { "csid0" },
+		.csid = {
+			.hw_ops = &csid_ops_340,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	},
+
+	/* CSID1 */
+	{
+		.regulators = {},
+		.clock = { "top_ahb", "ahb", "csi1", "vfe1_cphy_rx", "vfe1" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 192000000, 240000000, 384000000, 426400000 },
+				{ 0 },
+				{ 0 } },
+		.reg = { "csid1" },
+		.interrupt = { "csid1" },
+		.csid = {
+			.hw_ops = &csid_ops_340,
+			.parent_dev_ops = &vfe_parent_dev_ops,
+			.formats = &csid_formats_gen2
+		}
+	}
+};
+
+static const struct camss_subdev_resources vfe_res_2290[] = {
+	/* VFE0 */
+	{
+		.regulators = {},
+		.clock = { "top_ahb", "ahb", "axi", "vfe0", "camnoc_rt_axi", "camnoc_nrt_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 153600000, 192000000, 256000000, 384000000, 460800000 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "vfe0" },
+		.interrupt = { "vfe0" },
+		.vfe = {
+			.line_num = 4,
+			.hw_ops = &vfe_ops_340,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+
+	/* VFE1 */
+	{
+		.regulators = {},
+		.clock = { "top_ahb", "ahb", "axi", "vfe1", "camnoc_rt_axi", "camnoc_nrt_axi" },
+		.clock_rate = { { 0 },
+				{ 0 },
+				{ 0 },
+				{ 19200000, 153600000, 192000000, 256000000, 384000000, 460800000 },
+				{ 0 },
+				{ 0 }, },
+		.reg = { "vfe1" },
+		.interrupt = { "vfe1" },
+		.vfe = {
+			.line_num = 4,
+			.hw_ops = &vfe_ops_340,
+			.formats_rdi = &vfe_formats_rdi_845,
+			.formats_pix = &vfe_formats_pix_845
+		}
+	},
+};
+
+static const struct resources_icc icc_res_2290[] = {
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	{
+		.name = "hf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 3000000,
+	},
+	{
+		.name = "sf_mnoc",
+		.icc_bw_tbl.avg = 2097152,
+		.icc_bw_tbl.peak = 3000000,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_660[] = {
 	/* CSIPHY0 */
 	{
@@ -3753,6 +3887,19 @@ static const struct camss_resources msm8996_resources = {
 	.link_entities = camss_link_entities
 };
 
+static const struct camss_resources qcm2290_resources = {
+	.version = CAMSS_2290,
+	.csiphy_res = csiphy_res_2290,
+	.csid_res = csid_res_2290,
+	.vfe_res = vfe_res_2290,
+	.icc_res = icc_res_2290,
+	.icc_path_num = ARRAY_SIZE(icc_res_2290),
+	.csiphy_num = ARRAY_SIZE(csiphy_res_2290),
+	.csid_num = ARRAY_SIZE(csid_res_2290),
+	.vfe_num = ARRAY_SIZE(vfe_res_2290),
+	.link_entities = camss_link_entities
+};
+
 static const struct camss_resources sdm660_resources = {
 	.version = CAMSS_660,
 	.csiphy_res = csiphy_res_660,
@@ -3865,6 +4012,7 @@ static const struct of_device_id camss_dt_match[] = {
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
+	{ .compatible = "qcom,qcm2290-camss", .data = &qcm2290_resources },
 	{ .compatible = "qcom,sc7280-camss", .data = &sc7280_resources },
 	{ .compatible = "qcom,sc8280xp-camss", .data = &sc8280xp_resources },
 	{ .compatible = "qcom,sdm660-camss", .data = &sdm660_resources },
-- 
2.34.1


