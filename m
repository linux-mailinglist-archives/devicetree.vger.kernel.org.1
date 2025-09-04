Return-Path: <devicetree+bounces-212580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A6DB433CD
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:24:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7AAE3B13F9
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B9C29D26C;
	Thu,  4 Sep 2025 07:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q+5s0AAB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BAC29D264
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 07:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970632; cv=none; b=KgF14nps96WkLhUw79+7SVKDDeA5rPxD58r9lnfWjQ6ZZ5c10/PJnsi9McTCdkbO00g96jN61XZrLebAjGpK2OrP28+WQKLbbnffJXy6D/JIyyPA8nRJXCzQU11+tZD1UwN0d/bKH7U0815851lS43cd4RMPPc4YXqKdfSi6zWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970632; c=relaxed/simple;
	bh=gB7HmGiD8GjEmuy7612J5648tP6/6MkBhyVIM4ydbsE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ilgal3PBKcVS76qNIhNVtkkjMpxYHU4svCL7fAlTdtzqQrKdpMq7FH1+JoviQcjgXPlbbJXqnBDgHPXcZrDwekzi3QBg2es1gUuGS9AMNUSLgIW1z+6NmdzSIJAHFWyysdLqRAhsL4wDrBldoazZP4zSRBkmr8Ba7xejJ7PrCjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+5s0AAB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5840hamK007501
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 07:23:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9GVW1gIOHT36zGHHStOfqVFIcMi+JiFxcWbVSTpf52g=; b=Q+5s0AABPsLBVdYQ
	yBfCoRTYSloNTSGx2dRijI0cYn8BYQDfiM7/gl7//OEvc4ghl4YD1dVQS8JF05W5
	ANgUWIgfNnyM/8B0PYYTFwzXnWe9mCZ3FP5VkslfqCxT58adzrJrZ6FkY1ibcWIN
	neQJmowZJbGv5thRum95dzvxh1MKda4ci1VtHir2Y6hDLkup/Oh2aLsyo/sGQJvG
	1A4zgFcQDji2jawR1wT81y+Ge1jHg0bzTLKuideLCNSrUGD1YvzkG4Ol0HIbrAa8
	TdQtzBeAfoNOGcSKuYk6syFaD4x46hcP2iFxv8Fdq5r6ogbv1uo3A7GfF8BHnl1a
	UF3qjQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv6r2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:23:49 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7724ff1200eso695240b3a.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:23:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756970628; x=1757575428;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9GVW1gIOHT36zGHHStOfqVFIcMi+JiFxcWbVSTpf52g=;
        b=qrp6G5/KZhJ88Om+CTCZi3IIGd4VIeoAOpbXtIb2KTXIuFTdItsjlKvVVeWN1Pv7Wa
         nvpz/ZHFMYF2tZ76DfR2PuWOu96i9YAKvUx3GuLfv00PCn6oagwemvmxpMH299AIxdkE
         oPqAarZmzyGJdYTSmfO1vd7cm3alIhJD53jKn8rJhyAJ3mhGkokiqH7gtTF4ygIEdfQn
         boPpx73XJLD1qXfoNE+JEt3s9s4h5cpfHHPKVHnWm2Hsp1l6PbYUZhd7B2OUlEsrSiZT
         qDwVrFFvGurgQSVK5CcfkSZ7z5yTBxGJne9kdq/8otb0O+6uobvl/4ym+zOujcbtG9DQ
         2fNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBs2Tv9jANQhyFBcdcR9azBG+fyPuHw1EH5Lo2F4Yo0TkJ1b43otB5VZ708Ia9Hwa1Bzg3H/82fdyZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyPu+bOFQWleT3bpVV+si47fFgGYQ2yL0qVbE+j/u4ZXVcGlu5S
	pijjlCKzpImXZACF5s0dxEWlzVjcgnf93AoN5etw04Uafj4ec3nyvJOAw1anbgSdQ6XWBDhs0vJ
	ReINoI9yPNwrjYU9HLj/K+/UmVfs/72aCWYOQFaPeUZQ8P5B1xWXTigPM9c+EUJ0U
