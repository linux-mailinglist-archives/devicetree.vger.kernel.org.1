Return-Path: <devicetree+bounces-255487-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D42D23913
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 10:33:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E6F8E303094D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 09:29:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5E7135FF6E;
	Thu, 15 Jan 2026 09:28:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gNuYOHq9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GQf9RtZV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606B835E54C
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768469301; cv=none; b=ZnkQ25rgtEjL4e8RGj3po+BwGJreZk/fFVJ3V12g2ji0BLgSmMTuinj+Xx7AqlFNL1+W23T44WjSw89NhsQXHhL7H/nGjzsujKInV0q1L7/FPTfv7lfwCLIF8TTAoTiJViW0a/d4T4TyoIBfjfD8JhukhyRhJsvk15Hu9DLI6pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768469301; c=relaxed/simple;
	bh=lT56rcO/2wjclbI67SuJRUAAr4AVOFYX1OPiKxP0VqQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=nVJAAtcbB1Zc+XY1Xi5h36buDUZ6/FFzkN511I08BdjCQKMAdt93Nz6bp7jOkRKGqyI3gjKM6Mlf85FKRcSvxRX+HcOy9SuQxSH+v+8iBJJu4dhGJRcoTO7X65GxsLrMkpoJ81Oxa9UZNS+5k4f23QmPsUAG+1FOQnnR+JCQ8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gNuYOHq9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GQf9RtZV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60F6fx3J1582105
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Z3dXAwZWQrX
	iznkoQcO7REoUwgPXToMeXoe6XzLEAy4=; b=gNuYOHq9bGpDJAz+gDlrdBqizrr
	RjFNsg9vKfLdoNGUvmB7/bZWY8sihQcSIKiW3J1GMA1lBHRRLiiZXcbpURN7U0Pl
	VcC7nhD9PkNAjk1W7ApzMxeF7BCqdBA43ay2lGaJD5hmeSHkY6630KsHoKj9das9
	lxqJaqhovS6RxKzNvWypOGyENgW04kbnWmr0u90UhfAsMh14oVABl+jhIPOHbjsx
	M4hnQarsGvWr8VTG4HwGpobvnGk0wPApqo/+N7q9eiITysFcOFYq1me5p/juNDpL
	ieTlvS3ZC1W8DSnh5x6lGd2DGWk8R7AfrQvD6Xa51R2FqLzbiqZt+JtZ+Uw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bpj1psy96-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 09:28:19 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8888447ffebso19894016d6.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 01:28:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768469298; x=1769074098; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z3dXAwZWQrXiznkoQcO7REoUwgPXToMeXoe6XzLEAy4=;
        b=GQf9RtZV0GAxk8L2Ext1Kv2Tdh43N0LiLSQFRdGICES5yrnj1G/p6UQyU87HQJLkbm
         N1ko+OInjxcp2jK9Cmp498EkxZ1A9tntt/Jt8AHLAaFpv7E3E1cX0zUVIDKv+fXhXWU5
         XjPjCwS+Yik4abbeEHEwSq4WSlzPHm25RbcYTU9itS7OYsEvLTOdPt0VItpK9szqNXVt
         QqGnutmyMZaoLcnOM5F4oYVB21F4GzNt9b5QDGicPoho5AzSSx9NTYsW52/vIT3fm3YW
         SAy9AhrBuBC1cBobpKCakab+n1oOTJ5Fv0hi8X/L8CtWw6C8pO/yUsJE5Sz6d2bPzPsQ
         ab1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768469298; x=1769074098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Z3dXAwZWQrXiznkoQcO7REoUwgPXToMeXoe6XzLEAy4=;
        b=JlzkbLCrAd9Tm4Y3FXF94U1L6emZtIwoyK8cZaD/4RmyUCfKxVtFxz69uIeVxEvNzj
         VxyIMjTCoX+1Ab8OWZnNyo/EwpNzNt53LQFsUNM1Sms2XUWalv6sT+cYFuhdFJvqu6wb
         6MZF7pHXwVjlEH7yohbZh07KWbDIuIkWLbXVpBFe5m4bCxF1C3OEXx8FO7npfbxVHPTe
         fgcENqMCmVqKdPa0Fs3NRj43h/fELDDLLXn9uNY/B+mcrwH2SnuV3KUO8pYVp2RaOUMU
         eKMXuLKj2hWEJUrVvLOnjLRY7lhRazcpgdWN9eLUvLW16WdXG6MMlXhOiLXuwYPTHnl9
         2GqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2f0NdxyDprGc2bM3jWeESei6IAP8Ep2aihJuPD9WVVvYZj9K/k4QDyzZmchHHek/lGfULG0UgTKmY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7xhnZN4wDNZwuRhrQea7iPaX5p2uzTZOIuQfZsaZWaSi97fS/
	yDRIpGT6z1Vf6QgtgLTE5MPWP3OsfIxOCKy4VomcTtj2keI98SpmLrHttHQg6XjIIyYECXVuppa
	+0X7ZweebWRRj6y37Ls6oosZYOQ28ZAkzEvbBjKsgASEt2yZWIzbjQwzD1BqVcmGm
