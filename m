Return-Path: <devicetree+bounces-205147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF15B281E5
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C46CEBA24BC
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:31:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6774F288C37;
	Fri, 15 Aug 2025 14:31:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KzNde1O3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C8E3288C09
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:31:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268266; cv=none; b=a/P027q4v8WXFGZINBzHoyJyvxFkvOLF9s8GKWxyAZlK+xuA1eBvShnZ9vbTmGyOrvXC9pjrhXbgEeFYaLcaGEIEuRHn2HWL69JOzZ2/3jmH4cD4tRTzuc87wSYC9XqPwD8Hw5VCkDiZ4W8W7cIFCS1jn2hG3NUBiqMrSB3LwDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268266; c=relaxed/simple;
	bh=I8GnYGobrCQKPA6K8EAg0api645394ssOT7pTCCEaxE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r5pKV5I1Q9ugp8cUgBDKRIMmq+tKiAr+YEgFIXG7g6ZfRaKzv/WXuyUhXXwGePwKCCGD6btUO+r3ED2JX2fcQ5YbJzcr1VhHuW+cytkoHnxFA9npYrXQsARw53DRN6ActfxbQGGBVSFeYTpEojhppdDdMLGppVB1fQUwSJ0+R2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KzNde1O3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEIogG021990
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:31:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KfETh4K6qmPtdLNq94Y6NZniMPTMfQAXconEqvFvvoM=; b=KzNde1O3uIZw4ATs
	qirL5b0D40f+WaIJ0fHVvGgnadsE64ZpUP9W2pkguxbr0e8dwovLQ9fQYIi8HDQg
	ALIidIuS7pdyLajlf+Hd0HEP/7iLNvjTaw3QKrBTpEhcxyUvxCXaLEoXuRekO0zk
	roa7Ecghy7DJC6mCHiFly9NikG+yjitBY+o9n13ZRDRZ1l6E2a3AtKV3Swy9keKr
	CBPelQ7ejCeGvoZw7hqXKsG7pkQGOqn3N/d3FfB1ot+NnY7lOCxZFKwIOTOppaem
	SpzDX4sBpYCz9GxhLTNfCCqooOMlXW1GsG2BcBGk7NK3GpW9iP8dZMQ9FwUum2J5
	HZXnWg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmk76k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:31:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a88d99c1cso40045606d6.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:31:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268262; x=1755873062;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KfETh4K6qmPtdLNq94Y6NZniMPTMfQAXconEqvFvvoM=;
        b=SDM6EZT4nTz7BgsT+u6soty5kctwiV9VUCE+j3UKtNKaDrOoqLZT9SecXXLLRtLQFY
         rwuHfF15SNNp7dpz45x31PHr0B/lWo9yYoYje3FFHKgg9DwIN5crvqEU/7ZooJ7F1x5a
         ulr30hff36Tf2poW5CdtDUuu+ClL5aXj92YBdjcfpUK6qLCaJ0tv66RcPhvkhq7plorH
         /0NhUrfZhYcLG+Tz7prhquKPvlebi1hr37ajtR3x5jmXldwBgEEPLWgs4zAHCPmHUAJa
         ixAJkvfOGy7iYcUo331HoWP/oL07cFI2P2WegQaM/Rygu0x1cW2PDzWbSf3MNR2X0mSz
         0jXw==
X-Forwarded-Encrypted: i=1; AJvYcCVVLhP1/IhSNsaoRaCxNb0Gcvco6wXooDYCgPVzAS48gRX//Bc0V723Bhuxh8OMT43L11G6+1uuH+3l@vger.kernel.org
X-Gm-Message-State: AOJu0YyK9pFTO6y9iWALavtsI5LhsNfOeVP2NP0OH59H43UW2BRSj/A3
	EbqmolOO3+1NtcoI18Y/RTgXH5GdVu2XejXkpD0tKKfZm9t0XsGEoW5mj6c/iQae9El+/rM2CO1
	oVQQpKTcCtFI2jlTgwUpnAA8trzC/m/TCz1ZESEnzWLKNLLdLr64KbX/5d7e/iHxO
X-Gm-Gg: ASbGncukycc7TgEi5qxIq0/2ojeaD3ScVFVd22mbp1en8BdU+DFmFrKlLYP63rNsI6s
	G7glyltF4rUYBePD9Kwb7J578IZ3Q2xF5OzvR1gamfdGT07DZKBvojlzDrxrFmW5/Bh0URxKf+i
	jnRiFS2I1HL6sRQBMBHYhzkm/+RxoilJI+Vox+n4CpTVJYJBzxE9W0gs1yF5+yc6lG6m2Ds6vEA
	3GUZZMzYPwgwjTDz4exUqQQ3TXptM4CFvUfTTd4MK3KpEzUhnVpAgfgRxYLyFXbTVIV2MZvKQFd
	JAZOl0+Ty3MCcZrdGi/b3sTbW/Q9dWt2Fxtvst+eKR1GNryc/Pw4w6vlldJvB4VfFwVl5FtAbZG
	aXPoaCf8zmDhueH0whtoKDuRrfAt1LTLLRLEHdmkkbuXTCT/dTXvE
