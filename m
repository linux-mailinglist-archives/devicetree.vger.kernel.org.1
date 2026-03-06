Return-Path: <devicetree+bounces-271941-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLWDBrmfqmlLUgEAu9opvQ
	(envelope-from <devicetree+bounces-271941-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:34:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A47D21E023
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 82883305BF5E
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E6D0344DA1;
	Fri,  6 Mar 2026 09:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="njnnxDwx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O0ghJtNM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FFF345CA5
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772789626; cv=none; b=rMiTiWNbU7yX25rKoUmsCTJtDI6MusbN3jYT/KqSp4q68HCaA+8anHJ31cIPqLa+mmLd+QlxdxTtRmD6vSBXYyLVxZxj0nL5rSQcUfjWvm1N9pPc9wKgESoNjWSj9OFipVRRYYraLnReA8EaXrgfWcZdxp/B4tqs23wPdj9ogbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772789626; c=relaxed/simple;
	bh=fEDcueaVPZuZZ8KSYxOQD7qiH2fXZMltI7o+8/sRum0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Ngg5jNCmcU6okU00WgEZeHezPZsiWt2FgGbgsIJ44KrakwZhaLirYHOARjd0S5nl1/+apqGrOjG8/x1d7J+bSceBF+j2UET3SLddEWGlwvuZrVIkwZ1KWL+xFJC2Gjxj8bjDpuDH3MFbjfprTSdzokolV2Omt1ApyzGBbAEUwN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=njnnxDwx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O0ghJtNM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aMNU3219617
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=D7ShTnqinuK
	M6FTDfKn0IjuJRriONczDYAp0B6s77wo=; b=njnnxDwxKum12Hhp42P6zRnZh6m
	5qZAttBdp6qCHHoyPO/emHNmToTh/AMxSeS79SaJAHv0whqjDtT1yOKczak5ju95
	KGVrD9XzUhf5k5I0eL8NbNpM76cZgdlhagAbRwz+qqZXbT0fELrvNKmozji2lQjs
	m8O0nVWZXvtbUAioYCS8cnV4BZrek0TiBfpKHR46ExykD+T/Ju5onKK+zWgIPH9p
	dssOFkBTwtVaHFXHUnJ9W1IJ83Aa7rInJCp1oDiOW+buFV2draZAfZH1eqjbiYHN
	H2rQQs/3/Mq0G9H5BH9MbVsI/fQKUGt+TxmraxWPo2oE1QoHDKm5D5E2KMQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqf25tkqb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:33:44 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-358df8fbd1cso8474781a91.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772789623; x=1773394423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D7ShTnqinuKM6FTDfKn0IjuJRriONczDYAp0B6s77wo=;
        b=O0ghJtNMHyl0CVnUt1gtWBXfAYsBsaUuBqpaftLFmW4TrY8eW68jdjzOU5vDc8i+lJ
         Uhs2rlHISod6qB13mi8cpNODDR0E4GPknjdxoetw8NODlgf8w66igG/NAILyxbFlH3KT
         swX1hgDGFSloAPZbylMxzoA9p/2TJTcfawnujbWRH5jMwDkFHKTqsBO2BMYfE/3bOC2K
         HE3f5hBfGq5QysNEH9x+r3fVPNrMUS8/m7qlXGROkvTF5hYUk9hYgQCduVwi8S0KBhJH
         I85Ln8kuzXOFCItJPIWK852v/flTY1ykTQTP+n/m2PDOMWdvECmUjEyV+yw4wP789mgh
         iu1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772789623; x=1773394423;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=D7ShTnqinuKM6FTDfKn0IjuJRriONczDYAp0B6s77wo=;
        b=Ygv6ui8s5SF1Dzx37BHuDdv37OkC/rDpLnqbHdvYqZIXl0PHsTJrGO3CZn1gZ0hbZ/
         v94XeZZ8zi0UsKFTzHhribMgB3A5sbK2BkiagnV9qnuOXArlyDiTDZO3yhztQnykhMvX
         WHlo8VncCdPcPWsQS6JZFcjeI2LCvTjQDAf3fJ69vq/2r1K8Q4vN2sr+l66nO3J2WZ1G
         BIjn2SxpMesFhoDi/S3AufDS9o9EgylcFF94wDqZMGE2Zh6TgR80BRWZ3Lfw4oBrFNuh
         WZHOJhmIaPXEhE8x+4JWPduyqkzh3dMn5p7FEn2pIqwD+QXOmz6+lbs8ixRTLT7Vt3ga
         XW7Q==
X-Forwarded-Encrypted: i=1; AJvYcCXj4fOyaDblT78pwuTLCIaW1BoNWQBZK99/6fPnqecGDAEBDT1Z+PUrUDbG9C42hD5gh00OrDGZb/hI@vger.kernel.org
X-Gm-Message-State: AOJu0YxEtA7EGbszJWDQ1Nqft8HrKmKCxxbDk3/ed+07sxwDJcmV5A6X
	M5PI8nO8Y6WEZFXeE8QDz2YGCQsV5KqlOXJOh2jDe/kADTiWNiY+YvF9O95TYQppLZc/sm7ojGd
	IszDaVf5HMDbV+5Si7dA2/6LBC5N74VO8UpySnf/ZknrO7IpvHFwDDvo2Wbppr2cy
X-Gm-Gg: ATEYQzyXMdSQjhgCMpK5zRLoklYbJsYwLXCNTUEpJE32evE29qe2bViosUcx+uIp7lx
	FvviQHWnAdCIFShkz5OzTckIDKvnMPejvWryPMAW8kzUrwfdXigNbcTJG80HzyXdRonF9zLs9aY
	tZWR70jbeGsBeiyV+yx7Wy0/uQE7u6e+KqH+AxPbQcSoXRZfJXz8xJn/4NsbD+XoIkdn6CaHEYA
	pHEEuQnk2nR+xqBjh594WEJkqz8HlhbeOrjoa3ClrPIbtNz4V8j++ydMortpTegbiigoPgNSHte
	JsvRVDmeVK42rsgelV7RsLABwjDEg4MiNG+BExXdCRs4Db9g0EW/1LaVhxB86mj/Bp8QQKK8emD
	UtHsZjGjlKymcxEd8kttZZPnSMrggJHD6gSKQa3ZUDBLEPt8X4z75
X-Received: by 2002:a17:90b:3810:b0:343:7714:4caa with SMTP id 98e67ed59e1d1-359be27b694mr1558709a91.3.1772789623292;
        Fri, 06 Mar 2026 01:33:43 -0800 (PST)
X-Received: by 2002:a17:90b:3810:b0:343:7714:4caa with SMTP id 98e67ed59e1d1-359be27b694mr1558682a91.3.1772789622746;
        Fri, 06 Mar 2026 01:33:42 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359bbcacf06sm647549a91.4.2026.03.06.01.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 01:33:42 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com,
        Abel Vesa <abel.vesa@linaro.org>,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Subject: [PATCH v5 1/3] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Date: Fri,  6 Mar 2026 15:03:30 +0530
Message-Id: <20260306093332.4193993-2-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
References: <20260306093332.4193993-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: aY5xmOCsZmqFjrFttII5TsiNUJDow7Nf
X-Authority-Analysis: v=2.4 cv=Uvdu9uwB c=1 sm=1 tr=0 ts=69aa9f78 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=fvWVRpvV8V6VEHT1R0IA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA5MCBTYWx0ZWRfX0S6X8i+At3ON
 pCh7PNUFcUIshEuKtVaTfv1dM6NWBrSVXo0IR7wRtYfLKYrj+oeG3o0pFazDyuwJxW1Ndj68P0h
 6iocnDeVTCDJMLnaRG29Sbst8SOLfrdUL3QP+H6CdIb2Y//HyJFCEXPAW7Rgg95Veljma39Awl9
 H/tZilI0snt84Te0CS7fFs73qXQzXj77xi1CrjJtO2LXRdXU8SExF8ifR/72LDumcNxiSeObFGO
 kbDoeB9gCqBrvZdSE1uKKr59UVp7NM+iPtTU8N+dAbVcu5m/WCJ2sZPdZteyIGUB1Z07vn5/yM8
 chQeIzGtb4h3OiB8LnrBXoXubG+8SRPVhHNp7eMLjOyFHNoumgI1AzABMyNAu4WyVE9xBfj3MwZ
 a/wfEPOphThd6LaHtNcQi3DcZjXkkgP0QebcBipmCaZw2oXRdzG7WSbCDti9zFZtbTbQgsLBPpI
 hNsOXt2qweyMTvN6rWQ==
X-Proofpoint-GUID: aY5xmOCsZmqFjrFttII5TsiNUJDow7Nf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 malwarescore=0 spamscore=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060090
X-Rspamd-Queue-Id: 7A47D21E023
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-271941-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neeraj.soni@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Starting with sc7280(kodiak), the ICE will have its own device-tree node.
So add the qcom,ice property to reference it.

To avoid double-modeling, when qcom,ice is present, disallow an embedded ICE
register region in the SDHCI node. Older SoCs without ICE remain valid as
no additional requirement is imposed.

Co-developed-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Co-developed-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>

---

Some initial work is done by Abel here:
https://lore.kernel.org/all/ba3da82d-999b-b040-5230-36e60293e0fd@linaro.org/
and by Abhinaba here:
https://lore.kernel.org/all/20251009-add-separate-ice-ufs-and-emmc-device-nodes-for-qcs615-platform-v1-1-2a34d8d03c72@oss.qualcomm.com/

This patch adds the purpose and usage for phandle in the description and encodes
it properly in the schema.
---
 .../devicetree/bindings/mmc/sdhci-msm.yaml    | 95 +++++++++++++------
 1 file changed, 67 insertions(+), 28 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d66..cc9f7724bdf0 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -140,6 +140,11 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description:
+      phandle to the Inline Crypto Engine (ICE) hardware block for this controller.
+
   iommus:
     minItems: 1
     maxItems: 8
@@ -193,35 +198,69 @@ allOf:
             enum:
               - qcom,sdhci-msm-v4
     then:
-      properties:
-        reg:
-          minItems: 2
-          items:
-            - description: Host controller register map
-            - description: SD Core register map
-            - description: CQE register map
-            - description: Inline Crypto Engine register map
-        reg-names:
-          minItems: 2
-          items:
-            - const: hc
-            - const: core
-            - const: cqhci
-            - const: ice
+      if:
+        required:
+          - qcom,ice
+      then:
+        properties:
+          reg:
+            minItems: 2
+            items:
+              - description: Host controller register map
+              - description: SD Core register map
+              - description: CQE register map
+          reg-names:
+            minItems: 2
+            items:
+              - const: hc
+              - const: core
+              - const: cqhci
+      else:
+        properties:
+          reg:
+            minItems: 2
+            items:
+              - description: Host controller register map
+              - description: SD Core register map
+              - description: CQE register map
+              - description: Inline Crypto Engine register map
+          reg-names:
+            minItems: 2
+            items:
+              - const: hc
+              - const: core
+              - const: cqhci
+              - const: ice
     else:
-      properties:
-        reg:
-          minItems: 1
-          items:
-            - description: Host controller register map
-            - description: CQE register map
-            - description: Inline Crypto Engine register map
-        reg-names:
-          minItems: 1
-          items:
-            - const: hc
-            - const: cqhci
-            - const: ice
+      if:
+        required:
+          - qcom,ice
+      then:
+        properties:
+          reg:
+            minItems: 1
+            items:
+              - description: Host controller register map
+              - description: CQE register map
+          reg-names:
+            minItems: 1
+            items:
+              - const: hc
+              - const: cqhci
+      else:
+        properties:
+          reg:
+            minItems: 1
+            items:
+              - description: Host controller register map
+              - description: CQE register map
+              - description: Inline Crypto Engine register map
+          reg-names:
+            minItems: 1
+            items:
+              - const: hc
+              - const: cqhci
+              - const: ice
 
 unevaluatedProperties: false
 
-- 
2.34.1


