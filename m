Return-Path: <devicetree+bounces-187586-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65AAE088D
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 16:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 482F617C78B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 14:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE7A8235346;
	Thu, 19 Jun 2025 14:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZRZ+dvqN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C672185A0
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750342830; cv=none; b=qfYk3KCo+eiS+ZorFUFe8HD/w95OZv0nLe3LWML3KjG9mA/O9SLCFKeZ6OnOMeuDxgwEUNCdKQtvtsCtpICYhzGIx68PX6mAOBCwA70AAADe9/ng+KBlR7FAlP+lCCZTUAzZrgQTDKaPhnv0/KhDK/sj6GhwK4ehLKDicT81SdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750342830; c=relaxed/simple;
	bh=GYaa5PYPkbOVQMAq3x3jZMhZluUgXdngV9DLv2K0qRk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=hMNyiJuTS41WZMu7Gjei4CVH39wbhgCMaK9DNPvmKCZjygYcf1kPuGdN2+DX2yw8XmPVRUbamIZqJVYOTlIxWKusE4Fyb9JrvnzdvKhEC/xWJWoAW03S8KG1l1fhe95ObhWZTfZAQOPRAruvgZYVYrTskxX1+d7gcs88+fN98K4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZRZ+dvqN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55J7xm9o003033
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=fy9LUnSbCFx
	jVP4r+SINokDCmRmHgFcf4rNEh0wjnFQ=; b=ZRZ+dvqNUqkidI3DTFJ++84q9z0
	DLwFtnHFpjKvcDBAIm/0mB8N93L5kOnZ6/XMvfk70zNa0o7HxEAmTXJcyNGKtLz1
	gOhTKAWgq2n1dqQsFVQWZXFJeHXjDpN1lXR6QHaUNB1ZcUkgV0V8Dvpg7q/tVsNu
	oxdT/ql0SKIZCYyt3kWK98i0DIn72JPHIzPk9pY0c0THAGjm1HnQT5RWf+Tvt2Cj
	nFSx2f5FtQtnfUQVwfp+VA8oYjgMSctBad+CzkIm60gi5nzJzj3htURkAlmqi3Xi
	/J4AsyqDexoEQoE83r98oDvUH6VX5o2NB9CAOfzwVBjafgzMxPp1IXl3+SA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791cs00sj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 14:20:27 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a585ad6726so26415411cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 07:20:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750342825; x=1750947625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fy9LUnSbCFxjVP4r+SINokDCmRmHgFcf4rNEh0wjnFQ=;
        b=aHD29EiYD7/0HspX68U/omaUgvjj1Ex8/Iq7+Rk5eWh419aErGEjIZzDQi1Bq4qwPq
         C43Jjmql3CFIHQV3mTcj2UzRYpS7ODM2bVd7dcnor6i90hxIZIgK1qgysycrr/7biOQq
         M9e9vJhNiMf5dzb1LBFzMLCLeU1tmArZICjxuZVfP8kk3TTalnrznCKthp6o7wAWZUkP
         L6dxeA4PbHoMw4xravWWXUc2ZBC/CYTOETon3XUlDc6LOk/9QOsm/u4KDkSRE+PISBzd
         xDfDpBFZUizzvezi/5oYCcWeu3fjC9b4lQFpdXsF+M6+/kcuxJ4q0Z7MQxEj+OA2p0hL
         syrQ==
X-Forwarded-Encrypted: i=1; AJvYcCUKh91yiML5xSXz0djmzU9AprzHRCT9y16TZEMicGBiHAP6K7MAfN2dAxo9OkQjuQPKczuz+dI9FDIT@vger.kernel.org
X-Gm-Message-State: AOJu0YwUzgptGwF2ZIn06SEd9THX+k1Li+CHmZ3QFhAeARUxBWfTRay0
	cQTCDg6sMqiPSKtpHnetEzDyBKXF3PPULOTbd73ox5q5NiaNd+2OmZhYsrLzZOTaa7hnOagTFTL
	2957XhkW+NK9g1dGFMeq93l7AOCZ3BTcoOe1ub0Yk1QObOrT0rgA9LvWHoUBR+blZ
