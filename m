Return-Path: <devicetree+bounces-228283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA790BEB08A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 19:14:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 423E46E195A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 17:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF0543002C4;
	Fri, 17 Oct 2025 17:09:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d1t8nGVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F219303A0B
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760720977; cv=none; b=KWwLNyDawz1y8nJ44tFAR+QmZqUp1QAwU9Xh5p5OmjUbC+6wML1LIukKBi/nfXLa1nag2gzZIPYkGiIV8egI8qCPMYLz+UEFt00MVGIZS/Kc+J37u/s7dFByGUCoZTX6d0oVMsiG65fQ5PZZzcroM1+/aEM/yZpd41+i9LsGjLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760720977; c=relaxed/simple;
	bh=FsAmFO8jrPuC9HJylbuiPP9BJvgaZSVRLKxlOwDDju8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ld7iL04EayrGEDWV+96UN/ws17mI90OF7e6AF4DbRGy5FmFGFFxNOBGbNa/5HC7gg5J7cuEWN1GyY32wTCQyqagc55vLqqtSBdNybnK/bXLdT+gcscCWhffxMD2wr9RHB7X8hAE+dzv4Owyb6U/LvT85ambRNoZiOCIasZbkcaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d1t8nGVS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59HGMMM7006114
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ugvhCye14d4WMYIug1/zGBbRQsvBfvHQDJkjtw/ffv0=; b=d1t8nGVSWhSBFPCj
	hhBDCnzqB9XG/t0Tt8rd66ySW+9QrkvAkwOWrqxy97X9OVzoBgwZ+EAvHPuVC897
	W34o4aLhzzdJ1hfa7OTndabL+cWSS05hwH8A+QyWPpniKILFcx8bb+iOTPXhAEtq
	sSJpKX8ygIeDtBAXO7IefKZMUJnjEZaYC9q2WA4VpoA2beM1jO8VRhDK3mvLJBQ4
	wXMBUQjoyBQjvt/SwZZ5jVy4qmgM1FbnFLtj0xtgSAFtqNftj3O5e+ay5NQPtCY4
	7/8jAaQtLh8/6vRMo+nfFQuayMIwvUqllnEEJGCoa9w+g655ETtI092E3ziHqZw4
	mBIVAA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mwye55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 17:09:35 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-27356178876so15857215ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 10:09:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760720975; x=1761325775;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ugvhCye14d4WMYIug1/zGBbRQsvBfvHQDJkjtw/ffv0=;
        b=w5y/tuVXFvsIN1RMH0F/0uP5gTgRNpb8MeMFJGCxXypNgkWMQfNQxrXEYHBUucCZGv
         8iVUwTfmKNjIhkMI7fAX5Vvcd6vxfiSBCtGeW5+7R8Worx2NrPidCqHPYkHAjgJD5KTz
         hCq3iyhjWmKJEGFcNo9hm72+EwM1C1b8Byy0G6n+30HRG6cFyrhc9SfkKHD2NSG8bajH
         EpP51sCWoC7wx0FQkiqx+KVoXukr+XYpNunqUPyd8M/AGVvScfY8RrNl0/WO8l5KB8CD
         psgKyy/VQjtjiC+9Ygox23+U3xDnU1TRXDRCdeZHSO3JKRt/AQ2xq7L57o+9LgXTyKr6
         pkIw==
X-Forwarded-Encrypted: i=1; AJvYcCVG8DJLm3JrP2MShr+lV/33LvkgRFDVQ8zX6Ijik/QTOwc4ZNoic5l4924Bh3OsynNfpnvo+NH42qDZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwdEL0amXzMmhCI9HyT0Dxupth+sU4bwwCcWmNAeOJo5sgSH9he
	6LjOGYO6yX2a7PXdBZ0mOUE6xQKzLn6qzViP9MI6gFlbKtwDqhoqF2aTdr1A6ENePsSRrmoh7u9
	yHzDd36Lhsg98LyrYVFazArdnpP6NNFEUSGvaEJL/JWwdn7xE2Uq46cg6h+DPAhuS
