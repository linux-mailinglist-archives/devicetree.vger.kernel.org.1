Return-Path: <devicetree+bounces-208802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CBA6EB334B7
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 05:37:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4FF723A7341
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAC6A274B54;
	Mon, 25 Aug 2025 03:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fh4KurSO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6680A224244
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756092951; cv=none; b=CLCSu53unJScOiQ872L9vKLly+rR8nWLWcKbdk89iPT5unfWI85vMn8hTw/ol5jFyO2kNF+9UGYvYBe1HSUaMMIsLYmv1vv39PxBmUBRnW1I41F00lumfk6BK8w37PHOB8F/E9ltlCTllpcSRLDUhAjHu5jFjHjh2ser17pDOiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756092951; c=relaxed/simple;
	bh=LBoCkIOz1nhLErv2TZjqow4lrif4gDacFutX3m6t01o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cgqH/qVjAu+yIGCNBEKInIwVz43Ip8kndbkQowsS1jxfCB2xphobTy9TKsLA+B96yGGYHddlAF6TTD9lg/Ft+8eBicO/YBhXwmxJZR1vmcsopx5BmMIDOl9SGG8G3P8jWtQqqW7+mUWovwpi6VtT4MkwnSbVQAcD9MFWFc8FrTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fh4KurSO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OMQ26Q006732
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OZg83hCdtMCdsj3A6OZC0JX1BgccRkDWTc/mnL5LnSI=; b=Fh4KurSODOa3EQrt
	dHbbZmlijp7FN0kX/upao1z7v1quR30bPGFp+oiG1YbqE5SuyKpIZ0Efk+P5gTau
	zZvujRbFFZ3OBhtthckrPwCss2dIFCe7QmIvhXK3FZ5tL71H6JBGp67LEMJcYvnq
	ekRaf3k4ASBuHfbro975Q6cMFVclN84dLq9qK5gi2bACmHIorBh0EnQm9QhnpKmH
	fK8J3IeMIkP5xeSNl0A7oGshoeQKV8+fMD0aRzndLfqzYfStGxpAE+n2gT6FfLtW
	XLJiUJGekz+ydyae2s9wppZpMNUIF9PvT/25PnmtEVXK/Zs1vTYJSw1PI9ljuFlY
	k/FMoA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5um3kea-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 03:35:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24458274406so87077565ad.3
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 20:35:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756092949; x=1756697749;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZg83hCdtMCdsj3A6OZC0JX1BgccRkDWTc/mnL5LnSI=;
        b=IzNpQRTa5FLcmt1tSp981jiN7qvXbHD2wl4N49imVUVPK6rhtShfbAvIxACiL/kCoj
         r4s+C+JMgjn7jSnLiE9ibngHT3zbz7EOJx/LRK0/n5vuNVJwOKFg1Pb48yiCJhvJ8Llx
         pVic+ovtBeLAl122mg1wEYnuWmbJKhIhBhOq6X6GsM7/tzmP04kx+cqwFlqd/QkwJStB
         V5etLM3ZPh/FXxu3I1dTdfCy2moBqtREnmRP+7ItcVGgNDhFDX3cv1sPCFXjGW2W/Kv7
         FNgI6boB+dy4gARzblE/MgNXdENjXOqGCNfEBuHcoNJb+HBtX1xrUVVwbG6RTPtrBXip
         Erhw==
X-Forwarded-Encrypted: i=1; AJvYcCWfmnLvPvK0MBsA/fzafcmkbyeoCRNdwWRqejF21qGKMMj3J/xfE0voxdWbWIhVPjkeSFFa1abnI1FN@vger.kernel.org
X-Gm-Message-State: AOJu0YzZcndx0NkZndYqrzSg072x+L01MXY9M1YTeEibmDQim0dk+6Vz
	meTdp1Fow64zVtPxD2TSUcNo8o+FbBiiNxj3S/RRNFRrUnr7xtiDDfvwGyYM6/kXx0Zw6NCQD7t
	vxl1M+ZUDhsOWt6UOS6mpbVDDHtgmYxK4jK0PZn4+6p7H4gsS0atqKMSsvSC3yFcL
X-Gm-Gg: ASbGnctXg1vmCR3WVDOM+Sidypt98EXxZHXelN+hlTNj7SgStsFXgH2JKwE0OXnlYWg
	ImnCmklQoS1HFRgOnl4VeW7oq9wT/HWcsJ0WJtPEEGO7VtswnQQ93FKzp1KD5XXTwj2+yZqEkoJ
	sjS83bMruxc46XsWeOYJFWEEjR7s4P+hbjJmifLw7rTp+rwm+sI3NVaOWhv+P1VcIEK9Zcugkn3
	oo+ktWIvxq1RiSIux0OP+Pihj+9iR+NEFsuqk8NTD0opIkobRqMhKvTbQ2ZG60ZgXoo2IyATuuU
	EG1S9xYcOozOOgvRSf9OQXR07MBALFhkqjH07CSxh8+SnoZ+c9i8GBWYAeAgBBbStK9+x7k=
