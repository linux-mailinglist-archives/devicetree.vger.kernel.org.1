Return-Path: <devicetree+bounces-212581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18BDDB433D0
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 09:24:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 288531724C7
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 07:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56A1929BDAA;
	Thu,  4 Sep 2025 07:24:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jhLEI/44"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F2D29BD81
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 07:23:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970640; cv=none; b=o2U2xeRhRmCA2rjDnpDrtb6D/moR9j8Ve2ZgXTle5Z3EtTaaVM/yhq7euL54PNuIHH3jH0rvIPfoUHQBhG9+zz9Zvdem/Za9cKqLp5oXoh8MkKyJJ9GQW1ylrSazUQQR7jJ7wrCjh/8Y6nnJ/l8pC8kyvQVSqXUaqmO27eOXwRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970640; c=relaxed/simple;
	bh=+O3JVszsjnLSrzFlB2OH9FsEdDEqIq5Fgx/8nAIsEh4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kjCog3/dyyNySryFUAghUu1x4oa9YBn5lVsS9//hp/dXmrWg5HBInDX84QqhPoreeqAbQAUWIXlO95j62MMXX6UXJnW2szjcHNBlxZpPj+MGOeeubHM8+ZIMElQGu18izDW3ZHQaFVewCjjj1uiqYcO/EEfk6YVS9N2nI1QIvm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jhLEI/44; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5841Tfea008689
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 07:23:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IU5cufGmzzYIjzid/BiRcbiln05RcV2CZkR0KkZBDZM=; b=jhLEI/449Th/2S0b
	yB8jz/PzwDHvlUpWEAPaa/Jk5QypLvBhbqDWuh5OtQYE0kCukp2ceCjYn4OF1iHZ
	vOzdV7M1Qat7F78FCVN5VOGpFtWwh36/BKtdNAoM//LhEtwLA59dz+c9PIrF0tc0
	5Zzs1vGtoO5qe/9S9fInBMq8zIxKSVc/VLA16XEnr+h7U++k7q1Vjg/ajm8pqGZA
	8gLhdvK/COpiqzYObN8UUC0N10sc4C4ff0ve19l24Q4+2s8wIRSxiUVBPQRY5U1F
	DAsSAvcsldRx/kFAnxNk18dPluyPWOYxKNTLnv8P3pBCSsHBaxeBCd3+jcJERSCV
	j+XUog==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uscv6r36-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:23:57 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4f86568434so551421a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:23:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756970636; x=1757575436;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IU5cufGmzzYIjzid/BiRcbiln05RcV2CZkR0KkZBDZM=;
        b=Q1gTsOHpQOLo+aOcLbT1mzxBnzkYkF6XCb721h1AXlWWMbafSNE/rFgmz36Fah2jkO
         Ye8SVIrKe5ktLSwQru/czZ3EY3CkSGrH2MZgXywn/bsA9EqlMe9lCiJx0LaAMuCunv39
         FaRuECm7lFttoBXZlONTHG2yO9NKC1irntWwlSupR9t198E0wyxBrH5Qf23lUVfWswDv
         JEYRzFw6G0JuRGV3heJmyFUROLgHERMfPEHiQNE78esUjZCKy1rxkhUivNbMG0r6vwTF
         MyIG16d+D97gXGhrQFpyXu0GN/awHwUwLFsGsaFzi3SYReevJL17p+gYuDVm+3PREp+A
         +MJw==
X-Forwarded-Encrypted: i=1; AJvYcCWb/8ztRqyaMH4hf2lcZ1a+n7DYgp6GDeXfi7zh0zJggCNFGu+P8gUVJNWFScWtbhnStigzZ3EULl8Q@vger.kernel.org
X-Gm-Message-State: AOJu0Ywl4yBckFqvfuh+OeWETYmmK1LUBsvcvwiW/dKfHuFyqy3inxKu
	7R96tNqYSQPIhg1vn4vkbcNVAwRqr7Q5wn9oNmhKignKH8JjRViJ5uJIs6ZKFxuEOVlu+r0zCFk
	yfIcFNV4tb2BPMWwK64/jK/iACgTr7eetY/kJbJCSM5rQ/0BIRkb86KbdwU+NvoMA
