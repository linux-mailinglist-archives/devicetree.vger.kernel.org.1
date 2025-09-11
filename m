Return-Path: <devicetree+bounces-216171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 37F57B53DA0
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 23:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D85025A6B6A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 21:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74C2E24A066;
	Thu, 11 Sep 2025 21:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JooI/OAX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCD22820D6
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757625670; cv=none; b=dCQjFHt6Et1tUNw+0cQjE4o7hDOLyLVLU0reFYqvEqJevvPzyN7X2wnVX/XksUEvggLknhqZFTW4tAgiUZoX4FX0xlPIXtQIWdmAC5hRArO2l3/C3mGdbX92XqVebQWkQxGNmtitK/RlDfzXFYbovJ7LEJnxZdpolEfwaGUCMBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757625670; c=relaxed/simple;
	bh=7HKObMcS0bG/xYgR+s8o/QEbbBnC+A9rwJV1ihYzxO8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=EimvUj+Ei8kLwCGiH4QTe8mYJuNFWJ7kig/m2w7iLhIcMIjxaRSO3FtxkiIdOz0HFgqog5uBdDk5Lg/OQHcfAj+/3FUu9sbkh60FGp8DalGkVHBpBjvL4SvRvtt8BsiZlrHjEEjwpvZmqC6U5fnd8Nm1rfOftZR3Ce0WNLmksX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JooI/OAX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJobMr008194
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=skpxVi02HZrlESlDioFv56nkinK9bp1CNjc
	w1o5RuJk=; b=JooI/OAXMknJIfcjBABD+zZ5hZ9EOmm4NtQO5fr08E0AbOPJ57l
	MJxCknc1H+8zBYTPLk7DraMAw+uVn9rz2SQV6SoMjm7R5/VmXk6Ho3+Q5jz7SakG
	tNkb7UMoxwMPfggdu9j0HniygkdePyeTDummt40dVbsVAU7OmRAlpe3AwL/TJa7T
	2hWk5pShmB/KDMOS0QYUwTJ9CqyUZcHyMyNlgx0YW65Pr2YO1nTPheLHobi5f4EE
	Lhvv1IdjhlpybsOL1W5tPXPIkf0GABICOoSorxHXEbcb0kFjVzUA9WnuFJ6kuRWr
	ccAhXHRypg6wMe1gYB5gN8qO0JU/2cmb/lA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapskec-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 21:21:07 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7671821d5a7so12817036d6.3
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:21:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757625667; x=1758230467;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=skpxVi02HZrlESlDioFv56nkinK9bp1CNjcw1o5RuJk=;
        b=oBouwcxvnxUMIiHV8s+u2PBvymIHe1QhPSggsT4F26tefkGL999C9GHdcLJTqLBSdT
         WVDUeX2jaoQySfo5GtPDLzaoV6s6NaE+HdSo8oFxKpUULI7wrUrZtcWtNorH9AQT2P+A
         yiDGHsKdBacpavS8mNgjWDsWLxBLmcVcYxCi5bbbSLJUBD53sgiYBgOco1ZR0MS3k2gM
         7khsV0bNA4sh2ZX6/WW7g0qFNhKhv1xWVKbtJn/b5KUWIGvHuNGxsWh0lL48NkwvKwZC
         5wKZdGIqXDJK1gpiAkz4YEcC3rXS4lTaYZ+J825U8bcRJW61i/btk+18hJxgRHQVBUNp
         i33g==
X-Forwarded-Encrypted: i=1; AJvYcCVsJiit3M5CJKA8VxDN3CEAEL0kMaPUduPbWD2BYxZ5Roq7lpcos2yjH+uYMYYB9yjBk7YpU1lWF/z4@vger.kernel.org
X-Gm-Message-State: AOJu0YyJec2CnDKlq0Ah06qrpP5762THGeSAcooEHROaArDs9IWyMsn0
	FfLmFPLDXAwvwyWEeHSn1mh69NXfrvC5BuXCKU5UYSeS5m8gaE+NNn6X0EoYyAfkE+jioQ5op8k
	XvSqELh5myEenRNP+NBmECrLFC3g99BeH+RhzkTGHdDIGNlABCi1l9cqSfRIW39TY
