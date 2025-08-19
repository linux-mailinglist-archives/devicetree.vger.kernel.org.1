Return-Path: <devicetree+bounces-206075-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35946B2B795
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 05:34:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14AD156125A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 03:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FD002517AF;
	Tue, 19 Aug 2025 03:34:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QBKnSicd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75E92737EA
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755574445; cv=none; b=GyVLORJ+4/VclN+2dMwjOvcUVhf78fNUxTBhz+lcy3FMYyAcYA9b9yBKpUWQGVJ6kQG2J8VTuNZy155uz+XU1/qJa3LufMB2g5VKzwm1c2Qdwf+YKXchTyvtmONMPEpIEmHKOpbFiQ+ISIz0rxELZZWTocFaeW94SOxRNQmaDUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755574445; c=relaxed/simple;
	bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hb7/EuPWlV3FpAejE2jtqMNNlxdJVvkaYu+DKfroBTLu0wWbTu1nZlE+TsNQ+R+01Qsv9vPauGcHfynMK9aseEoHq1KHj9HlK8V8/EYUQ7RZQXDSH8infsKuiw4Ax7fVgOUWMHKdsH0gsnNSYi/5q/1hcyXdVi6o3blr+W76LfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QBKnSicd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57IMUmH0026772
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=; b=QBKnSicdQ60U/RwN
	rM6ti3M1BzNnCvfb60iv4nHKRyBJOZ6zFdz3gGXKfue0X2x7mBm1deVbpbV9GDF0
	2QQW2+NbvJTGkCsJ1ees8a3yJFgoq+r0rFhwac3NRrDZJDVCTWuX+LQvBRrsfo2L
	WFmN/bNLWs/MZ/P4XP/dwWiA9zL9UMInCRS78jIcz4UvT/3YCy3qv2kqcYyltXqA
	o5/XizvG21twe/cuJxfqlKFYl8oYTV0c6xrxxQzTAPFHjERLCbTE0da08jOdtFTe
	5noXDm3aKwatKwF5l8o3FMCpQuhx4RK31pDU/g+h64b20/CvCoWQb/IvA7n4loY6
	6Jw0Ww==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj2uf39t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 03:34:02 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24457f44a29so58210545ad.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 20:34:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755574441; x=1756179241;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Yg/2s8cwpHYy/pmAzzHeffOyyjabiwQv6sxOo7TaLA=;
        b=YgKXqh6DThYgy7he116ni8TtbUYY3yWsvSIKIsM5+MaBugYSmEQ7H1L/1dw8MMWTTh
         wMLwkrXGFUxQ1EXSz95YQIHXGPkUPmYQrWOl0S3DJPg2ORHMMSIt0ICsKWePlt3H6byD
         X3vZAgfHw8h7kjoUzswHrFm77A4ZvDhPWTtjR2aCTgNIasy7e0xzy+xeYBW17ZuS090b
         BQIb8CxMTwXZE6xlqz8QH0/sfOZY+xswwj4bHMK4EreHTmuCw60al+10UGVGzX04gLAP
         4FYCoEH8YsxlDyKTj/djNU8TQtdjxPO+Zeoeiwbv1I/zeOLBhIuWEX7iZPD9ZSyx7G8W
         epmg==
X-Forwarded-Encrypted: i=1; AJvYcCVxsPZJA3BqFCC1Rn2Kp1PBsBHF/v1COvvbFYFZYGiro+9fKPtwG84QZ3FK1KNqE4GOPcD491oS3bl3@vger.kernel.org
X-Gm-Message-State: AOJu0YyGGbk7TocNXcKZWtTr9G2FWmvtfnF9msCi7bs25Zxuj0jowm6c
	dvYf6g8dUbrfiMKII24vygAeEqvDE7z7Ej6hcgoFrQHqx+y1DD7aqRl5VkPkKainOGteKrZjJu3
	h6bI8a2aT0Y7TBpO9g86mFJk9sjvjFtxuYJFMperX9u5dWpNXola3B1gyhQk+B9d9