X-Received: by 2002:a17:902:e847:b0:246:e621:96f2 with SMTP id d9443c01a7336-246e621a7f1mr14024125ad.31.1756092948809;
        Sun, 24 Aug 2025 20:35:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAwYYh6f6erS5AzdwM3CnzPO5hhkgBPJrkBabrpVRyKaCiZvK90nuAoQsSrtjRliZmm1vy1g==
X-Received: by 2002:a17:902:e847:b0:246:e621:96f2 with SMTP id d9443c01a7336-246e621a7f1mr14023855ad.31.1756092948375;
        Sun, 24 Aug 2025 20:35:48 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2466877c707sm54859565ad.22.2025.08.24.20.35.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Aug 2025 20:35:48 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 11:34:21 +0800
Subject: [PATCH v9 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250825-qcs8300_mdss-v9-2-ebda1de80ca0@oss.qualcomm.com>
References: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
In-Reply-To: <20250825-qcs8300_mdss-v9-0-ebda1de80ca0@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756092926; l=2062;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=LBoCkIOz1nhLErv2TZjqow4lrif4gDacFutX3m6t01o=;
 b=Y+yHBkF6j80VW9ppElFvbvtjnk+nZ8Ffhpo8+67cKLzsDwk48Y5mh2s5hr8gMEoFRRIrPcw8u
 +7JcJitAwSyDuIAeqQZXYBlerGqmU+wJBEBKq3NyyCb6aTQPzN/Axvj
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=VtIjA/2n c=1 sm=1 tr=0 ts=68abda15 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=eRoelbRBQ5ypv8gDxK4A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMiBTYWx0ZWRfX35v2rgbG+Ztf
 ZCDQ2X6f3A4h0nGM5TYjjX+rGmBANgI/hnQKPIYDtTZP3nsrKAs615p3lETXwo4CTJyQ8KA1YLD
 0hMFRZ1sc1Vv3go8re0lXe1PCqJhJywgsnQZkz0KMbT8XtKhnO4nUxDto3XJSqDFfOdj08eC55S
 Ory5m/d3tLI72Hj08yv6BA2BeZAO057FRive3JpYrmEflJkgr7zG1ibIzY3wQhFGMDEE9vlApff
 Yl+MLrWYqEQgHlCpl07vlKrb3juEr7UsxrNti0WmXMmDsfy94hvefcjeI0UJI5RI3KHeV4QoWTn
 SaiEwCMbhT0gtFskmqbx1bXSDpxPWYL89PCF5pNKydM8QzdtzEZfGnhOPkDYR3e6IyUw0ddkVzG
 2Dq8pXen
X-Proofpoint-GUID: rlblcswkCwWHfI-B7fUTRt60Pv-F2rDa
X-Proofpoint-ORIG-GUID: rlblcswkCwWHfI-B7fUTRt60Pv-F2rDa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_01,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 suspectscore=0 malwarescore=0 adultscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230032

Add compatible string for the DisplayPort controller found on the
Qualcomm QCS8300 SoC.

The Qualcomm QCS8300 platform comes with one DisplayPort controller
that supports 4 MST streams.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 26 +++++++++++++++++-----
 1 file changed, 21 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 68a6fd27506fda004e53174db5bcc88a29e8d2a6..4da22a211442b7abe2dc18e769d8fd14d224eb40 100644
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
@@ -179,6 +180,7 @@ allOf:
           compatible:
             contains:
               enum:
+                - qcom,qcs8300-dp
                 - qcom,sa8775p-dp
                 - qcom,x1e80100-dp
       then:
@@ -241,11 +243,25 @@ allOf:
               minItems: 5
               maxItems: 6
         else:
-          # Default to 2 streams MST
-          properties:
-            clocks:
-              minItems: 6
-              maxItems: 6
+          if:
+            properties:
+              compatible:
+                contains:
+                  enum:
+                    # QCS8300 only has one DP controller that supports 4
+                    # streams MST.
+                    - qcom,qcs8300-dp
+          then:
+            properties:
+              clocks:
+                minItems: 8
+                maxItems: 8
+          else:
+            # Default to 2 streams MST
+            properties:
+              clocks:
+                minItems: 6
+                maxItems: 6
 
 
 additionalProperties: false

-- 
2.34.1


