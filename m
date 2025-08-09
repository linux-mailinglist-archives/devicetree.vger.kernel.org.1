Return-Path: <devicetree+bounces-202905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7933DB1F366
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 10:35:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D7857B45F6
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 08:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F0B427F01E;
	Sat,  9 Aug 2025 08:34:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GcrdEFS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA991280CD0
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 08:34:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754728460; cv=none; b=Fv/sNzAktVIyDtxHOhMwgdg+FBtfWzfoMIZJ46H153ZhOgCo6odPcksEU5Sa4GJ7iXXw3M38nIBrmbNMRMkco0Hopn0r/WGcbg9G37T4NTYzeRRnSNaIlax8AqTuDVk2I29OEZthQxzPRAODDfHoXjbiFFfef0CbOSolKccSDtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754728460; c=relaxed/simple;
	bh=QH9bEyRbTgQr/SMtP9uL6CI/xPFqXWvcCxc4003YFY0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=puPaPkuiq4sfyPR892742G77QviBcBjBCBsT9M/bG1bUd84heB5HPu4/WaHJTdH+9/Io5LQgOla0DOak60c1rYqN4P6w3FMAyefJM4WIoxk9XysZrN+U6T4I1BwwmqOX4YYOtnefgiLQ2f17EmUMThyBRTKorlUwIkl3i4fhfRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GcrdEFS2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5798V8Ki005041
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 08:34:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	E3trp5QopP1lAPE08Rxz4pqQidjVa3JjOfwrhzJqniw=; b=GcrdEFS2qFFViL1g
	M5Q1DP7GX6tuYbRPfEugaXlmvz+bC6fzBhJwEr/fvzIYVulrUJ8UxA5rw4iFM+Uk
	kuDQ3lNiOoqWNwrGDQw6BAUQEGAHjEFEr4rjKkyODD/29f7AcJdEON80b1xNOEaq
	fPi6fTSMDME+V9G2lywgNRMTh3irv7zOg1lBE7XN7IQG9uzJjALn/RLjR2l2WDBz
	JK+kFgOFMDvJWW34qnDeXfZdhtgy9pMA6pt9/YaZuQCkQkt4H8MEu1Y0SA96i3zO
	eIlXsWaF5RfLyJZOPl15FQXaic3iWjIm7kPjzMFfZUYYs1AzLE06lYWt1RrCRm9R
	YYoDDw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3g09qx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 08:34:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b06a73b55aso68942291cf.0
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 01:34:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754728454; x=1755333254;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E3trp5QopP1lAPE08Rxz4pqQidjVa3JjOfwrhzJqniw=;
        b=tErncZjQp5WLLpDiF3Ayl9Cxj5jL8szug2DwnUV5LLvfHIP/AihNRZNbMaJf2JKxx5
         m8Jzdhe0J/iQ6VJ7TBtyhZeM4tqdYXuYeIFflrV1IFqXuB9lPQAk62sihyojO3srGojh
         TDysD4KWFydwFL9l/LzV7yN9JJ8JznvSxZdB3XAkSac8libtbgDkc2wJPL36Hz8SiDhU
         N9+STIeFVXSG5T/lrlyPLUZ+2hM7WeyPiIV3jl9bRfeamXQHc8l89iAPlubyR1L+kE76
         Ar80SYjsWHhLqjRN++ZyKBFVrXXoGXcpQXDTnDEvYTMWeNbW6DUkP+V3vGAMlEyrJInJ
         BrlA==
X-Forwarded-Encrypted: i=1; AJvYcCXB5iAMz3nDkrPAq+9TXnVk9ueqY/Plda1Hf5b5YZSFShesbG+DjHNr3H+D6g6dxqSrdATN8a7EhnPQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0BM1taMlUq7nlZIBoeJQUcBeRd1EyoSvmg7P2lS0Hiy1rodoV
	XXaShXWMCseFkjMglGbQ5OoyPbwt3ujShs8IsTR3fH64Xe8TAYpNyXCXXzAMGceJsDiWItiiXUK
	cXnS+2nMUbJRONJ0hGD38ItR4vKo2SVmU1Lyoz6wDUswsZ4S+NQaJih8H+6HGMwGU