X-Gm-Gg: AY/fxX4F65Hclf/JWdRJkgYTNgZl2zIUzvp4omQqzhL73LC3sUKj9k7i9EeW4dOXTBa
	gHsbe6ixZu1VJiITdltcdn7zr13hYU3l07JnOLmMhuGXSHh1PcwYiiMihy+mJeDH/rwYYg6gKhd
	fKwSsbMgGmgGBzPdZqyOXvXPOI4i6t9UX+70sDyZLC/2V2wWx14Xm920/E50A5mmjIVO+Xo8JNt
	KFByAdjeiUd3/zT5nlGosBAd2cT4xsUSz7nd4PGStqgrPIn/XJW9Fg36/+sqpPF4j7d7pTVvzI4
	SQ4Hhb7NzasJksF2JLGM1BQQEWccReDo6LcOEMXySuxsHJi9AJKOcL4W7LTn0C59Z2uaQXIQsfd
	gt07qVSRyeMfJm/F2i/5rJPUDpj1lLTM/dEfTnxNYASiVuOkIJqUXh7g4bXpViDiBde4=
X-Received: by 2002:ad4:5961:0:b0:88a:3113:3ac3 with SMTP id 6a1803df08f44-89275ae069fmr74177586d6.10.1768469298144;
        Thu, 15 Jan 2026 01:28:18 -0800 (PST)
X-Received: by 2002:ad4:5961:0:b0:88a:3113:3ac3 with SMTP id 6a1803df08f44-89275ae069fmr74177046d6.10.1768469297587;
        Thu, 15 Jan 2026 01:28:17 -0800 (PST)
Received: from yuanjiey.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-892668a2419sm64388416d6.30.2026.01.15.01.28.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 01:28:17 -0800 (PST)
From: yuanjie yang <yuanjie.yang@oss.qualcomm.com>
To: robin.clark@oss.qualcomm.com, lumag@kernel.org, jesszhan0024@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, airlied@gmail.com,
        simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org,
        tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, tingwei.zhang@oss.qualcomm.com,
        aiqun.yu@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com
Subject: [PATCH v6 01/12] dt-bindings: display/msm: qcom,kaanapali-dpu: Add Kaanapali
Date: Thu, 15 Jan 2026 17:27:38 +0800
Message-Id: <20260115092749.533-2-yuanjie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
References: <20260115092749.533-1-yuanjie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDA2NSBTYWx0ZWRfXzirwnaSqSYJj
 I+5LtaCSjREFgGKxwLrbbwyxNrF+PuUerZOaJ0evroct+84kTnn2WJ5Cja3kZF69lBd+Kiz211Q
 CeTHMji7BjwdnAgFh/fcMZl2VH/KOpIAopHRNj/J/u+FfGf5j71Pvji1OlOLehw9RzTzu4GNDsY
 ClkXLE7zjCl5JeZUsItNqI27uh2xM0Sr9Xjvv+vct9yFRbxXvJnEMCGeD/DsT91iCtxa3mDODJl
 e9OsgMVe2j3W33Kp1QoHAUwzHVtCkFEh5yWEw4n9TBBMQAQZX2JD3bcOIE3ViEEVKzVufE7Ic/c
 F4g2vrmLk2mTaSwBqpRTyfOdpxvWZhpNSuBVemfEDfxeEm3dTrQ0vzYWYGGVO3oVKYCo0YyFD34
 PVV35YVgQ4ahQ9t1KfP7lMbsKqr8wAI2AFaBNPF7KBFGyPfsUyhk8mQi44PTghv1wS6hlzYAur4
 h9dFmXZ83AdqOw8gh2Q==
X-Authority-Analysis: v=2.4 cv=J+KnLQnS c=1 sm=1 tr=0 ts=6968b333 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=LEfPF28z9Y6gGZEU5FYA:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: CO8amDlANnU7SwEu7QD3P9mqTyfVs0ZU
X-Proofpoint-ORIG-GUID: CO8amDlANnU7SwEu7QD3P9mqTyfVs0ZU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_02,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0 phishscore=0
 clxscore=1015 suspectscore=0 malwarescore=0 lowpriorityscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150065

From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>

Add DPU version 13.0 for Qualcomm Kaanapali Soc. The Kaanapali
DPU and SM8750 have significant differences, including additions
and removals of registers, as well as changes in register addresses.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index fe296e3186d0..e29c4687c3a2 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -16,6 +16,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dpu
+          - qcom,kaanapali-dpu
           - qcom,sa8775p-dpu
           - qcom,sm8650-dpu
           - qcom,sm8750-dpu
-- 
2.34.1


