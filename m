Return-Path: <devicetree+bounces-167966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE87A90F4F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 01:16:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C247C190614B
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 23:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7F8D24BBEC;
	Wed, 16 Apr 2025 23:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YM0AoGGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B204242930
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744845401; cv=none; b=kEvXHEDfU7DvoJWBVsRskAaN6m7OEjaxrb/qevF1iPDCXbBNr9OvgqDyQbeOT/wTko3LAD5EFmDRA8xfV8hSWbGzN5k5+i42M9kId8LaM3xal8Qq6RM+uYEg1hhzs1kXSdDXMrQMHSbZs/n8eF9X1Y5WSOgHGOA+G+lSutTybFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744845401; c=relaxed/simple;
	bh=0Q7QbXFjOZLIKz45r8s6tdHPD3ihS77NgezOAW5kr0E=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Tzw6suX5KROMKf2p5UBmIggF1XVf/J5ILsjklA1aL8JWspRE8+CnXX5j1S7Bw0IxtkSmTH2YG15dBaLpDtNUuq2+pIvjtxj/L23UXkcalBKuRgNlxpMJdde5ZD3HPEcVvfF8cW1MauJqGvR40uQYcPQD1cbic85yFzycyPR9Xeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YM0AoGGg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53GL4rik007065
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EMnI8sXQc6fcICVFpeOcXllxBiGB1u5ryoWnljhdAJU=; b=YM0AoGGgZmWEldlE
	XW1SpuqCx5Og25VefELc3ZGpd5xTgkzJXNqY2MEWKLU2RgEi9g8l/ETcSlmWLLtv
	3WKNThLnM5ZPsOHQdXzHYrjLKIRL/n3YYQY3eKLupdQ8CByDbKIj4Jn1BDZMytCk
	XQpTB/sRHKji7f0kDevG9RcUOldN7lTQbVWPINcsYjtX2gDfVQbqMseq7h1rjrr4
	Yynf95QKBOBW3J182fu1sLj3MfZIHJWJppN+hdKX+gP5SOF+hn7fAIsobL7zagkn
	78ZBevGbVP/SvAfOd+tlnIMvyBgDeP4E0Q5aEc2uhsjn/oRDLcORnQTuOjKn3LMh
	0L8j8g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjmy6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:16:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6f0e2d30ab4so4564436d6.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 16:16:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744845398; x=1745450198;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EMnI8sXQc6fcICVFpeOcXllxBiGB1u5ryoWnljhdAJU=;
        b=w27ioVu6dcUPcM2LyYqXr0XbpmQVp0Av0SiBzsiB1xPNqQHprHLGSVNf4uGZX8vj5Z
         2RHZ+ja6IlZI42/qxp1CnS6HO236BPY/tkpKtmUgtIXg8wuJ9WrM/eliZltRrtnzlpZZ
         etyxSTghrCCVDmzvemIv8zyIMiygOnMNA3RoJP5IxEx2K5KKu8rui0DB2NrieDJVIgAr
         UFIxuMRRmJs/fNzjvqJaz41z/pXugIY+2TSb7xLR7w+uaCXFiMmjwnQf653KUxiyxBV5
         dHBNiCr43DnWlT5lOd4/qtevemFaIzzHHXUoWzhx7pZPLpo+9TsH6fV+IIcRggSHQOA2
         Fp+Q==
X-Forwarded-Encrypted: i=1; AJvYcCXNr8OzS1ZoEnpSvUO9k0Vdc28OFuA6N4wYN/T4SX0xGxLtKP+lnHJHr4lOoV1F8DTeRfCgTqshg8NF@vger.kernel.org
X-Gm-Message-State: AOJu0YyJeMxPbQjDBZOWRG+SlYI58Qgp/NsGtECGAiAl2QiiRZlzSslm
	4I0NdiXML5Byu6Bz83YgfoAijhAOZwh2bIOY00niCdeM8ubNiqwOAtXjTTk8jo2MebpZK1HdGvv
	fRgEUY6oX4fIESAg6S+gMSgBUHadlcGhTdWdy/3J7Jqpd/gtiXSZYZEdUw1PJ
