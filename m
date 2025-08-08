Return-Path: <devicetree+bounces-202640-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE72BB1E4BE
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 10:50:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4D0718984DC
	for <lists+devicetree@lfdr.de>; Fri,  8 Aug 2025 08:50:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20CB026E17A;
	Fri,  8 Aug 2025 08:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gRkfAeS6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D672D26CE18
	for <devicetree@vger.kernel.org>; Fri,  8 Aug 2025 08:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754642981; cv=none; b=u1sv2B3d0K07Z7YclOMVw2OfLQfhXNZrJnbHmgsUJa0ydDGjKPJfw6Oyq/f80HKcdvIOFKlAznmluccn6PdnVk8h6sG+9FU/kDJwMM4MVtKKWWmhIhngywjBwqD8lnwGLqaxTbQ+WA68Jw99qa2oZxkeyJh+pfcn3enuU1fucF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754642981; c=relaxed/simple;
	bh=dARtMRs88U+SkvksFaX/4ibKTv2r3ZxeZPWci1xWpd0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=UzqrC63VJn8I/XjZ1OyTUs/tnO8uHEWWXACe8bDkk6tjZiKS/CRMNUUpvRtFhk43ydnT1OWZxWbUaSIEyZxCOPVZQaPaY/7lMtytgRxILyJcuH0DVJCg5xtHOKF7w28uoei1GQrT7MJ4Od085rjrGZa5kzFx08zDBlFR2OppV9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gRkfAeS6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57878MHs018047
	for <devicetree@vger.kernel.org>; Fri, 8 Aug 2025 08:49:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gdpKkg3HGmZ
	RyeizFHxrsWvpDDfvGRJLvLm05RIe+XY=; b=gRkfAeS6fKgZ+079cxiajdKtR7E
	cqqqzmmVU2wbqOSqLc4mvErqanRsZIniYGBqzoL4Rt5LBiT5CdCvjJjaqZY3RU8c
	up0Vd5LqUWkthe+Qa26I+Aqr+WrxThywiuNGByhIcvqbDTLTY3+DoB6kOvSEUiT1
	YF7KvbuOAwVz6ACSnYhIyocfKr7fvsctN7oZXI/mfSSbxOQ9uCJwuz7+BtrsvX3O
	a2iiYT9LEKgehAWl/OP1+vKj37BBdAyZNYOAbixarYqYcyeJb+MdhAiBoOCU2Olg
	57V4Tz74sZaMERJNqyyBPIJbB6UDbOCeLZnuwFcpCsC3CQRbAi60USlCMwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48c586exuv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 08:49:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4af199d0facso55178191cf.0
        for <devicetree@vger.kernel.org>; Fri, 08 Aug 2025 01:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754642978; x=1755247778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdpKkg3HGmZRyeizFHxrsWvpDDfvGRJLvLm05RIe+XY=;
        b=o0eler8WUet7PZApOyOVK95rxL4Nkx14OZVQuqVaI172sSI5HoIWI+v7WaKuQgsbjF
         7XcFjx8/ZTWBMW5K44Na1ltSxgb37mCQvFM7N2Tn9+2b5JPRibWma1EFwSQ+7+dkunHT
         eTWijLlrvEJOYdJERgjQMsBE1TfcpGOBGqeIYOstmGEFwx2yFXe1Iie+zwAzOuxHE/Q8
         smu4wXh0PbHihwKBLqA9PoCrxZfGZsR0ANrtbLbkne/Rj7+vghrZedPDk6gbCey56zbp
         27W9zZgIMDNZIA5/+nj3lji6278+/3pYYMjuyolT1Z5h90aGC1OtU0qdMrSpxx33Ls5A
         ZOpA==
X-Forwarded-Encrypted: i=1; AJvYcCVkUXdh5GE/xJ+SoTrKcfytDCV6/OcF1v83c3z2rhr43097EuYd/M0oiiJtodazmd6E+ztXF8NyT/2N@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwPZ+XQ/1rhtXDHGu4g3iwGlCYEt8vWrpssGGHhn8ive+w9tx
	3TLcCU9ll200SI/Fl//sSkWDBJh6p7LWB7fn6h3alpvanvf9ufv7obEZ4ZNH7nuFwJbio2+PyKA
	K/pCh0Ocf7/9raZg5C3nfIMt/JaoPQCSbfmlEYTlFYLfB6qRjiFs+7KL9Ejb/Vnuq