X-Gm-Gg: ASbGncsb/kBit/btbMjKuXTI3duL7fq4A8wDnTqqBSWGWU0V3Xpm7Y6emJK5ty6SsJO
	XX0zzjZILwh42ct3/zIljEufZ0v6lsjuBGHIezRtnNYx67uk3OCudStzRyYhXIa5eEdPRDFn0Vz
	os2T2g+rpDtnubSvh0MSZ+H4rHAvjDyZlc+NumW160gXrQMnb7qwRH0R8wqe6kte+YMzT5uF3RP
	zy1ft6A32SNoJCM9JlQuU6m0Eck3ASuDU/BPDT0OXGIBQf5SlDjIvd3xIsUIgHfA2M4BoIALS7i
	MwcgpvrCMghS52PoyFSkHab166FV+XGCjv/2odJ1Fy81hxiiW6hyz3j0GDQJlz5x7ZVKhIU=
X-Received: by 2002:a05:6a00:7450:b0:772:f60:75b0 with SMTP id d2e1a72fcca58-7723e3b1c5fmr21478377b3a.24.1756970628151;
        Thu, 04 Sep 2025 00:23:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOSmxB9zN4NxPoJkLTcpBFf0RO7oPiV/YSxMz4H00lZgVQ0z67xbJrlIxbtRFrShD+RZf8dw==
X-Received: by 2002:a05:6a00:7450:b0:772:f60:75b0 with SMTP id d2e1a72fcca58-7723e3b1c5fmr21478332b3a.24.1756970627705;
        Thu, 04 Sep 2025 00:23:47 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77243ffcebasm14656452b3a.51.2025.09.04.00.23.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 00:23:47 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 15:22:36 +0800
Subject: [PATCH v11 1/6] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-qcs8300_mdss-v11-1-bc8761964d76@oss.qualcomm.com>
References: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
In-Reply-To: <20250904-qcs8300_mdss-v11-0-bc8761964d76@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756970610; l=1298;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=gB7HmGiD8GjEmuy7612J5648tP6/6MkBhyVIM4ydbsE=;
 b=gE0tbp59NwJVvTLAcNX2z9/BDrDyVvGpk3+A5/wtShwkT7Rbo8BvTh8rqL+gw+DngvaZ3T32b
 BaddeC9p5G/A67nsj6U5kK360spcmD2o/VAjIQc4qpJK1WZaSkQMItU
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX1KXG81alb1Yq
 cg1PljdipmolmqZIitp/eR7lOcXLF9RvapZ4+IrW1R2j2X3LKpXmJfBsrCMwG70XI1YQNCOvyYP
 6PL3WXJIkeG91MKcs4L+T5gCvugiSbg6pvQ70ZLOvEEv2840E2rqZtKST0qEYptkAeqJYScA5Z+
 IetO2JLkZ7C9/WtJq9BnBGjY8rp3OY6bx0ALzZLfvjV9luj98KiKV9TrTUWBsTcvhALzwwjBTWW
 qNb38kxx5CLuaOf5xcNUycK1dFRinf8AlNB+pH/BPDoRznNz+etJbX8qGtLmvSqgo/L+GfGznoZ
 1vPPj0gVmNSRlG/I4PMpY4PrM2saFvRL/cp7LwGVP8MTp1/VqKOVnxiopxLjcHQ2rJw7BLex5cX
 tDRyJsD9
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b93e85 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=5ixSZjX4nqodb9qzXsEA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 1-fN1jkbNpVANDrs0WviRG7FQ9a-UiTm
X-Proofpoint-GUID: 1-fN1jkbNpVANDrs0WviRG7FQ9a-UiTm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml  | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd8680371ed031f7773859716f49c3aa1..d9b980a897229860dae76f25bd947405e3910925 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -13,11 +13,16 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-dpu
-      - qcom,sm8650-dpu
-      - qcom,sm8750-dpu
-      - qcom,x1e80100-dpu
+    oneOf:
+      - enum:
+          - qcom,sa8775p-dpu
+          - qcom,sm8650-dpu
+          - qcom,sm8750-dpu
+          - qcom,x1e80100-dpu
+      - items:
+          - enum:
+              - qcom,qcs8300-dpu
+          - const: qcom,sa8775p-dpu
 
   reg:
     items:

-- 
2.34.1


