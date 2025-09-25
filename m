Return-Path: <devicetree+bounces-221010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA7B9CC8E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:03:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 187B21BC4464
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:03:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19EC81DF256;
	Thu, 25 Sep 2025 00:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mfZv7oay"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDF41A2545
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758758585; cv=none; b=CN3vpoqTNj0AGGG0WXSKCtl1VVw65NaorAQNKg/v3dMhQq3Qq/xcZ57hpDYAMwBxZsy7IgfiKZdh0Zg7nPQIJW3Otzzp5vO94G1shyuuWsN8zKtdq3HVL+nJu60PghcPBP95Evdl+m39GiUZDptMiItn511HcjQQVLlIiBsrHPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758758585; c=relaxed/simple;
	bh=RpsDt6AfmyJar6HaUrbvvM9UHQECfIpfv9kFh5VPSdw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kDU8eGp4EYayY0awufp/PLkH5hTLqjYTv+msZ4Km6YQTpfAGL/yWArMdb5IXAvsZTUGImlLyHci+hkVQ50LQmaxcdTMeEvivYHVdPur8YT9AeSVpR/J0+ED/LcFw+PQvR9dMV0BIsBTyNFZ/EdRA044q+F5DrtXlYX+I5mDkU4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mfZv7oay; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONZYRa027782
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lwkFrLt9CwZe3OTR8N2fT7/T3WpENDpj9uT84vDktvs=; b=mfZv7oayTPWKte5b
	DUFEWdNYEiNo/9Dz97qZaaHLZeHx6Wv3Jvzt9IGW+iWK9BmDm+AZseG0/TI0HJPM
	hEgxThrxj3BkZp8qtqEDIWF/QNn2H8HmA1W3tallSFix9TEO8vuihcjccnRDUxFL
	qDsi4M3wwthPIamsh0l42jlnT5vxVc4ipDdTlMjE92ZZu1sQQ+eSuLcXUNEWAxrz
	Z0EG7TVrzGLyY3DA6vnjQCtqCcdwbJZMF0v00BGjM77vy0SS1ma6JrDZfbx/eS2V
	WUm+xHvP9dDQo8S3LuhcAyX11xrYLtHTyTfHdOcqykn0FckYHhEt7D9C0FGZdPRC
	fmWlRg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnxfaw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:03:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6fbaso4157735ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:03:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758758581; x=1759363381;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lwkFrLt9CwZe3OTR8N2fT7/T3WpENDpj9uT84vDktvs=;
        b=LEPEH4rZ5RXSQHXAoC+3n2sXgongdYfnSfe2PUyYZwRYt6RzUnDj4NEW1XIlNf8xqs
         ap9uZPAgz+38nrgwdTs9Rw+vS+JxAkNOh/0XeIgmvAXErI7r7cjMBgbGBP7O6RBzB/+m
         6UK5VnYlVbnvidtdVIwjM3btj0ihbw8GD8XHy1+hW8CCVkndYhhhFhaaZIB2jIjGLamm
         69fWoxy/DHNwqMSbG+9yxSC893dssf39ekmvCQVwcYUVzU4gNMHQhPFB/I+aN1dyHJmB
         kNONUAzYutI5r9zXBzeZ9cOI2MeSQVC9PoGzhM0MPYBC7avEr8gA3rRU/l87wgzNYcKG
         bSJw==
X-Forwarded-Encrypted: i=1; AJvYcCWYekBkjs10pt7Nfy8SbJPbZEAn1WLr6F24j3fpwNHBD8WiBQK0U5DXJLmrtSzm6B05Q+58MTSWc7mj@vger.kernel.org
X-Gm-Message-State: AOJu0YzLhqx/z70H0TbMIn+PMnzYIFCIFyLT3bxOqhpqHDZfCn/2Rm2L
	G63Mu54qTtpuDxStM7iwKiqC1MLWPeQpaofvWdt+4GB5mxt+sLc2hS3CMWxJDKei2x4Zw0Pz5AC
	d8usvLNNYsQZAcCbz+68q9+2jpDtJCtPGl+0Pmf4o6IS0GQdlzVEe5fXdpk0+hqZC
X-Gm-Gg: ASbGncslrGP9NaO+PI+O0x+QmNil/yCBFb6SjWMoK/GFPZ7bZIC1kcPoaCgWS5YM4/Y
	oHrTI2GCZaCVcxV0rYthrI2Sy7iAISiVe3xQ347ost9kAg4k/gQHc5k0KJ+TiDXnEQuIYnf276l
	NCpHkztSDFGJkRWItrU4oo90vTB0ZPUlbslQwLJUPlruqp0jNhQWzbrVXuNiFPq1Suw5hPZrHXL
	nQP1RhiMYHxC8PZOB1YDXSx7WGFRowkkxffMRJFNBQF5SHcizv45ZkCXGPouKYs6j7Lr/lugyUM
	QJQyUnkzZBzPucHOiOEnwUT1nYeuuwn6w67UCa/FtHGDIf1XEvvSaVEKptefSqtIGrkbIW4fFD0
	tzmfM9JPy7F6qIuM=
