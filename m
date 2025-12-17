Return-Path: <devicetree+bounces-247325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3545CC6E35
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:52:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B641301FF1E
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 09:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16BE5347FE2;
	Wed, 17 Dec 2025 09:52:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laq0HF/L";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="juKMJUSS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66713347BCB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765965134; cv=none; b=GuzZkoNg27j/zF1Xd0s3kN4izQafoGno+b079jmCvbAeNApqKxnrT5RLPhGnsIspYUBeRD5UhOqd1e0OTEB6FL/Rkjlhq8+repg8YiuMh9yWbtTwedgEaKmsTdE+cxkP0yb9pUT+EjJzJYAyHx8/0/OewAtGaVflKFw+cTa6qts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765965134; c=relaxed/simple;
	bh=3n8ScSa9U5u4J9FORj/r+W2S9YcBhcL6ToUsDlBBb8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FzgP1kNBjPTMeCWSZMQLO15NYdVEqFhocLJOE6mDMJdCIfOlT9lpImvzNMpRb6sGdcQWC0biUY565Sw/d5rXw9uE0lpMaDBp3/WXx5I6Z1og1FqRBlvdmM568+/xe3QsrB+cQQygckITPn4FR1KNzr/wXX0o/ue+6lWpIwqOufE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laq0HF/L; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=juKMJUSS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH3FIuK1501439
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YWkiFRWGmUEeIfo9pk1+SznEx7y/iiY47QRvAY739P8=; b=laq0HF/LGyXfijqu
	FTHG4rbbN7SEiZsOUGovNlD8nXA0T65Gb70OzfkhoEdmuMi7s2jUyQjXrzJhyePm
	oySKe+8VcfuZpVhcJEUwu8egzrZPMqMmsUHtyYQhyPrBa8zTujvepb06Tw+vhmql
	G1vb3NIkVWKrNEisJZcQbkuN9jy0NuAKQ3Sf3ESdiNIrO5kfoto0UnUehgORy0zF
	HCj501w61dJMeqNHlMaliub2C3ZwEqhnufVZxLM2eg2PfgdrRpmZ1qu84rz0+pc5
	SSqp5foCBhNc3B11x8R4SYAN2gfM+5oyjeXSFkaqChjiKadoXJMrcYHjcjnjxvOR
	pRGABQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3kkesb0g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 09:52:09 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88a2cc5b548so8891106d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 01:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765965128; x=1766569928; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YWkiFRWGmUEeIfo9pk1+SznEx7y/iiY47QRvAY739P8=;
        b=juKMJUSSj09dgv5lrSJ+js214tk2rkexd5Ma6LRK2ociHT2cDhcc6+Mg5S7ThfoP7v
         Y/F+mJCyxF5tAGzcXGrlGuSWvTbfyKICXMn5Mm9hNsti9G2V5Bv1P96yOeQ5oN6DXGG9
         3lr/JJUK8Hnu6Ujw3oOmzWU1JEenNghnav957L1mR/kPdfyLt4zIghRw8FpLymoitkwJ
         A/PUCwqioakgmI2G+bCDmSDT+xFOGpts2nSQ+fTs6qnHUWOsLZ3EGR24oA/HxaewI+HW
         B4YfcbxqkCcM0hRjBUCQIM/vM7MZqdtwF8g67qyg9IOz4GBjIGjntmvERXbmx+MjJw/v
         746Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765965128; x=1766569928;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YWkiFRWGmUEeIfo9pk1+SznEx7y/iiY47QRvAY739P8=;
        b=I0nV+SCZW9H1iZRGgqFcBOg6ESJeg2epqt5+z/U42OwCp0vbzyP0bvQuaRFruMvWzG
         uGQ4v5J24o3t88tmccvaoUnuVm3wQirgv5KFeiL8pDgconszfOycUszVS5Ez/vrM7JHo
         /6TMQbjOR7y8iAhwR1nsxKRf18cWvVueWw6Tiv7xTlAv0RApQSVagdoHL7xGJaAgKU3f
         ow6SzXdn2CibPKIG7oEZ//9dqfp57B7iHP7zuISkLRQ/bOIxJvfr0uGiwIr5qSMkJf1C
         TfPaXvTWl2Iwy2DDwoGwfhwtR3GLuJHughM0DHOUKFE/KRfxWQ69snAQVkeZgSh92waL
         ZyGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUA3fceWqqs3nCRnQdd1FKfUDrVsQbewOJaHd9peKevsOYCUkdBK1vh0UaBFgZqt0S30gnHv6hj3cqT@vger.kernel.org
