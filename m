Return-Path: <devicetree+bounces-236166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D84B7C40C48
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5B6F13505D0
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 678C432F753;
	Fri,  7 Nov 2025 16:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1HEvjRq0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B053D2E7F1C
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762531736; cv=none; b=k6cCFyhnK2mtAqrnUUxRQMB8i/0LGyhmzUhzOJrWhO0KdTJOtCRCBPR+dhZo20fqEdp6GsvPsbPufducu/jLj0VBS4bPODmpb5jRw5KyksInR7r+13atKW4vfhIdv90L/UC0FCvmNa9FLQe8fqUq5oMrWcxaV0x0iWlVXtTtgAo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762531736; c=relaxed/simple;
	bh=wCfL/0TbR2D1La8wfkO0vzsLgEQ1Zd5Y2m8FV9wi1Gg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uUl695I7APPPXmFfXoAFjbnnDdRvETvTNoGehZtX6PxwzMHkkb2yKYCrxjv7qyrnk5U8qyoiAX0WaU8FvVpe3aQr1ID/QG9Q8GMQ8e68QPzQOyWG/tnPHAQUTqCYWu8ojEw/hyzQ+nBFiboDddqKJxSNUJDWUKBkS6BgrnK+xI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1HEvjRq0; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-640d0ec9651so1633461a12.3
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1762531731; x=1763136531; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JYr/pky6aWVI2M5rA4U5Jbo/T6qeLZWOHBZOpvd4WCo=;
        b=1HEvjRq07orEtdKMLrF/T1DERJoBqusNCgxa9cVyRFQOQPrXX1q0UEoTRPc3SbdAHt
         biMnqwcsIZjXtaMKrb50II95uGXdcFSGgKlMUL7xizvYKBxpaGBtmis6DKlnEQC/7z6Z
         N56YlbxILEhT1M55DItd3eHGOF5WnBB2t5rPqt2nW1QWrJaLN9kNUhjBa7wuVuJTqQ34
         GYBHZSx7k+momuoIUEVgY5SxlreW3yclJpzwDgR6lWlHCaP6+3oYZPkLvM6kfqjcn5e1
         uYyJQkQ47BFasAelH4H2O492RGsEPSLt9gYHjCIVa1kBtVudPL5TfgDdvCrtM4pXxxQA
         jrrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762531731; x=1763136531;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JYr/pky6aWVI2M5rA4U5Jbo/T6qeLZWOHBZOpvd4WCo=;
        b=feJGHI1EqxEKiW22Eq01gGJyfpUXS3/wBdbP7kyv/Bz601wuGwi+UKCT2M/NpGrtOQ
         JTNCl4WJAYEJbUQYGO1lWbaUu6SJa3Wh0qwNxDNN8it15lRWoMANCgnkRKo2IpXUzrwp
         81DqIuJF3SCJa5UfsKsGd5wJQm/2PxeBjX1oxwmRfeY7VK0wQvAlDm/F79iG0sAbTzvE
         Km4y6/yzgjSmJtUJHnBrjf8ogDDbpl3FPY6HDPtexy4c8RgiCJ7B1OlhwAMbCBhJRUQO
         SckGlWCVx+BVuV+AOhjJR86a5OVzzbcY6lv61eTTSwmjAWQg6hi4OxYKwIqeeaVF3lTk
         n2rw==
X-Forwarded-Encrypted: i=1; AJvYcCVV6M8VkDfSRSUWPWttlVUNzVcYw/jLj4UNJgiAuuwZKGSbKqojA+xXjWnWAW9m2dIYD4SzwZuKTbuo@vger.kernel.org
X-Gm-Message-State: AOJu0YztoWD6gPPiWqdr67EHZOFurMJnC5likzX6n3NtCE84LUu4SfvJ
	uAMtf90MRQAJPGCGIUtL+8T6kpuLLBdG9Tn6XpAoJuQZPpZ3TD1IstFzNiIXhOr2Q7I=
X-Gm-Gg: ASbGncuZ6W6HUqOMEIZxrkFiKpKAVBjZn3OI7BrNVfJmNHXxv95UIwT+DYfez3FtQ/r
	qZEFNUwomEmshWiEcriI+SfMLy1VXue0gWOacGZrhEghngPvmUDXEcm8/n2fAxkktcs3FMisvAw
	VC9QlB1yAqhINIRPy+1Xh1QBKn1zDFt4V54BscZBMGDtUUOITYTRfbRQXNCUIUat1tZNxY2Uc28
	jPqeRLVhaxFAAYHDczLkhIq3SFytWK+yZDhLX764PAXyyL0gktYQyQavDWoJKIv9Vw3T8wdhFg/
	IrwLfc6K4hUu8rwvoCidqVq/pIRIbFRVjl4CwbEeT5kRmOq2euUKTBGP8Kw1L5HUAO6qqSYDYvt
	MN+mKhdJu6AraHD8eoRfY4qDf8/99jDOwjsswneiptEim0d074B+ULS+0YQlBHT6WV81VV2htud
	NmekIGJRp1+Uu/ObMnCAZ/2f35SChz94GdPgs01t29vI4HlXEcifB+2eht9VhqmlwOmg==