X-Gm-Gg: ASbGnctrfMidLw6APBMBz2fQ/zr6rOllMMZt5ZqlqszN1Wzcj+ajRoYRaLU7/0oRDb6
	bhQsrSRa9vyrnmk0JnYpXE+HJRBQpRszerdqZ1u1ayA4bWgBDQp+ywzwo+DMIZkZOxq0sJr3Eg9
	5ifhUF1uyobVRNpOdU3+/DKumYCK2wASU6GlYV77Zz8awpxKplwnCaFg3j4AVfUC5IyWuVaaIhd
	adW4iv5V7Dwh58Xl3cERmQK8u/2B7SULj4Zswoa9RiotILswxhhKF8ER4D9rrqLdftugJCYoYQM
	D9nkmXUF7ptWH06+pBiYWdKuouSHExEt75NjpuqWQ1TBJOOQYlwCm41rmIFNEV2GUkDqVLxszzW
	aJcaMac1eKSg0HnIMYaYEDcyfKV0BfzXOh09e+clAub2GwFcRMnLA
X-Received: by 2002:a05:622a:28f:b0:4b0:86b4:251a with SMTP id d75a77b69052e-4b0aec8cdd9mr83983571cf.25.1754728453608;
        Sat, 09 Aug 2025 01:34:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGyCVZKSBHC54JdM5p58f1S5MyswhdGCal7GFylGg6435Jt7NqmdsgKodNFmS0caxCzIEusvQ==
X-Received: by 2002:a05:622a:28f:b0:4b0:86b4:251a with SMTP id d75a77b69052e-4b0aec8cdd9mr83983291cf.25.1754728453106;
        Sat, 09 Aug 2025 01:34:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88c99078sm3268166e87.102.2025.08.09.01.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 01:34:09 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 11:33:56 +0300
Subject: [PATCH v4 5/6] dt-bindings: display/msm: add stream pixel clock
 bindings for MST
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v4-5-bb316e638284@oss.qualcomm.com>
References: <20250809-dp_mst_bindings-v4-0-bb316e638284@oss.qualcomm.com>
In-Reply-To: <20250809-dp_mst_bindings-v4-0-bb316e638284@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=11374;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=hGc7fsj26Xga3qWRP+i8elMb6OQNsJgXKaSRfZLzYug=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolwf0KI+oF4eOEW8yL11+SMTWknHyvnAzGAJNd
 MqeGrmMpCWJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcH9AAKCRCLPIo+Aiko
 1UUrB/9jkpj+O3jNlxE+6MFnrVWv9baLIm5rhTNRw44C2CRZjwPI1qKnuOGqWnmTQyBtPdjYLDq
 CWTJrAv21OoBkOh9mlelwnSl9Ea7LxlsUCZn4+lH0IUyHi9ktIXcTi75ijvWKV98iSNJ0NTdOjn
 qY5I+X2ObQKYXRxrWyaZVTBtBsCHnkRiXbuPP0wimrqUp5S69oRo3dJqzK1U7MUj9HA4RwHxnFv
 CGhXuZ453goAQof+KEVxG7Xlr5jzLF+INB42oBwLMRITHp0uuhIuhVKzEVE2s3rSeud4tE0BXzU
 YDgxm8/x8Lu6KMjOjRKlPNBYtpS1RtuOWWrUMfZdj9GK3J8n
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=6897080a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=oIdPugyScH22JW1vPx4A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX9GnfqBpMRoTT
 Q9fH/prNE3PQgj5kzXoHvo7nF4asOH/tiMOnkIZe6jQcO4Teq54pIkQ06KW6PpJcllq9HcPHYKT
 y57aLPPQ/x02vo7oskmUlYrKfEBIXr5mC06ltETyWps2Uo7RcsTdnviwyJ/7BBejz7dFhKNDEfO
 G9a5PVluiIZOYeYeZELg5t/S745KnTLgaOl1i+aSpwXTmElHWpTCkespgfpYnpTVslh7XGb5RID
 ShaCpp9O2XCQ+6Qtmv9LppeO/ZuJxSnxoXA4LVmxA7ol/PGdS21jyftgW2pqXZrt0jupHbSCwO0
 bVBENjgahBj3leZVdHIL2OQCtGcYPb2KYPtyjxt8Wczt4NjRKMiXJ5bsmV2h17+MIr6mPpv4Y3m
 SPgNh9D2
X-Proofpoint-GUID: On8UlAf3p7ISlm_X2a72rlmnVrEeOExI
X-Proofpoint-ORIG-GUID: On8UlAf3p7ISlm_X2a72rlmnVrEeOExI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

