Return-Path: <devicetree+bounces-202912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05079B1F39F
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:17:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2B2E3B2098
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 798DD281356;
	Sat,  9 Aug 2025 09:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C0OjB3f7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC4D6280CD5
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754730994; cv=none; b=XHILi5HIXRWA4a8FoYqvjttxNbEVWVGEuXEjnPj8WipH9zC6UHjm0QTdqZaF7PGvj+yt+zZE3YziCB9L0OvDfgCuRY23VUj4uGzixZbhP+8iDhAjPOyLAq24zRTEEfJIiPj6j344jL31slAzoEb1CEgafO6Oy9I4dxim/08K9ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754730994; c=relaxed/simple;
	bh=1Y7zY65rJYgQ8sY2gOOTnCadfQm7t9KbDktMxzdbFjc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kcr9Snp2QbifOmsMgvZ9+WF9MtG+OqmXTkie0zAJ5sCvGhB6+AZ/EhwUYbFazAUvIDfPej7MBoqgRxduk0eMYaUhM4Rok6aVLT5aiYlgdZNYJPhKchltXxlUm4sVhGHmG1J+zTz0Rj7+R3Hl1UTW5YsYkih8TVvGGHv1df9RHIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C0OjB3f7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5796CIEh012243
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:16:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wukwq66wPKvNOpEVoTlqCM/dX5GluHetZv+gB4FYahg=; b=C0OjB3f706CYlkxv
	cwXbx7kRj/bM0XIwbNTToqwZRPWZhWTPCp+3Mah37qeICbPpTy0U8ZmJSQ+ZCifg
	zNiy7YCbzrDIGBtjGhiqzUXZgKNgQebivI4RKE2jPqS3FHcgzOfyhgGSnaJFxybY
	0pBp0XXUwlVL7zqPwFXnZdf+m49P7ybBGLOevma9W8oN4V/DELGlwWuPuYioFcqV
	sbNyj1cWVOSrsCBF9dNzhoKByaKTBdd6PgfN3EsrqwW7yOe6BU8LC+YhVyzs3TdV
	4NkqrcW5RWsB7TazjODnvaACEtF2QcDiQRjhiYuMZZEVTJ2anoH2oPlWZ8ges7jn
	h/xZbA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dxq6rc7w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:16:32 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e69b0ec62cso561040585a.3
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:16:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754730990; x=1755335790;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wukwq66wPKvNOpEVoTlqCM/dX5GluHetZv+gB4FYahg=;
        b=bDPaTNMRGliIssFuzHQrwQy7h4ycfO+fGazMedNx369hqgKWkfZzDEu/T5oObiQF/5
         73OJFDohWIYxXXMUjWJf2EV4KH+aciTVjPs+rzPAb3zia6gjjTFrs9y2M4jnOo/ccGyb
         YFxrOp5/c5Id0InOxRI4rFK3U/XmUR/rFZywtO/grd2yexTvmVN0bs9fMMezktj9oz3j
         tCSYmq/upd4oiuKf6cStnFmC2RaiemhXKPEq5CpSMz4x7cMGzNtOCWHfvVzzPQgHH0nI
         Jr1+0Gwtg18VH5iwzZIgWGjV/dM4fZ/CqF8aoOPa1uBaYpprMA24nfCru4U1o/ssy+Zv
         u+dw==
X-Forwarded-Encrypted: i=1; AJvYcCWp1UXugpjH2MCScNlhvRSJyBJT+PIYxs0GZPQU0sNFLpMWMoJEvqzFVVceCNM9aOeip/42BXTe/Oyj@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm0GMEULCKgcLPzGnb1qUlh00jQL9DzlONmPHQT9o6kh3JODwg
	IuaqsfZIJ74xxD4P27epkoDQ8PbSbp7l0+iw8uEZxOTJmOtXO7fVFhS+p9xU/wFhVBU2lGMi29E
	vtK/la/T9UlK92kBEZpjqeFrAAHaG96u3VBoD9KbCg4nUiLt7laZk7dS/pCfIL6Wt
X-Gm-Gg: ASbGncuYuMIRoVJT87J88jE3thV/vwnlB67VHvw6qteCJhd9Hj20ZlxiVDA5or2Dy0C
	oAX81TK4RpmxH7m22wsDDauXNyL24V8ApHt3hYLV3p8EgKTr2AggiBRKqLl81ZPqTMza6XHZMAf
	ZGPtLrgYr/wrjLTACR23/kqwA7NETO9Qiz0iii6tvUYQ8sQR02IMZSSd8TK+CeYCBNdOmnL1BdW
	Saq4fioNSOmRyhu5Z296wF9ahzsA0l7X7i/w6GXnUs9G1JcbwHhSM7qGs4+q1vbxZRIELkexBoV
	H7OInEkUzg2ztOvlZTbAd8efomF8hmNUZKxSFqRob53EMMn1j9v0zS5KIeM6TF87TIAD09YzOf8
	I3aMa6Sc7rJbI7+K8t30G/+/PTdvkwLb3r8nnc1jhF6MyM/ArE1Uv
