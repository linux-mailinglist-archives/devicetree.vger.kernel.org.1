Return-Path: <devicetree+bounces-196632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C8EB067FD
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 22:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A500C7AC7AC
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 20:48:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E08752C375F;
	Tue, 15 Jul 2025 20:48:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ead4W02B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA29A2BE7CB
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752612489; cv=none; b=UoH0P1ZhtMY5+V4+dMzswLuVudQ2bbfym3pLBQofKKtqHhGdm8ZinvM3s5KuRvn25JCR2wYZtiarrYjvrnbjBlzSYl7VYeLoTSbesvVRuhnQDMGWpEDmkUxDxnCilRLNXr1/trBVSKzsAmVWjhsFS9OXGrmv78so1qiCA1VIJqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752612489; c=relaxed/simple;
	bh=O5EiLgNoX4zrnl7zUWRTzCuo9dcfSMTokUeXVORx29c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=VyGcZb0h/aosLvm4dh8d2ixRBWmciW6mYvWZAWJExPaaOf4zbwc3+Kv6KIzXnyO5c7Piq+s4Ec3860uFSq8+uJxTi6/crp/mw2WULcFGBMGUN8ura6I0g6ZY/4WO3Xb7sL6M8jrUCVrblGh3/vXklSgYnWzDSyIg1AGXXRaMLDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ead4W02B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDERn025762
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yORvCYEbul2
	A41whH+/fjglHUohPhim10fqgtAyMY+c=; b=Ead4W02BGzCyyT51ir5/+OtzIj+
	fEauq1Bl1OZa4SHuq2s/A+doH6/wUaD28CiMwf0Y2RETmd0QYc34TC70KlJJPRMb
	1iswUyDLNl53t4tEPBzZWw7yPBgA6plgpw5fq47xTOErDVk1ddIVy9Z4qoenuENj
	Zkw8l5YEFklhmmeyCSSkDyYi5q6AAc2Pclde96Lhj3XSV7tbQCpEGNr9LIYW2EPR
	jIeBUPEa0C+o14+V3mhC1WoAbLfi5Z071WBoPQJnTAN/oyY7EKIc7SwzBOgxwAph
	JJ+Z7vha/Mccq/g3hnzT8NPy1+0TIY78/INGzu7ewK1KPzBTEgCExrJLjFg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsy1avb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 20:48:06 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7da0850c9e5so972265485a.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 13:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752612485; x=1753217285;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yORvCYEbul2A41whH+/fjglHUohPhim10fqgtAyMY+c=;
        b=kqgab/JflN6t8wZJIWPsjwBrVw28+RuWZ4XAIsufSILYlrHnw1Y8ntpxbXyD8PoNHd
         s0g345bm5eSivsd/kjxlrZ5dYOXFkbAGK1JykN4aoUEktNsscwe/THmAyyH9z7g7dsHb
         ebo0SzmE+aWIg4Ocsj9VkPekpkTS/oSZ5UUj/sU3BY6CKsE4BSR9RlID31LL6TAXUH+L
         uKbu2XRmjAyeGP5vIdKdvwO6ga3gh1mBSJQU1S5/tk4Dm78+eCBu7zcLc8mx1z5HxAP/
         mZEHWz7lxfsKaez3yYk3G4uqzlb6Y5KndoGrVkMeB5YY/Pak/sD2pxJeV55hh6E1q2+Z
         iA+A==
X-Forwarded-Encrypted: i=1; AJvYcCVMsWUOHiHf9PcM/EA8/XpuaejP1CcBQufT555GKUiWCoU0idcGAECmGGHqNg7Y2dsl7KPO2j1A+Lek@vger.kernel.org
X-Gm-Message-State: AOJu0Yzz49/P+nYjPJXly59pJcPExsWykrGKg98KZZZA2WW7TOPCWr//
	D9lHF28PZHOTTUuYqI4jvyYbDJ4pHFBFZ5uo+3xOaARtuh239FpJfXyOKMWxYe+ciQIAvMIv/ga
	2LVn0+U2T56171TaGvj6Z6kCePEJPj+EQF96iV4MPcyaMLrWIfnyGlHvJNKQ9bxV4
