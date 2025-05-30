Return-Path: <devicetree+bounces-181899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F562AC9515
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 19:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE6047A1654
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 17:47:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DFD5277815;
	Fri, 30 May 2025 17:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ivU11vWF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7E427817C
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748627277; cv=none; b=EcC/xpRluMni1/+jN1NJ9AuwSboWsUArf+1sSb/MTWANAK3dq2YcaS+c8Z0pIAeravLKsK/Ri9niuGAWj8pem0oT9e98+oA6nSftpa41eLTF/sc0I3GQItEL35+qjhcUKum7yBqqvseDWT/UjivnS8c1rnpjt8165uyFTzksAQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748627277; c=relaxed/simple;
	bh=IFPkcO+SBBwiLHryCEam38Y/ThA578cS13ChJk/L3dU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YekwnMGwpg5LkbAfmncvkjQCHnSp8fxHX2GYLepUYAee7m1vXnacL/FaHb2JN/gcnTkc3TjdLWbcBLU1/0C4Y3gNqORcDZ5fMPFHzzyk0Mtwy5F8so7muA51SQuhFCEND04jSV1eteXHBzUbBkSFkTGv6tIWWn1eQ/QzpWjlT9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ivU11vWF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54UBV0KO005029
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	udvmo1kOasn0QS3/qdfX4+H38+qgrrNA8t6VayqEHFg=; b=ivU11vWFvW7EScUz
	KtK1O3hbxxvHfpR4zmrqB3AG1qA8UY2GmT6Pr8GqtB9zp0vwF5tIFUCARU7Ag/Gq
	cOx7ntis8kMdBP33dzBpxRjP3zSEFob/3pU7DlDBsPx1Ok8uGinvVV/ACmRVGHZ0
	RRdP03XuxewEMU6dFE2lCDIqphRyRQh4UPvNPM07S6wJy2ReY0WTyMRTmBeC5iM2
	13MRFoKRaE+6JY7Yyr5y0jkmtEe9c+WpdXLhyQZvk6lL35St9bq5791YD3kkGUv1
	jHU8EiFRgJLJKb5xscLcTRUBok7G+x//1WK0RakfUd5Vy/VptsCVNrEts0l25sAg
	/fzyuA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5ek9s40-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 17:47:48 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b19226b5f7dso1670433a12.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 10:47:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748627268; x=1749232068;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=udvmo1kOasn0QS3/qdfX4+H38+qgrrNA8t6VayqEHFg=;
        b=Z/lTC13CUrzwMhfOFmnciDSdm+jxjNrgYmcZcGD28owLXJ28rxshhwOHRDpFJTRPfP
         cpbyVOx4lWun/1FZThCqdL0NBVuU3i+87mbyeIuK8u33gIP5NmDxyiXLX5wv/wjcHYOv
         m2nBh0xJEsxiVXiaHB5gowKgHzUnNjMivOTIpkQJS9393SVLUXShhCR1jjH+iLb88ncM
         sc0+fPsSc+yG4aLe+f1ihNHfVGkavpwq1BFn7boF6jV+BykmDURvn/X3oPC+DdM/ePCh
         M3bdUY6RrW/IWdZ5S8WOJXivDDbO/4RB135GG5IpEKXg30w5Cr3fV8kIwXTOcfR5F/Cn
         fMeQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9+SXobZy6SbbDpCvbqgTivLZwWA7iIiSgQMrPE6vHqVCjm4zO5TyZMjfB/Kn5dYdFK1yHEk8vvXwg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+K9mqHLQR07xy0zaIy6HzhFZwk+N5lj0kenLNjLOfcxNYaNxX
	bGOcgkWDH/pMZKHCEmoe8dGivzLVnZ3Ucn/twAZp+WyzALSJL7q9tJYnE3295O/9wVVQZY74ulA
	lXjtxcnUoKdzW77suLwdILgzAMGVtexEfCWaMR/++WWYv75IDDysSB/w5DuxYty2Y
