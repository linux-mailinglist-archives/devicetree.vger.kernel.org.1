Return-Path: <devicetree+bounces-230983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A38C085FF
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 02:10:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 168A23AECFA
	for <lists+devicetree@lfdr.de>; Sat, 25 Oct 2025 00:10:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330ED2629C;
	Sat, 25 Oct 2025 00:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B2bqQIeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6B7F18024
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761351021; cv=none; b=Azzf/C3QYGvOTWTKWDjuGHXJEhh/onkRsJOrCDNuKs070tzd524AEgOsIkcLYYa9hOdXRQEUToPIJN9td/zTNOeQsG4g5uGZriMepq+FvS/JAAPLelrUWwIgv3w++48N7US+6PJsW+YAp60eQ7K6aqUTX98pIwD+b6/P5aLhd78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761351021; c=relaxed/simple;
	bh=8PnTazA4dzV2y9nHuOhCjNJe3e82OR5ccqp936rFihg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=cYWfbGJUfa7Cf9/LT3OQCubo5mjNmYJuYlJCT01DUjSw7qr/vhUe4GpeE6/eOwu9VcjxAJ/uOfFALIratdkqWYEWOUt8r9praMUkGyUaKqdWYk1nrmQRywHljULFNW+3vKHa6tEq7HF+ClTL59IiMdN9et8/SqKLY8cEtBlTrcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B2bqQIeQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OI9Fbg018813
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:10:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=ANsLFbLhxWAijrZcc2ERGH
	28beR1/GNXIV7Rze9qcn8=; b=B2bqQIeQ6bU/64Y0+jVb8+csXbc35aBVVytB1Z
	3uRBzPpweYI/aGGCkl30cW9lrTgsvRKjOMgN9H4LF+0/OLhDWMkZhMgqCc4dc680
	rkt/TGtd5/KzxNQpTeYmuMh/fFf7ybLLxfW/xdtBKtxXGlsn8YcdaQy3ECluK4hB
	EZQGC/HRbwtsCJg4usV7opAWzwi2qfmTKaugZpjKhS46X5+Ri2A3XWZrCuezCtpa
	cc6rvTBckqQyZNuNZ4qQIlE43DyUAzRCA+lS+jWto/6tS+gH1jLeKvayA8msBSFa
	cXTXGpLpf4ax0avw2hYErZbA3r9qb3BpSm79yLG7B77Ayy3g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49yp6k4sk9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Oct 2025 00:10:18 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33baf262850so2480838a91.0
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 17:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761351017; x=1761955817;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ANsLFbLhxWAijrZcc2ERGH28beR1/GNXIV7Rze9qcn8=;
        b=bvl7m8iNSKsvkG/3FihEc/eQW5jry69f1mjQEBiUyuS2HTypkO5+gAP2cOFF4tzlyK
         bCOlTsGxBpzcbqOJXqLxM2sFKclNE0ev+xvr+t1HzFfD8pal0XqBO9M7wfcxuyoYaWOZ
         KHerwyPiDm+ggCanGUn1XzXJjPLZxK/XS+gNoxjjHNR8tAqzYYB5T/Hq8J/xWdAmwr2y
         gyQX7mz5YphJELXWYOrU4TVsgjWUaaOwS0jSe+O3L5I6X0eUXgmTzKxbtuUk/WIIjtWT
         U8Rl3FI4AQRjCCJeolFrCuefAwLd7dVmT3mix2A5Mh1d/B7I7VBXFRLDr7z8Cf8rtFVh
         3CgA==
X-Forwarded-Encrypted: i=1; AJvYcCXm/SAVxcEyVFdEQ7OU/mM7s3ZTW8ej0CywxH8apQd/dlzRxitvo6UCZ4gLiY10kSX3BBARU/EVb0Hu@vger.kernel.org
X-Gm-Message-State: AOJu0YxW9DvNSHmSiJkz/TBwrVsYGlYXlcUTT00BeGxNCnIIdlWDeTcM
	7BJZ2UnAyaTSYryOjkVsroTtbxRafMwKjBkXoaMfdxt0F7JnyixC7kMIkBDagQWVPsnB7rx/X5A
	Z5Ub/fGeeJ0DMcXaXY6izQZ8g4N2K3LktTfw0AZh9Vn1gzsZhQSE+Roq1+n3UT/nlEs4wKk7f
