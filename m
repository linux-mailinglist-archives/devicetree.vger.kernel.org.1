Return-Path: <devicetree+bounces-211960-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D10A5B41646
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 09:21:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE0143BCC78
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 07:20:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 743952DCF46;
	Wed,  3 Sep 2025 07:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lr0n2wkN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F27AB2DBF4B
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 07:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756884027; cv=none; b=DDzTlOlmyxVph3hPRCfCw2Lc55n/ScNAoLh55O/zrx1ZqvPamSGIJMesvSiMCWhIiPnfOEfdyc6cqxow5PDZ0s82XreOn/RmMbQnOpSEB7MiBoWX4EUfdI17HpA5moURJ0u/HISsjkfDNFPEGunuSMAiV7JkfcXI+bKANxgJOQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756884027; c=relaxed/simple;
	bh=ql+8P5N7vQ3lwxnd+dbI8nX/wXVxC6V30jvlih6vQVM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sI0Mod3pePmOux3xTDKoGYshBiWnwy2Rz4twdqhBk0RuZcPz1V1iHo1JBOmH3KOqEJCSDXDgEbe3BM9bCrpIwA+wjjjp/KWMq6hW9K3HvNrvhCQc6jE44Np/5ENWQUOoyJEvyKN2xwj8b3/BAkDmxSotQrG31FZe/r94tK3dH6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lr0n2wkN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5832d2i5021861
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 07:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v+6e4xOzVaoqWdl3BPy6JebZPRvDVcagEgOuEn4A348=; b=Lr0n2wkNLANQ2zog
	JDSEYgYJjxeLku0RcngqH875j0lKKfXd/jD1QONj8y4IzuzG6nUlhI98aMkhjsG2
	QSSs6d6xdCjvHz8U0pJ7VcwZfsVoapOP86jm5OrtSA6u3r1WBLaV4fzAHirAuFeM
	+dQZ/uYgBb1G/+g1AWmjOqlF19FJF0EsLp/t/X0xc6+T/V+Y8f5Su2ngHOrv8n72
	A3hhq+o7bF0nEP39iIBvsYQjo0OLOzRxjlBcrQuof/Y6cxm9sGC08+uHWRd0qMQK
	/VRUYPcm43A0c75mckeQ8A5bjVEQZw1XwkpyA3GkZB1v90tYeIK53SVx7NmxWdTM
	+a32zQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s2p60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:20:25 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77231755b56so659582b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 00:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756884024; x=1757488824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v+6e4xOzVaoqWdl3BPy6JebZPRvDVcagEgOuEn4A348=;
        b=aQ4aRdV6aIVeUCs/ejkHA6By6IEckFYPnwEoNeFIBAtnh2oMw/X0vMrtn0lMMQcKQt
         rajA/3ixFNURXcSAvH3iPyiqPGz7qKLdbFRvRwMIPFn4zqNqBjKqCLYtuQx51ut5uPA5
         QsAE8RKSaYYiJ2OWi5Rw76jkoUYZK2CGxZEmWDXPA/vGCOxJeLoSyWnoxWTMCFRz9Y4V
         NvfUUcnhJ5P+4scYElpUWL0y1/Bl8BoxTBNQNqfwU+H9XI4daBCOWi3tl/xYY5wKTSM+
         8YMfSQTO6pqZnDT5vs4mBnCOxetwVKIoRFAM45dmvzSjbX1EZIPR8GiSvvuevfQh95Yo
         m+SA==
X-Forwarded-Encrypted: i=1; AJvYcCU/ohr5WPmw6iLqKMYUsJ5O3wtCexyuSV2EktlJY4tZ2sjiTzpu0oVz8n3BU92nUzA54S/mGkFYWCHD@vger.kernel.org
X-Gm-Message-State: AOJu0Yxt17n9AWrFfhY8MKsp+HM26XHUyPK0145QgtxUImOsyS7Lizpz
	nzjB3KouQNe8eST7G5P3wzKEXlJez6OQfIdKPOQz9xQJnkRmf1s7ZPiCV7Gol6uzkELmhR1i2mk
	0SOMjcYX0e1t1Zg75YbRur0gqJztB6Hu1lzk/UK7cJZDzqdhMtU6UoLcqz4tgvlyt