X-Received: by 2002:ad4:4ee9:0:b0:709:e3ae:d598 with SMTP id 6a1803df08f44-70ba7aa107emr27452676d6.14.1755268254992;
        Fri, 15 Aug 2025 07:30:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFHzkjcE9QFH6C8GsOWf+bI1nL79t0RvOx0lFYbJwPrQK6r9e1mxmNnzdlb57E+T2XKZxqPdg==
X-Received: by 2002:ad4:4ee9:0:b0:709:e3ae:d598 with SMTP id 6a1803df08f44-70ba7aa107emr27445506d6.14.1755268247803;
        Fri, 15 Aug 2025 07:30:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f358bsm305661e87.110.2025.08.15.07.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:30:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 17:30:32 +0300
Subject: [PATCH v6 5/6] dt-bindings: display/msm: add stream pixel clock
 bindings for MST
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-dp_mst_bindings-v6-5-e715bbbb5386@oss.qualcomm.com>
References: <20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com>
In-Reply-To: <20250815-dp_mst_bindings-v6-0-e715bbbb5386@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=10942;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Z3VVC8Wx5ERE2Hqi3FjjhGex4zlnXnJDVqE+z1ExRBc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBon0SIMZTmLZTEHVWVeBk+/alIGiBN7QFfaqY9V
 cxeH4Y/JE2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJ9EiAAKCRCLPIo+Aiko
 1RAIB/4qSO1YgQgCJ96CbguS2UgzQmu6bHYCo4+g5Jg7DZKyuopvaeN0nCE0DQXGR5CM2oV0E5Y
 30EIKpDzSE9BxtbAGOF51gwlmUA6ciQ/gf4baKIfoYfH58byPp4r73N05hTcSh6arPaiiXWaqcr
 O7XEaey0SptyokoDE7wh4WlYlr8LqiIY1TQMKlu+Ir+fN5vBzTYJ0BG6R+cik5+VWITdzmQ9733
 tge3JUxhrRUMPCoQfK6a0YpX/oZ2o2vOmzjEMkkKhbN4l6tJhQ4whw8hgMQP3cfPWTfpuk+7lV/
 7+Ei+Vuh+uTdtMdf3THIMdoSuGAWMivIFelru3/Bf2qbUH3U
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX8o4vzjsLo6fg
 Ui5KdP5W8e0TyNTQYqBKpafkeymbghJZrdW5x5CrjTtX7nr/ujfNc19IB+90+yMk7CfbObwdk/A
 0DOnTOYPwRDYW9Ac4SbMlZ5/XWrwGj3frwLzewP2a9cdxwFlEKT3mGqlmiHb/pZaTcq6zk1xkC6
 SU3UIZ9XEYg1S3xj4JtrIxH+yQjIaiYWbuU4baVZ8R16yn/yIFBkw/wi0We2Bh8wY+Bnwq7fRff
 JVG5zcYmHpKv43qGCAwC0fmhEE6Cf2w61cOaabz7XKTRGyVkLN/XQOE9M+Rpv8VQxlBnWMFEUMO
 ub66Q7hYMWYEcal8gvCe5kVRacrJF3e3ZYTjAe7+vXSQTcO7HNzOY+59zprYaA9nqNH8BmrtGfj
 kaAiJAQ4
X-Proofpoint-GUID: 7nPPRgRu_E5TZ2JhTZLiJOzMhxDsEIuO
X-Proofpoint-ORIG-GUID: 7nPPRgRu_E5TZ2JhTZLiJOzMhxDsEIuO
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689f44a7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=qc1Uspymv7P7Zclm908A:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

On a vast majority of Qualcomm chipsets DisplayPort controller can
support several MST streams (up to 4x). To support MST these chipsets
use up to 4 stream pixel clocks for the DisplayPort controller. Expand
corresponding clock bindings for these platforms and fix example
schema files to follow updated bindings.

Note: On chipsets that do support MST, the number of streams supported
can vary between controllers. For example, SA8775P supports 4 MST
streams on mdss_dp0 but only 2 streams on mdss_dp1.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 63 +++++++++++++++++++++-
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    | 20 +++++--
 .../bindings/display/msm/qcom,sar2130p-mdss.yaml   | 10 ++--
 .../bindings/display/msm/qcom,sm8750-mdss.yaml     | 10 ++--
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 10 ++--
 5 files changed, 99 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 352824c245224d7b5e096770684795625fc9f146..68a6fd27506fda004e53174db5bcc88a29e8d2a6 100644
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
@@ -187,6 +195,59 @@ allOf:
         required:
           - "#sound-dai-cells"
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sc7180-dp
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
+        properties:
+          clocks:
+            minItems: 6
+            maxItems: 8
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
+          properties:
+            clocks:
+              minItems: 5
+              maxItems: 6
+        else:
+          # Default to 2 streams MST
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
2.47.2