X-Gm-Message-State: AOJu0YyK/Ee7N5mbarSjLfUmaKg5sVMSMs9ZHfkZluLOp+xy1zKjmuF8
	6ZFUJTNyOfCQts6ae5VI8UOpTiLeMdXpcC8iexkv7sAS9SuVunQooazIkBkar8cR7Nq+abIVo2b
	5hs0kLjlt8Ta8in9oDR0zhyxdQOUiWtv2CGNcy9EP17Sp52w2qrCcRXl7tx3pSNlqOlRjC+dv
X-Gm-Gg: AY/fxX6ufwV8K8fvRJJPIsw98eo6MnxueC2YkZK7Wsb4KPVQ+aewFsmg/P0pB7QSO/R
	hE1eBZpbGvFHVjRqr5jM/56mZ/lDAtLAW2RAYeK6zsbaoEPt1t5MXUc9Kv9zr1BaU1VHKLemGyF
	9kbtwm298FKXDazro11O+tfM3yfo1fZe2xurkxs7PEO/zvk8LKFz16mPouPrzkFhAPxL7yRwcOT
	M0QrXh5zoSc8NcwbBoMupKNgmBNJtNTd8uQvtWu3EVwxHY3C44VpWFHJa6SJhOQ6NA18T/OjDl+
	q3M+cXovXAU8YtPk8Vrv7aDG/n9UzX4I0S5h3wUdg4DZgidLtT/QIKOKkP1Bxi3ULtsXXlKsqgz
	D9KUHKF2Ofpsj4nu2BNBkrDPRRFMgpK/j
X-Received: by 2002:ac8:7f13:0:b0:4f0:2211:d08b with SMTP id d75a77b69052e-4f1bfe5615dmr312364181cf.33.1765965128284;
        Wed, 17 Dec 2025 01:52:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEsdR4N3vHyv8amDOPM/OH89kFgMV/Z5oKndrL89pNMc4wMQxwekHFD2SeSkPhEiaDcPXyjQw==
X-Received: by 2002:ac8:7f13:0:b0:4f0:2211:d08b with SMTP id d75a77b69052e-4f1bfe5615dmr312363981cf.33.1765965127700;
        Wed, 17 Dec 2025 01:52:07 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f5630easm1981969a12.22.2025.12.17.01.52.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 01:52:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 10:51:57 +0100
Subject: [PATCH v2 4/4] dt-bindings: watchdog: samsung-wdt: Split if:then:
 and constrain more
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-watchdog-s3c-cleanup-v2-4-79d8caf65ec3@oss.qualcomm.com>
References: <20251217-watchdog-s3c-cleanup-v2-0-79d8caf65ec3@oss.qualcomm.com>
In-Reply-To: <20251217-watchdog-s3c-cleanup-v2-0-79d8caf65ec3@oss.qualcomm.com>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3929;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=3n8ScSa9U5u4J9FORj/r+W2S9YcBhcL6ToUsDlBBb8w=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQn0+2GgQ2ETAUn4PXAy+s3AdxFmkRonLCHYok
 G+Ib60KmcqJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaUJ9PgAKCRDBN2bmhouD
 1yxeD/0cQIN6Oy3QfGVCiba73/vXoSj1fnzE0ZaYR/b6K9i75xua8CCcvW8mdiPzW+rWSNBUtri
 +45+dwL2x1XbjN9qf4kLaAgsqR/PoER8qhQ0AROmHF/xy8vACNA6QhYarzeZF5DoPQIuCDa34YE
 hNPyG9ifW1sw0Glv3xa2u5JzbyYJhf9XtySjYdBZq/dkdMayQTwK2GnDMKpm2ztXL9zlYH+Je4k
 7XLAB/XvNEAhyKzNarDOa4084QOGsK3gXzC9XbPwmJHSxAwn3luGaCqfdQLYkTCna8yy36/tT20
 bPzrcnzBwHZZOQ94Dt7u0AKdCix07LxYTQjVVFaT8xiAP0RVUFTCHo2y3wUM+IA0VlzouudH5L7
 coBvGE/90gCZzgR7Qhvhq5dSis+Ug4867hTUOQKmHT54xke3EoroBY/RL8D41WqXIpOT+ZF0Xhm
 2qIaYPZiKmnWPPyDffWKNgS1hJ8g+ucMgDHM4v1yueQovcD0+axcvyVfJ/122hZ0j+ffTkX94gP
 5UM4kXOxh9NrReg9HJgl5HSAj4E0BmW8DbpuKIW4J+c9BcaU2UefRfgZtvDsqlTqQI5Vrt66QKI
 kXAnpSmkH2MfdnhH2H5s8d6U5kRPDm+SuygOffxjHJeJUOKbKqD0ynu20UsecCV2F8rG1JU4th+
 hUCAjzLdWUi6IfQ==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3OCBTYWx0ZWRfXy4GT2PRp1aXd
 X9HQSu2twvwXAvs5NS4+oQX6/ZVWuxnAX2xII4O4NEx67oS5gdazhUZZr6PHz1ZNZLn70KvdOol
 wg4m7vdWExo0SdSdmzHmNQYCM3VGYt5zsUa4Hu9mm2U2XPqZksNUe2dP1q0Koi/FJI4TPnWV0K3
 8SM5fnRnKKfS+VqCLqVWclPIf+ufLxbB2n3P8/jK4aTGJD2qSG0z+OBbMMvkgZaVDZ8TN04Go6E
 2zmiB47Uq0u3BJX3o8ysj9FpnlioztYMVUceAtAOm/9Ik65Zcpkden3BHLsDkuwhY4KMgn7c7MS
 0PhE7w47jmO2QaiBTwUNZl9tJKNnEb1oVgo6ZOxfSXr77X6V1RozUANe/pJ/7mUPTABs1mGJar2
 tNl/pASa0CMob6XWfRDUHJCYVWI8pg==
