Return-Path: <devicetree+bounces-126314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D11C9E11CD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 04:32:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E9D5164CCD
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 03:32:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4032A17BB16;
	Tue,  3 Dec 2024 03:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="T/vrsQcf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDDB36AEC;
	Tue,  3 Dec 2024 03:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733196748; cv=none; b=FFZt69ecIZnUEzaLKs01hHK53DTQBRxBevTyXYBIG3LlDeDWhLvkuj7oB4Dgv692GgSB4axIjkKPlvdk2KRu03GyjLlZVZkwNIBLjsgbVbxSAJJOKc0OYgXRXZ/r3VnJKj+9w9+DtVLF8XEkktX2Z8cTbuvuy3q3E6KPXrvEoU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733196748; c=relaxed/simple;
	bh=WOGgVxaSyvealCotRclm+4BylMOthHPB34gcr+z71s8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-ID:References:
	 In-Reply-To:To:CC; b=JLH7/F2fd1EBCNnVSaa9RHDEggK/bAEsPein1jdwWmE2Fk6q+Jcy8rqC7TAZr5DBGutSLQlJTnDWDSTEYRIwIr7A3ObI2EG+fKntqfS1UKzZOkGKvpNKwb1XXYRoQL/Opj8+//9K7mOcscosmKRqlGD74aLx4KR8of4T3lYgs+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=T/vrsQcf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B2IGAkl013586;
	Tue, 3 Dec 2024 03:32:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9EC1w8s8BPhkx4Uz/TKlbIJEh7clG4u1fkw5OdL8y/0=; b=T/vrsQcfDwcFEYPg
	EYBPkZDRayle1K4x4cUpU6Dnn/FvMmIu1qwZrjPuaavJwVwPlpHz8Scws1ivgm8b
	t0/vIUL/d5VALdAE1S7yxvGII9dYPHW0ayI3k0gRXDRpYiULDw6MtmfFdJxhbPUY
	1zJiXNV21IkfwTBbIKVsmFORa+M2oCZ6+i+w7ygR6ZQzfsdXp8HhTtcfQoO3OePb
	5RStFJiWvme+YVrdZ911Zo8P00EwmC6036mDVLfB6QKy53q/w4JOyxUGEKFXZl5b
	B8D4r6Lo1PfRoSOTWQWq7NDzhuNjpDppu1K0aXATem1xpePTwNfZi49FcAxTMYMB
	7HuI2A==
Received: from nalasppmta05.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437tstepq0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 03 Dec 2024 03:32:15 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA05.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 4B33WEeY003570
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 3 Dec 2024 03:32:14 GMT
Received: from abhinavk-linux1.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.9; Mon, 2 Dec 2024 19:32:14 -0800
From: Abhinav Kumar <quic_abhinavk@quicinc.com>
Date: Mon, 2 Dec 2024 19:31:41 -0800
Subject: [PATCH 3/4] dt-bindings: display/msm: add stream 1 pixel clock
 binding
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-ID: <20241202-dp_mst_bindings-v1-3-9a9a43b0624a@quicinc.com>
References: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
In-Reply-To: <20241202-dp_mst_bindings-v1-0-9a9a43b0624a@quicinc.com>
To: Rob Clark <robdclark@gmail.com>,
        Dmitry Baryshkov
	<dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Mahadevan <quic_mahap@quicinc.com>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1733196732; l=4326;
 i=quic_abhinavk@quicinc.com; s=20240509; h=from:subject:message-id;
 bh=WOGgVxaSyvealCotRclm+4BylMOthHPB34gcr+z71s8=;
 b=/HH69Y2AK4ZWZz3GL7UWlJlCQCqMWMFIsmXhLWyPJp+a6LSKM2T3qLbk25ZR1zVKOL6iuSd/I
 2LiI614tW5TAAyCJLJEgG6bmFyHTPzQkQT+1urSoZliQEGUSM2GzlqE
X-Developer-Key: i=quic_abhinavk@quicinc.com; a=ed25519;
 pk=SD3D8dOKDDh6BoX3jEYjsHrTFwuIK8+o0cLPgQok9ys=
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 8BVxJ41RklhKrqVG9iUk9MLrvvPyWkpb
X-Proofpoint-GUID: 8BVxJ41RklhKrqVG9iUk9MLrvvPyWkpb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 impostorscore=0 mlxlogscore=999 mlxscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412030028

On some chipsets the display port controller can support more
than one pixel stream (multi-stream transport). To support MST
on such chipsets, add the binding for stream 1 pixel clock for
display port controller. Since this mode is not supported on all
chipsets, add exception rules and min/max items to clearly mark
which chipsets support only SST mode (single stream) and which ones
support MST.

Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 32 ++++++++++++++++++++++
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    |  9 ++++--
 2 files changed, 38 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9fe2bf0484d8..650d19e58277 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -50,30 +50,38 @@ properties:
     maxItems: 1
 
   clocks:
+    minItems: 5
     items:
       - description: AHB clock to enable register access
       - description: Display Port AUX clock
       - description: Display Port Link clock
       - description: Link interface clock between DP and PHY
       - description: Display Port stream 0 Pixel clock
+      - description: Display Port stream 1 Pixel clock
 
   clock-names:
+    minItems: 5
     items:
       - const: core_iface
       - const: core_aux
       - const: ctrl_link
       - const: ctrl_link_iface
       - const: stream_pixel
+      - const: stream_1_pixel
 
   assigned-clocks:
+    minItems: 2
     items:
       - description: link clock source
       - description: stream 0 pixel clock source
+      - description: stream 1 pixel clock source
 
   assigned-clock-parents:
+    minItems: 2
     items:
       - description: Link clock PLL output provided by PHY block
       - description: Stream 0 pixel clock PLL output provided by PHY block
+      - description: Stream 1 pixel clock PLL output provided by PHY block
 
   phys:
     maxItems: 1
@@ -175,6 +183,30 @@ allOf:
       required:
         - "#sound-dai-cells"
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sa8775p-dp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 6
+        clock-names:
+          items:
+            - const: core_iface
+            - const: core_aux
+            - const: ctrl_link
+            - const: ctrl_link_iface
+            - const: stream_pixel
+            - const: stream_1_pixel
+        assigned-clocks:
+          maxItems: 3
+        assigned-clock-parents:
+          maxItems: 3
+
 additionalProperties: false
 
 examples:
diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
index 58f8a01f29c7..7f10e6ad8f63 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
@@ -177,16 +177,19 @@ examples:
                      <&dispcc_dptx0_aux_clk>,
                      <&dispcc_dptx0_link_clk>,
                      <&dispcc_dptx0_link_intf_clk>,
-                     <&dispcc_dptx0_pixel0_clk>;
+                     <&dispcc_dptx0_pixel0_clk>,
+                     <&dispcc_dptx0_pixel1_clk>;
             clock-names = "core_iface",
                           "core_aux",
                           "ctrl_link",
                           "ctrl_link_iface",
-                          "stream_pixel";
+                          "stream_pixel",
+                          "stream_1_pixel";
 
             assigned-clocks = <&dispcc_mdss_dptx0_link_clk_src>,
+                              <&dispcc_mdss_dptx0_pixel1_clk_src>,
                               <&dispcc_mdss_dptx0_pixel0_clk_src>;
-            assigned-clock-parents = <&mdss0_edp_phy 0>, <&mdss0_edp_phy 1>;
+            assigned-clock-parents = <&mdss0_edp_phy 0>, <&mdss0_edp_phy 1>, <&mdss0_edp_phy 1>;
 
             phys = <&mdss0_edp_phy>;
             phy-names = "dp";

-- 
2.34.1