X-Gm-Gg: ASbGncv8zlPemjdyHEf6vSmjLTo5Iby0tf9WLZX6PcdQZvusy0MYap6tg+kFxOkq6jl
	/qKnlew//Svg3QkBN5bfLlN3Bb7nujH+KKoEUpW62HfzNAWdYf7abNc4I9wqBbP3b386127j/Y5
	smEwfKDCylscY+WMWxwUUFW+jap4NGjPPTscIwn0DQMOMdqtFmdAkN7LjK0UUnK2dptK9baGh8s
	8hxwN01SPZjHabPv4OKRiJYT8jvDjbkIAymaXWs6SVWCBsA1X7jTN3CLNpIsbmF7Lj8OwutIXZV
	8nXOxda/q1iRik3YiUoV7fgJ+lbW0OOyaRBv/aY03Jc6IxK/t8AbktdtEx81OAmk4ZoZ98YN
X-Received: by 2002:a17:90b:3eca:b0:310:7486:d60b with SMTP id 98e67ed59e1d1-31214ecdba7mr11894978a91.14.1748627267619;
        Fri, 30 May 2025 10:47:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYM6Tq0PT3L6Et0ngnLO2GAyc7Ioe4U+bK3yEkIDizDcSa6y+xjFo072yssMT+EmgOBPqQIQ==
X-Received: by 2002:a17:90b:3eca:b0:310:7486:d60b with SMTP id 98e67ed59e1d1-31214ecdba7mr11894951a91.14.1748627267236;
        Fri, 30 May 2025 10:47:47 -0700 (PDT)
