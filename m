Return-Path: <devicetree+bounces-239687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 638B3C685F7
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 09:58:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B8B8E4EF333
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B1381314A6C;
	Tue, 18 Nov 2025 08:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LkM0/TTx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jD5JYQWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA36632AAD8
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763456028; cv=none; b=PkEq+BLRmSouIopPFi083jMBPurEfNuZlwX0phYCcgEL1w1y1q6DW71vynyufdiw1FyScAyLqXyw9bSd5F6423GyOjH7xqML0G4tz+DAsDkHUv7uD2mgkUCACKZ8EVcxLbaY1X0tHf6yZwcexkminCm2thMDrW3se2Lxkmu0q4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763456028; c=relaxed/simple;
	bh=b8dhLGeLQCmbMQGCYbMJAVhuNtUDEylRDp1y1629j4w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=An6c2VyDtFgUtVP9n7FNLOs65TPLBZssOlKA64mbFvafDz9YrqbPTLdsClSHEOeQTysWF8iffIqeCztjsO4nSTRQbcjij+/Llzb6j1yl6d36qFAFt/7id8tpI+zUkPFl4QEUw/nWhdezwGXYIUPqUpdhzXDKcR6A6ODWj1kU3e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LkM0/TTx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jD5JYQWN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI8E38H2194538
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:53:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kg6FTa4q14ZNGOkUdnGlMucEYQPn2MtoqjU3mnf1uE8=; b=LkM0/TTxA6iBg2bp
	caqvCVp4AjAO+m5Yu2BZAMmr8BO7QlZoBeEw+Hflflo3pG/0iBP8C5s7vXjiKk/J
	R1bCYLuvJ+V0DganVweVFB1qcAgnVXA9Pwdxx0yCBQ910NYtuU8EC/84LxjkRDqf
	Tp+xO9z2tVUlzVQnxkTCQPKpHDSOxn9VWHG51GYoEgNO9qWgcrEQ4WBccmf4G549
	78m6z0UOZQMO8T8JtxWZ3PW3bBT7NFb8bITNhHSxJZcKoqCjbauPNME+rgRUF8Hx
	ktK3Q+oRU6eDq/rReA3pk/NEMoIPjmI/Nb56Hr3LnPAy7Rx/o0jKpVmuwJjiNigZ
	QCoHig==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agn3y83qg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 08:53:45 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-297d50cd8c4so168365565ad.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 00:53:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763456025; x=1764060825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kg6FTa4q14ZNGOkUdnGlMucEYQPn2MtoqjU3mnf1uE8=;
        b=jD5JYQWND27xJqB9LdVvv+qTE3PM02TwBR29JJiE3q78y0x9iEkAMPh6BpE2+ebUrt
         pHrmEpHLoQJhwC1Q69TM0kE56eWWFDQi5gP4yc+mrPbHnXpypicOvSYuI97vH3TJHqkT
         Ly+r6tUI2wWspW5ze4hQtT8y2HkXrRZh/V2wFTnZP4gVUm6zPDA/+7p2KHuAlGKTKKvp
         KDyMx45GmywEFjsejBZfnG5XNSzpMMPwSP6/ZVS6GhEWBGndIeelMHxrHGofZFUqR4Gb
         P4umAGThcIv4XI20zjej5hKC89nabDlqLSe7bMpC2m4KpwDVJkOQyhD+vzH7j4gop14P
         ErnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763456025; x=1764060825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kg6FTa4q14ZNGOkUdnGlMucEYQPn2MtoqjU3mnf1uE8=;
        b=wQAMayDdLTI6k5WyKvLVSKpZ/rYe9tUc72FOKW7/z+qM9kMY84hMUjlBx7OCycUgT2
         WEjKiJzwTDajTJphyVn/pXr4Jdou+dF2uMbgAS5yjRPsvvnZHHZ1sCqycz3PU2gmdlH+
         9frm7XpqsO9NgnUEgzwgaXy3wt085LSGWDor4YakOEA1APghxfBzUj+c2u1FQSE8XHSO
         CZXFI1nKaqOg6J8V7uhpU1rROvv8cgjHGFIaTOHmnyQHE/4bydhnscmnYzgMKMbIFTxo
         r2B+wOQmtD3NksJs6gcjpf+B9wCJ0OLrj6wn+f9xsiA7CbPAL1EMC2ewWfTFgt+Enp92
         tqOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwOT66lXi5SvsYgetfvUP6CHj8n0J7/NFEE1aUOP8q7NSn6tf84bnLJymu9adIlntclbWLi9PNnRVM@vger.kernel.org