X-Gm-Gg: ASbGncs3HFtimj+umJjfe2iFnzVFrXXr7RvnzYyoTgUptcxuYITVD2+ZESqtqPPpR0p
	oOSurSiI28fR2CbfcKSZP8MyhSd7Y0i6T0l6+7ZhOwdqnsKh6NVWhecs+8GrKHf+X5XGXA0A3Uc
	YICnqNV+W9lsIpsF+L4umI5ZfYlq7WTww1TsV2w+3gCaVAcTJwfRGH1iIi6j5uz/A9kektICL/U
	McnLYtTFr1oawtEST5DqfOZDdYmAh6CV1kH928IcER9fHvZvGApKxYiHoaqDJ+Xd53mSPmTxbk6
	biPB+aHDo7FqBPVejSstJz2u8/LhTH5q6b37sBZqUvSHlL9Dl8nmFhGfccgk731n
X-Received: by 2002:a05:6a00:4655:b0:772:2bcc:d2d7 with SMTP id d2e1a72fcca58-7723c3e5048mr17242874b3a.2.1756884024084;
        Wed, 03 Sep 2025 00:20:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+kWes+kmSKDdJMo8iXbuniL1stlElvJ8Rvpw/70/MrVB+qiWNE+9keUsOzaohXoVM9Up5LA==
X-Received: by 2002:a05:6a00:4655:b0:772:2bcc:d2d7 with SMTP id d2e1a72fcca58-7723c3e5048mr17242816b3a.2.1756884023248;
        Wed, 03 Sep 2025 00:20:23 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7722a2b78d7sm15816191b3a.30.2025.09.03.00.20.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 00:20:22 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 12:49:53 +0530
Subject: [PATCH v5 2/5] drm/msm/adreno: Add speedbin data for A623 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-a623-gpu-support-v5-2-5398585e2981@oss.qualcomm.com>
References: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
In-Reply-To: <20250903-a623-gpu-support-v5-0-5398585e2981@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Gaurav Kohli <quic_gkohli@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756884002; l=774;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=ql+8P5N7vQ3lwxnd+dbI8nX/wXVxC6V30jvlih6vQVM=;
 b=NQb5LD9y8LqyoVpq4tTw0yWHyAzdvABXKjSiYBepXTEqnf0bpAT7UGb6tTfoIaZqNelb396kj
 9NNDud/mxA+DwrOF1cbuOIM/q7b3JBgvu+6Q4M4IsCsxNlpogf4+wfH
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX6IL+P3oUkUWa
 SBOmSkoOL2Nhit2vB1/3aeGT12h/HioHnZ7dn7loVD2f4+YAtSwOACmnWo9kAyAACQmL4Hp8oau
 eAyC1Sbc9t7vbODYMBi5Zsas5ToAdR8aim0uVUyq2MrlH/0LJaSTRJXqKqHvJTkkvB8aWEqgzvd
 Q4FhuKlQY4eMueTov3NhedERYMB+AYyN6cXla0A85wmE03jseJJpF0KvbRmigVebi+rX/JfmU0L
 g9KSKRW9x2iTiGZu0c5kQQs8FzylcAl71OpTNDODV0MKfsP428WmijBs/0ZxqvW0RzrgsXsTEKE
 i1WwSRN48tgvB1WX76MR9bDcIafoRu0++DgIQUGN94v5BNU02GH0BVepXL3uFCuDS6wHgJ4toVa
 leN1VKWs
X-Proofpoint-GUID: MjqkU1KPqi4RiF-dzI4a5mlLW2DTMXZm
X-Proofpoint-ORIG-GUID: MjqkU1KPqi4RiF-dzI4a5mlLW2DTMXZm
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b7ec39 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=kzp3Ga1VzSMNCBmXpT0A:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

Add the speedbin mappings for Adreno 623 GPU.

Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
---
 drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
index 00e1afd46b81546eec03e22cda9e9a604f6f3b60..6a793cc666d0b53e6869c2b82c65322f92e2486d 100644
--- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
+++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
@@ -913,6 +913,11 @@ static const struct adreno_info a6xx_gpus[] = {
 				{ /* sentinel */ },
 			},
 		},
+		.speedbins = ADRENO_SPEEDBINS(
+			{ 0,   0 },
+			{ 185, 0 },
+			{ 127, 1 },
+		),
 	}, {
 		.chip_ids = ADRENO_CHIP_IDS(
 			0x06030001,

-- 
2.50.1


