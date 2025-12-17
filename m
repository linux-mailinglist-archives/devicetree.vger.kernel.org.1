Return-Path: <devicetree+bounces-247594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A67CC8CDE
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:35:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 018B030394AA
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:35:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 424433596F2;
	Wed, 17 Dec 2025 16:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cyIBGjY7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N5xJUTbX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8FB346781
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765989316; cv=none; b=sNWi1JHEFSE/CMFkiqn/P9mXAD8I6IXOsoegFw8LbAUue4nxjOfLjHnLxU6iU7i/A3uTP68nlgYKgLryLAhE0uRGklRwDjC2fy9ZFdkLuR+AMK0Gv3bcMZDg1zIJN3yuZnL3f1xxnAyAsJFtGf3BxbFtClJFduXlF7ve4FcoqPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765989316; c=relaxed/simple;
	bh=yBYzqc0S1JphVHuD2j55BlKNRj4RzOO+Sg8ufDQtOo0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=quPPFPm82wyh+hcqz/I8Ma5pJBBYOD+5gcdBBHDnLJSmVhunZ87vsp2MvpuPuqlvQQ3vbcN286xItwvvMKj+tsxjm/3iJ/692/gveb93gCu5eFFdJgYV9p5C8AgJ2IKw85dY2z+THzrBYE07LX+te6SY3XHH+O7MyP90kMuqbu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cyIBGjY7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N5xJUTbX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKrqC3203913
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IGO99rWItnnwo77g8rlfsZqn5NHrWegTLAN6ef6NdU4=; b=cyIBGjY7ANvNA+F5
	LJrlVHP63kNG7nisScP5ZdNcrl9T6qC/Hg2Rz1ucGlj4RwZ8vZxqQzm71QaaGd4O
	/3Lvao4/3HXaQR0PCA+uLMWS3o4eFzYbqNfNTuogdUAM2rnPwldVCQy2iGBNeook
	60HcQDD0Qemff/elvDJtKKAWpdNyPHAvgTrxFEIGW56gkYSKqET0/XU/az26LoxA
	bDFI1RUMyLCr5KdL9FLYwZ8SONt93f3lZ2YlP8bE8hevkWRioBDVfLk4epmypFEg
	KgxRHYerq9hs/NJfO5jroqYcWwGugjlSe76gfX6DIVARnKtZF7HlEn8X8JFsJm9b
	yypnvw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3j39jtc6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:35:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29efd658fadso169667195ad.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765989312; x=1766594112; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IGO99rWItnnwo77g8rlfsZqn5NHrWegTLAN6ef6NdU4=;
        b=N5xJUTbXD/j9a5nnRkmfZz/FfWclh0BWpqJ6PVYGUjvFiPTgocdU/YEHyzcbNoQY3W
         4Pvgbv1nSE/X/9o1wJ4g6CJytmyKDkumj3qUdWOUX5WGLhSeqIcuQ3SRzqPUND7lnnbR
         Bg+lEBG5YukZfVhJlLm+xrmDFeCK9E9/xC6GvuoKEAKZUUGziUwtk5Oq50Cr0xdkol3f
         yTkTbG/dpHEpnP6/DGyj2RDQzoIXNyefBqBV6sZlNXxmVf7qB76lRlAlY6t1Gs1u+OV2
         crL56VboI7Ar0MjWeUuxoSc80PaGIMJvyooEXbH15DXYHH7qq/Q/NRDwLFvk9eIza9P+
         nD0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765989312; x=1766594112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IGO99rWItnnwo77g8rlfsZqn5NHrWegTLAN6ef6NdU4=;
        b=ua0XCxOTfDv9uI1yJiLqWdt5M+arebBHODwG0nHFCyAHGP9jZ2SO4VKkmQeRI5xmBP
         i5wIw87T48dwz8yq284txlZLzKrqB8weLJsrnqDwpapkOt3AIee3djxmDTcd2ezcwiJm
         47Stvd7NdNNpN6DX+xN2lGRSs5Lq7RzH3W2XpYSTbObkaj2GePVH77DZfautO61Ia30R
         4v2Rl2CqCK7VP5L+0XTuVm3LazgCkh0Knps6kMoJpqxjIgRiOJ0XHy2OvtnLHJUxVgo5
         9j23ww00bvsQ4GDQdl68149Au8DQEt3LoQbK7k8Zcn1zD2xhDfWUkbZmJFh4n+p9QkzT
         3yQA==
X-Forwarded-Encrypted: i=1; AJvYcCWoRZd3V/smnWKv4fB7atBm0HIJkYhbzEsLMF3q32N1W4exqD+d5qJ88vAh6prwksGSLHDeGs3nTME2@vger.kernel.org
X-Gm-Message-State: AOJu0YwfvjS66tKQwqlwBt05qkwN8LtfZTFX09X4yHMBIDSNud3qGTh4
	qxo0cJwVe+w0zEHWdOJWpB0oD76B3QkpKl+xaQs3I7f+T2v9JSkDfi7KtuPr+ZGC6OL+SnndaqW
	yQ2JVgYafYvaEI4DXdfeT4ZAl4eV88C+L5Iimin8T3MUkAn37W4s24MQgApY9rHzrC3cGKVZd
