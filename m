Return-Path: <devicetree+bounces-188309-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 615E4AE3784
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 09:54:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3FE43B8A53
	for <lists+devicetree@lfdr.de>; Mon, 23 Jun 2025 07:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAE4221FC7;
	Mon, 23 Jun 2025 07:50:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="muVQYezh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A37C20D4F9
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750665003; cv=none; b=QmwkI2pyOrpf5f3t0+UU75b9yCPnvV7E8bNmY8pfInEmr4c3tdkmaQoeMdxDYe+gduQiGG98FY429y/58ZSIKXfGZ0XC+9Amx7iMFqE5C8NMKbTAdGCRZpUQgZS1YivDDXiidcveR2uvzmygaGj67lDzk1JE/K1vv7b7kUxEXhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750665003; c=relaxed/simple;
	bh=cH+A+MjcVGC/i2HYnkR3s9WU3JModY4E/GfJacde7uY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tpo5M3uyBuCe/WzUTP0jucKBQk9Lck8T/fePF3oRBEiBYV9YBedmpfjDqH+VPVQVdlNHw26rA4I63eGXyWZ+YRS2DaNeBIR0oamr3oKyYYJptYXeFyvNEEGtkfpTHy7KbgIc90/fL3u3hBVm6kgLA5Xu8Qpzn9FEu/eNiHpx1qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=muVQYezh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55N4doke015249
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=8J4xLisib0P
	UNCX7F+6K1Pljmp1lAqOEWPlHd7U8+GU=; b=muVQYezhMoadTJs6WisDWTZD9gi
	jogcEItcj7Vi0F5tUZjspsf+zhPwoYNit2GBWJR4zBGWOtfZwowjADHkehOw8tos
	VTiWl6CIUkriJXH43Bvmzovc22wyFbN6ZBX56KDy2FAybdKREUA7EzYp1YEwLKw1
	I0YtfQEt0IY6sLtruhYTZyt5xdfHjB6KRWA2GCuHWCyZY7oR+gGI80ml9jPjvRGu
	6tlByTz3/qhkV+LeeIOS0Y2z1i8Jl6QlqNwlno7VEOagLT9hBoTupIvJr9WdkDqM
	jabScxQPYTPkWDQ2phpoHsywQei1mSDhayCuzkqNUkbJrgYJpTSpsljUi7g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f03b0g9p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 07:50:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c760637fe5so576662685a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 00:49:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750664999; x=1751269799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8J4xLisib0PUNCX7F+6K1Pljmp1lAqOEWPlHd7U8+GU=;
        b=HtdSb/3FV1KB9iXf1znK9isNh6dWbrg4T71IrSgnCQ7a8QNp2u3g2jL3bIntfDEZnx
         HADXZ474/72I7bqEZ6oAWOr7tRo5EJvEAaagpcETgt85WbM7g+pcZfFK5Go7eLB4Rz/M
         cGllAUVM0gT1QCK7PnVhKIJZm2CBjhPzOC3YJ7vfmjl2kgHNbplias+cKrJMy9x/f8TK
         oD70vi7oLZBpCgOsE+gKQP9vmjyFyeSKYTbNp0eCKDHJsbHRkAeVSUrdxQF2sOmBnyGm
         SMdpZHYUWn2c9YNmmZUpqZm8ITw12bcOiM9HK52jba28dMJnDHLte1u9ny4MWOIdJdYf
         1dQg==
X-Forwarded-Encrypted: i=1; AJvYcCUcCQqOCYj53l0wVLz2NenH9353cV53oPBaViOlroalUGdWKLbC2psiec+1WPunS0A1zMor92Y7fW2p@vger.kernel.org
X-Gm-Message-State: AOJu0YyfYy4q0el1VXoXhuSpSA4jc8+1bAf3LwfR2uQf1KjlhODzY6Rh
	6AYXu1jwVq40U6tcap4RUh3DTBiTapWDzlr2zLbRvofEkQNgJGDh4NPEarQ6X8yK/9jQ7Byuw3I
	QnjCtfnoCM44CDVrbZ2oI678GkfbbzZ+hLPoQgfJpf5NBz+aJwoAXVhUupttZguZG
X-Gm-Gg: ASbGncuJQRUA/J9zx8EPmOmGe0dnfGSKU2GdzTqTTrnD3O8CA++Kafapcg4a3eax2ED
	yqQoGPD2veMYRXPAR1tFiiHc4vL1pqDkofk9MWaVDBkd2evnz3Auwe++bjARAEAUtlGyD7h7HZO
	vp6NGDa8T2kA3H5HqmQVzxewjGdCCzNvrZPUpWb9n1xfuQbTs7T0MYpdvG7Ia5RzH/Sc00YtsDI
	UtLkrkkN8nO0M3VXYXb4iNdkVUapMaDGvvuIPCwDWd16Rtsh4ZPNGhWrq2ew7UsWu95XZAfVWFh
	XaCcVCw9mEKY85VyImKcs1lCtA2/t3z54DR4iM1yh0junAc3sm+rPSCv10V2TuMB+WynhL28MtA
	6
