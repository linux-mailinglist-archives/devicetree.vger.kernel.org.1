Return-Path: <devicetree+bounces-233713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C81C24EBF
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BC3114F3508
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:08:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A4E348889;
	Fri, 31 Oct 2025 12:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UPYPV+xg";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BG6y0LQz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3B1E348861
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912462; cv=none; b=Q7D8RsJrVe2kZPqaP+uAC59oAZ38S0+8mOblWZ9doEf7nGYutgZkfc+clEREXXMtINXEy5Z0zREXZ1OdxlMKWViquCqrztMuidbXDXDJG5qgd9g/QvUrtJ3K8inw0iw/r45ExSsJu1sdiMMaKm9VWug26xNB7K66xlE5VgkoDfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912462; c=relaxed/simple;
	bh=exPcFwTkKob1Kvtn/KJIwEEHNtSYPJUVpMm1QHlPqwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ULYVNDy7E1le2vYqLH0zhHSyKfr9sJVIKLvxWrxNQLqBsOB15NGlVnrSOlEejba2UjMt/duGBqXX44GSOlg/S2NDg3ep9I+ZI5dhuLXUIZNUz3S7jO83lLYf2D1QQJcWEDSNxx2NxpaKQ8PacJRF0F9WdE7pI+naP2vTXPsx04w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UPYPV+xg; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BG6y0LQz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VAKvh81571955
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MlpYleSVISD
	gz2HE7RgANuLdkU0REzZ/tp6gPxx4A68=; b=UPYPV+xgTFIea5AG1ek8E2Yd/cH
	vbL/SGLSwUNipzg8CmVJdvSPJaAL/prUQEpGqFf3LMhmY3n1Mb4z4MN02Q0azclW
	XjjZI0UFCCkZ16Jpnv4U3slYUbA/ZkxiSR/DELJI5zDABCLnDxRCv/BkhDOvrkgY
	0Hy2OkEGO/8ezRhYE3XORas8phngVzJ37S7Z6/C1+CMYTe6t/qcrz7BGS08lwdm8
	8jWr4GwaZoINcRPi0oQlKIvxx/mqEZdesd5NBCh/JT/hwwZnsHnNzCU4/iskWR0o
	+fm0Vn+YdDXqCHadNARiatsqwWKT7EA1uM0emcoeV/sR94lt4yFpJ8/tXvg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ksc1gw4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:39 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4eba10ad6e1so26799291cf.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912459; x=1762517259; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MlpYleSVISDgz2HE7RgANuLdkU0REzZ/tp6gPxx4A68=;
        b=BG6y0LQzFzJxOQt6xCXtCViMfgCUyrCgXr/aPNAetnevsIQ4E9FzDIg2s71cr9/khn
         9STT6mhPnfPDS2ZQUeDQkFb1x4C6DV+ncJl4dpdH40BAhzZJw2W7drctV2MX03x5ttI/
         i+iCd0eCYuDaexAMe61kapzxv0m7EkYGQwVYvOjm0qI5486KBNOEmnV6wSkgRhbvJOAH
         8WPLjximNJQTCNuYTSfjarD+TYK2m5jlJjXC2odnD04iDsqyHN1az5sk13EVcoKEU4tX
         CFYdBZlnnhuXNlIyhv8CQuWrU5LqhY5CNtYYF++Nm6Ignh+3ld2qHvpwyvc4U+I7xSyc
         954Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912459; x=1762517259;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MlpYleSVISDgz2HE7RgANuLdkU0REzZ/tp6gPxx4A68=;
        b=U98SIvw2TS8nZo75S4aTRbYVrVGud1+Hbcn70eYiwBKVjZXZoDR7pPgW2Tm5C6IpEO
         WnFtcdp7lQVfsNra3r++6htjYefAncKyEsrSM2MG9HzyPMxu8a5lZxpNIrCq46ysOVcr
         WsOAi5Q4eERqnNuIIfLo6bwsDBNculC9AcXmZgeFPdSsFGt5FKlyOiqonQv5hxBQIEUt
         NrP2LKDZMyyvltMPm20RoNBz/0EpkEDvmgiSYlxETOX9hrOoA5e3IyvX/dbjKsFSJMMD
         qmuOX9QH2VGXYPXUfHx47bvcsOlDJwDT3pwe2vmb5f4K+9n7+EVfykF1LVeM2uVClpdP
         4YCw==
X-Forwarded-Encrypted: i=1; AJvYcCVQG/toh46GMYpXhCPHlDcMRfwjYIbIY5vP6qX7yb8x4f6ljpFq5F3jqNIltgLQLMJsI8r6bk7NgyPk@vger.kernel.org
X-Gm-Message-State: AOJu0Yxw6stLltJhRlySG9TCKPFmyQXllY3ovaxVkzhAHZHER7FIyzaV
	MnOe04Z9gTOxEG6LP/klkKle9u09ExXzmLAivbhyPZfchylgyhCJkAHVKSl5uO0Sa/8eF3TQKoc
	WBBVkZRtf+i12Z5+e/GpheWAn3oJWVLjq6FuCOH0QHTszk0DQ1ZsOCkcy6MQ8QkjrYhj/Ygc0
