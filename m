Return-Path: <devicetree+bounces-236840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E5241C48341
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 18:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 7F3CB4F05EF
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997B532ED32;
	Mon, 10 Nov 2025 16:40:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BkyHWAyJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j+JRRJ3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11C032ED20
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792838; cv=none; b=VV/Gb4pTJ1L2jaIy257VdSm34U+/koQIPl5u0rzfeBWq239+67clSrk5m5cCAiu0zU7lZ2448GU/xGSt7eC1Flv1QEsmLMU3TuBci3y+zxd4mlJ2VT0sLAAO5rCda0OlGdI+nd/tgW0GDRrxAi8SzutFqlRgmb0jrP8Lmmd0rVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792838; c=relaxed/simple;
	bh=G2l2DvQ06Sbowus5yA4dZFnVkOMl0ih94brxKuiwNUI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MZqnsW6OQpdj8A0HPVc7y97P2EvVr0dOFh9TLRBh0M+WkpXkMD8XR3j6qc80LOv65+ojNJHq+M7BTid4Jn50UKeia7i3KI5O+K22zWrX18SJD4ohQ5843OJ6yyePKQ15IB3hqGqBXBZGvrNU94nhf9mcE8yHdWFRT05emOveSw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BkyHWAyJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j+JRRJ3r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AABZrdA3271859
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tB9D/fdcmRiky3PhS+srVAJo4/Iv4jc0qDMbbq5Kk+Q=; b=BkyHWAyJEbEj1Kf7
	5qUO9kdpU6Q/9UbvpvsTyHJ39ZOeI2MRNpXnJaQUXsm5g9sVIg75ajCTwI3RChyC
	sYOfyBwNRjbFV+GiZo1TNoEuwP0pxYtPZk71L85dTL4NOoVD3eMf2kVsTkcsuoY/
	n+eZijX6DcMj+LmlINZaeDdMPdkFn3NocFqjGldaKuVSBKh5MgUsUU/UPnGS58Cj
	aSHqLKMdDner/Iu+JnY0wkKz6Q9Abb29pE2Sr5uXN0e6f0nQn+7q/M46YxpxBpBE
	0PXXJE86u8oR9CBACBe82+DgM3FM6YdDDx+MTRkL57pui6mYaevlv3g9v9gjctG0
	yLP97g==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abfafrvty-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:36 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3418ad76063so3776846a91.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:40:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762792835; x=1763397635; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tB9D/fdcmRiky3PhS+srVAJo4/Iv4jc0qDMbbq5Kk+Q=;
        b=j+JRRJ3rx5TK63mly045wemGrbpLMKpnc6eQkyAuyG/YNvOtnT2zx91qsm5AVzb9u8
         buF1zHVxH3XO3HuIR8CJrtLBS7XID+E1A1KDPBD5CbYkiabGEPeNXwb2ud7kn8JqB8LA
         rTIDbnFxbPFs9Dlx1GMUowy5SqOVkaMyWuByqnUyp8koUsKMqB63NM0rQrJ0ctAr2fg6
         bM9ZEOU80HOoRkvhjA6NLTKIKrlTlXu0WVt5wh9qFej8XgoHaxgGGbuqrDB9bkkY1Q1O
         0vOJTckJKzq3GBZXjengdkXRXBSsAQvvTFNIBoCjutbMD4vuBylZ8GSoKhYGgOMDHjCo
         PRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792835; x=1763397635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tB9D/fdcmRiky3PhS+srVAJo4/Iv4jc0qDMbbq5Kk+Q=;
        b=BhWz5O5Nz51cGDjpJn7wnnknmEf4NeWmByky90pSWIIadRCCmYXvTJsFNE4xmcSXfv
         yTD2GLe5FYk5AAcCNE+JOQxBPemlMLLsQOiIqWOlnfu1UCm2rvIKtqHRJ2b8WjADA2VB
         RpH56pvssd4UthK9q7NbUBDfA7nV2o/nG2GTh4P5ZOMuZFcoQex3uZ/yk6IHnoPSK4tp
         dsJjREHVf6NKS5Rtpz0RLymtDeuU3WoqYC/hOOpwUTLlmBxEw8x2kKgDxMYB6lpbojD8
         y6IwSV1Lf6fxiv7mwe/2M/AuV45Wk0vXnNNBLT0wRYeha92oVWzHGQXJBjWS8E3HTiUg
         3X7g==
