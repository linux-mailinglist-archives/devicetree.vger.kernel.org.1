Return-Path: <devicetree+bounces-236843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8E3C481EA
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 17:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA4B6188FF00
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 16:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED7DA330B15;
	Mon, 10 Nov 2025 16:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FgXgnG+V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AJPvMEC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62423330333
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762792861; cv=none; b=Ki9SxXVKbWRTAurvzQ/abzA0KOLq0V49JOFijAry5BjkQUhWvcbpjGmjA7Aojdyt8jaxTCwBz78qmOL3OlBRCBMWfIH9gHSE8wGtEo1VorupVsZ90eMzWDITUEtVkIpGYrKPIeeE1Cm32HMVDIMsH+hF9DHHRjHSJVRh4/1b6SM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762792861; c=relaxed/simple;
	bh=NgXP4H+ytjNcrx+o8ALLRhAZOLvOHraz88+cU8xEoFc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rhDAsKAGWNIXeF/Ts0fUoePVXKMzg8H5Ky5Oc7LL6Ue5TVdmsn0rXxyXA/gVTmy5oP2PX+uQG7NY/mB5RUJnEkpj/cFS+OYUn28UKIUVHBzdWSK2WNndOJIY20fvirJoOs+crO5rLprtix7iELkk2c60M3urR4UD1Ad0fB4Ez54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FgXgnG+V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AJPvMEC9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AABZppv3271842
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EKz5Fgcl8FFI+imxbIKOoJpuYhVpSnaRPpvrLUXLF5M=; b=FgXgnG+VzrNfD9Uu
	xxzWXTo+ysFP0KjKvm6Xc6apvKNGStrOzzMefelUuFcVtLxfr9PvT2dWIMPgxqaQ
	U4WcLBlhpmt68iEvng1m3nv7vfD4oz5HDLg9+cpyQATHFvM0ajH2IO8+pwYiBU8x
	shlQcv95904PwuvG5m441HI0euahNHLueZfwxhCgqrQF419Z4gS44D+GqEJ/kTNQ
	5ytx/8zFy3+4p+u/DseLySE5IHJuWqivxKA5QZFSEAD1WzDwBCshHpkd635YbuV1
	XW0a8phzd6Qtmims2BEq0F08BhNRXIY4f1kznhbGaHXewKtIcl32Rcm7sD6cASrW
	+qu/4Q==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abfafrvvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 16:40:59 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-3439fe6229aso1555482a91.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 08:40:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762792859; x=1763397659; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EKz5Fgcl8FFI+imxbIKOoJpuYhVpSnaRPpvrLUXLF5M=;
        b=AJPvMEC97HJ/YwSeT0HWnUuIThjxTjpoaWe/LPXoEeO5CtIFlgBBGYT/KceZ5otTy8
         wNqq5Ufvyn+ISPjRdI984IyQckAcb0+P6tpQCg2LmGXKhpv4bGTGVRhZ/+gt4ILCnfSO
         ncqVhfFgm3lPzqlhriFoHIXU+L2ekt3GI19P91w2wv7kay323arkVCeouao7Gd++erq6
         SogpPl/PC4eCsP5PvwWqrBFxePpnD75clpbPj0Dtr7L02ZEARTD46DFoAH5rz5s/exUT
         8936v3WwJP3DOvjMiK7hQy42SWbKiWbCdUwgtEua4T0O9T/rpnwEMLEqXnv/7uNtMrKr
         4A+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762792859; x=1763397659;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EKz5Fgcl8FFI+imxbIKOoJpuYhVpSnaRPpvrLUXLF5M=;
        b=NoUvZNOpvtwALlUYj4Cm07xhXqum9ezSC0c817kGnQeaDuSJE27RmNuXDGdCAK621b
         wMDfjPOd6vwMhP6FNj1+CCu4suAfXgjiG2VsEee6ho+tx1RaDHAPLghB1J14Xpcm8dCu
         RHQeICh2cwFsB8kF2y6d3QAXartkN5oOuOYJl+EU9PYYsYQkmzudQiQxiq0/Ws5WGBEz
         E1eve/aBRC4Dt6TAx1XtNLKg1hI0pnjCKY/XzCfZO4+9Ps1JWMig5uzja7hd54gU4seJ
         0HdIbNjC3f66BXobM1pZPMheyJvT2TffwVKScbiBzuhrS5rNKVePOgkirkqQYGmDcSxT
         h5Fw==