X-Gm-Gg: ASbGncuukbyQOsgAVSCqnpgGSMrCcNrWnXMn/209hcqlAqPxHtsO+4UJyUXLA9/oX1J
	nrjqYlidP1+I0PdDrV04etWAFKmZoDU09NAMgNqKd6+QGtzuYj6aOPUj2Iq9TRWA14Mwn7fk8Za
	ouuNy2xelsear9t1ql9r2VG8Zl5Dkf59kJ3qs79lCENypO0CR8XCsDwMuxRiHIUNaICRctJjgQu
	vCjodpXKcApoJjFveVEc/2V+Rcp+UsbD+c0ItULX2h/3KbH/sWRced32Qboaqqhw5xQGjELlTgE
	S6HMrfZZXL3akHZWbNislff5QZbba4KHPXacYH70OR/MKk8kPCDiGnJ93srJjAmdHi133CE0GeO
	q
X-Received: by 2002:ac8:7d85:0:b0:477:64b0:6a21 with SMTP id d75a77b69052e-4a73c50a741mr348535881cf.23.1750342825145;
        Thu, 19 Jun 2025 07:20:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhCRnvlP0etjjpkPyeCSmSYkIm5zMDODMDu/crQw5Kac84QHMQ6yNwPGunOO6XNSGBFXlh2w==
X-Received: by 2002:ac8:7d85:0:b0:477:64b0:6a21 with SMTP id d75a77b69052e-4a73c50a741mr348535301cf.23.1750342824712;
        Thu, 19 Jun 2025 07:20:24 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a58963561csm7254312f8f.47.2025.06.19.07.20.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 07:20:24 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        stanimir.k.varbanov@gmail.com
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 6/7] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Thu, 19 Jun 2025 16:20:11 +0200
Message-Id: <20250619142012.1768981-7-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: kAJi7uQGogmrylVRHwF5WgcDLGnx7fs6
X-Authority-Analysis: v=2.4 cv=BoedwZX5 c=1 sm=1 tr=0 ts=68541cab cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=6h1BjrdT-BD1Ylfs7NgA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-GUID: kAJi7uQGogmrylVRHwF5WgcDLGnx7fs6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDExOSBTYWx0ZWRfXyojLNqd8nN4e
 8EgtklsjltacalSDU+SsVPDTgXA8EVrvv0to2tbYBQSkkDvJ7UE+EP6CljOl2NjN+BckF0A0j8L
 zL9UWs4BA5RdZ8oY88ISTr0EZSlFyxxJz045vSXhUSUNXyzKKSto1ZJ124VJ06oO9566kGBHwQI
 UFy6XFpaSZEwFkxqdsR2+XsraOJCihdJbSc7cjN0qu5uycj/tqfcXI2CJR6FJV1t/V1tfQf5840
 LRig5UpPdrUbLOzykFMN57JyPAujSAlMrVzL/jJOxmOBNPZKVdzdJT+5LpBqEl6to2wlb48zH5X
 hiA1z27HGzqDNJ9ClMi8iN/fka5Jr3VBPvTpgZo5zKm2cvsh3dRmhAYwDE+CTclHDIZ7ytx5uj/
 y3bCEcAsqZh/BviNWZXboUSwNtmGBVqfB5Wo+mSCtisDbv7VBkfDIbaqSBoRpLj0mkz+Fpsu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_05,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 adultscore=0 phishscore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 spamscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190119

Add a qcm2290 compatible binding to the venus core.

Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---

 v2: fixed missing enc_nodename
     added Loic Poulain as co-developer (should be on v1)

 drivers/media/platform/qcom/venus/core.c | 40 ++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 8613013f5c28..3ea42e01036c 100644
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