X-Gm-Gg: ASbGncsoSRX6fcdAScObsuTu0IFLPA0z9HX3sH9Oy3EH8LEqIExmPzO4vnO3wWoJajN
	Pf3TkF1E8r5gvcVCbePsgNQsosP6jLkXFWkOY1Bp2NOu9rnV0ttIFGPLjuJBCS+FYrC+2F33leA
	HXCBTjg4bn5JBZC2/oY16ALVeehfuh8ObE1J8b6b+B6yaOUWJXeVi1FxN7Gt8/a1UFRGAe9iz9l
	8Er9iHHILF1JKIHXlmJKUg8myt5N5xRIhyHjYsGJ8jUw9N7/4sx4hEmzKG19gtnfFsSKanbzl5a
	xkM68Cij0crvgDGZX3kup1Q4gH8Kcd0PL8UYugaFA7BuuIWS2o38umhXPq8om8n7YsYXeoC63qe
	zLoEJZP01jc0k
X-Received: by 2002:a05:622a:5c0c:b0:4e8:b56a:992e with SMTP id d75a77b69052e-4ed31079298mr40427441cf.59.1761912459075;
        Fri, 31 Oct 2025 05:07:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGTdwQ+KHzFYlxZpQKmPBG1OdksqFeW+dC/tTItymnmUsb7Jy30j58j1b7FVARoFRV4sNfGWQ==
X-Received: by 2002:a05:622a:5c0c:b0:4e8:b56a:992e with SMTP id d75a77b69052e-4ed31079298mr40426761cf.59.1761912458612;
        Fri, 31 Oct 2025 05:07:38 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:37 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 3/6] ASoC: dt-bindings: qcom,lpass-va-macro: re-arrange clock-names
Date: Fri, 31 Oct 2025 12:07:00 +0000
Message-ID: <20251031120703.590201-4-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfX4nrpyGo0JhZC
 4b39+ruU6YcSSYZQW3mT00tLm1LBmIZuX9eeyvHkK3sKYg3k5C9IZdsJzGgo5qlUPT6Km7lispU
 xGpaMznMdTJ2R6JiuLSynpbL0WxQJ48TxJZeHD6BCRrHCgfYvGjKxTVQmF3RlGOEY5GyAs/sXuN
 URmmgKO6MZC2pSmXM25BOHYoV/mYvZS0toGggEKjxNQnXawHtW9Xwwcj/IKqKKTBahLrrFA3eGW
 FRbWJo2vMze1rkSgb0tq7oCF12dhk5/62/MIDQjCvccC8flXBKLxX+OEmqJ5iVxWBnfplSnjL0y
 KQOj4m6KCs6XvknhEKrGxGsuFmxei2OuNvRUNqWg0Aor8cIz4IveS354BFvJ93Ebre9ruLYkL2/
 JcccgJpG+Tw2ULj5wDJynMfEoVVAiw==
X-Authority-Analysis: v=2.4 cv=Q8PfIo2a c=1 sm=1 tr=0 ts=6904a68b cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Zn4RAEFE0_yfxgg1y30A:9 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: AcpTde7R7AT6vLnejFSaFztDC7zFJTii
X-Proofpoint-GUID: AcpTde7R7AT6vLnejFSaFztDC7zFJTii
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310108

re-arrange clock-names in the bindings to be more specific to the SoC
compatibles, this will give more flexibility to add new SoC's which do
not support some clocks.
Move all the clock-names under the SoC compatible rather than keeping
int on the top level, this makes it more align with other lpass codec
macros.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 35 +++++++++++--------
 1 file changed, 20 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index 5b450f227b70..d3851a67401e 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -42,11 +42,7 @@ properties:
 
   clock-names:
     minItems: 1
-    items:
-      - const: mclk
-      - const: macro
-      - const: dcodec
-      - const: npl
+    maxItems: 4
 
   clock-output-names:
     maxItems: 1
@@ -91,16 +87,18 @@ allOf:
           clocks:
             maxItems: 1
           clock-names:
-            maxItems: 1
+            items:
+              - const: mclk
       else:
         properties:
           clocks:
             minItems: 3
             maxItems: 3
           clock-names:
-            minItems: 3
-            maxItems: 3
-
+            items:
+              - const: mclk
+              - const: macro
+              - const: dcodec
   - if:
       properties:
         compatible:
@@ -112,8 +110,10 @@ allOf:
           minItems: 3
           maxItems: 3
         clock-names:
-          minItems: 3
-          maxItems: 3
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
 
   - if:
       properties:
@@ -128,8 +128,11 @@ allOf:
           minItems: 4
           maxItems: 4
         clock-names:
-          minItems: 4
-          maxItems: 4
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
+            - const: npl
 
   - if:
       properties:
@@ -143,8 +146,10 @@ allOf:
           minItems: 3
           maxItems: 3
         clock-names:
-          minItems: 3
-          maxItems: 3
+          items:
+            - const: mclk
+            - const: macro
+            - const: dcodec
 
 unevaluatedProperties: false
 
-- 
2.51.0