X-Gm-Gg: ASbGncvDGPRxMZjJ537+HNnrzqMktEb+gP0WGrnTPARz34GBOwnIt8KtzG/P33lbx+d
	BUPD+MSVkdZ0EmaZL5ZGQboqC++Zh7jr1Yuwn5WBne01F7zamly3knBIGE0L7RuZzcprsmRLaxS
	XfaIi4T9XzLCwMigcfMR/5w3iciIaVNWQ5GfFWJU67iPDjIhyc1SqNC7GuifRHi//aJoKGyax4Y
	ZV0GmSpz+OGgWEgFC0C44KEvTdcekbm7rlqmNx1QUqxDH0d4JquwrN8U+HbimdFV1bJMzHIFUXg
	mx67Rcyl8Yk/SWpjpd0wEo1nt/vjYBesGeKM1/tb9qH5HiaC7nxMGXDadmamLOr2cJLxsVc=
X-Received: by 2002:a05:6300:218e:b0:243:aa4c:afd9 with SMTP id adf61e73a8af0-243d6f03239mr24769341637.35.1756970635749;
        Thu, 04 Sep 2025 00:23:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFDePBQvO93ASzEYF1+34i/DP2V1A20QvNO3VpmRY7W2WN8nqtwQh7SOiu6OgkszsPY/xvBAA==
X-Received: by 2002:a05:6300:218e:b0:243:aa4c:afd9 with SMTP id adf61e73a8af0-243d6f03239mr24769313637.35.1756970635249;
        Thu, 04 Sep 2025 00:23:55 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77243ffcebasm14656452b3a.51.2025.09.04.00.23.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 00:23:54 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 04 Sep 2025 15:22:37 +0800
Subject: [PATCH v11 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250904-qcs8300_mdss-v11-2-bc8761964d76@oss.qualcomm.com>
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
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756970611; l=1783;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=+O3JVszsjnLSrzFlB2OH9FsEdDEqIq5Fgx/8nAIsEh4=;
 b=Kfi4EmWe6GawXwHy9Ndco2Y9vej8kL59cvhYCKx46sfAb4L2FFOtnKHbKSIfKrGR8u3g6mTY3
 am8xMIDU7JFCQjofxPqxW9QOtw2NWgL+ViIv0KJj0LSh+8VgL2QTKhx
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMSBTYWx0ZWRfX84zvJronVWbu
 jaQIvPaiAI0uMJLtzadSK5aUagi0lNkY8JeAHGRmZNyVCG4a4Oqm3ydPgqwAHRNfGREhseBekag
 UO4e/s217yUBWidLbtO9bc4ZZmTZ3cN5h9NWn+GdSIThsGGf+2DCT52hPfafHSAXcHeIU/EkpJA
 ByI9ZTRmU1riqIf5R709AsSQ/UkqGkAjXM8wv/js3BFym44aUISn8+2su1XWxCaSIIs2Wl5Zyvj
 GbeL8CrvQZr9Mczvbe5eVTjcOVVXM/S3PtvEgvtkJVRLHddIobDTV960jgqENKuR3RL6FfS88BT
 lWlZejKCLg3FFlPjsHbg8/GUYYvnePm0g0/zNirIhVEVcwAuacH4/pFCbO3Mn7qpVC6436u/5et
 ffn03YTf
X-Authority-Analysis: v=2.4 cv=A8xsP7WG c=1 sm=1 tr=0 ts=68b93e8d cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=EzsmDbvTTSquCHoeoRYA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: Ph_tvqG02yruspMJrJT-bXg3VyGNzgN6
X-Proofpoint-GUID: Ph_tvqG02yruspMJrJT-bXg3VyGNzgN6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300031

Add compatible string for the DisplayPort controller found on the
Qualcomm QCS8300 SoC.

The Qualcomm QCS8300 platform comes with one DisplayPort controller
that supports 4 MST streams.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index aeb4e4f36044a0ff1e78ad47b867e232b21df509..ad08fd11588c45698f7e63ecc3218a749fc8ca67 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     oneOf:
       - enum:
+          - qcom,qcs8300-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp
@@ -195,6 +196,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,qcs8300-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -295,6 +297,26 @@ allOf:
           minItems: 6
           maxItems: 8
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              # QCS8300 only has one DP controller that supports 4
+              # streams MST.
+              - qcom,qcs8300-dp
+    then:
+      properties:
+        reg:
+          minItems: 9
+          maxItems: 9
+        clocks:
+          minItems: 8
+          maxItems: 8
+        clocks-names:
+          minItems: 8
+          maxItems: 8
+
 additionalProperties: false
 
 examples:

-- 
2.34.1


