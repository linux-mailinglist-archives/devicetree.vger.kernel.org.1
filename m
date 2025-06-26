Return-Path: <devicetree+bounces-189952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D1DA3AE9FC7
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:05:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 197DA1C452C6
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AB932EA488;
	Thu, 26 Jun 2025 13:59:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PSMeo9jt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E95E2E92D6
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750946388; cv=none; b=HOYQ3Et2ApBW68D7vSaEdABK1l/NsEUvtUJoRo6vqbzKYzgIR/gwDt80gxqkXNCXz3YAnbvkdIsx1tPzVgNubvRKxzkZkUJ+acQVHjINYyW8XUxVhrjzkyGTcYDjC/2M7LsGlQUfIAJOanGptGt9Za2sW8J2KtlkA39AS6fGMow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750946388; c=relaxed/simple;
	bh=chjuspMWXk8eI76Jp3Mq4yhHE0boTd39JW8qGPEIFpw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TQo92vzbVgUnaLgMFexEAvad2Zvh6E90r502Ixiep3b5pTbnv0Sh3wSaisQgj+20UAPPIE+BBsOi1d3gOHJn2PeyB+avhJ86U4PP5FxjbNZIKzKyfj89v50lRjQu+N5EcGvE5Hm1skwu7yuQoD5M+5VGE8kfr6ROLNnx0zYF74c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PSMeo9jt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9ca6x021541
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=P1Inwr+v5AJ
	OSvWCpAeDJxxnBzKcgTqyCl0dEEMlzt4=; b=PSMeo9jtVwztSE0ncTrXJ1WY4ZV
	GCWYOKqRGb2yVUn/V2NkSMchQvIO/2rHTHKBjda8NIsyEp8x0cz9aoXTWAmK26p+
	BBZjUgjuy009DRHOEn8QDc8n9E8Zs6Nfki4A+9Ym68PrlYv2plWMdGaOgqFcffhu
	0TekwIm936q79E9+859bF7zlzAZxypkP5nTGz83j6DMMNfyRfio05McBCp5wQekM
	X+U4ERSZW7/QUMyfBo2vBgvzt/eiEgGRt7mzoRzIuEWO+xx2R6aqouTtaTlWR3CL
	W3VU4wTxTgUOmcRurf+J4J1yQfDTVXeX/iT0kEDPRWGvMPBOGM5KxB0wjQw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfx1txp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 13:59:44 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d09bc05b77so169316285a.1
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 06:59:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750946383; x=1751551183;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P1Inwr+v5AJOSvWCpAeDJxxnBzKcgTqyCl0dEEMlzt4=;
        b=AWZ2dd0RjGpBXZLI99Qlp64W/Nsm/7bbManF4XNuTiPRba+pWGwDra00V02SR7ZkQN
         8g+WkGLy8/fykH2Kw0cMQxEZ/1ZjPm+PEjDhjhjXhdlxaw30MkQyaLtjhraV6eYboHWz
         5/YX3hoGsdbRYoEbBYUfYZwtO6tnZRWgBUAMCnJYNxpZL2W8eukbMZ3ETikvQA6ZKwsC
         g3C+PjxTR5Gkz1Brg8aY9pRSN7lzJ8kwGG9UBel325yKB3HN0Ca7r1t+BMwbxeOpLEz2
         koARoGyvTL2GDVFHM8U4c+M7HtWzTGUGibdDgk83KCbvHHYV4sE+3ve2iWL+IsRN5pXo
         avew==
X-Forwarded-Encrypted: i=1; AJvYcCWYrRwxeaEcA5MGJJx8qHqB+ylm2kI4EUWAYIDL32OjcbB8UPcwMtBNQDzPlv7nw33HSIb6DKMsaYck@vger.kernel.org
X-Gm-Message-State: AOJu0YyhJ/UeLHEIY4sN/csuwrNd/5MKvXNPtQQZoItuZn09CBOHdpPl
	8NRwFpiiu6M95AXtfCDLXkRMYhNKTZCCBR+l3r5/8bRAzz0g8G3qrus+VOYtxrL4YsLym0hbaEr
	+Ub/zjZIMGm9dLm+8C/sAi5rSUnCqL0EMJ2scSQYBWv0nGMQ3dKFZBNOiM4xmJy0G