X-Gm-Gg: ASbGncshgT2G3k3pJjSOzLlFE5XqzBCLjl6ANWwy3KnRH6pvNswHlBRgh1pA85voj3t
	Nbdjjbsj96JvVpnD/71s+CCSygcKmcypegOKp9sy+lHpwui7bK5DolSYtYDtQAfPHFUneblwrbz
	xb27c50YsuPLuR9ZEFu9g0NjbuOOmuYJdVKp2USyyOx9eQXOPQcTHoYcift2c4SO5RWB6+VCJug
	mQ0OxgiWxAW46sDenhZeNHxy/kYv5AO3/flGMMBkmIbthTmxBZWm43cub1ysrCVRedM0ADi77zR
	WYDoZx71NS6AWJOoePJ9TptRxm/58kElWPW7nKUlRdxkUfJzNem9qYCB8WjOM5lcW0q3x5G1EwT
	ys3zsp1mHKfj+
X-Received: by 2002:ac8:5e4b:0:b0:4b0:7db9:92d7 with SMTP id d75a77b69052e-4b0a06eefbfmr94523651cf.2.1754642977612;
        Fri, 08 Aug 2025 01:49:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEguep/u/Npa26sKOi/vH/ZjbSdbK+aUw3YEpsOPlBPMGTppeQE2XwHp4/7VlNOhHsDaotKjw==
X-Received: by 2002:ac8:5e4b:0:b0:4b0:7db9:92d7 with SMTP id d75a77b69052e-4b0a06eefbfmr94523471cf.2.1754642977131;
        Fri, 08 Aug 2025 01:49:37 -0700 (PDT)
Received: from trex.. (205.red-83-60-94.dynamicip.rima-tde.net. [83.60.94.205])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-459e58400f5sm122904295e9.2.2025.08.08.01.49.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Aug 2025 01:49:36 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, konradybcio@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, mchehab@kernel.org, robh@kernel.org,
        andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v9 6/8] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Fri,  8 Aug 2025 10:49:21 +0200
Message-Id: <20250808084923.1402617-7-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
References: <20250808084923.1402617-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: X8-t08UfAhvL6VPs_tfmw2H_rNfdPQx8
X-Authority-Analysis: v=2.4 cv=MZpsu4/f c=1 sm=1 tr=0 ts=6895ba22 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=Rr2dNH5/fcnoRoBmcVUeRg==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8
 a=5fA-3PHwp7xA7VOvTvgA:9 a=uxP6HrT_eTzRwkO_Te1X:22 a=cvBusfyB2V15izCimMoJ:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: X8-t08UfAhvL6VPs_tfmw2H_rNfdPQx8
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDA2NCBTYWx0ZWRfXzMoXCHzZZ8L0
 ejBZJOcbi6jeWwzsngSBwxLqoHApC923YSihLt7mTO4iIbTo3E5icOBXSIF4Y9UNz9RU/UPyX9v
 1lFTWJZBeus9gSXhsGRtj98zM7Y7yk8isxShIr+iyuBkiQ+tQFSXgjPyGrdVf8/O5I7Im679vjJ
 3GV7zcnC8kTDVB6tgC2QS0xTesywzzdN1XYSLDBp+89L9vIuHEFDvpxVjjo/3ujNeXdpQ5ogOXb
 3tLUzzExyFtxR3jVYKiIRbJCT6uwObZ1MHJj8vnw8OGeXTqXImIpElqOE55o9OoBUVJqfGBv7a/
 1tDhSBH7cq2jS9wGfpZ8v0PieBm9js4Zy8sPRbXUIJ41O1eTSSn1KcuEscVGDLfn++4IsXiWD60
 BU4XYvbF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-08_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508060064

Add a qcm2290 compatible binding to the Venus core.

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
index 9604a7eed49d..a7c960d1d818 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1070,10 +1070,60 @@ static const struct venus_resources sc7280_res = {
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
 	{ .compatible = "qcom,msm8998-venus", .data = &msm8998_res, },
+	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sdm660-venus", .data = &sdm660_res, },
-- 
2.34.1