On a vast majority of Qualcomm chipsets DisplayPort controller can
support several MST streams (up to 4x). To support MST these chipsets
use up to 4 stream pixel clocks for the DisplayPort controller. Expand
corresponding clock bindings for these platforms and fix example
schema files to follow updated bindings.

Note: On chipsets that do support MST, the number of streams supported
can vary between controllers. For example, SA8775P supports 4 MST
streams on mdss_dp0 but only 2 streams on mdss_dp1.

Note2: SC7280 requires changes to the clock controller bindings.
Corresponding patchset will be posted separately.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 73 +++++++++++++++++++++-
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    | 20 ++++--
 .../bindings/display/msm/qcom,sar2130p-mdss.yaml   | 10 ++-
 .../bindings/display/msm/qcom,sm8750-mdss.yaml     | 10 ++-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 10 ++-
 5 files changed, 109 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 352824c245224d7b5e096770684795625fc9f146..0a6f5920565efb31da4cf23d6c8795556471e9bb 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -58,20 +58,28 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 5
     items:
       - description: AHB clock to enable register access
       - description: Display Port AUX clock
       - description: Display Port Link clock
       - description: Link interface clock between DP and PHY
-      - description: Display Port Pixel clock
+      - description: Display Port stream 0 Pixel clock
+      - description: Display Port stream 1 Pixel clock
+      - description: Display Port stream 2 Pixel clock
+      - description: Display Port stream 3 Pixel clock
 
   clock-names:
+    minItems: 5
     items:
       - const: core_iface
       - const: core_aux
       - const: ctrl_link
       - const: ctrl_link_iface
       - const: stream_pixel
+      - const: stream_1_pixel
+      - const: stream_2_pixel
+      - const: stream_3_pixel
 
   phys:
     maxItems: 1
@@ -187,6 +195,69 @@ allOf:
         required:
           - "#sound-dai-cells"
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-dp
+                # temporal until clock driver is updated
+              - qcom,sc7280-dp
+              - qcom,sc7280-edp
+              - qcom,sc8180x-edp
+              - qcom,sc8280xp-edp
+              - qcom,sm6350-dp
+    then:
+      properties:
+        clocks:
+          minItems: 5
+          maxItems: 5
+    else:
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                # some of SA8775P DP controllers support 4 streams MST,
+                # others just 2 streams MST
+                - qcom,sa8775p-dp
+      then:
+        oneOf:
+          - properties:
+              clocks:
+                minItems: 8
+                maxItems: 8
+          - properties:
+              clocks:
+                minItems: 6
+                maxItems: 6
+      else:
+        if:
+          properties:
+            compatible:
+              contains:
+                enum:
+                  # on these platforms some DP controllers support 2 streams
+                  # MST, others are SST only
+                  - qcom,sc8280xp-dp
+                  - qcom,x1e80100-dp
+        then:
+          oneOf:
+            - properties:
+                clocks:
+                  minItems: 6
+                  maxItems: 6
+            - properties:
+                clocks:
+                  minItems: 5
+                  maxItems: 5
+        else:
+          properties:
+            clocks:
+              minItems: 6
+              maxItems: 6
+
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index 1053b3bc49086185d17c7c18d56fb4caf98c2eda..2ca7a12bb4bcb4316107c5f5dfc69b0f9959c3a0 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -384,16 +384,28 @@ examples:
                      <&dispcc_dptx0_aux_clk>,
                      <&dispcc_dptx0_link_clk>,
                      <&dispcc_dptx0_link_intf_clk>,
-                     <&dispcc_dptx0_pixel0_clk>;
+                     <&dispcc_dptx0_pixel0_clk>,
+                     <&dispcc_dptx0_pixel1_clk>,
+                     <&dispcc_dptx0_pixel2_clk>,
+                     <&dispcc_dptx0_pixel3_clk>;
             clock-names = "core_iface",
                           "core_aux",
                           "ctrl_link",
                           "ctrl_link_iface",
