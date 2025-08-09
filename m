Return-Path: <devicetree+bounces-202914-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F21BEB1F3A6
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 11:17:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14B8056352E
	for <lists+devicetree@lfdr.de>; Sat,  9 Aug 2025 09:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7B2C27FD49;
	Sat,  9 Aug 2025 09:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HUqEmuWS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077E227FD46
	for <devicetree@vger.kernel.org>; Sat,  9 Aug 2025 09:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754731002; cv=none; b=GKC99QmuqxF040MSYxuO3tdjC7qRnlLlI9SAKNyTYVRqM9EQdp2T3Rr1mke7ST2rTPN73dnmS3yrWp9TKxk8MTr9/D8AeyHGrGMVV1L3fND4gK6O64Zm0ViCCsMvDZGtS/f+zj7OFOAaPtSjWxPFtyl+FMpH8dCG4jf9O/dhcVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754731002; c=relaxed/simple;
	bh=OXlp7tRF8etUoOrOOuasSeWbag+diIpKc8NDy0C1ZLw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dwS3KRFWceuMMDRooeZdyYM2it0u9hODpc3OEzhJ63QsERaVoLdg7AEyY1jtAqIxo+yrJ2iNHADoHaBjO1eWhunz0pfxqLk0CLawZP6GnHM2Lc1BNagF9JYVKlg5oUYiWN1mOKEqHiSAp6xkhvJTuHqAqMMHMvc7mJ/phltuk1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HUqEmuWS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5796Fj6w016007
	for <devicetree@vger.kernel.org>; Sat, 9 Aug 2025 09:16:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j2xJwTiPaELzvbjfh6QoRy0Mye0zTvpRss0BiT3Ff5U=; b=HUqEmuWS6wpPa6Bu
	cov3KEywV10bwpe4horofJUhBCOKzXzFonmXiZwK2xPoxIlBCRqgNqIeO+/31YKT
	CAWc/XASc5m18OcIpDvFpz1GY0zX9Psh3MWOu6ZQ+L6szI10Tx/1xUSrG5lLNUbp
	pawrEFQCe0SfBhuogFyu2OTqOk9kbEkE40u4yEobMGh84dHhXZfvtrCQ4ne7iF9c
	dvNimsKOnRjVATBrfsZCvxdWli+XaxgVkEG0Ds+H8Vv/VDCfdibg33//Vtdo3Mo4
	nQPC3CSbUe0wzfgLVNDP5Q8MEuNIOjzTtq5Qj96WCu3z/5YbCgGOsebqSenlSVsg
	+Z8BfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dwwy0e75-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 09:16:39 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b06228c36aso38821091cf.1
        for <devicetree@vger.kernel.org>; Sat, 09 Aug 2025 02:16:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754730999; x=1755335799;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2xJwTiPaELzvbjfh6QoRy0Mye0zTvpRss0BiT3Ff5U=;
        b=anm1YBEPKuQxoJjzkcGAMMr8r+MDy8D8tT3PZJ7XceoYOVvwKaw2+29jbLoKclXjjC
         OqNQ2jPBl7XZUoF5IEZ8sqXEPbKkkcxdJj44GL2OiKfD7hWm/hV3MRCjh5BCuEwoNwA6
         vTkkCKFhEoWT3iowMAS+LdhPdTZs9MjVhUipfF2Bp4Bshhgd3kNhjdESVbj1Vat10xjv
         JNGDhpzj1CYGJrMpvLBq1rvAgzcZ3qFRIp0k03TsXpYwaVK8qM6LGNBBb5q6jORFA3uL
         RZnbR4WGv94+s6U8eAS4GmGnLuLkGNIk42hYEZWKw9g7CNpdzq6VWO2cdKyZHSOnuHA4
         mD/g==
X-Forwarded-Encrypted: i=1; AJvYcCVx6rF1yOVDv+Re1XUCR51E0nQ25hF+l7rdynwKQvbRNIXWDW57vQUm/5uIRsnCOT23om2D7OPE9Yq+@vger.kernel.org
X-Gm-Message-State: AOJu0YwX2ca5LzOjZacHro4G6w6Q87pVMSk0MFkQBDF90IjZ7RmoIH0T
	PgrfuAiHHn3CuYev5/r9uUuaPQDJhSE+Q1aI1yBjUedSqxELzNuyytfuETjg2QR30K//6L9aR7d
	S9dt6cJInIjW8v6DzcLtwGzwXmCWE+kxT7ScyPjvnsiUhDJ/Dns5kk8AXccZO6rja
