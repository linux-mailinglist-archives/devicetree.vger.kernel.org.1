Return-Path: <devicetree+bounces-201813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 612BCB1AE99
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 08:45:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8160D17A0EA
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 06:45:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E1D0238143;
	Tue,  5 Aug 2025 06:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RJjncFcP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A71321C9E3
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 06:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754376288; cv=none; b=XFrl680Vxaj78rRtrJJxtyJaufPnmbnh0NydL7+o4rB84pj8p3Junid4f9fC9SLdC6jP3N4VWoRuZjxCnZGVFyCHlkFRdmItOkK6+rD7iB1Bnb93cVVC9K5LG0nLEhGzzKtjE3o1Z9YYRSQkPV1uTNcH1NGRnwMVQk3fWuwqHus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754376288; c=relaxed/simple;
	bh=K4mCViCHCWuXv/g4/AJKSvpp4YQj0BbDQ6qxHf9Frmk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CwLzDkQOTFM0XMTxIwZ9YlNo5XPz1F3F1MXkgNQa9EYkaHUdIukqZ7sP81uP9kKMz+oG1aJ7ZJ4vPg8rYT+HLK/sG5o7wsuPxjOm+QqYNR5sIyQzRQxwY4rlMXa0fs/p0nVi1RtkPH77IVDGUM7SXroBye1lkqF9wbDx9kCqy+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RJjncFcP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5751T0We013729
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 06:44:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=+M/8qH7Msyp
	gORIluOg3H4YeiT5EdzbwVLL3V4pOe+M=; b=RJjncFcPKpTelP01psr7odknSo5
	aSVjEYCMeEcgZPObYbLUAsGa/SshrIP3DnJY78L7oTx5DfiLGiF5x8DMHyk/3SV1
	8pdMEvTrtp0ysanKb1RZaxeZFIWptamkiugKS88/Ty/5z6FGAny6eVe4sCW0UyBw
	Yy0bNTy41TLMfS7oHFoucZgCRVTEaPvM8igXpKV5SUU0Nz+wRu1qU+3eo50ajXZM
	9WEljbNv7nGJUeXHGDA24V3rO0s5cQ9bVg1EYdy14OpJqqrmw7FtlCHuXTxZDrCa
	/LlTIFbC254p0UMUrW8mrIW1U1qELg21iYBrE5wk+nbAzMbhSwDwwLl4RzA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48b8ag0pff-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 06:44:44 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4aeb8b6acd1so79354631cf.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 23:44:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754376284; x=1754981084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+M/8qH7MsypgORIluOg3H4YeiT5EdzbwVLL3V4pOe+M=;
        b=ZJxiBPrEc79HGTZ/YNQ1CZFjFi52gX85oJ4TOAlq2jyJXG+j3UVXpM9ZRuJdXwXzrV
         Wm3wbxEtkfpDlydTQTxwvXLoxGsXcwJTumT4RRI0iRgFEYtg9r9cp6XmMXf8q10H6QzK
         fXs23VkOj8HhNublDVtuvi9iLwym5C6X1DMfWH+Hz09hdMsz/LccXrJNSqVVxrIQT38y
         Po2M0GRcmBxmGd3uzedwHJ6dn3hP0tobpiVNghr0Kf8MJ6LfQkbhb4r7vzUM/+VxUsg+
         bGP+fo4oZA04NjuESJr10F0Fz7s6dJ2rWBVH1dOdR6WsRaTqYw7TI7w+FPA5pwOS39OC
         PZ+g==
X-Forwarded-Encrypted: i=1; AJvYcCVxLRclLpP3ydEX+PhJL1EZOvthXBc9c3RJtQQdwGJfsPN/UGuvWgWiYyAQL6xI8WqWaRl9QjniZGPB@vger.kernel.org
X-Gm-Message-State: AOJu0YxB+Jx9BKo4a5GksXdnqWncHy84e17rMTO0Q8FRqIyBh0UhXlCw
	GkCe0vMDX8v2N4CxSy9qLOG3WqvsPCgnC1e9yjEQv1K2YHNaGfHohCrYGHDFORsGjAGJJGU/sPO
	ZrlDoHUh267Ki+GM3bR4ZmYddELGiSGUqNpEXDpd6MfobI/+XmMMZqxdAodF9Kfk1
X-Gm-Gg: ASbGncs7CXtMHcFn8rFE0IxipGsdxjhvS+kHLTUfAOtnovVUMlkGARg9SB9OdtbTdAy
	Xfe/p5LsUSfrcebKMQPN9pGo5JjZ5MyMMHv7OpUzd2z0eReCTMJI5VIvfviG6gjMSeGUV6zVrHf
	LmmZaC4eKjwX9orvHLdBgQ+JI6wIZ0zVvuhYWShI7mNGeESbkEvwhlNzmJ8YlF9ftO1iQRP3VAk
	9JywQi3CZC+4q97b5rufioNA0Nj29rj6ri+/1jBVVLqPKnao7GvSw2wzK73iWucFRkEgB0gPHWA
	oxRj2cDTbf7nXU1U5Ru+Do0mI5QTMGG1uPaoqSniU3VYSFNBKn7z5wsjoh/EfuDz/X0gXQRRwwZ
	/ZOtJcfKLH/+M
X-Received: by 2002:a05:622a:138b:b0:4b0:681e:abdb with SMTP id d75a77b69052e-4b0681eb979mr109131501cf.28.1754376283683;
        Mon, 04 Aug 2025 23:44:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSfdnAqhmXQQ+vuUhuVgCmpAmNLrSe16OUeFjQWiJjyBL/9kwP0NnsALWpSPWMAwe7Vg9hZw==
