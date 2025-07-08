Return-Path: <devicetree+bounces-193963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E879CAFC5C1
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:33:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 830431883CCB
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:33:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F7D2BDC06;
	Tue,  8 Jul 2025 08:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O/8vnXKR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759132BE7CC
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 08:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751963560; cv=none; b=c3Q+INSzoVxp8cNEUmaJ43c9ulVgE4Xk8AsrRy6iyGbVtG85xH28liCcsGTFOuIWVAWs9+Nxh6DOAv2jqGQGORHtCpd8DBeCop5MVNyf0AFH1DIXX5Rc2X5ZXXCgbeiKC9zcEzx3chzn18LCUgOOI4Pm6jC8ui/FJR2Xic9Vecs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751963560; c=relaxed/simple;
	bh=sy7etJvp40+QN1X3+XD1Dp8MZZyvRF5vVAH/CZcE3wE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VOmEvPI8A/SqjeiSPqLMk3Af3ByohaEuqeLxQ79HGqCMEbbZdfiDJ4EK8/LFXeBqmBVmEmrEwQzKHSmJ2NnIwOopS7+mRyyUlZgSPLA7KUIbn0TkZER6NuFH9JAV+G4LBt1H0zOnQp76+o9nSv7XQqaLsPXlffZEknnQHHphSr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O/8vnXKR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 567K3rIw012489
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 08:32:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Gxypdv/U/yE
	GEYqfSc5KaSCh1BNkteGVz6FdJmGRaQA=; b=O/8vnXKRHSzkaQhTTBiAKiEDtRA
	GmuLHJ6kgT4U/AzJcXFzv65asaQ9qcqSwEjfPF/J6FBotDl6HQWEsH4Blt6mWtZT
	7ZN4AHZM7NI27h/V8KrPFSMBve7KpyTD66whi8j9ThGuUmbpkpbEqGcob4IDkwAV
	vBhh3rMbP1ElMyPcnXjO9VzVZXdMG1emx0RDrSr3uYvFGp6n9jVXlPf+RUNnwYFS
	VcfPECJfqgyYrM1wrIQ8S0x4Du95PH9GvB0p931OM0EUaHeWsJTRFhMgialdwGBK
	oTN3WXdxp2az9xugoyxV/P9Biad1/oHEsOpR8Jk9PNhNo9vltuZa1vs99UQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pw7qka4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 08:32:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d15c975968so695619585a.2
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 01:32:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751963555; x=1752568355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gxypdv/U/yEGEYqfSc5KaSCh1BNkteGVz6FdJmGRaQA=;
        b=gn9oA0yE5SxnRphk1Ucz8aYJSVbQ5tWKKZPGy/Fbv6RXiyCUtlS1ao0mgpvipBCi2H
         +J3cJ2c1bXRjA5iph3GPAMWjv+fDYbnXNcZLmcIWSKSkLgzunH0EBmJmUHzLKhbrxVUb
         2dHPaCZLx24z7gPas+QjdDJ9Lk8Vup/FElGlqbp8XPmAGKOUeLQVKMcUsADK5bMFBnLU
         NrOH7ERP5fZlRDtD68N5rOLH1+YhXcFk3SQWL5jU0B4eQEvLqljbEPkC8mo155Gtcnkn
         w7Pxv8y9iy6MiT30qoJN74QwNTv93QWiP79v3BVUCMxEU8z1K6XvvMmfSn8y0oCZ5DGa
         cwfw==
X-Forwarded-Encrypted: i=1; AJvYcCUFjRB9QyMq9+JqaJjxnVnn2/IHi1sMmNG2lzKXQXo6ukcYaAH4y8owTV8RRgX9ZfFL8lQhfviWlS78@vger.kernel.org
X-Gm-Message-State: AOJu0YyjObw/Hxe4n+c92WE6KGe6NemZ0lvhhuIJWnGTPnPpPqtb/HsR
	0pSgy7F97JHucD3vddrEY5FvZYZzgMqMBXidBC3cpzV9Wfr/l3vkYxyKyUHZy10t3buyvIpa0ug
	NVRWNUgsmsRjvKRIrHnQHX3BJANM8Th4Mu1pTeLQxTHg2P07ARMB/edeJrsi00R+H
