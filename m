Return-Path: <devicetree+bounces-191651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 154B2AEFFA5
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 18:24:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C57141C02E32
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 16:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56BAB27C163;
	Tue,  1 Jul 2025 16:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QmIPjjF8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E4D27E045
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 16:21:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751386876; cv=none; b=klkg9dtMhF4/yV/Xde7ftYjjAthfhZJiLrNDUZoGXo0wuYHQ1MrjipsWaBdcXcd0bpY2mgpqOA5P2fN/wabtsR6Y8tHe22PnANSGLktDUYeg2FdIxBFmZEcfWlkWkz4/FK5yD9LzTxN1Yu7LF/B4GUMBxAr2KbOPPyHAiFg9+XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751386876; c=relaxed/simple;
	bh=XFr0UsCyCOcjko1cdlmNH6cXzSCtwggWcwGF5puvtvU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IeyddCLRiLKRVZZ3iHYBBoJVAyi25olTaLDdALp4eJqyJ5rKHBUXCN9dT1TkUu0tloIL+O0+cWIXZ1X/DbMxz8fnoaOGzTOn1iPZu9TeX+Ol+cQbz4cXr3vqu5FNO3HUhxhm6WXj/oVW5xyZ996LbHCbrZquZbnRTvGOTvSOoRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QmIPjjF8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619tRri000442
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 16:21:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0+w5ZpBtBKx9XMObDCi7zYvJA0s3GIDL4r9tOJGZS2k=; b=QmIPjjF8scfL9ukU
	mGB22UBepB2VRVfze+b/rcLsoVx2UMIoo6pNo54kyO1ThGCogQ4rGT2hghx7w81b
	R9luX4qyoDMldq/4QLo4slv60zJ9NF9U0Ozy4ppw3yqCGVWQ4HIawnrKyIyyTDXE
	4cuQSm1RKbPaVUO4xvFAWIui2rgF+c3yKNfIP4A9kKmHgCxKw+/MwlMl2RlA5DQc
	zsgnfKB3Bscxph81kuX2XbgPo0/m2whk6tae0mjb+/eiAxcoG+crCKI8I97qR+lO
	w+hwbVozghzlbWZ7/z/hpCukpypfrTTZZBMIEsU5TdwGek3Q3COCrUjjp6+/JMKh
	FI9MAg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47j7qm9htp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 16:21:08 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2c36d3f884so2691822a12.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 09:21:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751386867; x=1751991667;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0+w5ZpBtBKx9XMObDCi7zYvJA0s3GIDL4r9tOJGZS2k=;
        b=abt5Xq5yPwEfK+fRjF4421TmfQ4CT2eb5XX2mzAY3nR8h/ptc85rlwYDcWGhr5OSen
         G23fV7tcjb26rHTXKeTuFn7CNzpUe40J9D/2/uLVfnU7KLvaj06Osy142AOiMlpOn5As
         zIhQg4SiVuldMIOz3YuEiuYZdHgDltHN8SEnRIfBItts2Lo93dW1eucIqTNMq0lplR6g
         lzeg6CGeHprIl78pjTtgAegEej616H80voRhnxEv0AJaMtbRxWgDarhg+HqcFOi20zKh
         gW3wLxTgznWfG3QCoT6HkHpy1CA7G/n/qIDCISCwNGb98X7IwCXSuY+gZhWQoAqn8NqU
         rRHQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3iohcO2/GRj1A2zoVu2SktecGEKZRAT8dQo6HwWEO7qry41Fv4iEapuV3HCxq3+TgStlMs+1JseMa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1PgzzlM2XfVu/tEvYoVATtP7UjNXSCXrSJjxBlzOz4nsNvzUA
	P+VXHbSiINlo5fUb/Xrab4Xq/wiIeBqEJHF3shKFRTLLGQOYqlRSX9oUz4MLZqTWDkviIE+Jdnk
	RGbdr98g5hVAEG2TUPnl87UhsJ2GPhk2No9j8u2m65yaPE+NJIx4WyCdnZm9wwowE