X-Gm-Gg: ASbGncv6UUzLwsK3otycz6LyDSIrA/OCH6hnW3cuJ7YlFQFZqAwzdEAojDDOiqoDxuy
	KYh/Q+kneP1IQReOzbHitqxCYMgbR6j77YNg6v9MIS5e9Uq7wuBxS8ad7ydyyisl1jFpsRMKOoZ
	Fh+oANE2vUYLUxpbooYrUC/TEzLw9qCQpSaw+7K3lX3PK+SHpYI/T65g+eLcAQj33D+9mjvPWDl
	B5nW/8dv7zuNBvpxB/q7BU9Usi1aApbYcRp6CFRVVIZXBcJDpGCRtELFBeUWRA6W3CGe7ApqKjD
	KSFdagCg6FpO7hAiC93nanPnyFqaVWBfTUNipyh//GexRQ6ANCQQAdnjDzk7co97nRj8TjCHly5
	WFPTg8VZ2CciC40clffyIpWlLgWxV3uQzrQs7kBlL8WQ+KX0+eGWi
X-Received: by 2002:a05:622a:4107:b0:4a4:41d5:2a03 with SMTP id d75a77b69052e-4b0aed0ba4bmr82897731cf.4.1754730998869;
        Sat, 09 Aug 2025 02:16:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWcVWEcbkE56AYFuDWtLYZvYWo+gsmVgOkYeP6JN8e4BtX03VjOfqEMXlEcAuemOu9zkQmZA==
X-Received: by 2002:a05:622a:4107:b0:4a4:41d5:2a03 with SMTP id d75a77b69052e-4b0aed0ba4bmr82897361cf.4.1754730998372;
        Sat, 09 Aug 2025 02:16:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b8898beb4sm3361989e87.30.2025.08.09.02.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Aug 2025 02:16:35 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sat, 09 Aug 2025 12:16:19 +0300
Subject: [PATCH v5 5/6] dt-bindings: display/msm: add stream pixel clock
 bindings for MST
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250809-dp_mst_bindings-v5-5-b185fe574f38@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=11196;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=dsGVNATQA+r03LWwZOuZtk4KSmRP/tUw6cuAvQMeokA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBolxHiXv/M/kUzFquJXSjrKHKtYzcCn6QJLDHqN
 IF109GJAoaJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJcR4gAKCRCLPIo+Aiko
 1UOPB/43AWdOhzY801Lt52iY6L2Rbv2PyY/uMLtpWtxhjjCM3VBbf8Dr0OPrn12zcMj14aR8zxJ
 gXqhL1HT2cNvdTavKlWPhQpiWKQgkLDYXt/UDRzPuwBtX9U1dN++TqyFQqLPYlB8CKbGjj2wY3N
 x4/gIYf21uVFhvbDlbxAxhNs/mxpEKjuYyYhoB2EuAPiS+WY3Rupx2n6dWpIfN1GiwoxMPHnZu2
 Su6li5NMI1kzn0xNP+tkQ9rGZw6haYwOzx82KrOYN4hadtpXrJ45f+biPtvvWPmOqOxC99ZOax8
 ykN8PCEfQzat7xLv6Vv5TiS/avlAFoqTzfN0zTUx2nbi2uUp
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAyMSBTYWx0ZWRfX1mDamKCStEwa
 zTMSKsjMiVjGnJcBeyAaLmOD2lI4V2ZrbfZLtVaj/F8uaIu7FkmsRKzoQYxY3MChiyEh1iyGOy7
 kw8efK7/FDV9vhAZ9Fe/Nm0GEjZtKm5vgSAxg8Nf9f0ID3ADLFLSjZ85StwJzDw/P+k3V/NMvLC
 8zQJr57HzsFZ0bOp+OcfaeEnoS0Bed7m7ZOM2y//36zMttQlHpekdRgOZ5Fkpz3Hn8BuZ1zs+MJ
 AdFa3kQjutFfvjFlZiOmougGHPZ1qbimwY04vcPqRrS8a0sihRaaiNCv4vMYsanko88+ZlNHoA1
 1EYHmyaNsv/b1WUwyAyNM0y6+gOoo26hwaKG+6lFI44w/O7wtX+1hZwM/U3fTblPy/ihautvcJm
 hv42qkuN
X-Authority-Analysis: v=2.4 cv=CbUI5Krl c=1 sm=1 tr=0 ts=689711f7 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=YP9T8x2ChtyB14Vz8YcA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: f-VtN9Lk1tQoIM0W0uWWMGIGKJUVh8Mr
X-Proofpoint-ORIG-GUID: f-VtN9Lk1tQoIM0W0uWWMGIGKJUVh8Mr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-09_03,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 phishscore=0 spamscore=0 priorityscore=1501
 bulkscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508090021

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
 .../bindings/display/msm/dp-controller.yaml        | 72 +++++++++++++++++++++-
 .../bindings/display/msm/qcom,sa8775p-mdss.yaml    | 20 ++++--
 .../bindings/display/msm/qcom,sar2130p-mdss.yaml   | 10 ++-
 .../bindings/display/msm/qcom,sm8750-mdss.yaml     | 10 ++-
 .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 10 ++-
 5 files changed, 108 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 352824c245224d7b5e096770684795625fc9f146..0122592a3ef5fcfe5a5ff8364b2cb6540a37a8ab 100644
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
@@ -187,6 +195,68 @@ allOf:
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


