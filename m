Return-Path: <devicetree+bounces-244330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D6BCA3CE4
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 14:27:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 784AA3093A8A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 13:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D18B344028;
	Thu,  4 Dec 2025 13:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZNW5ap7e";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hNNlqfNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B846E343D7B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 13:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854554; cv=none; b=W2wBSaFItvxxIHfK1CPIp7zbXDaI+F2Ivq24pxrHm9gBZbgotU5u/6ND21IVE/fuzMFUOQJnKheH0rvb33MH2691Tw3S7WoznRkfn1Nw6JPKJtOPSrN1G/mCExzcKlnV3NFGXxu9TkBoGOxSsIZL8/J6AhHCzANgYKAxHvVJeAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854554; c=relaxed/simple;
	bh=J6AV6hXE/rdhdnYLr3M4f4P3SdNbrI8qP6QN5YN6N0I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JkHgLfUeiw2M+85N5yjjIiNd/gIx0wicAlfvqF5zyuCFPNfmmFkeiolafxv6ibT8FHYt/5vbm6P+XNJ8hOk/M8dfGOE3J+Zv3ysAqd88kiDDu9D9UVxhsCxJyyk81efK/DVw/9t9geqEdau1YfEgeW7LjbCvGfc8CwXz8nJrtaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZNW5ap7e; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hNNlqfNO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B4Av4jW1118876
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 13:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vjn6gZwh0hD0StH1MlSbywjprq+CSWBGR3TdhVlpQTs=; b=ZNW5ap7exi15xItq
	vrVwJRjQ15dZlbnIWNs69Ozl5HeCRUpw+bvb6ZyX6DFpW0EN4d7CyXvSX/m2sdWp
	qdzo1gA34bF69lIiUSan1gYLY+eUVSdO5mtQEn+PEpbvEUTIAguOpCzLIb9jARPu
	wgUMerg8PNaTdDvUQN4JopZi+rDSZcUora3E8Y65JWbQfGsVNBT6DqrRz9SH+cti
	5PUQfems05MNE9BW8dxy+ufuaHHNsHLqfoJx05LJiqogut39KxDvuhzA0xqbUKVe
	ynPRls0nLZIb32Bl5WVn0/GyuuA6LEdZsnAI1eVIEr6r5BtZt2r8XhDP6lrwkvOk
	QPl0iQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au90frc5u-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 13:22:31 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-340c07119bfso1744472a91.2
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 05:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764854551; x=1765459351; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vjn6gZwh0hD0StH1MlSbywjprq+CSWBGR3TdhVlpQTs=;
        b=hNNlqfNOpVJY5iIvliu1VRrG4rNrPaNZS5Vinq2ppQx97WvWUXMonp6SEr6ZmLzSxC
         /J/QABm/lWl6a+TwKfmGTpQJKmIR4fi5Hc88xbAhd/H5GP1uzCfYz45K14z+zQYzcbKz
         +Zecxw0biVjh5M86lSXYMqJ6wV3B36Yha3GQR48dGp5rM2pbutleORHRx87DPOKuRb8Q
         WUGloJbLta8P5xAcQE529rb16yMVFe/BmrKFpo4YwSftyQ5O4WekQ2m3yHOrR8g1EIbL
         IpVrRlWh6bv5m7mEGxDDel8F+9P2llFTPL2gntc/aebroA0O9BKvYYiSDlPZrqhBXfYN
         5pCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764854551; x=1765459351;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vjn6gZwh0hD0StH1MlSbywjprq+CSWBGR3TdhVlpQTs=;
        b=YwasjJByVfva9VOl6XdIKkyts2Nu9dRi6ExpBveFvM7xVFynP6MU0ofAM5xgCpJ7gK
         xA7pY07k794ne0n00WTQr4Vi3o3sMB/vjjpsdziDvCz4KDplKqeoJpr9kC4aWojpIqJz
         T43y1n/BHZzaUD4pLcDOOUhg6qPpZ0BI1dh3l319ceSXZ++Bg4COnBl1sJy/EK0ZQBPO
         sp3yY/TXjpNRoVOyuik/uDu/60mZTP/89ycHeNPW9Sw1ko314GFe05h6xojKfsFZ/bJ8
         ep9CWpnKbHN5O5yin6/G6SWeTidKDHETnNcNteszU9ax4JQ4QK8cQUKsQ0ZD8zrZFEVr
         wgTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpatNVv9Uc5fuBpgpcZ6A5gzih3mrDgZ3khwWcyaTjotSl9vA3Yf4Eq47r1zP2SB72loNUTsBN3Gg3@vger.kernel.org
X-Gm-Message-State: AOJu0YxkYGOXpIxkUoFoPUcuLKd9mTqLqdAfAbbzDzjRCNjQVoiPS/hF
	n26UFlMPuOkWyyJmH/wUcD2Q/88Quipf4bQZQfRVMfoJdXjS+XxRwoTlGOjQcCDGwesQJhnTrnN
	XuKWL2Q0dcMS3L8V8El3DL0hN4spF4xVgy5Zc8lzSvfG0JBSSx/v/O6hm/EqjymPw