X-Gm-Gg: ASbGncsgNWiAmuvF3Ndf7sii4kbSRp57H+io/Qtln2TqiCajPTCK1Fr8MZHbJkpNslh
	8yY7QvypDzCfH0xayW1XEeUF4UmniJCZUwIuZLuWgcT5bO5E/fomLPuD2rWQPlCm3UmM0UamOKQ
	8+FV9n9wN0Pg/k4y2rTZntLh/V9k/EQED/qRw5rPEA2YIBUSsu0AQ+BxAbCFmnDMyzmLK8N7Y8i
	3nX7V02Ia4EzVStmMQ6uYSI3w5cXGyhc84ovFwoO2dnuScbz7uPJyqsQPtZXL/Y87yn9Y7+oIez
	UqFb7ocXglpk7KyMk/w/pTrb1M3hQnMCeABDv+MbFCdPJTo=
X-Received: by 2002:a05:6a20:2588:b0:1f5:9208:3ad6 with SMTP id adf61e73a8af0-220a18337a1mr30392732637.41.1751386867022;
        Tue, 01 Jul 2025 09:21:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdDDA7VRG+NDWgAWPFIw88bukUBqM/DPB+EDNZhxmferppqBDMOlnEwSYgc6UqRL52udBz1g==
X-Received: by 2002:a05:6a20:2588:b0:1f5:9208:3ad6 with SMTP id adf61e73a8af0-220a18337a1mr30392659637.41.1751386866521;
        Tue, 01 Jul 2025 09:21:06 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af5805265sm12573010b3a.168.2025.07.01.09.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Jul 2025 09:21:06 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 01 Jul 2025 21:50:44 +0530
Subject: [PATCH v2 1/3] drm/msm/adreno: Add speedbin support for X1-85
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250701-x1e-speedbin-b4-v2-1-a8a7e06d39fb@oss.qualcomm.com>
References: <20250701-x1e-speedbin-b4-v2-0-a8a7e06d39fb@oss.qualcomm.com>
In-Reply-To: <20250701-x1e-speedbin-b4-v2-0-a8a7e06d39fb@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751386855; l=929;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=XFr0UsCyCOcjko1cdlmNH6cXzSCtwggWcwGF5puvtvU=;
 b=gJ6pDb5Kn9ocK1b4VzRIL1H8oWfTVEUJc9L95LY3O/MAF7x4Ci2ZmVPs4eB2uMPKeUYNs9xCW
 iljqWpYNTajCtBJ1dpzplJyl6f+VNaEjMIm52m+wF+Cybsq6is50ods
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=C4TpyRP+ c=1 sm=1 tr=0 ts=68640af4 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=gUrcRKAgYtiFYHip7zAA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: OSmW4Bz9h5vLXOAyMm7dW1X5HtIQnFTR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDExMCBTYWx0ZWRfX6vksNPVvw2o6
 dv92lDsJz7og7poARMWyNwRlOl8giuGKHZ4z8wurJMz/NnlVXz3rX525Z8ieAVmm/Tnxx/Un/s9
 x/ALWE2FpWFq+8IeI1Zjx6m3r2Hglm2m+EQiIJK56kdTBC+wL4yaHkU9mmhp8cvknL8a3/urgLb
 gAjwEj2euHXNwxLhdElelC1557AicTiru4WEHxY8RmPC/w7KFVs4DsHpOKTiqJpYpapsM0yD9xR
 pNcoh6K9O7rXiJkzkhmquJ1MXCabc41aQMvPRniKTzy8iWFqJVKPPlKElysOwrnWTjZLncVb57O
 0Vv2WvVqmBb+TMucsem5xPspvKlNff/XLVpnEqVODtSEnML8vnOPyghHc6OUZ/ESV3BU6reNqQX
 UTnAHhcIBRqUBAGayzFkO5rzNiZhPbxhoBSSAUsTxN3FvKHoRk3ZMvwZuYx4Ljb8bGMKPMIQ
X-Proofpoint-GUID: OSmW4Bz9h5vLXOAyMm7dW1X5HtIQnFTR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=857
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010110

Add the speedbin table to the X1-85's entry in the catalogue to
enable SKU detection.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 7748f92919b883bbcea839a61158ab52e6e4e79d..2fdaaf4372d381c351df92b8dcb21da0fcd02776 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -1442,6 +1442,13 @@ static const struct adreno_info a7xx_gpus[] = {
 			.gmu_cgc_mode = 0x00020202,
 		},
 		.preempt_record_size = 4192 * SZ_1K,
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0,	0 },
+			{ 59,	1 },
+			{ 7,	2 },
+			{ 232,	3 },
+			{ 146,	4 },
+		),
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(0x43051401), /* "C520v2" */
 		.family = ADRENO_7XX_GEN3,

-- 
2.48.1