X-Gm-Gg: ASbGncs0NHRDh8Z92Dya4Tw+vAHvUWbLh4ujgkEQMAGcgkUNOD9mJC9ps1JrtmQYkPM
	fEMGvUAgQ9X6VLxSt9MDAilgnIFnbbZ06buVeZKi+JIr7Hf7NtFHMVsVQWeOtsoveNlJKn5pLne
	Ew6EwOkWXVdhpWgGkuQ7JP/vGut/5Jb0EkBv7AwCHjw1+BSI1L9x911FvkK7JcO+az4BpVuY9mF
	eI/VGKdx4L7sHS8cCbiRUMbLG1ShkS4qgrubXUsRJsdbizBm7GYBBE9Fso3aWYajiId9p+XfHay
	BR5CVoY80JfeYvcHY2FYGpNlcqoc4XUzAYUcYx/bEPnuZNyWmF58CxXHGNA66SnZ3QS7AX1LI7k
	jqQfVgcOhuCdGmTlDHiAVMZHr
X-Received: by 2002:a05:6214:20a7:b0:6e6:6599:edf6 with SMTP id 6a1803df08f44-6f2b3032dafmr64441066d6.34.1744845398129;
        Wed, 16 Apr 2025 16:16:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHV2eYbePEhU79oEJdMTheoNgDUDRrmkT+27zL7lVtFXNTYV95Uc0K6ZKPeVd+SmU+iRObdqg==
X-Received: by 2002:a05:6214:20a7:b0:6e6:6599:edf6 with SMTP id 6a1803df08f44-6f2b3032dafmr64440776d6.34.1744845397805;
        Wed, 16 Apr 2025 16:16:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f4649d79esm26062181fa.15.2025.04.16.16.16.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 16:16:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Thu, 17 Apr 2025 02:16:31 +0300
Subject: [PATCH v4 01/10] dt-bindings: display/msm: dp-controller: describe
 SAR2130P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250417-sar2130p-display-v4-1-b91dd8a21b1a@oss.qualcomm.com>
References: <20250417-sar2130p-display-v4-0-b91dd8a21b1a@oss.qualcomm.com>
In-Reply-To: <20250417-sar2130p-display-v4-0-b91dd8a21b1a@oss.qualcomm.com>
To: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Bjorn Andersson <andersson@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=950;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=t96ussCqWyIQAdmFD81iVPY1jwLXVD8SP3JFMa/Qjfw=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQwaDVYA266YfVUJZHTtzTB6l1azoOGPFGCb6/u5iHhV7G
 ZZKsdudjMYsDIxcDLJiiiw+BS1TYzYlh33YMbUeZhArE8gUBi5OAZiIZDT7P4Wii0FyBYrLeDbK
 BP9d+SHIqfysl2hye2X6o0C2pL+lG7rnGEu0e/pcSax5nBpsvHv3yWV+j2ZVRJ4Q3MQnUlQ3/eu
 Pu2cKZzW8SbvrWqYv6nHjzxvVi99tT/aq6/Av3qiZYMa06ppWrgpHkOf0xNlhh6bdE0oWVGYx1l
 9Y6vVBjsNXv2iVbcqfsqCFt20LFKV1BOZymrosiPddt/zEpvyZrYelJpb39l0XWlQYkLxx6szfu
 pdjP6bpuhr9y3P5n2zvtP3whlXfn6u+mFV+/UHq9nIdg7nmXr2Ft7k8zHo/FrwttN11LYE7+YKm
 iUnCroBDy6fqPle5Oulhlpq20T3XWPGeK9ri/n+zrssAAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: 39mnZlOIysaBXFWLTetfSyGcUymxzNnN
X-Proofpoint-ORIG-GUID: 39mnZlOIysaBXFWLTetfSyGcUymxzNnN
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=68003a56 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=qy0Ph95xh7xgto4wCWoA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_09,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=900 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160186

From: Dmitry Baryshkov <lumag@kernel.org>

Describe DisplayPort controller present on Qualcomm SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index e00b88332f2fed2fc33f6d72c5cc3d827cd7594e..246bbb509bea18bed32e3a442d0926a24498c960 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -31,6 +31,7 @@ properties:
           - qcom,sm8650-dp
       - items:
           - enum:
+              - qcom,sar2130p-dp
               - qcom,sm6350-dp
               - qcom,sm8150-dp
               - qcom,sm8250-dp

-- 
2.39.5


