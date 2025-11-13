Return-Path: <devicetree+bounces-238062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAEEC56E50
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 11:38:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id ADB9835346F
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 10:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB0033436F;
	Thu, 13 Nov 2025 10:36:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aI/3G6za";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="egSDYUGV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759FC333453
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763030181; cv=none; b=h5C7xy8a7+F/eZcRdnPdvTYvq+NNxq9iQ38jUlyqC7IkCcf+ZNa8eIrgaEPRDQMuwcicuuBkLg38w4WK/kwaYMQNLF2Sr+vCGsJCZXvbDEhadk4fYcudnz0Nt66OXvrGFszpZQj2x73z6PNLq5TkMen7nuziShkRjZ7r2yKb/lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763030181; c=relaxed/simple;
	bh=4OHWHDjFq2jAK9+Bld2fkj3MwlJ5JU6OOThT1NP9j4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UcmhlVs4McEGBNm3GhHqEUPBlomX85IKNk6OUbQ6mobzkIMNRZPME2uArcVD+e4HPOkJrHGtbdwzkG9h1D7B3Z4RDCBGL6j/usgePdFIOthSp0YJ1Ceyn2T2P+EJxlB/zmXBHZRav80zc6V0awuHRtiXWuUY9yaumvZ+sdT0Y2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aI/3G6za; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=egSDYUGV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD8epNU2962364
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=; b=aI/3G6zaLd2sKtwi
	s5Tiyek8O7Bm69Fx/yNglGsvnukWY5owLK9AItiBXPF+vLUflWUFKOw5wTZVPxGv
	6mgmZy7pHc6HP483ehbQnBLYDLoUzXd7vVKkW1uVPBBBoOzG8mlZ3YyxFD0FxAOJ
	+brnRTQuaDSAW13UwGs41o9BrQjT80RhxLsjJOqdA1qHTqB23wLSaB2CDM2PSifi
	i1qnAjKDFkazEsfVnB1iu10+9hGIokBlBxKQ57hivs/UvtgQ9mCepVud+EmZ0/ST
	zMWC6dhvknbvViytP9W9NnXN2gOvxwHfp3g/9vqv13H2NG1r0bcPyHESXWuOv5Uz
	CtO/rg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acwbpu79r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 10:36:17 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7b80de683efso1437311b3a.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 02:36:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763030176; x=1763634976; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=;
        b=egSDYUGVM6W5ivvfFshN9B/pnZT+b5jNnUHyY9ffgC1FQYNEE/Ncg9K0tsAJ2mIrxv
         +sRbCa8Xu2192zp1PZPxrMZ2PyA1Kfmg8VTft0HqRDuKLJTVRGHTA68N3EgGSoZYV3gt
         U4eRgmpwwG5fcJ7T12Ksq+quzztdobDtvAwZ721HMOVbvZ7xzz3Nf4mfg5jdgnGivZQE
         /viqrC9Fz+5k48Xc370TUzSaLcT8zbZ0l3ZhOBl81CsPi7e7V5htCSFsSDe9Un8DTut3
         IzbOKXonkKm7CmrVtL23csl15HeqlApciUWWVaMmD/hojHXIA5aZMQN0mo0zW5qzhj5y
         3thQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763030176; x=1763634976;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AR4qgOv39nCgYv9wQSzT0BQbLvoJwKdb29TlFdA6Xsk=;
        b=mXnCQnkG1koGaZkh8J9PseSc5amNTjMv5TAI0PNIAbdSlg5QZMmX71UJlHSGb+PlXH
         meVF8jschQfjDckvqZGHtvn2yg8ba20IJ1inIzPiIxgumWyl6gX8vUp4U8kpcPyECM1B
         H7D8mjzuddjb3LQy1HgHhRbFnqr23FrDbVbDbjthZCVdwgECAh3qr9/mdtZ7Mxp6+5Fl
         L8T5Z4P2UMIWrPI8AoE6+L88/cGzumvfnt6vJgrV/XnWACvWl+2tZgzNMlRKijIg02Ak
         tqx9iu7unQ69IKi1qC1HR9yycIg9C/zoSNOX3aqdrt8JQukv8x/r/YoVayaZmzF6DS45
         aMqg==
X-Forwarded-Encrypted: i=1; AJvYcCUrI2DbJA4NNV1nY4qq5ANLMaMBheqqjweTXhXhO3gUhTAhxvhBfo7JtCLp6Q3ZDJynZZITreKFAf6P@vger.kernel.org
X-Gm-Message-State: AOJu0YxrH6jcpaUIt1Q8MOvPY3EWji9ZJTKYsTWf1IWsALkjSsc6uo+7
	tNXMmFBX74+afq7SDOdTfRadqoZGT/WEKaAFRJY41WhxThRzw1dEP4GNmBXBK/zXO0N7NH5ejnF
	HIly1+3XeNqpSAMKf13KPYRHahjJi1m0LyE8gB9W7mMzhTAT2FAjaxB2jmPw1SJAa