X-Forwarded-Encrypted: i=1; AJvYcCUfCnvMo7mHdstyTpUMDHK3IRi4wo+FwEFUIBeKe4jXXo7sA3faT63HbN09DasCZM8M40TsRjDYYjjJ@vger.kernel.org
X-Gm-Message-State: AOJu0YwvmG8nJbkNbBvKnFH8oeXp+kVLi2pO5BfPYz7Kk3XQzvkQPWky
	nUwD/PTMavm7x6cjoALWdp2jjtsNvh7Fp13q3JiyTLwhwJbCxin9S/WvXU+f26i08ipuO8OVxWy
	XLhGkGMfvSl+YcQU09pH+PqfXTUJo+ePyds4AtGbQbbGtbtnrSaNFAW8iPNWeUE9oytQZDe6E
X-Gm-Gg: ASbGncs05ACBHzw33pp4MtWfsU+7hrJWQln0h9Kve+XlIvpCIPFRUMjiET/+4gXf/p8
	ME6Lc4JkSJbLk8wQh8zrChHkyUOceWT+26mdPsbMUbaufV/Cxh2B9g6uMklcpCuIDAuAE0swbFm
	gA5+z/4i5wKXOT7aE51JNIou7n04pSjLbAgpa73MWglhwrYa4vDsxySxdfcIYGTvjZcEYsDPhHU
	FDB50ZgGHxICxa4gunUXkSv4L/EHaxwD94yh+whXBOhK+r1IYfy/ngNiL9aMzQbfDyBj8q8pDj7
	kOroME8WST6DgvKQcTnDb10TEP884T9VJvwWLJAe15jPfkYdfCfLNSSnlH934a3+fE9LXtu+o42
	OjoMLXwOmWSeXwoVe7f8yeB0=
X-Received: by 2002:a17:90a:7786:b0:343:87b1:27a with SMTP id 98e67ed59e1d1-34387b10381mr5172088a91.10.1762792835079;
        Mon, 10 Nov 2025 08:40:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFWFnJwABxwEcbzLA4NNn8jcaHApPxbRaToXFtfQE+N3nOzqp3Zff9UTtgGElCKztEpfLbq5A==
X-Received: by 2002:a17:90a:7786:b0:343:87b1:27a with SMTP id 98e67ed59e1d1-34387b10381mr5172042a91.10.1762792834452;
        Mon, 10 Nov 2025 08:40:34 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c337b20sm11468922a91.13.2025.11.10.08.40.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:40:34 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 22:07:24 +0530
Subject: [PATCH v2 18/21] dt-bindings: arm-smmu: Add Kaanapali GPU SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-kaana-gpu-support-v2-18-bef18acd5e94@oss.qualcomm.com>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
In-Reply-To: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
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
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762792679; l=916;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=G2l2DvQ06Sbowus5yA4dZFnVkOMl0ih94brxKuiwNUI=;
 b=i58PaWIJhvP983kaIcMBq4mEfOd2Dd/WK27M8EkgEPM8e2wRt8CP0MDcNjfuquTO36mYLtIal
 +hsVHf9IYi5DvmUiLKDu5icK9arFAWOyRczHm6SeqUfsEgpnR1BfIU8
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: K50G_-IWek8-5Tc73toNC0mmnpVy7YeP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE0MCBTYWx0ZWRfXxKMePY7XoXvf
 0soTURDq5dLPcSzyPeDy4XwcFTkPt1pwI39t/VvhwrkkNh9ubBM1UIH5eF3K7rFJT5Ok11bT5y+
 VHORt2MJSMya1n7fgiWHo0srSgYvcH6NlVqOcuQbZRd2VSPJCYX+1vq4FmHaXrbfbdPc2zLHVJb
 nQqd0LCLYCJAXlfqPiSZhNzPPL23wkRNtfVhsmr7sQzOuQBAL+xOVe43tUNECt2rQyx/ZxFK1do
 CdWRVTB1p5ehmh0npSMRkUMSDzwQ2mjZ9UZMgKg5a+0Nxhmgx4pyv85NVWEo1Nncit7Je7Qd9om
 tlDhOJzb7ilOd1E/7W04TcZoqBr1RTLEzoZLKNKh3iqlX9ZyX7EuOCXkq7oQzp9ZZn1mm4s4iDh
 Luz46WFVbWLS0iGujlbTR3r9jy8YZQ==
X-Authority-Analysis: v=2.4 cv=UZJciaSN c=1 sm=1 tr=0 ts=69121584 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=mFHhPm7ftKKhVARBLukA:9 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-GUID: K50G_-IWek8-5Tc73toNC0mmnpVy7YeP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-10_06,2025-11-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 impostorscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511100140

Update the devicetree bindings to support the gpu smmu present in
the Kaanapali chipset.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 59bbd20992c9..14a9624e3819 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -91,6 +91,7 @@ properties:
       - description: Qcom Adreno GPUs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,kaanapali-smmu-500
               - qcom,milos-smmu-500
               - qcom,qcm2290-smmu-500
               - qcom,qcs615-smmu-500

-- 
2.51.0