X-Gm-Gg: ASbGncva1otIWYWXBbDfFbtGIhokc+vBad9PlRb/PHdO+7pFIovuY0rwWO0vly/WeZV
	2cSq6ozOaRkwcGyIfXp7TqiDh3wbucdmSmt42wUBhYptDZm2KAYT1HdimexN2PlAUYu07fcUOU+
	mhxiuQjAx2HeOiVFG08srSo969wsSJqd5E6B82vcplgvXmDEY7WsniWGDo4+ra33qCJl31Xf8uM
	oCCBOMHCq8WCGdUJmkWDfMyweZBmThfm875T8mFqaIBj//jnt+vYkGqLuArU3GQ6Q8kk3oJci59
	3XJVdbyP/sUT/NeA0DzhXfU1mjL7HcYwzNFtwdTL2uI+3kVn96BaQCwhingj0wg3W7B9EkLxJzk
	SAA5GwnAAAdluQiTE/R82jusHcQJ1520VKA==
X-Received: by 2002:a17:90b:3851:b0:341:8b42:309e with SMTP id 98e67ed59e1d1-349127febeemr7515954a91.31.1764854551201;
        Thu, 04 Dec 2025 05:22:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEvPYRb1UZi5dH9URiOBzneLDBYpCZJdrTZvmZu3re+MQ+hsFkP/byTXAA/70TAX0Ldzw6/7A==
X-Received: by 2002:a17:90b:3851:b0:341:8b42:309e with SMTP id 98e67ed59e1d1-349127febeemr7515915a91.31.1764854550665;
        Thu, 04 Dec 2025 05:22:30 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3494f38a18csm1914740a91.1.2025.12.04.05.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Dec 2025 05:22:30 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Thu, 04 Dec 2025 18:51:54 +0530
Subject: [PATCH v4 2/8] dt-bindings: display/msm: gpu: Simplify conditional
 schema logic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251204-qcs615-spin-2-v4-2-f5a00c5b663f@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
In-Reply-To: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764854530; l=2572;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=J6AV6hXE/rdhdnYLr3M4f4P3SdNbrI8qP6QN5YN6N0I=;
 b=2rPNQLjTbw/P/x/xEw+9x8WBvFcRvXru5bRqcZ3njgrrTJjKtzJUH+rZExSsIAGWu4OYjf7wR
 m3Lupi9YT2fAFpqF1judmH6v92G5+4dH3tvPtQZfR+akfZPoOQqpFJq
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Authority-Analysis: v=2.4 cv=OdCVzxTY c=1 sm=1 tr=0 ts=69318b17 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SNFa__NYaeNfRMWcEAMA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: hWRTb2NidxrfLx_ojF6GbDXJJAw3pSJN
X-Proofpoint-ORIG-GUID: hWRTb2NidxrfLx_ojF6GbDXJJAw3pSJN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDEwOCBTYWx0ZWRfX4p6nIemqzYCT
 d/MOtBMSifUOLCPwSOLhhnYE05RLklZXMnCuTlDWRf7L4CPxjLbkozrjq583442H2fjDY6Hly/D
 nSi/N0wX+qo38rdCUJ7idFxgXhp4f8QTpcnIK9tPVqt5n/5lARIMTbPCPooOCmyMVAWN5+YMgm0
 g992pawRIHloM/8CKzE7Bk7w2pUbWaDDTpCb8FjG/BB7lq53fOIWFdrVj3GsxAynq2EMPk+L363
 gZfMEeBTUHIpi+z692oNt00CDyUknZ6kyF+BLEAhfbgMGFadjp8U6FE7ASyzZ1sAqRD2LoW0IY7
 HwHm5FHXSKMrhgK6CLphAU0qBxO4IFJpkK8RuEyKuZFVv5VbUOeEdOc84SKCbTCSf/MJM4PtbRu
 vpQLfoAJQTRZT9BqgghJCjh+avWgHg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_03,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 phishscore=0 malwarescore=0 bulkscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512040108

JSON Schema conditionals can become complex and error-prone when combined
with regex patterns. To improve readability and maintainability, replace
nested if-else blocks with a flattened structure using explicit enums.

Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gpu.yaml       | 56 ++++++++++++++--------
 1 file changed, 36 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 826aafdcc20be4bbd7eba619f7fe172b6e9a5897..5c12b5aacf8f3ff64ca2ef97fb0dd6c3a26a71bc 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -387,26 +387,42 @@ allOf:
       required:
         - clocks
         - clock-names
-    else:
-      if:
-        properties:
-          compatible:
-            contains:
-              oneOf:
-                - pattern: '^qcom,adreno-[67][0-9][0-9]\.[0-9]+$'
-                - pattern: '^qcom,adreno-[0-9a-f]{8}$'
-
-      then: # Starting with A6xx, the clocks are usually defined in the GMU node
-        properties:
-          clocks: false
-          clock-names: false
-
-          reg-names:
-            minItems: 1
-            items:
-              - const: kgsl_3d0_reg_memory
-              - const: cx_mem
-              - const: cx_dbgc
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,adreno-615.0
+              - qcom,adreno-618.0
+              - qcom,adreno-619.0
+              - qcom,adreno-621.0
+              - qcom,adreno-623.0
+              - qcom,adreno-630.2
+              - qcom,adreno-635.0
+              - qcom,adreno-640.1
+              - qcom,adreno-650.2
+              - qcom,adreno-660.1
+              - qcom,adreno-663.0
+              - qcom,adreno-680.1
+              - qcom,adreno-690.0
+              - qcom,adreno-730.1
+              - qcom,adreno-43030c00
+              - qcom,adreno-43050a01
+              - qcom,adreno-43050c01
+              - qcom,adreno-43051401
+
+    then: # Starting with A6xx, the clocks are usually defined in the GMU node
+      properties:
+        clocks: false
+        clock-names: false
+
+        reg-names:
+          minItems: 1
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+            - const: cx_dbgc
 
 examples:
   - |

-- 
2.51.0