X-Google-Smtp-Source: AGHT+IEpbRanFI/ly4pOhSKtJJYggLoWCyVGHF5JexpXtBfMcrU0Svhu9ZaKyv7MJNW8LAKNg2Ua6A==
X-Received: by 2002:a05:6402:4406:b0:639:d9f4:165e with SMTP id 4fb4d7f45d1cf-6413f0a08c2mr3306548a12.29.1762531731003;
        Fri, 07 Nov 2025 08:08:51 -0800 (PST)
Received: from [172.16.220.100] (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6411f713959sm4444376a12.5.2025.11.07.08.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:08:50 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 07 Nov 2025 17:08:47 +0100
Subject: [PATCH 1/5] dt-bindings: interconnect: qcom,sm6350-rpmh: Add
 clocks for QoS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-sm6350-icc-qos-v1-1-8275e5fc3f61@fairphone.com>
References: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
In-Reply-To: <20251107-sm6350-icc-qos-v1-0-8275e5fc3f61@fairphone.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762531729; l=3518;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=wCfL/0TbR2D1La8wfkO0vzsLgEQ1Zd5Y2m8FV9wi1Gg=;
 b=XFhe9WKdgQrhgwCeP/Zu9aHiY8hnx5TxEMqejAH60sY7NNNSJ7zYWpPjHr9tJL6L5Vxd/IUll
 0+5xg/BwfpFCCSx7nx2Yh4b+QYUkjuUBCgHp1iuRuFkX3leuHhJRZFG
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Add the clocks for some interconnects to the bindings that are required
to set up the QoS correctly. Update one of the examples to aggre2_noc to
have an example with clocks.

Also while we're at it, remove #interconnect-cells: true as that's
already provided from qcom,rpmh-common.yaml.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/interconnect/qcom,sm6350-rpmh.yaml    | 65 ++++++++++++++++++----
 1 file changed, 54 insertions(+), 11 deletions(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
index 49eb156b08e0..2dc16e4293a9 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
@@ -12,9 +12,6 @@ maintainers:
 description:
   Qualcomm RPMh-based interconnect provider on SM6350.
 
-allOf:
-  - $ref: qcom,rpmh-common.yaml#
-
 properties:
   compatible:
     enum:
@@ -30,7 +27,9 @@ properties:
   reg:
     maxItems: 1
 
-  '#interconnect-cells': true
+  clocks:
+    minItems: 1
+    maxItems: 2
 
 patternProperties:
   '^interconnect-[a-z0-9\-]+$':
@@ -46,8 +45,6 @@ patternProperties:
           - qcom,sm6350-clk-virt
           - qcom,sm6350-compute-noc
 
-      '#interconnect-cells': true
-
     required:
       - compatible
 
@@ -57,10 +54,54 @@ required:
   - compatible
   - reg
 
+allOf:
+  - $ref: qcom,rpmh-common.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre1-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre UFS PHY AXI clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre2-noc
+    then:
+      properties:
+        clocks:
+          items:
+            - description: aggre USB3 PRIM AXI clock
+            - description: RPMH CC IPA clock
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,sm6350-aggre1-noc
+              - qcom,sm6350-aggre2-noc
+    then:
+      required:
+        - clocks
+    else:
+      properties:
+        clocks: false
+
 unevaluatedProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/qcom,gcc-sm6350.h>
+    #include <dt-bindings/clock/qcom,rpmh.h>
+
     config_noc: interconnect@1500000 {
         compatible = "qcom,sm6350-config-noc";
         reg = <0x01500000 0x28000>;
@@ -68,14 +109,16 @@ examples:
         qcom,bcm-voters = <&apps_bcm_voter>;
     };
 
-    system_noc: interconnect@1620000 {
-        compatible = "qcom,sm6350-system-noc";
-        reg = <0x01620000 0x17080>;
+    aggre2_noc: interconnect@1700000 {
+        compatible = "qcom,sm6350-aggre2-noc";
+        reg = <0x01700000 0x1f880>;
         #interconnect-cells = <2>;
         qcom,bcm-voters = <&apps_bcm_voter>;
+        clocks = <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
+                 <&rpmhcc RPMH_IPA_CLK>;
 
-        clk_virt: interconnect-clk-virt {
-            compatible = "qcom,sm6350-clk-virt";
+        compute_noc: interconnect-compute-noc {
+            compatible = "qcom,sm6350-compute-noc";
             #interconnect-cells = <2>;
             qcom,bcm-voters = <&apps_bcm_voter>;
         };

-- 
2.51.2


