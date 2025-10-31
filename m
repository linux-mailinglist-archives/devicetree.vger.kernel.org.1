Return-Path: <devicetree+bounces-233715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 50063C24EE0
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 13:10:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 699D61A681C6
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 12:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7462D3491FD;
	Fri, 31 Oct 2025 12:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kDUX1usR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jS1pmuyu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC466348893
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761912464; cv=none; b=JX9Sz8bc2x8148hqJUIL5QYFb5GkUilsR95Xy27/F8uYxBsp8w5WOXi1kTV8eyoH+zm25Q6tPuUneMYSg0vwaWouTp1Dp2rjAeuzT+w8blwSECSavD6vhGHb/wB79aZGuEJCM300egtv5+PHhm+SU9VHvYx06Xu+xgIfZxk+Z5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761912464; c=relaxed/simple;
	bh=1z/FSnj3ZUgyWqaLRX5fY7Les2o4JmWnSmIDwUcEQN0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ild+zdd/HQY4LgD4qF0RArrw9Fgh1ejGUhV5bkHiO8QRS4M0YFUgN5hR3A/lfF2rtB9c9PHf0TaVO5bevsats5/YM5myYzBMDrr8jgMSzK3/sktubDABJwW4MYDdQEFc7JHcx5oWLI/5oCrwWlBsIfSh5GNINpT+oi57wIc5rJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kDUX1usR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jS1pmuyu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VA3tku2558929
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pWjm3r9JBLg
	yWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=; b=kDUX1usRPtAq81ci+XbWM5Wr6CJ
	ZySLzKr3qqnhz9m3oX7XaUR6weDsdTI6PQlzKLdbZIbqmtOnAszUVpc//6IGEu3D
	a9sVdwidi9X/6i9URLrf9bGpAHcvWk23AukZDtojdEi6BXKjStxpMLHI7nVTJE2y
	yrTVTzipjleMQWXyLWogQZHn8PWAz8nuc4pRJhnQTurbBjLdjKpv2Kyfn5xP0CRb
	F5Kat1n0FeO1RmAk6Gm2n5SMWl59DJiPYQxNntWkgK6AraAbpzEty6k0LWQOn7hE
	9AJUSa4zV6FYDNBU6262V4kwvodir6yiu0ZC/GcoSDayL98Q0pCpJ7BftyQ==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4u1gra2m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 12:07:41 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-5db56fb3fbcso4089719137.2
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 05:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761912461; x=1762517261; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pWjm3r9JBLgyWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=;
        b=jS1pmuyu65rUOP+HFZrKLHgS5hnkfjEDNadVRjaMJAsBg05Tr3l66fuhGjJSHR5iaC
         bczS1a6nYU1mbdeVL8LAaTDSwBR/ujgybeUDWj3XmGdpY/5Bx9ZNEJTtrCBPSappuV5c
         yhZX1MchRMDBJvme0fQbY0/frH/j+G+RLVpjJkh8sN9Izba0i+x+kwP5dT3J6qWr34wH
         H2t4c4j8gzxgxtwGEVE28HiN+ok0ZJgvcQB8x7/fkmU7KiDHbF+jAzOy2pZPAdjLbCGP
         Ufs8TuarmLdbBTYQXDVWp4HnJJ98CVXDShzdDSfpuP1kubTyajqKE10Dhme6cUIHUaQk
         hnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761912461; x=1762517261;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWjm3r9JBLgyWiY5RrLVYsR7m0kB0QZc1E+F4Ywtwhk=;
        b=XhJsRBzmUQBzgZxSGeSj45+/+vVWNrmn+ffa6frYXtim31f7md0uXYMxoP2B7K+GuG
         pDM+S//FL/6soWbx3ZTYp/ejAJ1qMp7YysYXY1Jptnjp0BnmfUag9bvqr0RkLineJoKo
         dC8xumuo5kAHM0MHi29u+JfykZwWFnXpqRjNRiIAvjhe6mnE0bqJwz6PswodMk5Dl3qa
         yJhq3ZCBef/qSpMOfqdBhGdL3Asyp8NFQPCq41sCn/872oSmHMpTM10R/ixkSmeXV8Ph
         sJyVYHg5LgZemVDiUWhc6xfrm4yn6Aupv5LDMnmWCwMNb0wv8HyKtmoDP2LFG5TLsNaz
         Nndg==
X-Forwarded-Encrypted: i=1; AJvYcCWC4h/uYOd02FA2vWpR3k6VJ7moLRx1LaNxy9AMxZNneseu4wQycmHdNa5k0kTnZDnQbrVePvRvmZct@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6TtpxDdOUmtY/6pKsiG1ddOr0ceiAHenMy7iGmEhV8woApfny
	tkntxmFoxTHq9bLjIjy0suhiC2IFx+1oX4t42bZbQ+Dd6Do3KDzdekiY9PPaq9NtZXvrit3dOF9
	BFuQ57gFcgAQW0s7lVynYkuz/rnAu3rlWLMmc7PGS14+gnpnt2oCAMsjAJQi+rp+3