X-Gm-Gg: AY/fxX40M63BK5dNseyCq3QICFKHMdahILsVeeRE0nBijZFXUcpLHpZKbBbkpTJO9xF
	GfHIAP+PfA6e6v/tuLlSJCnf7Vl9S899EOEbx4GMy7ZzKkUO/jNAm5EyuCd3JYTjszmiXsi7Rhz
	P//grIelUMqXJrylm4et+ZVGVyCEuc/Tvqhc3OGns2KqZFLiSEtZqDP2vrCf252JLw882E+32kv
	wF1RFKpJKsDwMQ2iZF5xTq3kgC4KO5dkpnMCTNQaBjvcCEgY9iePPkEP7Bmpul/boMUOwYv2Me1
	BeUrQqjs6wjNPTBxXE8uLlS3lhI0YPuS9LPq6D80GRL6ym1wWY/POeiNrnCUEnRcyGzpqIoWxKu
	tg7bYYxK+Pgw1NuQ1CxlQjH7+0JwPcFI5IBFg
X-Received: by 2002:a17:903:3bad:b0:297:d45b:6d97 with SMTP id d9443c01a7336-29f23e3618emr197363795ad.14.1765989312035;
        Wed, 17 Dec 2025 08:35:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGu76/RdEU0SDBR8aBaXkqghR90u41/dQnfZUGn0J4HlRjXSeRxIKQx+zyA6K+BSJUGHSMFJQ==
X-Received: by 2002:a17:903:3bad:b0:297:d45b:6d97 with SMTP id d9443c01a7336-29f23e3618emr197363235ad.14.1765989311371;
        Wed, 17 Dec 2025 08:35:11 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29ee9b36af7sm204721055ad.18.2025.12.17.08.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:35:11 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 22:04:38 +0530
Subject: [PATCH v9 02/14] firmware: qcom_scm: Remove redundant piece of
 code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-kvm_rproc_v9-v9-2-ab7ac03e0ff1@oss.qualcomm.com>
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765989299; l=906;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=yBYzqc0S1JphVHuD2j55BlKNRj4RzOO+Sg8ufDQtOo0=;
 b=/2jf6vhjy4QLGEOUszAhuO/B64Iqi4w47ebi05Xomx0kqSrrIt2AibMsclR/gJU8gCF/b+VKt
 sPH2d2qYjiJCMwLNWI/qf5tj5R8+TQ0ctn0KvFVsmp6EWCXAH1faTHK
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEzMSBTYWx0ZWRfX4+flvivhYVPk
 nm9+Mjb1Y8wEwHgrSWM6TF1K6+oAXS/Te2OfAMGUA17nCs0dPNxxUwPzVWA4i8w5LGMWU6HQLs6
 XSDbM0DCqI3a5twkyIQd26hjUdmUiKGdSlouy5p8QXS2hapNhaZH9tifbsbDGdzVj9xdGo6GRJ8
 HZk6T+Mw7hCWcJO81GX7P0kjmINXlVJfnBgn25j0ygEikRVHnkwpasKXRXCM5sdQ4rNvk564ICY
 kJxb7UpO0EqXRGjkjt9QkW391ME1EMJuQv+97S1BgDJRHfR2SSiqdOMQ++N53DwA3g00mup0XGv
 +IibyuqDyIESKA51VnguzDDaGNIBYVxTURzcPoilJHZJ5C+Oy4BlyPsVCPBpL8u895kECwqRQlt
 kleKPGe+cGJ9T4m4jjUp0nec7RutQQ==
X-Proofpoint-ORIG-GUID: 5mJms_hjVjKmOXIAnlGK0mjOLvxVQYQ9
X-Proofpoint-GUID: 5mJms_hjVjKmOXIAnlGK0mjOLvxVQYQ9
X-Authority-Analysis: v=2.4 cv=ToXrRTXh c=1 sm=1 tr=0 ts=6942dbc1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pWxEDRe995Kf1ot4LjYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1015
 spamscore=0 phishscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170131

The qcom_scm_pas_metadata_release() function already frees the allocated
memory and sets ctx->ptr to NULL. Resetting ctx->phys and ctx->size to
zero is unnecessary because the context is expected to be discarded
after release.

Lets removes redundant assignments.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/firmware/qcom/qcom_scm.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1a6f85e463e0..6461408c58a3 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -650,8 +650,6 @@ void qcom_scm_pas_metadata_release(struct qcom_scm_pas_metadata *ctx)
 	dma_free_coherent(__scm->dev, ctx->size, ctx->ptr, ctx->phys);
 
 	ctx->ptr = NULL;
-	ctx->phys = 0;
-	ctx->size = 0;
 }
 EXPORT_SYMBOL_GPL(qcom_scm_pas_metadata_release);
 

-- 
2.50.1