X-Gm-Gg: ASbGncu4Jld4yUrbhgoL0Jr6xpOE59uKqeofpOnP9L5K0Jr0SUH3v9gr9DpH3ciknEe
	c+LEKsU8j7n1pdeyCD3BwPemXDsPkG7Zlu5hK0MHpeHL9B/cBEQHbF1gaiE/yXLI7JzyAEA+XSb
	O523yUf9HS/YJ+w25nIBnNK9redCk2gtTuO+pKPCOSR9ZFFcL8crlhb5xsCcbTcpc8wB07aopIn
	BSG2gpIZg744oY4nqTy7v3Iqplyx0oKWmkEWmO7il9yWl0kPxwRCz3kIfztxjlBTtetUiV8e72x
	wJ/Ns+hvPV1YxHyU1UO5wYgXu0U9B0pgNCtC23PAo47a8cOOveavZWq81xyfD9mGnP7C7qbvsY0
	r
X-Received: by 2002:a05:620a:4153:b0:7c5:6a35:81c1 with SMTP id af79cd13be357-7d42974b38fmr1137981685a.48.1750946383345;
        Thu, 26 Jun 2025 06:59:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFF3lEab+MhnjBuMmiLUDuDSZ0Flwzk3O0Rv44A3LR/pbAhVimij8UTmYIC2fFRlCNqjiINkg==
X-Received: by 2002:a05:620a:4153:b0:7c5:6a35:81c1 with SMTP id af79cd13be357-7d42974b38fmr1137978485a.48.1750946382927;
        Thu, 26 Jun 2025 06:59:42 -0700 (PDT)
Received: from trex.. (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453823c57d7sm53723365e9.40.2025.06.26.06.59.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 06:59:42 -0700 (PDT)
From: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
To: jorge.ramirez@oss.qualcomm.com, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, andersson@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 4/5] media: venus: core: Add qcm2290 DT compatible and resource data
Date: Thu, 26 Jun 2025 15:59:30 +0200
Message-Id: <20250626135931.700937-5-jorge.ramirez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dd92gWyotrCmBtPGsZsfnRsuzo2y84JT
X-Proofpoint-ORIG-GUID: dd92gWyotrCmBtPGsZsfnRsuzo2y84JT
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685d5250 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=6h1BjrdT-BD1Ylfs7NgA:9
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDExOCBTYWx0ZWRfX0YmpLkkD3dgV
 gBV9/OKX7x0h05TzTK5tNjuO1uVki+HCx9NX0zc5NlQzqDLKTiOJRfKxT6nDJClqwZjbEZ+532h
 0ObSvwkti/lUnDX/aH5nb24F8leUcEetsX7Xauc2g9SPMNL/Qg4GXBZW8zwIeS1yjD0dRCuLvLh
 1kl4rvubcRW6y7NBPNkvHiq6/xzTpiy3+dTIw40YAZJlDPZyDvcp/TlNgMtkjVExDqaIexs7+FI
 G3wKnddKVUY//zixwP9XhEeOTYlPcXS/FwUOtmqHGGNlFGPYr20prZlJyqypPw1jYbaekCppt8a
 +ZtRpJmACabsZsgb4Rs2I2eDnKd1SooDmWkr1rwAADcielAGYQNaQbzRGkOPtRVrMPTcS/Uqpoz
 17DRFqaFthC0TUUTb3362zpRdY/kxOXyOGEOS0Dxrb41ZP9x7rDK0mvEnyY6Y+ddBDaO76NX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_06,2025-06-26_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260118

Add a qcm2290 compatible binding to the venus core.

Video encoding support is not exposed until the relevant hardware
capabilities are enabled.

Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
---
 drivers/media/platform/qcom/venus/core.c | 39 ++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/drivers/media/platform/qcom/venus/core.c b/drivers/media/platform/qcom/venus/core.c
index 736ef53d988d..f1f211ca1ce2 100644
--- a/drivers/media/platform/qcom/venus/core.c
+++ b/drivers/media/platform/qcom/venus/core.c
@@ -1062,6 +1062,44 @@ static const struct venus_resources sc7280_res = {
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
+};
+
 static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,msm8916-venus", .data = &msm8916_res, },
 	{ .compatible = "qcom,msm8996-venus", .data = &msm8996_res, },
@@ -1072,6 +1110,7 @@ static const struct of_device_id venus_dt_match[] = {
 	{ .compatible = "qcom,sc7180-venus", .data = &sc7180_res, },
 	{ .compatible = "qcom,sc7280-venus", .data = &sc7280_res, },
 	{ .compatible = "qcom,sm8250-venus", .data = &sm8250_res, },
+	{ .compatible = "qcom,qcm2290-venus", .data = &qcm2290_res, },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, venus_dt_match);
-- 
2.34.1