X-Received: by 2002:a05:622a:138b:b0:4b0:681e:abdb with SMTP id d75a77b69052e-4b0681eb979mr109131291cf.28.1754376283208;
        Mon, 04 Aug 2025 23:44:43 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589ee57922sm194015815e9.22.2025.08.04.23.44.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Aug 2025 23:44:42 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, bryan.odonoghue@linaro.org,
        quic_dikshita@quicinc.com, quic_vgarodia@quicinc.com,
        konradybcio@kernel.org, krzk+dt@kernel.org
Cc: mchehab@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 5/7] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Tue,  5 Aug 2025 08:44:28 +0200
Message-Id: <20250805064430.782201-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
References: <20250805064430.782201-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: KvizR0W2i84sSqk1uJ8vbN62wxESl4xO
X-Proofpoint-GUID: KvizR0W2i84sSqk1uJ8vbN62wxESl4xO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA0NCBTYWx0ZWRfX42335i4b+XqP
 wjh42NwnNU8gjoGNgj1Yxm6w3DhWB8HOSu+uDXb/07Uiq4gx1UzRif7SQ4ppDdjz7H0ZeGv7CYy
 erNaMR39p7wQgh5RVVJCA624cD0IRu3pXa2Di0FXwN6rV/tmhmt7sfYoejFXvKl3bL/F4NcA6V8
 z7SK26TBTkthTmcHxxe3+qvIdX4277NgmzMw2vch0nJmvH/LTXRRDZf5oUT2eD/oWE3mHWXP04+
 EZwiujgQZDQ/IkV0uJe3BlTDlr6vJhoktkBGw7sLNn4iH08hHR8XWaHzQNYIxHH2nV2SvLaDdLP
 ZD7ulAFF4y9fJd6s6hN1azHyqKv20MDeu4+l/DfuPXls4peh7g767tyayFyVubc+cWEc0wt1TTf
 M/0snOGrBs/kYs3qiFbQTg1lQqivVoq3vq8gN6RLdO/4dU5xI79ulJoNqbjklGZIV4STFLb9
X-Authority-Analysis: v=2.4 cv=aJvwqa9m c=1 sm=1 tr=0 ts=6891a85c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=5fA-3PHwp7xA7VOvTvgA:9 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_01,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 mlxscore=0 adultscore=0
 priorityscore=1501 mlxlogscore=999 spamscore=0 impostorscore=0 clxscore=1015
 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050044

Add a qcm2290 compatible binding to the Cenus core.

The maximum concurrency is video decode at 1920x1080 (FullHD) with video
encode at 1280x720 (HD).

The driver is not available to firmware versions below 6.0.55 due to an
internal requirement for secure buffers.

The bandwidth tables incorporate a conservative safety margin to ensure
stability under peak DDR and interconnect load conditions.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Reviewed-by: Dikshita Agarwal <quic_dikshita@quicinc.com>
---
 drivers/media/platform/qcom/venus/core.c | 50 ++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index adc38fbc9d79..753a16f53622 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1070,6 +1070,55 @@ static const struct venus_resources sc7280_res = {
 	.enc_nodename = "video-encoder",
 };
 
+static const struct bw_tbl qcm2290_bw_table_dec[] = {
+	{ 352800, 597000, 0, 746000, 0 }, /* 1080p@30 + 720p@30 */
+	{ 244800, 413000, 0, 516000, 0 }, /* 1080p@30 */
+	{ 216000, 364000, 0, 454000, 0 }, /* 720p@60  */
+	{ 108000, 182000, 0, 227000, 0 }, /* 720p@30  */
+};
+
+static const struct bw_tbl qcm2290_bw_table_enc[] = {
+	{ 352800, 396000, 0, 0, 0 }, /* 1080p@30 + 720p@30 */
+	{ 244800, 275000, 0, 0, 0 }, /* 1080p@30 */
+	{ 216000, 242000, 0, 0, 0 }, /* 720p@60  */
+	{ 108000, 121000, 0, 0, 0 }, /* 720p@30  */
+};
+
+static const struct firmware_version min_fw = {
+	.major = 6, .minor = 0, .rev = 55,
+};
+
+static const struct venus_resources qcm2290_res = {
+	.bw_tbl_dec = qcm2290_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(qcm2290_bw_table_dec),
+	.bw_tbl_enc = qcm2290_bw_table_enc,
+	.bw_tbl_enc_size = ARRAY_SIZE(qcm2290_bw_table_enc),
+	.clks = { "core", "iface", "bus", "throttle" },
+	.clks_num = 4,
+	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
+	.vcodec_clks_num = 2,
+	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
+	.vcodec_pmdomains_num = 2,
+	.opp_pmdomain = (const char *[]) { "cx" },
+	.vcodec_num = 1,
+	.hfi_version = HFI_VERSION_4XX,
+	.vpu_version = VPU_VERSION_AR50_LITE,
+	.max_load = 352800,
+	.num_vpp_pipes = 1,
+	.vmem_id = VIDC_RESOURCE_NONE,
+	.vmem_size = 0,
+	.vmem_addr = 0,
+	.cp_start = 0,
+	.cp_size = 0x70800000,
+	.cp_nonpixel_start = 0x1000000,
+	.cp_nonpixel_size = 0x24800000,
+	.dma_mask = 0xe0000000 - 1,
+	.fwname = "qcom/venus-6.0/venus.mbn",
+	.dec_nodename = "video-decoder",
+	.enc_nodename = "video-encoder",
+	.min_fw = &min_fw,
+};
+
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
@@ -1080,6 +1129,7 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
-- 
2.34.1


