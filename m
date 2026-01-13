Return-Path: <devicetree+bounces-254263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FE2D169FC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 05:49:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 129F73032ACD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 04:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5264234F481;
	Tue, 13 Jan 2026 04:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Nkq8g5x/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TnNacddf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62047352C33
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768279751; cv=none; b=DhBBxsthTegAYsq7mG+2L80XGSwn/BFwY7jnhHlvtIlLVPUXqCWTslJVHinOz6JwHfEgGNhDhTAQIllpKY6S4n5jDX1micsuAqxg9pMsg1BPsLoxlGuyDxQhu3Nf6wBuXUvraYF8bI8CZi23ucnNvFEwlDxFmfrEOaOkwlqpgmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768279751; c=relaxed/simple;
	bh=qAYVIyfc7e3rEE0r6gSKyylxaDF2Xe2iZmOVEFkuC+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qNoHG+MfGqbayU6FN3xDoDDngjqvgLx/5mwkypdAjsJv9vEr/mSoDJ2uVE6rZzHZuc59E0Wl1IVv/KWj9Lb0IBgcHKU65zv1Xg2MLsiTdKMLLRSQ1unTy/z/MH6etkg5KS6DlPJVum9kBf2l1q888j6YT+z887guaPSZSo4L3do=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Nkq8g5x/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TnNacddf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN56rc3059081
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=; b=Nkq8g5x/sEenYg2q
	pWfagCdLQaD+XN7PHTcmwEhTW70qtlXRl0zqQ1ol1MPx/8RBXnVOeZGdqeynQHAe
	Dh3WZ9CR+UvLVW63eKDeJ+GbK7dsuz66qKQbMtAh2nMRvqjThVPi+1Iv4msts1TN
	kKs1WkU2lG/8pMJku32laKB5CQDpxt6PGvWTzCdPJChLUIZi6BmZ07d4+drsVG58
	S2O5ptraOLvhv/jQpIXB6ccjIzW2JKc6K4aQOtIZi26u756G+SSoY4358QMOjq+7
	HidX/D7ioiZq5Y/RMp/JfScSfZngQ7U1OjxsxjXlVoxfv7yxGAQHPLH/8MeAWFKC
	jz47pA==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmxwv32qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 04:49:07 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ae56205588so8796167eec.1
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 20:49:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768279746; x=1768884546; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=;
        b=TnNacddfZJl6DIQc83S0W9Uui1fOoyke6bZSQHA7iYlnY5A6AJpOHqVY2phyzMTnG2
         ww8OBR4h8NVSlkeaGz1oO3tepzWjxdlYkW9ZjKWz2hZig02oaT1AGpaKSvcx576ltT+W
         q2m6/ZS8U+k7ku2Ky0etNabKoGaEBR9fSV89Zwrg98REiQiHhXJbWgtjImksFPmuBoZY
         5gRQ+YHHoljxaFAlDfUh0szg7V0TQ+jeim/JB34izY2Jfx2zyQO5C3Mwo2WyBi9ekMec
         lR/gf6sbnx7AJxLFcmrLfzEM28+5xtZxUTCqXlrbDV3keGg4anD/h/FGoDczX0ogjSdE
         t+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768279746; x=1768884546;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Pq8b7EgAUNsAtM6Fas5RMbp7EvPKne1LghzApOUHTvg=;
        b=lSAlJbUcC5vbMlJCf5YGkJdhuEhQtnbF/51ObN697vcvoKsp1r7jdQZVrRalRLW+Dy
         jnLovlv1YUjsIwda3CRntbS2ycWJtHarIMJFGuiMvGRhLXa91b1JKNnxDpm0hPb7rDd9
         so/9ZLFPC0CzLli3Kmsh6rwZ7edCzJf/ldQNFpNjXZikreGmN16cRf/v4rN5iVK4UdmA
         g5fkJa5HKNRNjz9zXqKHDkUjtEUX4wOsAxDvCZU407VlZ76rMe8HE9kJk6VvcjIkl+XL
         XTgdLquGcd8fonaTLknghfuJhAvZq2yu8AE6KxtFxBVjh3LV+jX/H5gaxaS8SZ2iecZm
         +aOA==
X-Forwarded-Encrypted: i=1; AJvYcCWnlqCltJMLV5uCg1oq4KnlHBe+sJkShkveB6uJqJC6XsfAklUYmoQun1S9hdKwD5ChOjpskORGrh/d@vger.kernel.org
X-Gm-Message-State: AOJu0YwSB3hBmaziykvvgVV3gfx6n0V1iu4agPA9rvC3rOmBPnbgPE/+
	bKd+FOFx5MI0BuXkazrGD4mXcdvlo+cAHJ2hnYSoz69BSJTP/ZGlssq3kEtilh+v5ACwoAq0j0f
	GmEIzaelYDbtabmkVwRzpJTcsIsasHPrALcB0GKN21nwK3IcEfJPv95EcQAkMJpaS