X-Gm-Gg: ASbGncvKPuokm3q5lfLlirG8lunx2qq0b+N92iLrpV3eBidhCma6EDPKrtj2khmUhTM
	UBrkv5QojcjHDXczKxHHOOfCppCuQ2wNct4VOurfECPM3qyZYFuCGxwc3g9Y1W6Abg1qgPlmyRP
	9pgZ5qWc2PnyO9ZhPFmP3wOpXLazHFR3viflQc5pfNCjShD0M0/ZnfW1IiUqzeRp6/vl5ALYy/A
	SnKpztYrkV5nHDBToSyoVLUfzrKQh1ZyYAVVpVwi9+2DrY38GlunHVti+EvVylAKo6v9rcaMAXS
	Zhp2N8vSi18eyLp75YFvh3p8RAsq5sY1RPHsjua8xCupz8ey6TdMF2o9AA==
X-Received: by 2002:a05:620a:31aa:b0:7d4:5fc5:807c with SMTP id af79cd13be357-7d5df1031bamr2125058585a.5.1751963555015;
        Tue, 08 Jul 2025 01:32:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEYAyWsVH7r5rlHcbI+OVZ/mFvOXASc4NeR4Xre/0WnNuIfZEfU2XXz5X/IWLi2lUGsijDOWg==
X-Received: by 2002:a05:620a:31aa:b0:7d4:5fc5:807c with SMTP id af79cd13be357-7d5df1031bamr2125054685a.5.1751963554529;
        Tue, 08 Jul 2025 01:32:34 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:953b:906f:73bc:cc41])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b4708d0959sm12315812f8f.27.2025.07.08.01.32.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Jul 2025 01:32:33 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v6 4/6] media: qcom: camss: add support for QCM2290 camss
Date: Tue,  8 Jul 2025 10:32:20 +0200
Message-Id: <20250708083222.1020-5-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250708083222.1020-1-loic.poulain@oss.qualcomm.com>
References: <20250708083222.1020-1-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA2OCBTYWx0ZWRfX36RsJJFHKZAt
 +j0TfIG88wyRlymzjrAh1huQY86d2+J5pFcQU+bjl/mJi7oNfSIvC7dfNXySukCem3tOQ+qquG3
 aC1kTeITrDtyL27YB3Yk17CLTakopsMXSttcnUssB5P181xIZxNJEObR/L8QXqqOqsp171O5w3k
 WtAaYd3RndPuW/kx7Ml3n30YrUdPUSvCGc9+14zhYdIbDrKWhpJfSE3pzW81kiB6NI3h1jrazLA
 4XZ5PHGuvNAQvqpeuRLblgYVpGxRSMozc+XQqr4PK4ptEOf/c5bQ514aLijw2H4F5dxcIF1/YAK
 hC2fvtE8mMJ0ITRgoibjNJL9cNBVD6Xk6zSeg9TaKceqK8AfAMqBh1Bhh3JclfsMUUlfRjK27Y0
 ugonPupdbbAOcvqLS/p5TFGiIIT0jhsbi+mWYJMfQdm9tb1O+yCXP8CnSvJD5VWR4F/qGP4S
X-Proofpoint-GUID: apqT9_fXiC1t-JaIdYgmgxDkJ4bmncKS
X-Proofpoint-ORIG-GUID: apqT9_fXiC1t-JaIdYgmgxDkJ4bmncKS
X-Authority-Analysis: v=2.4 cv=SOBCVPvH c=1 sm=1 tr=0 ts=686cd7a4 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=Wb1JkmetP80A:10
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=c8dJUS_lH9wIvx9YmlQA:9
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_02,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 malwarescore=0
 adultscore=0 suspectscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080068

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