X-Gm-Gg: ASbGncsn21s41TwcEEC9Z4tvzDEiJHssOY6Oz8+pcE9Ua4WzKmM6sGYGx0idbkExzsf
	aaqRTEonZM3c3ptl9qa+V2N2IkpllZtMMQh5lmf1L/sQQ/r7L4RuFhPmdfZFjSsGybRXRfcY67e
	MW0UJ+7gCLK5J1X61tcMNkSDybY/POAMuUuNfDYgHcvyQ3MAm8I9hC88S14TCjN+IZVsHOfamf0
	neaYUemx7P9mU6S/76PSVen3eZudLh8wQOY3bVVkLApC4tN5kVVUAhsKcQKE2zus2JbXA5l/cG6
	zH0B69MKYlP6qzxxuAp6wjV7nzh0pXh0qxAFz4q5qwRle4ulptY+wVHbZpZVlxGXQkeG4vXfr4Z
	XELFgnSdgMzUwV2PmtKYWD5ITkwTJAZq7PIPRV61qF1HDg7ylHV4=
X-Received: by 2002:a17:90b:3f8d:b0:32e:6fae:ba52 with SMTP id 98e67ed59e1d1-33bcf861b1amr37765324a91.6.1761351017422;
        Fri, 24 Oct 2025 17:10:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSm8h4NvRrjWOJX+Cx7vUoe1BpJGKUKqYtf8siu0vobIYTvOkbI39G92U0hrTcdKBmU0SyBA==
X-Received: by 2002:a17:90b:3f8d:b0:32e:6fae:ba52 with SMTP id 98e67ed59e1d1-33bcf861b1amr37765303a91.6.1761351016968;
        Fri, 24 Oct 2025 17:10:16 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b7128885524sm374772a12.19.2025.10.24.17.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:10:16 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: gregkh@linuxfoundation.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
Date: Fri, 24 Oct 2025 17:10:14 -0700
Message-Id: <20251024-glymur_usb_subsystem-v1-1-bf6faf63b566@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
X-Change-ID: 20251023-glymur_usb_subsystem-6ee90473506e
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEzMSBTYWx0ZWRfXxSL389CfMRbv
 5idWX7DjKY42xh0RXy+NDve4ko1jz4Opa7GZSTUmXm3eBHHW498Ij3s0geiB8HEJFYQnlNMXDbZ
 EnopnqLEgVPaf33/4dUOACIrj2XQE8EOqcTHUzwztRJE4+Aedw8B8I7Vii4pLkpCMno8Rt7h2iL
 qogTHkgQZGbudSNM/PjhT20iKmDbqu0Yt53qKXQdrgldArox/hFSYbhPHZIeow3Jt03J/zBXcEy
 FlxjVDr9iJHkgvqLLq44cx+MePxbSCmRapChlVGnV7qdWAEbZBvAxlvGfSQZZUtFS3h1shYas/r
 AoPo9MDEp2+EEHVpoKjY6jivKTiUpMC9yfICEKw8v1DpDBYfhuxJ7KULskXEve9YFTN6GrRJZGX
 swxLukmGxr3dGTu/uJTaG3+XkTY3cg==
X-Proofpoint-GUID: t-GOjfBlTyaaEbWZRO9MHKkXakA_fIdc
X-Authority-Analysis: v=2.4 cv=bL8b4f+Z c=1 sm=1 tr=0 ts=68fc156a cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=d0k8rClLaaXxmoyBG9AA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: t-GOjfBlTyaaEbWZRO9MHKkXakA_fIdc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510230131

Introduce the compatible definition for Glymur QCOM SNPS DWC3.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
Requested to split from original series.
Link to original series:
  https://lore.kernel.org/linux-usb/20251006222002.2182777-5-wesley.cheng@oss.qualcomm.com/

 .../devicetree/bindings/usb/qcom,snps-dwc3.yaml    | 26 ++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index dfd084ed9024..eaa0067ee313 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -24,6 +24,8 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-dwc3
+          - qcom,glymur-dwc3-mp
           - qcom,ipq4019-dwc3
           - qcom,ipq5018-dwc3
           - qcom,ipq5332-dwc3
@@ -386,6 +388,28 @@ allOf:
             - const: mock_utmi
             - const: xo
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-dwc3
+              - qcom,glymur-dwc3-mp
+
+    then:
+      properties:
+        clocks:
+          maxItems: 7
+        clock-names:
+          items:
+            - const: cfg_noc
+            - const: core
+            - const: iface
+            - const: sleep
+            - const: mock_utmi
+            - const: noc_aggr_north
+            - const: noc_aggr_south
+
   - if:
       properties:
         compatible:
@@ -455,6 +479,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3
               - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
@@ -518,6 +543,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-dwc3-mp
               - qcom,sc8180x-dwc3-mp
               - qcom,x1e80100-dwc3-mp
     then:

---
base-commit: 5d603d197cef9339ba640089f17aa415b514dfaa
change-id: 20251023-glymur_usb_subsystem-6ee90473506e

Best regards,
-- 
Wesley Cheng <wesley.cheng@oss.qualcomm.com>