X-Received: by 2002:a05:622a:2d6:b0:4ab:7cc8:1552 with SMTP id d75a77b69052e-4b0aedd7d11mr84492331cf.39.1754730989950;
        Sat, 09 Aug 2025 02:16:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPjyRAUyTPcM8WjrcEB+3Rkbk5GGRbERk2o3qm81l1UEMInYTDTY07fgMwvBEs7bG4cUrOlw==
X-Received: by 2002:a05:622a:2d6:b0:4ab:7cc8:1552 with SMTP id d75a77b69052e-4b0aedd7d11mr84492021cf.39.1754730989488;
        Sat, 09 Aug 2025 02:16:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898beb4sm3361989e87.30.2025.08.09.02.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:16:28 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 12:16:17 +0300
Subject: [PATCH v5 3/6] dt-bindings: display/msm: dp-controller: add
 X1E80100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v5-3-b185fe574f38@oss.qualcomm.com>
References: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
In-Reply-To: <20250809-dp_mst_bindings-v5-0-b185fe574f38@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Mahadevan <quic_mahap@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1280;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=1DHFOJ/5Vedl1A10IE8+ZyGBBk+aXq5TcrqsRnBV7aw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolxHiSpd85CuK/DvwuBUFFI5kVBcK7LTK068hP
 V/tFn2s5oiJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcR4gAKCRCLPIo+Aiko
 1cfBB/92IEVyNDnG5Q7zSljS6tiy2BKiQ6l6UmbPq1QGjtSFEUPS3PRb/NKZx4qSoMzUL0J9kVd
 aP4GObjTYqgE348Bv/hT0KOnue04WmqSQDXmBA+829EGsW3rVf07K0ByxGCYQb/mamYWPOrliUZ
 pDlNty8T8N7/RNEGT1QMs0X0+H8YNhg/HAejEx+bOmCL/g4jJEb+XR37jqM/lPgP5Md7xkFAbpF
 hnC1JpyGG6DW5t51jZ0D9+iUdaWaPrX1UzClqtNu6vo7MbZE1pHC3OMUZvOd84u8Lsc+t5AaE52
 Jx9Vnjbo/0u5yEo55L/1D4w9AW6CdjXwOgzgWiyWhmEp3Fg/
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyOCBTYWx0ZWRfX8bkF7nlZaI+i
 cjstBj2hh8VKK+sUeked6wSKC+2TsYva8vQYkpwS5lJ6vLjy9sfUa7JBawa6TTlaZBSK9QN+hj3
 ETeBjPBuPF2UzOLSD7iOAeUKgwtxrIwUWJfr6bzNJqpUMcSP8d5kCxzT8/0LwsafahNmO8zyEs1
 OLxh2R2UbKVkYLw4QkZrNslSSQuijOHwHL9fTpCNxebZzXojxNYoyAiKjiQkvF9aWFX4twts6Qw
 V0xYTLhaiW/Tl5/6bop6/NV6eGu16Rnj9M9qEfBYWUUun7gGt9QoIo9qufKZVlqXkuGmyhMgnO+
 0l6Rri0VTDjmcah8OC7LUM5ulH0zHAo9wnpSFqpjiscwyDYk3V4IfKfITkLCyrrMWYYQTJ2pdEu
 TqKL8UYY
X-Authority-Analysis: v=2.4 cv=QYhmvtbv c=1 sm=1 tr=0 ts=689711f0 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=LXTjkAqqvG_e-hvHT3MA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: cryKaGlf4aK-Bhm0MQTlwuA1OyusfmME
X-Proofpoint-ORIG-GUID: cryKaGlf4aK-Bhm0MQTlwuA1OyusfmME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 spamscore=0 phishscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090028

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Add X1E80100 to the dp-controller bindings, it has DisplayPort
controller similar to other platforms, but it uses its own compatible
string.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aed3bafa67e3c24d2a876acd29660378b367603a..55e37ec74591af0a1329598f6059475926fdd64e 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -29,6 +29,8 @@ properties:
           - qcom,sdm845-dp
           - qcom,sm8350-dp
           - qcom,sm8650-dp
+          - qcom,x1e80100-dp
+
       - items:
           - enum:
               - qcom,sar2130p-dp
@@ -180,6 +182,7 @@ allOf:
             contains:
               enum:
                 - qcom,sa8775p-dp
+                - qcom,x1e80100-dp
       then:
         oneOf:
           - required:

-- 
2.39.5