X-Proofpoint-GUID: dNpNgK-ZHPN27rhDO_AIkrvOaTQBU7Kr
X-Authority-Analysis: v=2.4 cv=Fcw6BZ+6 c=1 sm=1 tr=0 ts=69427d49 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=_jlGtV7tAAAA:8 a=VwQbUJbxAAAA:8 a=hD80L64hAAAA:8
 a=EUspDBNiAAAA:8 a=l-N3HDM6Fn6Kim4WiOwA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=nlm17XC03S6CtCLSeiRr:22
X-Proofpoint-ORIG-GUID: dNpNgK-ZHPN27rhDO_AIkrvOaTQBU7Kr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 malwarescore=0 spamscore=0 suspectscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170078

Binding defined two if:then: blocks covering different conditions but
not fully constraining the properties per each variant:
1. "if:" to require samsung,syscon-phandle,
2. "if:" with "else:" to narrow number of clocks and require or disallow
   samsung,cluster-index.

This still did not cover following cases:
1. Disallow samsung,syscon-phandle when not applicable,
2. Narrow samsung,cluster-index to [0, 1], for SoCs with only two
   clusters.

Solving this in current format would lead to spaghetti code, so re-write
entire "if:then:" approach into mutually exclusive cases so each SoC
appears only in one "if:" block.  This allows to forbid
samsung,syscon-phandle for S3C6410, and narrow samsung,cluster-index
to [0, 1].

Acked-by: Guenter Roeck <linux@roeck-us.net>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/watchdog/samsung-wdt.yaml  | 70 ++++++++++++++++------
 1 file changed, 52 insertions(+), 18 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index 51e597ba7db2..41aee1655b0c 100644
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -74,24 +74,7 @@ allOf:
           contains:
             enum:
               - google,gs101-wdt
-              - samsung,exynos5250-wdt
-              - samsung,exynos5420-wdt
-              - samsung,exynos7-wdt
               - samsung,exynos850-wdt
-              - samsung,exynos990-wdt
-              - samsung,exynosautov9-wdt
-              - samsung,exynosautov920-wdt
-    then:
-      required:
-        - samsung,syscon-phandle
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - google,gs101-wdt
-              - samsung,exynos850-wdt
-              - samsung,exynos990-wdt
               - samsung,exynosautov9-wdt
               - samsung,exynosautov920-wdt
     then:
@@ -104,9 +87,41 @@ allOf:
           items:
             - const: watchdog
             - const: watchdog_src
+        samsung,cluster-index:
+          enum: [0, 1]
       required:
         - samsung,cluster-index
-    else:
+        - samsung,syscon-phandle
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos990-wdt
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Bus clock, used for register interface
+            - description: Source clock (driving watchdog counter)
+        clock-names:
+          items:
+            - const: watchdog
+            - const: watchdog_src
+      required:
+        - samsung,cluster-index
+        - samsung,syscon-phandle
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,exynos5250-wdt
+              - samsung,exynos5420-wdt
+              - samsung,exynos7-wdt
+    then:
       properties:
         clocks:
           items:
@@ -115,6 +130,25 @@ allOf:
           items:
             - const: watchdog
         samsung,cluster-index: false
+      required:
+        - samsung,syscon-phandle
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s3c6410-wdt
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Bus clock, which is also a source clock
+        clock-names:
+          items:
+            - const: watchdog
+        samsung,cluster-index: false
+        samsung,syscon-phandle: false
 
 unevaluatedProperties: false
 

-- 
2.51.0