-                          "stream_pixel";
+                          "stream_pixel",
+                          "stream_1_pixel",
+                          "stream_2_pixel",
+                          "stream_3_pixel";
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
-                              <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
+                              <&dispcc_mdss_dptx0_pixel0_clk_src>,
+                              <&dispcc_mdss_dptx0_pixel1_clk_src>,
+                              <&dispcc_mdss_dptx0_pixel2_clk_src>,
+                              <&dispcc_mdss_dptx0_pixel3_clk_src>;
+            assigned-clock-parents = <&mdss0_dp0_phy 0>,
+                                     <&mdss0_dp0_phy 1>,
+                                     <&mdss0_dp0_phy 1>,
+                                     <&mdss0_dp0_phy 1>;
 
             phys = <&mdss0_dp0_phy>;
             phy-names = "dp";
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
index 870144b53cec9d3e0892276e14b49b745d021879..44c1bb9e41094197b2a6855c0d992fda8c1240a4 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
@@ -207,16 +207,20 @@ examples:
                      <&dispcc_disp_cc_mdss_dptx0_aux_clk>,
                      <&dispcc_disp_cc_mdss_dptx0_link_clk>,
                      <&dispcc_disp_cc_mdss_dptx0_link_intf_clk>,
-                     <&dispcc_disp_cc_mdss_dptx0_pixel0_clk>;
+                     <&dispcc_disp_cc_mdss_dptx0_pixel0_clk>,
+                     <&dispcc_disp_cc_mdss_dptx0_pixel1_clk>;
             clock-names = "core_iface",
                           "core_aux",
                           "ctrl_link",
                           "ctrl_link_iface",
-                          "stream_pixel";
+                          "stream_pixel",
+                          "stream_1_pixel";
 
             assigned-clocks = <&dispcc_disp_cc_mdss_dptx0_link_clk_src>,
-                              <&dispcc_disp_cc_mdss_dptx0_pixel0_clk_src>;
+                              <&dispcc_disp_cc_mdss_dptx0_pixel0_clk_src>,
+                              <&dispcc_disp_cc_mdss_dptx0_pixel1_clk_src>;
             assigned-clock-parents = <&usb_dp_qmpphy_QMP_USB43DP_DP_LINK_CLK>,
+                                     <&usb_dp_qmpphy_QMP_USB43DP_DP_VCO_DIV_CLK>,
                                      <&usb_dp_qmpphy_QMP_USB43DP_DP_VCO_DIV_CLK>;
 
             phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
index 72c70edc1fb01c61f8aad24fdb58bfb4f62a6e34..4151f475f3bc36a584493722db207a3dd5f96eed 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8750-mdss.yaml
@@ -401,16 +401,20 @@ examples:
                          <&disp_cc_mdss_dptx0_aux_clk>,
                          <&disp_cc_mdss_dptx0_link_clk>,
                          <&disp_cc_mdss_dptx0_link_intf_clk>,
-                         <&disp_cc_mdss_dptx0_pixel0_clk>;
+                         <&disp_cc_mdss_dptx0_pixel0_clk>,
+                         <&disp_cc_mdss_dptx0_pixel1_clk>;
                 clock-names = "core_iface",
                               "core_aux",
                               "ctrl_link",
                               "ctrl_link_iface",
-                              "stream_pixel";
+                              "stream_pixel",
+                              "stream_1_pixel";
 
                 assigned-clocks = <&disp_cc_mdss_dptx0_link_clk_src>,
-                                  <&disp_cc_mdss_dptx0_pixel0_clk_src>;
+                                  <&disp_cc_mdss_dptx0_pixel0_clk_src>,
+                                  <&disp_cc_mdss_dptx0_pixel1_clk_src>;
                 assigned-clock-parents = <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+                                         <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
                                          <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
                 operating-points-v2 = <&dp_opp_table>;
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
index e35230a864379c195600ff67820d6a39b6f73ef4..8d698a2e055a88b6485606d9708e488e6bc82341 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
@@ -183,15 +183,19 @@ examples:
                <&dispcc_dptx0_aux_clk>,
                <&dispcc_dptx0_link_clk>,
                <&dispcc_dptx0_link_intf_clk>,
-               <&dispcc_dptx0_pixel0_clk>;
+               <&dispcc_dptx0_pixel0_clk>,
+               <&dispcc_dptx0_pixel1_clk>;
             clock-names = "core_iface", "core_aux",
                     "ctrl_link",
                     "ctrl_link_iface",
-                    "stream_pixel";
+                    "stream_pixel",
+                    "stream_1_pixel";
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
-                  <&dispcc_mdss_dptx0_pixel0_clk_src>;
+                  <&dispcc_mdss_dptx0_pixel0_clk_src>,
+                  <&dispcc_mdss_dptx0_pixel1_clk_src>;
             assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
+                  <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
                   <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 
             operating-points-v2 = <&mdss_dp0_opp_table>;

-- 
2.39.5