X-Gm-Message-State: AOJu0YymfSqXIsyYp9vjhDufehZ/n1LXEQVV1FhSovI+w7DYTKJLlwVx
	GNvMV/gPnKmdfuQ6uimVblPa/4g2GnWJQOmFsP430xIRDwHx8OH1U5/5C8XLOTt13T8Nsr5YU3q
	Rkzt6OFe3ZZ3Acei8K/vNPBzt9IrCp7b5Ds7UWLX1hVgMqoJn9xqtaLpDAf8f64mT
X-Gm-Gg: ASbGnctKxU8rYa8tvZl7i2SyT3YVuZAvWRZz9Pa6+EAQiE1hohmp76yLyzMFalmMku2
	mKvr/N9Jg4W/NozWZYNRT94BcnfOlf2JqNKjO2xllxOUa3bTFfLw+FHufdthc3uS6I3L05OqxQu
	D/kMcHu6DmyUy2c5qBPEQTkS0b+nnCVkSql1Qpds/tZWzZ1/KQ1I/vj+iS5ocxk4xKaTJ1SnigZ
	oLU90s9hgL1rgFApcXWQ7wha7UH/a7rM1U+ricSwu102I3PIQ1yYTUbWoO0ATFztmC80i6ovWw4
	9TOwBjV2diQU3b4iiuQQYOmptuccoJVOISMm7iTeF4SHyIWhOvHzsJMJNi6Osuz4I+TP+Krpl7A
	J72VhUUeOfQ4S5NAPbejLEsY=
X-Received: by 2002:a17:902:e84c:b0:295:9e4e:4092 with SMTP id d9443c01a7336-2986a76b624mr185293535ad.56.1763456025377;
        Tue, 18 Nov 2025 00:53:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJLx55VIEQR1X1kdhaTupHT64CD5j1PJ74J97Jx8OWItPIbJf1c2CruPdv9q63aQsbVJdMRA==
X-Received: by 2002:a17:902:e84c:b0:295:9e4e:4092 with SMTP id d9443c01a7336-2986a76b624mr185293105ad.56.1763456024830;
        Tue, 18 Nov 2025 00:53:44 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2568c1sm162910695ad.47.2025.11.18.00.53.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 00:53:44 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:20:46 +0530
Subject: [PATCH v4 19/22] dt-bindings: arm-smmu: Add Kaanapali and Glymur
 GPU SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251118-kaana-gpu-support-v4-19-86eeb8e93fb6@oss.qualcomm.com>
References: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
In-Reply-To: <20251118-kaana-gpu-support-v4-0-86eeb8e93fb6@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1763455868; l=984;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=b8dhLGeLQCmbMQGCYbMJAVhuNtUDEylRDp1y1629j4w=;
 b=jOmgC3U/mxErhlMr4MADnr67IrIUEIl8TZO8WCrxFy8KxEMIAkZL3bL9elKhtgNJKsYb8oNbp
 LrlluiY4THhC/9gW3BN/csHmcffGEBaqOL6sP0AXVDDO4ygLkT1IjBr
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDA2OSBTYWx0ZWRfX+AzUTi3z6EYk
 0JRTxNaXDa5LE0nuWFuEwQCYQW45nf3jpCqfnBlVqJGTT0hpTPyOBvLOm2/ElOZ6IGViU4GzpX2
 YcJpkFy68ceDwjAqSQp84d7/M7PtNdiZpoF72r257zpk6pgioPLiZs3aP4FGK1MapsxOyrvR5hx
 iL10r1qyWWQd8ui4k8sy1CXLyc3RLnffwKd1cZ7ladSddG8cCzbe+GmEGfSRMHOcbK2kLIvdYZi
 Z9NaW7fRKK3GNcZ92l0tSu68EG4fEGcMh17DfmZlZmDlNzMwonDHMPDx+zkCXm3/s7vBiHBFfkf
 tSXD+Z4gHsv5m1hOdl2SXkn8ybHRabWJylMz5cCggtJKKwQatDPYDVtxEpE7YTjVeFbqbOH1aQ+
 xEGtw6qlCITPqO1GOGkoFcB8OCkWTg==
X-Proofpoint-GUID: YMnrL6mrNCsiADCiI989G5EzslPx9oDC
X-Proofpoint-ORIG-GUID: YMnrL6mrNCsiADCiI989G5EzslPx9oDC
X-Authority-Analysis: v=2.4 cv=FtIIPmrq c=1 sm=1 tr=0 ts=691c341a cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=nx9Ee08JJy_q_36Bb04A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 phishscore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180069

Update the devicetree bindings to document the GPU SMMUs present in
Kaanapali and Glymur chipsets.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 89495f094d52..c9efdd1a6d1c 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -89,6 +89,8 @@ properties:
       - description: Qcom Adreno GPUs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,glymur-smmu-500
+              - qcom,kaanapali-smmu-500
               - qcom,milos-smmu-500
               - qcom,qcm2290-smmu-500
               - qcom,qcs615-smmu-500

-- 
2.51.0


