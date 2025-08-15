Return-Path: <devicetree+bounces-205142-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 216FFB281D2
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:32:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52989BA1BD1
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6BF7257AD1;
	Fri, 15 Aug 2025 14:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bPOu+Iiw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33B8242D9E
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268242; cv=none; b=CNJD1ZBMDhPKqXFuBUuRON2ugejfLh01ZUYnRlhuEAQ0jmIEAGcmylC+12HSbJhoeQ/jWvSvLKDMdRWGmmgWnHjk0D1RFEQbaTbLI58GkKTyvfDrR2yYtzX47U0eEP3LEr6zkHfLmusd6IHwwHL+vbxGOzeR/n7RBXjgCn8yMBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268242; c=relaxed/simple;
	bh=Mg8cF8dtHa8FBVVXmu7mhjOEv6I2lafX52Q7aTfQdic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CJbHgEkX2rGPnfATSE5O3oGdmoDEyecJ1AwGeu1bTLcUPcymhWY3Nk+0Nbjyv1K1kerP6abl0NetRyORnt/FbibmkSQJraC5RGpMMFyQSvt5oisdUwkHRaYI/Wvow9Y1bHzvSXuNk0I87qkcNCxK/p3mVhO/AoY6zuvujdwuOcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bPOu+Iiw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEIj0c019974
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7m1HwxzI8G7RL+o2tt5C5+jDIvVaSDVT2O8wP58iCTY=; b=bPOu+IiwDjR9ymdP
	FCWKD8+hJeyFmM9yhn7JopBQPmbzuGNIw/ntcZrnpqVTbdcOvwHdRvU33iJO+D8U
	EnUBL3UqKG7Jg21avuVTdbFv7TSq+P29tfXwSFFXli7zWXmYkiuyfAVlB6vTtP3v
	+0oUohe9Y65RQ0aoHW6O8fE4RYB8/ubrTnFHsVGTQZsROip2nFARPa65WcQaz+i+
	8gC6vKQ+wA1lJ7wRxZ5NAp6+WkBtHQyBPavdhszVhLxXEA8aXOoda1rNSlBftpsE
	Mlqi41x0231Rr91JXaGk2iH/xlMIx/nDhISvRvpdAolDTWZwuvCsktk3PvADtNmi
	5rxtqQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gk64b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:30:40 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a88dae248so41046296d6.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:30:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268239; x=1755873039;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7m1HwxzI8G7RL+o2tt5C5+jDIvVaSDVT2O8wP58iCTY=;
        b=uIgO315VJs7RtproHJHUeU5fG/IPqyMJtjlNT15dMyFKjKUCq45/MSaFdPCdYF2Byb
         RNZwWz0miWlcz2By8QVxxWtpRAusb8mWshGhiFIO4K6JajN4uzIpbMzJQWmv1St32U9T
         XRhKA03V4FkgUSNLEJYmA54OgHmgOK30iKzCz/J9B6GQy7AUJ1WvO3CAhWKTSkTgkeGx
         IE4idOIwLey1k/LgrHLOZXLTre8Q8YQtQoN5+QjnuBgk0RGR6RhQJkz0Lb7lUVrg+n0H
         Mj7IgFPr8dz5fZNqrl0sYug9pahT4aTZAiRWd3+2FYxCjXQ4Psud/uObbaUNua+/tZxs
         7v7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVihyNpARAY8cy1jBLXAgoMwRKelp7KP4Vmu1k4nmpzEFKnMRYr8oeelHPvuArnsB31zrxKo+iBP+EA@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnu7otCJ4m9NGQDM0diw13QdHUwgzB2KFwqVdajtAC8zOLe+dF
	gKfOs3z7V9S4Guf+RnP0BOKwKpzy+GLnYl1Q5mFFJHVbvTwCxmw7bIi1pMzNBM5jh0+Cr3ewQbh
	LoRjEvdF93PiEmajM2ysXKJyCkClYhVBNnyQP7CgnqK3EAbFftReCMdjtbeEirskq
X-Gm-Gg: ASbGncsml3dNDuJcyVne2Kvp9LlX3bWYgLMlgR53FtH9YKW2VUrSI0f90eJv9udLLVx
	tnGlZzpMjn9w0mNsLNKizhwSz6nG3JWggVYDdfPDPbvU074PrcurCRjwVzHbbE2G8oJL8tvGwk2
	NILTdOcq2RldKilaFjWJjLeu27eALP/PZXrg1731CAw/go1o8hI4S+QgxNDxlqXB83uxKcaLm6c
	B8wc0huSMwJY7hrMOvXzJl2Srbag9ApFnwNvTMtsK75N6ZwOj0be4OBEBRmmazO3qIpJ+TKS8p9
	Q+1fAuDJoyI8+lF0BabgcL6yUXWFy1Q7LQmH9UFSIDPTyfcAehIACHYhA5clodqB+X4jr2c7Jyv
	QWBXYhIDb4pJL251GQQKc9pggtSFZsmFfJUdSIbjBO9Xo6Kz7va7i