X-Gm-Gg: ASbGncup17Ry6wBvapJrv/Q2sXcULr61jV+ohnw4SYMzbkhEOlvQGWm85GT+OQck9iG
	dB8kXFdhbgZ/AsfkBh0sR7kTjQ1cDI8ooVTWQncqnXoR4Ww6A7uXZLWBfyzaasBqR+LB0YzLwV0
	oGTmQK1WxDfGTkPXz91iSSHgOZO/Fjv4UIHfyIkbshSh5yxC5KaWhRylBt0MRJwhBeOGrd6lzCF
	UIdxVAdiswCArnsweEv27NaJOaj9AbvkkPaGdmprO2N0J3pm9edo4bTxMTi+dEubJ8gywuaG84g
	RBqegjifx156e7udlimlcwLIqfr5JjaVoMUSGQVnwk4dMYocAtHN20PJ1hUhH+axbl0YoUM=
X-Received: by 2002:a17:902:da92:b0:242:eb33:96a0 with SMTP id d9443c01a7336-245e0328fc4mr13756475ad.25.1755574441591;
        Mon, 18 Aug 2025 20:34:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrNApVEFRaReBUGFIN+/yStP1nVoxmL/eBm8PHCEFQfNZ6i4GKi9pKkySdHpDkpBiZwAMlig==
X-Received: by 2002:a17:902:da92:b0:242:eb33:96a0 with SMTP id d9443c01a7336-245e0328fc4mr13756125ad.25.1755574441145;
        Mon, 18 Aug 2025 20:34:01 -0700 (PDT)
Received: from cse-cd01-lnx.ap.qualcomm.com ([114.94.8.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f55esm94486325ad.82.2025.08.18.20.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Aug 2025 20:34:00 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:33:28 +0800
Subject: [PATCH v7 1/6] dt-bindings: display/msm: Document the DPU for
 QCS8300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-qcs8300_mdss-v7-1-49775ef134f4@oss.qualcomm.com>
References: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
In-Reply-To: <20250819-qcs8300_mdss-v7-0-49775ef134f4@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755574426; l=1231;
 i=yongxing.mou@oss.qualcomm.com; s=20241121; h=from:subject:message-id;
 bh=Vcbndb0BitXQXBCCDy5phydPWg7MwP6Brhlf2YVSZNE=;
 b=mUJMxoOSV81o4koxqdJbI5N6soG55O7wbqXD0dzr+1rxU6/SC3oVCKT8159FPywHXQQd8ZJ94
 FWOBhhiXatDCGTTsP7IYgNL+9ROa6RylZU+9nOngybefW6dHuZUr5tm
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=zeCnFRUqtOQMeFvdwex2M5o0Yf67UHYfwCyBRQ3kFbU=
X-Authority-Analysis: v=2.4 cv=MJ9gmNZl c=1 sm=1 tr=0 ts=68a3f0aa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Uz3yg00KUFJ2y2WijEJ4bw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=5ixSZjX4nqodb9qzXsEA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: xHOiSZ5njLWO01OOirnAdNCQCYksZUfh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMSBTYWx0ZWRfX8DlT0wQ0AgGD
 8WlGVyzeI2rep/O2++ko5bOSU+MiNJbxDLOc/x41D4aky8TusZn71gQIuym/0fQe+tbz/tO8I06
 lZdHF7K2hIkCDA/+E2xqz8pNse4B9y8/kcSHSzJ6k1AT+2GZX7mSf9rKn7UV5e5dVeX016AFUQk
 szyVWiHta3Y2ZwqHtWa7K7aKGHD37FMH6aGr5uHyAFHUsV1//s4DPy18OMcdh7mbjipdA2638Is
 oO45EUIo7Vw9HycKDhZIpGEOVrViTGA5gpzj2Yzuq/7VnTyTegkOWL2hoOE9WyS23G2Adth1Zhv
 hkUL1yDA8rkiKbS98kR+i6K7tO9L2qUgJKmxZaFRSmIzhlAj/F87o9SD0r2/ghjmDQOKs7bsrso
 U8wyQkkn
X-Proofpoint-GUID: xHOiSZ5njLWO01OOirnAdNCQCYksZUfh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0
 spamscore=0 clxscore=1011 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160031

Document the DPU for Qualcomm QCS8300 platform. It use the same DPU
hardware with SA8775P and reuse it's driver.

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