X-Gm-Gg: ASbGnctn3dHgZS8pO+sXVgO36Aj5BZ8pcZvwJ3pAeG5HEv4zDmMQCO7ZZcs0aN8cWu1
	BxNAnvIQytH9Q5u88AVkZHzbn96cHIJ2X+hpCtS4mqkzjHW4xcHngdJAmz1SDw7XNR1Zsby9zrB
	dsl8DiWBhZHqtZLg9LksGoZgwsVYCHPulIYdwMB933VUuZw4SWHImXBb8eiwEI6LkY1sbWdVAda
	5bXO2SRJVxii+dS/k5hCCTgJED6M/ldBEvgHlmarxtXsLa/pReMudLTmD8Ey8cXbOimBNB9cQ8x
	DMAEpqene0qwO/g3NVjLO0j0/iV+xPTsY7DEmzZ6XgSUPbExouV3HXordUCpvj96Cu2P6BP8XVn
	o7dS49xfQg8vza0i3AAxOZvk79g==
X-Received: by 2002:a05:6a00:3d47:b0:7aa:9e4d:b693 with SMTP id d2e1a72fcca58-7b7a4edd4a6mr8524542b3a.17.1763030176287;
        Thu, 13 Nov 2025 02:36:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGIq6p3zYaQkOGcAJjI+TPTb7shKZI9xkbDN5N3p8QV8KTQjYB+x/iWASM6JrTmUJjbM6j7Q==
X-Received: by 2002:a05:6a00:3d47:b0:7aa:9e4d:b693 with SMTP id d2e1a72fcca58-7b7a4edd4a6mr8524500b3a.17.1763030175582;
        Thu, 13 Nov 2025 02:36:15 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b9250d2d16sm1886922b3a.22.2025.11.13.02.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 02:36:15 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Thu, 13 Nov 2025 16:05:52 +0530
Subject: [PATCH v7 02/14] firmware: qcom_scm: Remove redundant piece of
 code
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251113-kvm-rproc-v7-v7-2-df4910b7c20a@oss.qualcomm.com>
References: <20251113-kvm-rproc-v7-v7-0-df4910b7c20a@oss.qualcomm.com>
In-Reply-To: <20251113-kvm-rproc-v7-v7-0-df4910b7c20a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763030164; l=906;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=4OHWHDjFq2jAK9+Bld2fkj3MwlJ5JU6OOThT1NP9j4s=;
 b=w318Bx7r90h+xljy776NCBKlBZscTjUwXmchks0oHl7B2ii5+sjpDI+SxMgAzllPteVRLK8/D
 vd+vLj9aDZ7CVdPuR0c9KIiD2pEmgBVuUnJP07VuH43cYMqBKxCuxiJ
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Authority-Analysis: v=2.4 cv=NvjcssdJ c=1 sm=1 tr=0 ts=6915b4a1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pWxEDRe995Kf1ot4LjYA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: _Ll9dJ1yYJyzzOn_sSNEh8Njm9pAQcWx
X-Proofpoint-ORIG-GUID: _Ll9dJ1yYJyzzOn_sSNEh8Njm9pAQcWx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA3OCBTYWx0ZWRfX7TQOHcEjNgID
 KQoNFOFUUWoad4m61x0J9hjI4JZ/EWDpDo4D4ry0Zgq0nVypcDNo3ocQ1UGoDJaNb9E2bzYsxOj
 4/AaGiv3A3S+7SCbRBNJ8PM53EXyV98YDuimdQrBLxB1elRrAAYnKW0ihY33P2ycywcyfh8ZQWZ
 AZEkfrbCLjryb/JEjwEzyWm2ypYS3yjUQKZ7zmRL7tyUCCyRbXoGLj39iC/0i9Ns2FanYZRPfCE
 lr8qVpTCKgzpZKtmaViUnVYmHWma2VCW4nA8a1UuMP5hAxO4mf2lq9frUB2oj2rfrsdfn2OeisP
 KU+p7IvjOPJE1Lb6xRUhAisiI5IATp8dXXTUyQHKnALhHCou3YYQRWnAV3SrxVvqsBIMKFY8aVy
 kanV2kNjo0jZzoJOrwJYRcWgBEwI6Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_01,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 phishscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511130078

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
index e777b7cb9b12..26969bcd763c 100644
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