X-Received: by 2002:a05:6214:500a:b0:707:6409:d001 with SMTP id 6a1803df08f44-70b97e3bb48mr87498746d6.21.1755268238422;
        Fri, 15 Aug 2025 07:30:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH8ovjWbOs+92uJ739mohecs8VJyDODcJr3savSKli3vBqXpsZ7ifXXVkzwoE/LbA7woPJTKA==
X-Received: by 2002:a05:6214:500a:b0:707:6409:d001 with SMTP id 6a1803df08f44-70b97e3bb48mr87497976d6.21.1755268237808;
        Fri, 15 Aug 2025 07:30:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f358bsm305661e87.110.2025.08.15.07.30.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:30:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 17:30:28 +0300
Subject: [PATCH v6 1/6] dt-bindings: display/msm: dp-controller: allow eDP
 for SA8775P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-dp_mst_bindings-v6-1-e715bbbb5386@oss.qualcomm.com>
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
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1543;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Mg8cF8dtHa8FBVVXmu7mhjOEv6I2lafX52Q7aTfQdic=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBon0SHXLVyiyAWAnY+ykHy2ruSRC8nKRZgnP/Bn
 xINi6OKiNKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaJ9EhwAKCRCLPIo+Aiko
 1etFB/4oS7mGdVAc837H48kHj1jUJBhQYGWrSf1sRZ/FqGtBZdkV/0jyuAAoP2duffnj+icLPyl
 2cjqsaEIA+4jfjhEfIw2ZWPXdfrMUPu+vG0TNsohOGDIqFuT6NcSt5CX0sES+CZTig9vE+1AqlC
 SSo+BAHxWcXSxA2l2qhQtL+5g12gn199onkgcpBhUbVKIng9zMMkXwWgYqjXO6WFazboZ+xL3U8
 p/RzfBIlbZVh1npczR4Gc6udiMtTKIrcKHjbGy+S7UHf+UyqT0c13hVw0Gw4clDnvX4Vc8Itxoe
 3Mlwe1IUQDGFmbDtvqHg8r8VNR2ViQlQu23rwrDpPEYDIlP5
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689f4490 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=iBDq5nSyD7x731avtJAA:9
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX5KdkBrAQh8w2
 HkNP1SuS7CNqgu3zaYYMV4p/kzx9HNPHB4/zuJKB7f4khZga7jBxRNPOcgvLHLT9rTVAB04vBEv
 9a+CDxfjnJdLhr6cEEgyBUkirkGm2AJWNLNhhxYBJOQk8GnviRC8X5a/eQKagkgQ6KlkLn7/ji8
 k7oFcruGvV3Gdt7cYLythXjocah0z+4cutQbZWgCctVh7D53DG156TGlYd5G6oMtkP6e82gfk+c
 yvvUmTGI4lMCgQadMgAVQ2ycz7FRctP709XmVT0/o1ZWEftRUxwVaR5m2wbKbIHWO5HdZLaj07s
 6UwqxeHTfPtAeEHpwA+8nbO+bLXBSZdeM7r0YuZSREx/xovyKZ56EZ/C1WLIUK9qz5f13wtEmlE
 X95HG/Wl
X-Proofpoint-GUID: C-8Y9bzQRaW723lElMKIcAZpLenosaUu
X-Proofpoint-ORIG-GUID: C-8Y9bzQRaW723lElMKIcAZpLenosaUu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

On Qualcomm SA8775P the DP controller might be driving either a
DisplayPort or a eDP sink (depending on the PHY that is tied to the
controller). Reflect that in the schema.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/display/msm/dp-controller.yaml        | 25 ++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 9923b065323bbab99de5079b674a0317f3074373..aed3bafa67e3c24d2a876acd29660378b367603a 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -174,12 +174,25 @@ allOf:
       properties:
         "#sound-dai-cells": false
     else:
-      properties:
-        aux-bus: false
-        reg:
-          minItems: 5
-      required:
-        - "#sound-dai-cells"
+      if:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - qcom,sa8775p-dp
+      then:
+        oneOf:
+          - required:
+              - aux-bus
+          - required:
+              - "#sound-dai-cells"
+      else:
+        properties:
+          aux-bus: false
+          reg:
+            minItems: 5
+        required:
+          - "#sound-dai-cells"
 
 additionalProperties: false
 

-- 
2.47.2