Received: from jesszhan-linux.qualcomm.com (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e399b0fsm1615381a91.30.2025.05.30.10.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 10:47:46 -0700 (PDT)
From: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
Date: Fri, 30 May 2025 10:47:26 -0700
Subject: [PATCH v2 3/5] dt-bindings: display/msm: drop
 assigned-clock-parents for dp controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250530-dp_mst_bindings-v2-3-f925464d32a8@oss.qualcomm.com>
References: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
In-Reply-To: <20250530-dp_mst_bindings-v2-0-f925464d32a8@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Mahadevan <quic_mahap@quicinc.com>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Danila Tikhonov <danila@jiaxyga.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-64971
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748627260; l=5805;
 i=jessica.zhang@oss.qualcomm.com; s=20230329; h=from:subject:message-id;
 bh=S1XB9+JaEMa3iAt9Xnmf/DC2ThwkEN2OZRdUbvXaoBc=;
 b=lSebu3NXgPMqfVrX+ZExdEw0Qt9hbmK4Ngu6DhqZ8NRNYqWLC0MYOXj3XB+BigjIDIQIaX7Gu
 Xns8rhdsQs+CIcPDZ5zlZf1FMy3EZgvEUmv3T8M8JY4/s5MYN9ipqak
X-Developer-Key: i=jessica.zhang@oss.qualcomm.com; a=ed25519;
 pk=gAUCgHZ6wTJOzQa3U0GfeCDH7iZLlqIEPo4rrjfDpWE=
X-Authority-Analysis: v=2.4 cv=GIgIEvNK c=1 sm=1 tr=0 ts=6839ef44 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=wErF9Qt5opcPDqNnyToA:9 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: xRYG1qxOgCMQV54zVhsVy-AHUgso0Z7b
X-Proofpoint-GUID: xRYG1qxOgCMQV54zVhsVy-AHUgso0Z7b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDE1NiBTYWx0ZWRfX10D2ig+/q65B
 DUpv3oKx3TFQV9OMqMVAypIv9kjHyQCwdIx/x50/egLJEixc7ragPi63fz2d5zSBoaEi0fL+tbt
 m8eoGOWV8VsUiVJInpWz9tjMtHqVk5HquXIhSXkywszTzc30CoP1seDQcsX1TP+0iIruITj9qRs
 I3kI0y+ux2o7LVOFeHTZxjNT2NesnLi8ymDYapgOlGkL5gTrG+s5kJJWBDgQCnBh/IiADBiKAr+
 jaSCmcnwJaRbYFCefoAOzheDxwE/Uq9IabIgwVXmOjZXGCKOab5v35OqIsnIHa7vfnjAFz8RAIg
 S2KTF/dS+Tz+JEMngpcyL7U79uxIEi3qaTvhyfLKRFcXy/feDJyxUXookf4WZo6yJAlvWnzN1x9
 ewrTHfL402uCtlkprAhNSZVSVeQ+qtb5FjWKwX50KKCaJI3+IGN/7BXO5Umj7P7JnTo48bMx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_08,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 priorityscore=1501 mlxscore=0 phishscore=0 spamscore=0
 suspectscore=0 mlxlogscore=918 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300156

From: Abhinav Kumar <quic_abhinavk@quicinc.com>

Current documentation of assigned-clock-parents for dp controller does not
describe its functionality correctly making it harder to extend it for
adding multiple streams.

Instead of fixing up the documentation, drop the assigned-clock-parents
along with the usages in the chipset specific MDSS yaml files.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
Signed-off-by: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml   | 7 -------
 .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml         | 1 -
 .../devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml        | 2 --
 .../devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml          | 1 -
 .../devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml          | 2 --
 .../devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml          | 2 --
 6 files changed, 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 46a50ca4a986..a63efd8de42c 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -74,11 +74,6 @@ properties:
       - description: link clock source
       - description: pixel clock source
 
-  assigned-clock-parents:
-    items:
-      - description: phy 0 parent
-      - description: phy 1 parent
-
   phys:
     maxItems: 1
 
@@ -208,8 +203,6 @@ examples:
         assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
                           <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
 
-        assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
-
         phys = <&dp_phy>;
         phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index 1053b3bc4908..951e446dc828 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -393,7 +393,6 @@ examples:
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
                               <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&mdss0_dp0_phy 0>, <&mdss0_dp0_phy 1>;
 
             phys = <&mdss0_dp0_phy>;
             phy-names = "dp";
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
index 870144b53cec..a1f5a6bd328e 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sar2130p-mdss.yaml
@@ -216,8 +216,6 @@ examples:
 
             assigned-clocks = <&dispcc_disp_cc_mdss_dptx0_link_clk_src>,
                               <&dispcc_disp_cc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&usb_dp_qmpphy_QMP_USB43DP_DP_LINK_CLK>,
-                                     <&usb_dp_qmpphy_QMP_USB43DP_DP_VCO_DIV_CLK>;
 
             phys = <&usb_dp_qmpphy QMP_USB43DP_DP_PHY>;
             phy-names = "dp";
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
index 7a0555b15ddf..f737a8481acb 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7180-mdss.yaml
@@ -269,7 +269,6 @@ examples:
                           "ctrl_link_iface", "stream_pixel";
             assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
                               <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
             phys = <&dp_phy>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
index 2947f27e0585..7842ef274258 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sc7280-mdss.yaml
@@ -298,7 +298,6 @@ examples:
                           "stream_pixel";
             assigned-clocks = <&dispcc DISP_CC_MDSS_EDP_LINK_CLK_SRC>,
                               <&dispcc DISP_CC_MDSS_EDP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&mdss_edp_phy 0>, <&mdss_edp_phy 1>;
 
             phys = <&mdss_edp_phy>;
             phy-names = "dp";
@@ -389,7 +388,6 @@ examples:
                           "stream_pixel";
             assigned-clocks = <&dispcc DISP_CC_MDSS_DP_LINK_CLK_SRC>,
                               <&dispcc DISP_CC_MDSS_DP_PIXEL_CLK_SRC>;
-            assigned-clock-parents = <&dp_phy 0>, <&dp_phy 1>;
             phys = <&dp_phy>;
             phy-names = "dp";
 
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
index 13c5d5ffabde..3cea87def9f8 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm7150-mdss.yaml
@@ -401,8 +401,6 @@ examples:
 
             assigned-clocks = <&dispcc_mdss_dp_link_clk_src>,
                               <&dispcc_mdss_dp_pixel_clk_src>;
-            assigned-clock-parents = <&dp_phy 0>,
-                                     <&dp_phy 1>;
 
             operating-points-v2 = <&dp_opp_table>;
             power-domains = <&rpmhpd RPMHPD_CX>;

-- 
2.49.0