X-Gm-Gg: ASbGnctvqGmw4kYg+iySUnfyt4QjlF6hO68aUYuGvlrtchDmzAQJoqyRv2W6KQ9YCMm
	njdp19OyNNUwltctINgND+Yrs0OeaWKDQWsCr+N2WNe9KVd5W9wDdAdP/YIAlqScT55WHL1quP+
	K3zqcRPsXtOeqdBcNQi3jvk/V1dJoImELGE+gQlcsZyMm02+EWv45JtPdOouOcX1Fz6aDUqeoFW
	hF+ohLGW6qjRgUb2O6bGzsj/2pWUKg0xtqCcXtOgPgs+ms7efDcgZWZdFwtAfFaE57CeJ3t/tmk
	3RrFVDj9LXgA/Mne3eArtB7vLCbmf122NTTCpr2CWLhu2/27naXCa8UFNXKB0RAiGcfPfJmO9BQ
	RqjLjQUc88S+4H5cZgw==
X-Received: by 2002:a05:620a:170c:b0:7e3:2d1d:bda0 with SMTP id af79cd13be357-7e342a5ee77mr82160585a.2.1752612485310;
        Tue, 15 Jul 2025 13:48:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFeyFhb5+mniM5F4l13WS+hafGISjrNwouIiQonRZXe9PQwVEv9wtSbHfDDjPFl6t5Rf1nwXg==
X-Received: by 2002:a05:620a:170c:b0:7e3:2d1d:bda0 with SMTP id af79cd13be357-7e342a5ee77mr82157885a.2.1752612484855;
        Tue, 15 Jul 2025 13:48:04 -0700 (PDT)
Received: from trex.. (153.red-79-144-197.dynamicip.rima-tde.net. [79.144.197.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc2464sm16331877f8f.38.2025.07.15.13.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 13:48:04 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org, mchehab@kernel.org,
        andersson@kernel.org, conor+dt@kernel.org,
        amit.kucheria@oss.qualcomm.com
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v7 5/7] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Tue, 15 Jul 2025 22:47:47 +0200
Message-Id: <20250715204749.2189875-6-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
References: <20250715204749.2189875-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE5MSBTYWx0ZWRfX8YFrUQ99wmw8
 rKGwITjRQzUM+y6CiSa1y4flfavgIv8yaHFjjH7SaHcmSh+miEAmNW+NowOb0wnnnjzKGydK8Y7
 BXHtznVZEQjJlVbE9z6ZbLPszuZEwvxTrBigrz8+dF5Yfbin4KqHrely4TurkTByGN4366yOM+J
 DlFEbtXhVb7rMygibOyDYXSwq1EmFts737AoJkhvek6uGEEYk8R3wdNkCwkipmGX5euRH1I34o1
 h8NqkFgFtCXHkkbO9uT48dz8bQduLjZvNRuktI9/rM3wQZDGTi011h7TxXBeIXryirN5wLlqfQR
 d5R3YYcM7mwUO78CRsEwgVXrLFD1BSOkDnQe6NcNJlhWon/6D3JnUDO0/Pnb9BkpBt9cdeHV/rP
 x5mtn39knsJTdBajOZOw9zwL7EvN6cuRkFEjhKJa+uQk31kuEBEqo6v/RHnGjzCxQy67G2GL
X-Proofpoint-GUID: z-qtz5a57mYlN3ekGjSj3i94mKvMgmSD
X-Proofpoint-ORIG-GUID: z-qtz5a57mYlN3ekGjSj3i94mKvMgmSD
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=6876be86 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Ki5fnJvzvo7yLsyA0quaxQ==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=KS-C2OkT5QpsyoF3dlgA:9
 a=IoWCM6iH3mJn3m4BftBB:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507150191

Add a qcm2290 compatible binding to the Cenus core.

The maximum concurrency is video decode at 1920x1080 (FullHD) with video
encode at 1280x720 (HD).

The encoder is not available to firmware versions below 6.0.54 due to an
internal requirement for secure buffers.

The bandwidth tables incorporate a conservative safety margin to ensure
stability under peak DDR and interconnect load conditions.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 drivers/media/platform/qcom/venus/core.c | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index bad49f0b4a77..2c9e2e0f95f5 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1088,6 +1088,56 @@ static const struct venus_resources sc7280_res = {
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
+static const struct venus_min_fw min_fw_encode = {
+	.major = 6, .minor = 0, .rev = 54  /* encode min fw version */
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
+	.dec_minfw = NULL,
+	.enc_nodename = "video-encoder",
+	.enc_minfw = &min_fw_encode,
+};
+
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
@@ -1098,6 +1148,7 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
-- 
2.34.1