X-Gm-Gg: ASbGnctwSIIcFJx9/Xjb3pA1l+nDljHHv+JS0GVLLvdduDJS/krcCqfcKmP4ocJhhLU
	lPshJrw3gR+aKNInaESqLm6bCF5qJFFcDt3IpQXGs67IqDfaTvZSjjld1VNWoXfbudHj0LeoBjx
	taFIaBjWRX3kUZobx6AS0PYTg+UCAoGt+bhuJtrk+QH+9Igqk7quDAjB4zDvRMslgmGJV8hT15I
	FVpZUERtNl1mxty4EwNIScr8ZBLjR6eCJzqefeWyNK1Xi8FShWYO8GVfPVANWZWX4y2P7QX/IrW
	ogHsi4jMsZPysdIME0isdJjJqdwOQslp20sdQ4MJ0m3fduO5DjJOHgRVaibWIbKEYCnttD2xY7k
	=
X-Received: by 2002:a05:6214:2b09:b0:70d:bcbe:4e87 with SMTP id 6a1803df08f44-767bd287b56mr10462446d6.8.1757625666257;
        Thu, 11 Sep 2025 14:21:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHpVcUbJt6w3i2oI9zDeKvQh73YEpqoT8PihoTUvwa9PwTBX7gGMHfKElQYoKWqsZnNP03vA==
X-Received: by 2002:a05:6214:2b09:b0:70d:bcbe:4e87 with SMTP id 6a1803df08f44-767bd287b56mr10461536d6.8.1757625664925;
        Thu, 11 Sep 2025 14:21:04 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:3c22:d6b4:15f8:475e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0187f0a7sm21843935e9.3.2025.09.11.14.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 14:21:04 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andi.shyti@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        andersson@kernel.org, konradybcio@kernel.org
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND v5 1/2] dt-bindings: i2c: qcom-cci: Document QCM2290 compatible
Date: Thu, 11 Sep 2025 23:21:01 +0200
Message-Id: <20250911212102.470886-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c33d43 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=NlPZ1nVzr820ScHG1asA:9
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: WjQ82HkO4YdpMx_8PeEN1kyUtlJOCHKY
X-Proofpoint-ORIG-GUID: WjQ82HkO4YdpMx_8PeEN1kyUtlJOCHKY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX68ZxlaoRrxVp
 yGDeMzsj5v60bE1Q9SHYmA1NkEBHp3bm/nrlKxU4ibn1zYo9JfomSaAOyY3PustOTE2j1eoMtbZ
 FMC/w2/UgtfcLLvx1tInINo0qVqMAdTo4yqk61ARTFqBtv2PqESOy8UfGG0fvIqrPvIHBOBanOI
 Rs/5ABPZBQm6ZWflA91/K40ydfFlt435nQnAelETSt5UyHkEYekVUqUqFz3ecw6YEvNxnA/y0kI
 +IUr9k0AVXHhQItyIbyvTQlzRIb/o9VaBJCgMCtYoJVYCI0FI6NOlAoyKofVYSJUwi3Kt+U60n8
 wguDTU5g7UG/Oxoxvd45pSN3X2zhRcEroLqKfZ5vUZ3fBnnUHaPsx8j6T9AIIMwAdPrjGRLjgWP
 uFD69uiy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

The CCI on QCM2290 is the interface for controlling camera sensor over I2C.
It requires only two clocks.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
---
 v2: Reorder commits and Fix binding testing syntax
 v3: Add clocks minItems for msm8974 as top-level minItems changed
 v4: change AHB clock name from camss_top_ahb to ahb
 v5: No change; Resent with missing recipients

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml | 22 +++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 73144473b9b2..83b13370ff6c 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,qcm2290-cci
               - qcom,sc7280-cci
               - qcom,sc8280xp-cci
               - qcom,sdm670-cci
@@ -44,11 +45,11 @@ properties:
     const: 0
 
   clocks:
-    minItems: 3
+    minItems: 2
     maxItems: 6
 
   clock-names:
-    minItems: 3
+    minItems: 2
     maxItems: 6
 
   interrupts:
@@ -113,6 +114,7 @@ allOf:
     then:
       properties:
         clocks:
+          minItems: 3
           maxItems: 3
         clock-names:
           items:
@@ -120,6 +122,22 @@ allOf:
             - const: cci_ahb
             - const: cci
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-cci
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+            - const: ahb
+            - const: cci
+
   - if:
       properties:
         compatible:
-- 
2.34.1