X-Gm-Gg: AY/fxX4nPxQ+xgHfXQrf30HxtcXF+1xYmw7ALMlN/K5UDAFWf0/lzCda6JQQ/SyWCOs
	T89G7g7PFobEZUyrXj1H3NGEF7a1cxMfbZUe2JIu2Oq/SelQvSm3F6xj8NcLUZ3u2Jwpvi3vplb
	awX7tlvQl42GBN5h2oAIbrMq2EhNB0fTYItuhtGdxaw9k3fi3kx5B0InBWf5rT2nHvwmQmmamzr
	7dx0Bpo6cy/WYTwuT1N4N6F9YZ1Fmbj5P69inK8g6adUOrOmJnfGItwzfNQDr2WMjv90tMujVAO
	3qQhRn/NeSoTF11xqpF7o4cAQa/5xzONTJnrXXlRY6esusQ9FGdtYKgzsF3pZ3GSOTb26s3SyKc
	xhtkPAKqhzZZtPsl40P2oPej0s4CDdzLkxIuj86lqDlXiWZH7RpTnUR5rHh2z8ve+
X-Received: by 2002:a05:7300:1912:b0:2b4:5b59:af73 with SMTP id 5a478bee46e88-2b45b59b400mr1069445eec.1.1768279746285;
        Mon, 12 Jan 2026 20:49:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH+2qrVn47XsKn2tkzbXdNdwrPHH2trscWJ/BT0ds0BcnoIhXn09yvnKwbF2eg+QuPBmx5BCw==
X-Received: by 2002:a05:7300:1912:b0:2b4:5b59:af73 with SMTP id 5a478bee46e88-2b45b59b400mr1069412eec.1.1768279745743;
        Mon, 12 Jan 2026 20:49:05 -0800 (PST)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707d57aasm16264065eec.30.2026.01.12.20.49.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 20:49:05 -0800 (PST)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 12 Jan 2026 20:48:48 -0800
Subject: [PATCH v12 2/5] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-kaanapali-camss-v12-2-15b7af73401e@oss.qualcomm.com>
References: <20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com>
In-Reply-To: <20260112-kaanapali-camss-v12-0-15b7af73401e@oss.qualcomm.com>
To: Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-GUID: PT9QJd90qBTaHjQuYY6HcL6nLpZ-67_F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAzNyBTYWx0ZWRfX3wJ02CRqhxxT
 qIzfx9G7RY9mBZpMDaNjHoSIMGd3YeqZ5wweQxn8qcIKTJBgcclR4g1LIQ2VTexA4F9EeUc9e80
 I+HiJDgMXFFbcJ/5WdADLOju06InK6JNmjQh/Sz/YrN6GIJ4Ad92tz6iVRgHrDUq6N94m+cxUVC
 s/EWvMJnJV8zu4bYXWaCmScbcswnbJAK2Zg5pB88XQWzNuo4z+xpZhE2TCWShN9azzi25nnJ0eR
 h1gg3G1BVcUbIuup40pumXBjP8RYrtyl6/eAgaa4paGC5KfwDxjiib0r9NpQ/8A9JZ39jpeH80s
 bxzwi3Yz9oqMQ1hv08ZFGnUbdLyryMWWsbaoPFQ7T//bYG/RVnVPyo7Dvdn3+q9edRBxA+tFnsc
 2+hN8EhuR901o1NRPG3aOs5iqVz98DpLZaAFjqZwYUM9d2vcF0Qbn6o/i8l56hRb0ohFqMLZDiu
 mTgNUWUePtbG5uesr2w==
X-Proofpoint-ORIG-GUID: PT9QJd90qBTaHjQuYY6HcL6nLpZ-67_F
X-Authority-Analysis: v=2.4 cv=C/XkCAP+ c=1 sm=1 tr=0 ts=6965cec3 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Eph36bqoL6-XvbZcx_wA:9 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 priorityscore=1501 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130037

Add support for Kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index fcc2b2c3cba0..d07bde60b3a8 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	{
+		.name = "cam_ahb",
+		.icc_bw_tbl.avg = 150000,
+		.icc_bw_tbl.peak = 300000,
+	},
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "cam_hf_mnoc",
+		.icc_bw_tbl.avg = 471860,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4746,6 +4760,13 @@ static void camss_remove(struct platform_device *pdev)
 	camss_genpd_cleanup(camss);
 }
 
+static const struct camss_resources kaanapali_resources = {
+	.version = CAMSS_KAANAPALI,
+	.pd_name = "top",
+	.icc_res = icc_res_kaanapali,
+	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
+};
+
 static const struct camss_resources msm8916_resources = {
 	.version = CAMSS_8x16,
 	.csiphy_res = csiphy_res_8x16,
@@ -4947,6 +4968,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8939-camss", .data = &msm8939_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index 9d9a62640e25..b1cc4825f027 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -92,6 +92,7 @@ enum camss_version {
 	CAMSS_8550,
 	CAMSS_8650,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.34.1