X-Received: by 2002:a17:902:cec8:b0:264:5c06:4d7b with SMTP id d9443c01a7336-27ed4aab67dmr13116215ad.32.1758758581097;
        Wed, 24 Sep 2025 17:03:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFg4OYy/wcHEm80h3cy0Kv7xZ4NhAqx6tS9+1F1Vhla9mXFmSnekp486y3cB9xDJ1tVDQQr9Q==
X-Received: by 2002:a17:902:cec8:b0:264:5c06:4d7b with SMTP id d9443c01a7336-27ed4aab67dmr13115885ad.32.1758758580513;
        Wed, 24 Sep 2025 17:03:00 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6715f0esm4807215ad.52.2025.09.24.17.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:03:00 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:02:50 -0700
Subject: [PATCH 3/6] media: qcom: camss: Add Kaanapali compatible camss
 driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-cam-v1-3-b72d6deea054@oss.qualcomm.com>
References: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
In-Reply-To: <20250924-knp-cam-v1-0-b72d6deea054@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758758574; l=2494;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Kdys2jJmwooCgeMAOsC7UrGVCJ/d9/5ByqD43NxfiGM=;
 b=lI1OzmIm+8NBUdhLMPuCT+AEpT0VAUkp8LHFgV9xz+9+b52RE+rDo/IHJjYNBOenj//hfFqKp
 a5dpvmn0TQ2CkCmljxrEQd+wCDNtdG0OUxNPKOQkip3veQrAXFMKdnx
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d486b6 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Eph36bqoL6-XvbZcx_wA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: GkUZmUKTBYUFV0xWg-1FyfaPT2NqvSyF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXwnXjtbz5RZyt
 zGH6lgRyj05yIw2ct1QgsNBN6eySJJXHsoO+T+zDyvHccFA7TlrtVyCj/rXt4QOB41iXytq6kr9
 IvhfZrZFkH+eKRBNAajxlAGX1Obq8ZQHKFjmaV0Q7g7TjUXX3YlnRgUThCORqukDqqsNQOmmNfk
 Q2Ztk1EXkNvroXkjp196n5gTt5n/1GEuvGi/fG152cfpFbFqM65LmC+/1Fc+y8EpvvoYrq4352G
 7CHmGK2MVAraC0UmDwF7LtSX1Pk7SqKFnTUuI2vJg6Yfa4xnMGa7801Wwjs2jcVQA/brtPx0r2a
 4w37XnQVY+thryJQLF58E0wijPUowGXK+T+N8gGmZkO7PrsmTZJLX+zO3kFw/lyyUZ9WoLJDK7V
 PZ6H6XFs
X-Proofpoint-GUID: GkUZmUKTBYUFV0xWg-1FyfaPT2NqvSyF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Add support for kaanapali in the camss driver. Add high level resource
information along with the bus bandwidth votes. Module level detailed
resource information will be enumerated in the following patches of the
series.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 drivers/media/platform/qcom/camss/camss.c | 22 ++++++++++++++++++++++
 drivers/media/platform/qcom/camss/camss.h |  1 +
 2 files changed, 23 insertions(+)

diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2fbcd0e343aa..4a5caf54c116 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -34,6 +34,20 @@
 
 static const struct parent_dev_ops vfe_parent_dev_ops;
 
+static const struct resources_icc icc_res_kaanapali[] = {
+	/* Based on 4096 x 3072 30 FPS 2496 Mbps mode */
+	{
+		.name = "ahb",
+		.icc_bw_tbl.avg = 925857,
+		.icc_bw_tbl.peak = 925857,
+	},
+	{
+		.name = "hf_0_mnoc",
+		.icc_bw_tbl.avg = 925857,
+		.icc_bw_tbl.peak = 925857,
+	},
+};
+
 static const struct camss_subdev_resources csiphy_res_8x16[] = {
 	/* CSIPHY0 */
 	{
@@ -4291,6 +4305,13 @@ static void camss_remove(struct platform_device *pdev)
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
@@ -4467,6 +4488,7 @@ static const struct camss_resources x1e80100_resources = {
 };
 
 static const struct of_device_id camss_dt_match[] = {
+	{ .compatible = "qcom,kaanapali-camss", .data = &kaanapali_resources },
 	{ .compatible = "qcom,msm8916-camss", .data = &msm8916_resources },
 	{ .compatible = "qcom,msm8953-camss", .data = &msm8953_resources },
 	{ .compatible = "qcom,msm8996-camss", .data = &msm8996_resources },
diff --git a/drivers/media/platform/qcom/camss/camss.h b/drivers/media/platform/qcom/camss/camss.h
index a70fbc78ccc3..9fc9e04b9dab 100644
--- a/drivers/media/platform/qcom/camss/camss.h
+++ b/drivers/media/platform/qcom/camss/camss.h
@@ -89,6 +89,7 @@ enum camss_version {
 	CAMSS_845,
 	CAMSS_8550,
 	CAMSS_8775P,
+	CAMSS_KAANAPALI,
 	CAMSS_X1E80100,
 };
 

-- 
2.25.1


