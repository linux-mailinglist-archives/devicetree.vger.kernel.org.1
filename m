Return-Path: <devicetree+bounces-245499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B56CB1828
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:38:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C58530F27B8
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D57E71C860A;
	Wed, 10 Dec 2025 00:37:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fzgg95Hj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f44.google.com (mail-oo1-f44.google.com [209.85.161.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E59FF1ACEDE
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 00:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765327064; cv=none; b=Nqwrs56J9QJKV+CO1u/OVEJzJiCsx1Z+CFdgrRwlDqYXysw95NOqmaqrP2cMox9DM9wAEdbTj01ACz4sBccA2nyX/Ueqi7eSvFZY8oR+AvvLUAb+E4xPW8U/FJTE6VfqG6wfoQk+SLOeQy5HBJ4uheqYvU2WJXydgVe2fRviduw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765327064; c=relaxed/simple;
	bh=G4LpuwCOJLbUN/gwnizf+BfIMjnWPhuHQE0T4rsmdcY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JD7J0OCHPoI9/VnkGhPqP9TpN6yGptEVE6H5C1df99UtAZ5HHV258qTiNY3HquMTSy/E5cllxbB22jMUf0lwQyUQpFxCHky0b1IrfT33bi6QNyLExuaPdzoik9qbQzQfepvtIHALzMyB4wh3iGNnWfVhkV+7s/rndRWwzzQqUAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fzgg95Hj; arc=none smtp.client-ip=209.85.161.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f44.google.com with SMTP id 006d021491bc7-65b1f030a08so903402eaf.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 16:37:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765327062; x=1765931862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EXuh+mZ8ErhL8SGhoFBvHzfsjc7R9hgObbpwQbgQ/H4=;
        b=Fzgg95HjoHYESu38tnpkL9Wi+9iI7GdsMy9M/B5OXyyIw6KoWNhr9sBamgLewvpYUL
         m3js0+vxbJNIVT2ekgqTXdodZXg4j6aTcZHQHZp8XqYAwMOXjMioA6jN6I+bjV27kWUM
         qLpT2rf6IYeAV8wsyg6CZWciiYgkmPynYLzJh5qG2mVihnQD9DdHCa/ek3wvcu5s87mG
         O02o7REnSW5ptlJqcY88nuXs0FQ4OSMtiU39/+0eBGLXgnx7Gkm9rEToh4vV5eRlQEHw
         SNAr3UXCKc/fLWTZ7WJCVx3PKUKl29Yer8YNBDrhQzOlKl+O3grIbMtotDx+KAA4nULK
         A/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765327062; x=1765931862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EXuh+mZ8ErhL8SGhoFBvHzfsjc7R9hgObbpwQbgQ/H4=;
        b=VCQrCa7rEV0Vcs+3xB6NAHRX3eHUpdQf0JpQyIA52aCYpD038/yKDoqoyx2edIxc++
         87fESwy3GgO1pIS5NhiriwCcsWIfadBAuVGUQVLwh25ixe1qbwAlfpDizjhJ60rzh2sm
         Q1QVnB2odVCEbpYb9GY2fdeYBNOaQ0YubXg9gs3fOiH948DDJ4MRQ0HXTHxyKg54eWdK
         0167kRKLvJU71B/KctaVpXyVI19XhnpTdcwypbWWds3l8AX57WrlTIng/qs07Z/5fX/2
         h1DbEc9VNvxIXt3Rs6FWD8eBQ3t1B/68SbBadMJtOVHDb+db/7cEVgj0r0KttdvSgx76
         g/Yg==
X-Forwarded-Encrypted: i=1; AJvYcCU3p79H4+OgXoLb07Ru+IH/zzyXePfXeZIek7HAF5dJ7/6hPSPzK4M8kCDzCOM0NZBjj9pyB8xyznlX@vger.kernel.org
X-Gm-Message-State: AOJu0YxWXXTIipQ+66p7BM1+LoWkP+Ww3tkv3jWzT4yqapHy0I98rp5g
	pb6b5DOM8FIwpBekQbAA7wPZztnFAKdMmIKXmYVjbnP0GGey5/ZCcCCB
X-Gm-Gg: ASbGnctwYwKd3wDp950J8rH2WEdT6flO84GyYYscJgJRwNaoYTs/k7+HYW6uIh+H7pa
	y2KdB9PfnuURypnqoa13vfYGdw45V93hRxLTW9/jO1fEPc3NTXqYiY8ix5vEFXFUW3EydIAYhk8
	FhYKmPltfrSUAyRsLUiw7aqja5e/CjL6Q8A1QZG4M79VTqaaNI57b7uhjxldUlJwb76Kkg3RTSr
	9/uvcQoi4obfSVa59n897ShTPS8w609Oq6JmDZA0x/mQ43Lqsm44U9GI7NSyl1kNBGZPI8UGFhV
	sorAjegyvmLZn7+yFCYZ52zf8s24oTY1ijuJpZufxljY3YsLaxwsmUaZu2jzQpArBWljpomv0bx
	bCcnkB73snud5C+on30+PIjBSwpdv4xo708CPHjFIX1pXltjJBSll5dqQfcWz4IGQTmIRgAnywn
	5zzwNsp/ySERVCA7XIlDpB9YXFNyrwib4H4W6Zhvq1x8fLvMrOcbleNYPVqpWtDAbOErfFbib52
	O+NlwD6FS0WnWrMY7+ctQ1d3Elp
X-Google-Smtp-Source: AGHT+IG66XD5eCcirhwZnhQdBIvfhEjoQkIYSXGtY5MHAU83Z80X3dPCocpoIA4dOpLUUVkFkQ+JTA==
X-Received: by 2002:a05:6820:990:b0:657:6905:56f5 with SMTP id 006d021491bc7-65b2aaeb58fmr604703eaf.0.1765327061874;
        Tue, 09 Dec 2025 16:37:41 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-6597ea6807esm8588826eaf.0.2025.12.09.16.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 16:37:41 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Placeholder Maintainer <placeholder@kernel.org>
Cc: konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH RFC 2/3] dt-bindings: remoteproc: qcom: add IPQ9574 image loader
Date: Tue,  9 Dec 2025 18:37:24 -0600
Message-ID: <20251210003729.3909663-3-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
References: <20251210003729.3909663-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the IPQ9574 native (non-PAS) WCSS image loader. It is similar
to IPQ8074 WCSS, but requires several new clocks. These clocks must be
enabled in non-PAS mode, and are not optional. Add an example that
uses the "qcom,ipq9574-wcss-pil" binding.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 .../remoteproc/qcom,ipq9574-wcss-pil.yaml     | 102 ++++++++++++++++++
 1 file changed, 102 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
index d28f42661d084..3daa1cb736bf2 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,ipq9574-wcss-pil.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,ipq8074-wcss-pil
+      - qcom,ipq9574-wcss-pil
       - qcom,qcs404-wcss-pil
 
   reg:
@@ -112,6 +113,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq8074-wcss-pil
+              - qcom,ipq9574-wcss-pil
     then:
       properties:
         qcom,smem-states:
@@ -136,6 +138,35 @@ allOf:
           items:
             - const: stop
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,ipq9574-wcss-pil
+    then:
+      properties:
+        clocks:
+          minItems: 13
+        clock-names:
+          items:
+            - const: anoc_wcss_axi_m
+            - const: wcss_ahb_s
+            - const: wcss_ecahb
+            - const: wcss_acmt
+            - const: wcss_axi_m
+            - const: q6_axim
+            - const: q6_axim2
+            - const: q6_ahb
+            - const: q6_ahb_s
+            - const: q6ss_boot
+            - const: mem_noc_q6_axi
+            - const: wcss_q6_tbu
+            - const: sys_noc_wcss_ahb
+      required:
+        - clocks
+        - clock-names
+
   - if:
       properties:
         compatible:
@@ -165,3 +196,74 @@ allOf:
         - cx-supply
 
 additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
+
+    q6v5_wcss: remoteproc@cd00000 {
+        compatible = "qcom,ipq9574-wcss-pil";
+        reg = <0x0cd00000 0x4040>,
+              <0x004ab000 0x20>;
+        reg-names = "qdsp6", "rmb";
+
+        interrupts-extended = <&intc GIC_SPI 325 IRQ_TYPE_EDGE_RISING>,
+                              <&wcss_smp2p_in 0 IRQ_TYPE_NONE>,
+                              <&wcss_smp2p_in 1 IRQ_TYPE_NONE>,
+                              <&wcss_smp2p_in 2 IRQ_TYPE_NONE>,
+                              <&wcss_smp2p_in 3 IRQ_TYPE_NONE>;
+        interrupt-names = "wdog", "fatal", "ready",
+                          "handover", "stop-ack";
+
+        resets = <&gcc GCC_WCSSAON_RESET>,
+                 <&gcc GCC_WCSS_BCR>,
+                 <&gcc GCC_WCSS_Q6_BCR>;
+        reset-names = "wcss_aon_reset",
+                      "wcss_reset",
+                      "wcss_q6_reset";
+
+        clocks = <&gcc GCC_ANOC_WCSS_AXI_M_CLK>,
+                 <&gcc GCC_WCSS_AHB_S_CLK>,
+                 <&gcc GCC_WCSS_ECAHB_CLK>,
+                 <&gcc GCC_WCSS_ACMT_CLK>,
+                 <&gcc GCC_WCSS_AXI_M_CLK>,
+                 <&gcc GCC_Q6_AXIM_CLK>,
+                 <&gcc GCC_Q6_AXIM2_CLK>,
+                 <&gcc GCC_Q6_AHB_CLK>,
+                 <&gcc GCC_Q6_AHB_S_CLK>,
+                 <&gcc GCC_Q6SS_BOOT_CLK>,
+                 <&gcc GCC_MEM_NOC_Q6_AXI_CLK>,
+                 <&gcc GCC_WCSS_Q6_TBU_CLK>,
+                 <&gcc GCC_SYS_NOC_WCSS_AHB_CLK>;
+
+        clock-names = "anoc_wcss_axi_m",
+                      "wcss_ahb_s",
+                      "wcss_ecahb",
+                      "wcss_acmt",
+                      "wcss_axi_m",
+                      "q6_axim",
+                      "q6_axim2",
+                      "q6_ahb",
+                      "q6_ahb_s",
+                      "q6ss_boot",
+                      "mem_noc_q6_axi",
+                      "wcss_q6_tbu",
+                      "sys_noc_wcss_ahb";
+
+        qcom,halt-regs = <&tcsr 0x18000 0x1b000 0xe000>;
+
+        qcom,smem-states = <&wcss_smp2p_out 0>,
+                           <&wcss_smp2p_out 1>;
+        qcom,smem-state-names = "shutdown",
+                                "stop";
+        memory-region = <&q6_region>;
+
+        glink-edge {
+            interrupts = <GIC_SPI 321 IRQ_TYPE_EDGE_RISING>;
+            label = "rtr";
+            qcom,remote-pid = <1>;
+            mboxes = <&apcs_glb 8>;
+        };
+    };
-- 
2.45.1


