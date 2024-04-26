Return-Path: <devicetree+bounces-63003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 197748B370E
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 14:20:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9715E1F225B8
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F268146A69;
	Fri, 26 Apr 2024 12:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D0llLIsH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D58145B11
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 12:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714134014; cv=none; b=uNXhO52BMMqNfHZJiQexG0xhTvv32p7gL5ByeQHLVgCL7DNKSACx60o6xrXnjjGGW6gA8fhmVunBYUp1By1EgZDQYX5PVpFg2SxKGVVDm1acGy47dI8uH2/haA9DhKkZTO1c64LvtZGaa3zLa87Yuojgyuw3ye+mQ7AEyJ3NZvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714134014; c=relaxed/simple;
	bh=14dadIAc5wD2QzNM/ZQDEQHha++iZmfZkrofpl6mL9M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IJ9OcIR8hKXAc/LNqnNy97zNgBlL9iT8JbYbncocpro7f054BXdHFF9lyaCYfUMzGZaxtaiEfldT3MZ7rI9uEFoW4F+ufNYmjlbIe49NSxU4GYxOJh7Gyxar7GYLJJWr358mX97NK7YTWXo/aK00K3bpg0oqE+iafl7O1n/W9dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D0llLIsH; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-34a3e0b31e6so1503567f8f.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 05:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714134009; x=1714738809; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0PRNqalgzRJP0wdqPI5aKVM4n2lOoPrcnW5MLhVms28=;
        b=D0llLIsHgZPOuwkpyCsMPY7InPU6PT1i305B+AeDSmnHYwqiRy5bUf0sL8yUTobxuM
         zrvuJnKBZquXzXQaFr9v66lHKRDxQBCEFRzP9hK0CofY4eU5HZWqLp78A+cAefvrUou6
         Nx4t+SUfqHfP31ToMAD5lwfDZ6V03IIUJN3KWzFkJVZahQSABhF4PD7BKx0sdjAg4M/N
         BUFe9J4tH8ZuFHv48wKl5GSj7+4y3tNvD/13eoIMTJawGNyU9IastZchNlPd7rjzKlFt
         oWleOnrMY3/mu/Zu+P80LrL+MswB7sVuxxXmpFfshCIPcYmzTXFCRYyr6qU6M4m3Sc38
         4O7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714134009; x=1714738809;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0PRNqalgzRJP0wdqPI5aKVM4n2lOoPrcnW5MLhVms28=;
        b=pZfTeu4+LYKC2H9ZsHyMCP/Tt8TqZ0oZv2kyHnJ12UHsmLrSZbRyiKa7xOfppa80Zi
         v2ZbdmL8d41MoK7ulJYdY4Fc8A8FBX2TQ3QrUy0feLn0S78W/5nx9RPI39HW8eiN2Z3E
         GC03Q1RjkFW/krZ+R0EEy1CinvFuTJDl4PeYnwG5HM10oeWBVcjshmN5LoTSGe2P9tmr
         Ra/X3Pbhm14OSwRxTpM0tC8i7/tcFLRAvuQbftbh+Vt0EBtwI3QjtTPsDg0TrYrtIjRI
         73xQvd0x30qRYdmLVGb4810cziwUvmESMum825fBPSEXIwJiLbs+JFrcNW9/DZokfTR/
         PZDw==
X-Forwarded-Encrypted: i=1; AJvYcCVHP6xgHpmq5Iu+8xLO+J6kewnPy0TQuDgVXpmVs8KHj/cSwCR8Ryw+meXtPRb3OLVpBOj9BRvG9xwNgK43tD3Ql5dEU3tMN3lH6Q==
X-Gm-Message-State: AOJu0YxGJr5H3a+yJjP8MxgUpi/KxIXR+u7BpRyvN6f41Zk902NiGGWz
	GLUQ2gkiNEC3bNizFnVHZoj/tFKgNrq3ZCZYC4oqVipaTYBrk0x2X5Cj96h63PM=
X-Google-Smtp-Source: AGHT+IFPRQzrJNRe0ZHJxJr9q7e3kdzOr5FITfDYCVcG12MFC0Y3BF+U9bOg8Rq12hVlpBymtvyZFw==
X-Received: by 2002:adf:ed84:0:b0:34a:a836:b940 with SMTP id c4-20020adfed84000000b0034aa836b940mr1795068wro.18.1714134009627;
        Fri, 26 Apr 2024 05:20:09 -0700 (PDT)
Received: from gpeter-l.lan ([2a0d:3344:2e8:8510:63cc:9bae:f542:50e4])
        by smtp.gmail.com with ESMTPSA id q2-20020adff942000000b00346bda84bf9sm22478146wrr.78.2024.04.26.05.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 05:20:09 -0700 (PDT)
From: Peter Griffin <peter.griffin@linaro.org>
To: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	James.Bottomley@HansenPartnership.com,
	martin.petersen@oracle.com
Cc: linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	kernel-team@android.com,
	Peter Griffin <peter.griffin@linaro.org>
Subject: [PATCH v3 1/6] dt-bindings: ufs: exynos-ufs: Add gs101 compatible
Date: Fri, 26 Apr 2024 13:19:59 +0100
Message-ID: <20240426122004.2249178-2-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.44.0.769.g3c40516874-goog
In-Reply-To: <20240426122004.2249178-1-peter.griffin@linaro.org>
References: <20240426122004.2249178-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dedicated google,gs101-ufs compatible for Google Tensor gs101
SoC.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 .../bindings/ufs/samsung,exynos-ufs.yaml      | 38 +++++++++++++++++--
 1 file changed, 35 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
index b2b509b3944d..720879820f66 100644
--- a/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/samsung,exynos-ufs.yaml
@@ -12,12 +12,10 @@ maintainers:
 description: |
   Each Samsung UFS host controller instance should have its own node.
 
-allOf:
-  - $ref: ufs-common.yaml
-
 properties:
   compatible:
     enum:
+      - google,gs101-ufs
       - samsung,exynos7-ufs
       - samsung,exynosautov9-ufs
       - samsung,exynosautov9-ufs-vh
@@ -38,14 +36,24 @@ properties:
       - const: ufsp
 
   clocks:
+    minItems: 2
     items:
       - description: ufs link core clock
       - description: unipro main clock
+      - description: fmp clock
+      - description: ufs aclk clock
+      - description: ufs pclk clock
+      - description: sysreg clock
 
   clock-names:
+    minItems: 2
     items:
       - const: core_clk
       - const: sclk_unipro_main
+      - const: fmp
+      - const: aclk
+      - const: pclk
+      - const: sysreg
 
   phys:
     maxItems: 1
@@ -72,6 +80,30 @@ required:
   - clocks
   - clock-names
 
+allOf:
+  - $ref: ufs-common.yaml
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: google,gs101-ufs
+
+    then:
+      properties:
+        clocks:
+          minItems: 6
+
+        clock-names:
+          minItems: 6
+
+    else:
+      properties:
+        clocks:
+          maxItems: 2
+
+        clock-names:
+          maxItems: 2
+
 unevaluatedProperties: false
 
 examples:
-- 
2.44.0.769.g3c40516874-goog