X-Received: by 2002:a05:620a:4403:b0:7d3:a52a:125 with SMTP id af79cd13be357-7d3f9923f0cmr1477815285a.26.1750664998703;
        Mon, 23 Jun 2025 00:49:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGGPyNOllQk9/Q2F0cGH3t0SOxPclBqyGCztEZ0NQrWXoprecRp0lVRoYZaMH2VHLGHf53KA==
X-Received: by 2002:a05:620a:4403:b0:7d3:a52a:125 with SMTP id af79cd13be357-7d3f9923f0cmr1477812985a.26.1750664998238;
        Mon, 23 Jun 2025 00:49:58 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a6d0f17ac7sm8755313f8f.23.2025.06.23.00.49.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 00:49:57 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 4/5] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Mon, 23 Jun 2025 09:49:39 +0200
Message-Id: <20250623074940.3445115-5-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250623074940.3445115-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: oJxeb8WIgmL0nnORUrTo7HT3cJar9fk_
X-Proofpoint-GUID: oJxeb8WIgmL0nnORUrTo7HT3cJar9fk_
X-Authority-Analysis: v=2.4 cv=CPUqXQrD c=1 sm=1 tr=0 ts=68590728 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=6h1BjrdT-BD1Ylfs7NgA:9
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIzMDA0NSBTYWx0ZWRfX93rCNEprVKHU
 TkcLO2Y0a8OHxjO/KKN9MpyDuzlgNUe/U2lhvk05jcyVlcfC7jiAD85P0a66+6gvoyZlo6TuPlM
 rNbNm86A5ASM5WEB3I7TCFCcpCx8msK8SA2/Zzj+jzxVH2ZSVDB93AKjevGKTEdGeIBX0eayxoo
 lcqSPHFfiipx1m0sZIL+JAsHWKlTdlmlwEzfo5RfMj5kP1wuCjUyJJev4gD5bvpazJFeSoDh/1t
 Kdgq3iBXThW1wSZBA5ovaVS61TBdnE+rTItJic2dSDJJnFLyFlKL87u7s6o8pdydAOo8+CKaeQh
 ZsE3fkYgY6Iw5p0bnEqYxOvCxQix4lVqCpahdiELHqvsHKySmtGLDfucZJXS7fKdp+Q6ghmrkJ3
 SIVvrjQJpA5Y1ZkkUFOdqvT9KoDZaV4jlHgXdO/gjodbvuWM1/kTRCAwygQ29MkayFoMp8Ts
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-23_02,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 lowpriorityscore=0 adultscore=0 mlxscore=0
 clxscore=1015 bulkscore=0 priorityscore=1501 malwarescore=0 suspectscore=0
 mlxlogscore=999 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506230045

Add a qcm2290 compatible binding to the venus core.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.c | 40 ++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 736ef53d988d..81fcda8fb4a1 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1062,6 +1062,45 @@ static const struct venus_resources sc7280_res = {
 	.enc_nodename = "video-encoder",
 };
 
+static const struct freq_tbl qcm2290_freq_table[] = {
+	{ 352800, 240000000 },	/* 1920x1088 @ 30 + 1280x720 @ 30 */
+	{ 244800, 133000000 },	/* 1920x1088 @ 30 */
+};
+
+static const struct bw_tbl qcm2290_bw_table_dec[] = {
+	{ 244800, 2128000, 0, 2128000, 0}, /* 1920x1088 @ 30 */
+};
+
+static const struct venus_resources qcm2290_res = {
+	.freq_tbl = qcm2290_freq_table,
+	.freq_tbl_size = ARRAY_SIZE(qcm2290_freq_table),
+	.bw_tbl_dec = qcm2290_bw_table_dec,
+	.bw_tbl_dec_size = ARRAY_SIZE(qcm2290_bw_table_dec),
+	.clks = { "core", "iface", "bus", "throttle" },
+	.clks_num = 4,
+	.vcodec0_clks = { "vcodec0_core", "vcodec0_bus" },
+	.vcodec_clks_num = 2,
+	.vcodec_pmdomains = (const char *[]) { "venus", "vcodec0" },
+	.vcodec_pmdomains_num = 2,
+	.opp_pmdomain = (const char *[]) { "cx" },
+	.vcodec_num = 1,
+	.hfi_version = HFI_VERSION_6XX_LITE,
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
+};
+
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
@@ -1072,6 +1111,7 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
-- 
2.34.1