X-Gm-Gg: ASbGnctLU+2/JgJfcAdG0L5ttnqrZELcY20FSSZQ6aNGkO2cMhTKYrBBjWLec+4Ctkv
	BC7oip9R0sAtMxsldrIA1NUXDrz2ZYmb9ZI58scZGg9mStFgjGe5W8QSq/8qSrSLVYZ+nuhba+e
	9CTssj8Xt6PvtWYlAo3xeIBJ9v8eQ9tOSdL4WY/k2S6eh1YEwRj93mFNRfC/4048kSfEFNVmjYU
	MTCyUoasgLI2xP+YGOwSUDPj8lZT+0LR4gm85lG5WjlltjoAaUIi1lDP4IT8fnGjxujosdYqbzX
	ltZSL5cVL5GK/EcK3O/Dv4vwVct+Op1IUMgOj7uBVSbMK25bRtIlqsYq9iz9GlI9YhDFmWR14nf
	Dm58U7ymKvo8jbJznyaFxZ4I=
X-Received: by 2002:a17:902:dacd:b0:269:936c:88da with SMTP id d9443c01a7336-290cc2f852amr62490835ad.41.1760720974570;
        Fri, 17 Oct 2025 10:09:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiqLdkEXK76xjF+lHG7GlL+/MevbHd6v5Dd9DkIsG+DvsK4LIGFKBDF7/iLNW/xGjrgYInhw==
X-Received: by 2002:a17:902:dacd:b0:269:936c:88da with SMTP id d9443c01a7336-290cc2f852amr62490335ad.41.1760720974024;
        Fri, 17 Oct 2025 10:09:34 -0700 (PDT)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-292471febc6sm173625ad.86.2025.10.17.10.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 10:09:33 -0700 (PDT)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Fri, 17 Oct 2025 22:38:34 +0530
Subject: [PATCH 6/6] arm64: dts: qcom: qcs615-ride: Enable Adreno 612 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251017-qcs615-spin-2-v1-6-0baa44f80905@oss.qualcomm.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
In-Reply-To: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jie Zhang <quic_jiezh@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760720932; l=854;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=73CWnG48TkIMX2pCaTLVUDJXxssv+J43riXS1iBwvYI=;
 b=nYbp04cbP4hftA9E7CUSWYP36Iz5Pp9rqyCdQ7L53BtrrLH/j7EeRFlrwfHDDfCq0XnfsB/mH
 vYFmYZ7iBlUABbf1sXw0lQKLtcr/Fd4l/WlSK6g+9Gu/MBh9PdRNytm
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX1T/K2c8aiCkS
 lOvMWGqIptFhTa+J/ClPSByQMJ4RyUaWBdqwarLj6GSwjVP2HBjHuozPMgUQAeQGlw35SQXRIcd
 3SGABKsNzeTRuA5UuPOMp1/VwNGOylX4xxkbxAZI49+UXs+7OKnA0lR8jNzSF7Iy9ZFgyHDsvVE
 ROiEBYDES3fjPoHV2Vpmr1hGlW7o6eJrtz1lHhN629aO1tW+kHvdIduvHJCCCDfvjR+HePPNp1a
 POxwVoajbNsVDHBwkjsbzYrUJWysjMHkysYj+0nGyN6cYs6PnQYwadXomnR+kNJycm0wUSlhBvY
 +kdFZxYeo1x+L/vftx8HBAwtzERxodn9XkzLX6vWti8+Gi1kM+mt53jcDp2JPm+5Uw1cJllgwbx
 bxM5EfAvRr+F3/OJeOfBgD42avxTlw==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f2784f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=Zg9b9eOPwfKYWhW-Nc0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: BlCBwhvEipSqxwOoih1AQKsbzmrJa1Z2
X-Proofpoint-ORIG-GUID: BlCBwhvEipSqxwOoih1AQKsbzmrJa1Z2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_06,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

From: Jie Zhang <quic_jiezh@quicinc.com>

Enable GPU for qcs615-ride platform and provide path for zap
shader.

Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs615-ride.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
index 705ea71b07a10aea82b5789e8ab9f757683f678a..a1c87b925bf0052c6876db96a2d6e3c3ab8037c3 100644
--- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
+++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
@@ -288,6 +288,14 @@ vreg_l17a: ldo17 {
 	};
 };
 
+&gpu {
+	status = "okay";
+};
+
+&gpu_zap_shader {
+	firmware-name = "qcom/qcs615/a612_zap.mbn";
+};
+
 &pcie {
 	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
 	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;

-- 
2.51.0