X-Gm-Gg: ASbGncvh1FoRMJN9hiedlYGXYs4TkGuqQaThLrFN9TKYpCleY+W2vrQfTMy6/aSpstY
	7yfu9CshmkmoJ0Eu0aUijylBYJ6z7YDBGk++cmuFtVJC6HWXPiyU+4ZZr00/bX/1YBUNWfwmMXn
	NRJZmL8BzKzgneD9hJ/iZb39E/p9sCVSa7SYnTbE4GszY3AZOItizy+Efp1dcBwu504szn3iVUj
	/FHZ0h+/z7qGb1JhG6YMpZ6tDqX1KT/ShS9sIAk8xPDDu3QPAAlys3mv1NxtsTOSQv8rvX36eTL
	3CbjuOs60aaHT+/3ItZg2xQaFYjglvS/ApyquDzQwgIP/kG6aJEMqcIyqDgGZTbmUOpDOHHVmb3
	XdXfeTR4PdM0N
X-Received: by 2002:a05:6102:3f46:b0:5d7:bd64:cc72 with SMTP id ada2fe7eead31-5dbb121c807mr997446137.15.1761912460905;
        Fri, 31 Oct 2025 05:07:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDodoCZVLOUdcpxRleWvKRAfyDhfwenQkOa2/iYbWuD6ME4XdksbEW5FLWFXXxrVhue5fhqg==
X-Received: by 2002:a05:6102:3f46:b0:5d7:bd64:cc72 with SMTP id ada2fe7eead31-5dbb121c807mr997417137.15.1761912460425;
        Fri, 31 Oct 2025 05:07:40 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4772fd280fbsm21273995e9.5.2025.10.31.05.07.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 05:07:40 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: robh@kernel.org, broonie@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        perex@perex.cz, tiwai@suse.com, srini@kernel.org,
        linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, alexey.klimov@linaro.org,
        konradybcio@kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v3 4/6] ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
Date: Fri, 31 Oct 2025 12:07:01 +0000
Message-ID: <20251031120703.590201-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Lo+fC3dc c=1 sm=1 tr=0 ts=6904a68d cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=q4DFcrmTo4ZQpOTRNT8A:9 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: mzWtsc8PlhoD6svAV6TIDpy7XWltECDK
X-Proofpoint-GUID: mzWtsc8PlhoD6svAV6TIDpy7XWltECDK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEwOCBTYWx0ZWRfXzytibOC5AX58
 9jHFeU6aJWUrswxDIHm7GoJJtzyqmiUocHE66Wi+/Y4nrOCt7Exwl59tIjoh1WDxy775qUIS5pm
 /h2YK5MfHpVDm8bGO7s/s2bbOMEWHkv60VHYxEVHFhyZGVtaDi6Hz7aJ9gplgAzLBPQ0aFO0nuD
 baA5v5mfU9vQpEVrGONu2py1GwRh5J4LM2gHNCFh3pgVUPh8bq4ta7KpzRbba7tgF54HpyGcann
 0Cs2B0N/Cx17aojkCP9gAVjjD9ZY5P2qpmZRJiYHnBEmXzjRwwB9pZTzVQ5NQyER84m0XHMoQc7
 uPjfN+6uFM+wMw7+vGQVKdJ6jwWrQ6IUVaDNnv7EwHRG705b1TY6zZF4cSQgbiXgBJwP+oEGNvw
 gZa1MkKZrkN1PE36Nr1Fv8lL3lNCWA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_03,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 impostorscore=0 lowpriorityscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310108

Add bindings for Qualcomm SM6115 SoC Low Power Audio SubSystem (LPASS)
VA macro codec. This SoC does not provide macro clock so reflect that in
the bindings.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index d3851a67401e..5c42b2b323ee 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -14,6 +14,7 @@ properties:
     oneOf:
       - enum:
           - qcom,sc7280-lpass-va-macro
+          - qcom,sm6115-lpass-va-macro
           - qcom,sm8250-lpass-va-macro
           - qcom,sm8450-lpass-va-macro
           - qcom,sm8550-lpass-va-macro
@@ -99,6 +100,21 @@ allOf:
               - const: mclk
               - const: macro
               - const: dcodec
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,sm6115-lpass-va-macro
+    then:
+      properties:
+        clocks:
+          minItems: 3
+          maxItems: 3
+        clock-names:
+          items:
+            - const: mclk
+            - const: dcodec
+            - const: npl
   - if:
       properties:
         compatible:
-- 
2.51.0