X-Forwarded-Encrypted: i=1; AJvYcCXMX4iVKVH9fjP36hhoeYqkGKEt6/zG2JIpfrlX2wydqZMsdB6Gb4BPqCJINDISTxUlkijxRbScOJDX@vger.kernel.org
X-Gm-Message-State: AOJu0YxgT5pI8HgvKsDTpoQzPGvD/VN9peJIArZlHOp/svS7ZPYjY3+M
	9XJ6OuT0rfEaPw11WaRlFbSbOT52mInY2DIgkPEpW4VIswTJYT3YsktZpiZN7xsiX2cse75tT/Q
	Oo324ynoWxBlW9bwfoYw8YI8KCRSO/mH5Y46o+QicE/BWfGEPNhNNn7AcnEGmtCpBz+Hp1sxM
X-Gm-Gg: ASbGncv+QWfCix+jx7epuLFylb1cOXBahJrpkYJLE8zRGRozVh9zQ6s7e/WZDOpOMdk
	mBTkCINxLsb6pCsWLNDFIx3jCDZ65RmhIKWv2DbJfiHMMCISd5X+CLDR5LiLJfyumDDU8tL6obW
	t8ZN7OJOgha2hBcYak0fefsSMpEUab11N+dkO9olRcoiorDdttrnkDBecndc/UkDKRrXvmkeuQ3
	jWQ3nx+2jG8VhpbDwmK8LjQAIryFxDAkNFwzGUbLd/NSy821pSiq1Jm81y4ZW98798+aQDn4Ke5
	bYUa2T1P2Ot95bbZIVGE0qcxEpZ8CUl8R3KdsEcpf6pEEHn3YhVNscMJgnR6FvOQSRfDwjzm+dJ
	3J2sK2LaJ6dfANjnba/H4+E4=
X-Received: by 2002:a17:90b:584f:b0:32e:23c9:6f41 with SMTP id 98e67ed59e1d1-343bf0dd563mr21194a91.5.1762792858803;
        Mon, 10 Nov 2025 08:40:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsAhzrL6dTTOmOA8ktM0ipxOyHiZ+nRx48w6MNOFL+Ma4SpEDRNwXEivWpIkv/T67KRQIZmQ==
X-Received: by 2002:a17:90b:584f:b0:32e:23c9:6f41 with SMTP id 98e67ed59e1d1-343bf0dd563mr21137a91.5.1762792858269;
        Mon, 10 Nov 2025 08:40:58 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3434c337b20sm11468922a91.13.2025.11.10.08.40.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 08:40:57 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Mon, 10 Nov 2025 22:07:27 +0530
Subject: [PATCH v2 21/21] dt-bindings: arm-smmu: Add Glymur GPU SMMU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-kaana-gpu-support-v2-21-bef18acd5e94@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762792679; l=866;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=NgXP4H+ytjNcrx+o8ALLRhAZOLvOHraz88+cU8xEoFc=;
 b=P3JYEELDaQNqYHCNPT773ZPurLRY8irSH7D1ka8EbWy70v55a6s41XQrylNdFsIAiMGUQAHcM
 5oLMZZUY5xHBkdCRkIlYhXjOp0JiK+QgZQn+OMA4B0khnaxj4bei+c3
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: QIFmH-ey63lNShcQqHN_-ByVZ7-ZQc5q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEwMDE0MCBTYWx0ZWRfX+fEF/0c3N9jF
 VbpCqz4Iyv+6PHGMDCbKai9X7xTLkhpjtGrbMNWp/h+cshlzYjMajmJUDqcvBw+grH3xKM5W8cK
 1xdmceaWdEeAHoUu3TcHTLb93RrFthhtwVMu2pj1DHXBg6Z5ZyFHOfYgufQGIBACfvpsFOqb/si
 ZrDgMX3WYE3QYJ8YFDjzfedORPHq8GFZkvpyfEBmxzyQ/FKIVzCJeU+DzxbLVvfTwAw9/oF33lL
 i5HqRU61R1bHnO0kCJTk3gl7972VK4R5g7v1M0FsDYbpz7TCeFXMGB9pVXNxMGZaFIF2A2vdoah
 Vp5N0OBUk6XZcQoza4cPRAqUdqLRyHlngOuT7F8F+2TtVXB0GfQPjZRaT2fAGB8k6hTQtZIR+di
 YbVzIo6T3YAcYpGKns70H5LR9NUqJQ==
X-Authority-Analysis: v=2.4 cv=UZJciaSN c=1 sm=1 tr=0 ts=6912159b cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=-Mh53b5kj-Vf1dIxLVYA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: QIFmH-ey63lNShcQqHN_-ByVZ7-ZQc5q
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
the Glymur chipset.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 14a9624e3819..cdbd23b5c08c 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -91,6 +91,7 @@ properties:
       - description: Qcom Adreno GPUs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,glymur-smmu-500
               - qcom,kaanapali-smmu-500
               - qcom,milos-smmu-500
               - qcom,qcm2290-smmu-500

-- 
2.51.0


