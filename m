Return-Path: <devicetree+bounces-157443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 12787A60AEF
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 09:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FFEE3BB6F2
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 08:13:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 126B5194A75;
	Fri, 14 Mar 2025 08:13:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="JgJckKZm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AB16194137
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 08:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741939994; cv=none; b=LpXEqeJlcpUHsyV+4coAxTeE8PGFV4iM7r10DJRjGBJQ7z7rfWbed6d970DgnfWLJkpxEFLkuToEqlPfC6kuxWEmLmanhb29NwB4ZREf40q0pTgNhdNJ/O+4DLuZlfbTjWy6O+HogzfgcHX7tf4/l+vnKzCwTR5qqMfXFE+O6GQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741939994; c=relaxed/simple;
	bh=aBoaIA8pL5dPRNJ/NbTzYxXHLL9HdGISKk2JuLHQGXI=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Nuq+ZRrM92iIgvxw8k74Fte4OxOHiAYMjczQ2QKT+z6lTNNHwJ/rD6Xj4IOS0vpNm2Kqvune3K5+H9tOwZGTDeaviLOLY1DzjyvXPO845KjlCQC5KgcwPYPdEeliN7Z3VQrgOeEPaxc/kNjde70M1uNmfbiNPQFbXcoz6gyOdv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=JgJckKZm; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ff187f027fso3378415a91.1
        for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 01:13:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741939992; x=1742544792; darn=vger.kernel.org;
        h=message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mIaypJwWB+9Cndggia9exzQ6t2dGjEXmye283vVYlI0=;
        b=JgJckKZmSp2AP6KqwvTSkWxomm/g8Ffk/KsLG27YD+8UwrApDIo0lX6Q6dFNRdNOXf
         2Jk4tlGPaBqeJlamdzvvAdYDXjQobXRBQojHAcet0whmJd+IdOwXInPjMO11CFveN6Ub
         md54E/rPe884+II3J9ZI47FIqFXYUHT9KA5vhMQn7btqE/UN5P+bRgtrv+7Gm4JfNgjE
         3V0sTIUA0sPKFsmWSUV4LvROY/4btpX/s6S0W7S8BLBCTLjdFyP9rdn7QCAjcrTPMj+l
         bu6WTG/YUXCdGTa/WceijqlxcfN4mk+5lKLCzuRz3m8sTVMW8UbiEKuYatIKWv5lXF28
         QDvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741939992; x=1742544792;
        h=message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mIaypJwWB+9Cndggia9exzQ6t2dGjEXmye283vVYlI0=;
        b=IwzFCJknA8BengI97NRmXCTnCzP0ndp1Bu4kTjrENRMGO/belIZCrptb2XDdV2T5KH
         hoXoyo55W8eqp7yRgfWqHguqnf1wgQngfJ+mLy9YdArzStSawFU28haTc8Hj0iWn0BtY
         esYXfyKcxKzNmdROCmKmOH7em4XgK6n3XzbaiWk4xmJWTq8EvL0o1i5CD4Sy+Y4TznYR
         ya27f1k/DDDDZB7p9+TCHzWN6QCl5XpXZMc1Qgn3UkyK/O2A5SZPci6CpnyJbY0fj06L
         hL7NynHQC/Enkkuuw1chxl8TQ2z2WChE9otcsBFlyYYsza2Wxz7mvM5lQVuY9VGcDAXH
         4v0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWSIizwNo4hU+DseeozICizxM1EHi4+RjK3A1djp2P+wwp0bYj5tEIGq/tCIWdAiIBQBH36qttcw9vn@vger.kernel.org
X-Gm-Message-State: AOJu0YzX1VQSQUZAi6FdVHpO3KWTCyJeLaiYWcQfE6sMBeusy2EwPvjr
	kG2asgkS7yN1ZTaVW3FQ9BCtvBRKYCKoFY50xxjlSM2xIcen0J5yd0kuupyL4pA=
X-Gm-Gg: ASbGncuTLiHBJQZIJQ43OO71FjuIFsTQ0wOEGZnpXaiJT9DHcISDhQHnLJHuKV07P3w
	lJO4IJb4OzaEoVYac7SXfNoCZU1tuEULMM0LdPqo12uun64HW1uG+LGZq2/0xlhqB9FaWbczf1Z
	/gsp/DHNv7DBsBqBUVZlX6GIIbwh6nC8Sz8p0IZWl1Fsc1AANw0WzfTvotDELDyEGqmtfuXI3Or
	RBWAzzraEZToE+Mn+2YrRhFa7eBRaEH+G+CGerJORpgnyK2hMFWagDluIZcY8CRQK6lqHRs8qqM
	k0S1fWejVzY63gDx2cK8+AtikiJb30mn9Is15aRejhJ/pz0i/oqt6uYySJujuNv3aFg=
X-Google-Smtp-Source: AGHT+IEU8f9gJD9fpGi0dkqDON/MFDwlzwvX7/+G8p0jqw7GozR3XpJHe76R/qoNe2N8VD05r7VjlQ==
X-Received: by 2002:a17:90a:d003:b0:2ff:53d6:2b82 with SMTP id 98e67ed59e1d1-30135f4e5f5mr7721021a91.11.1741939991712;
        Fri, 14 Mar 2025 01:13:11 -0700 (PDT)
Received: from hsinchu26.internal.sifive.com ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3015364ec2bsm611920a91.46.2025.03.14.01.13.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 01:13:11 -0700 (PDT)
From: Nick Hu <nick.hu@sifive.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>
Cc: Nick Hu <nick.hu@sifive.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v2] dt-bindings: timer: Add SiFive CLINT2
Date: Fri, 14 Mar 2025 16:12:54 +0800
Message-Id: <20250314081255.3718-1-nick.hu@sifive.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add compatible string and property for the SiFive CLINT v2.

Signed-off-by: Nick Hu <nick.hu@sifive.com>
Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
---
- v2 changes:
  - Don't allow sifive,clint2 by itself. Add '-{}' to the first entry
  - Mark the sifive,fine-ctr-bits as the required property when
    the compatible includes the sifive,clint2

 .../bindings/timer/sifive,clint.yaml          | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
index 76d83aea4e2b..4b9dad11c1e9 100644
--- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
+++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
@@ -36,6 +36,10 @@ properties:
               - starfive,jh7110-clint   # StarFive JH7110
               - starfive,jh8100-clint   # StarFive JH8100
           - const: sifive,clint0        # SiFive CLINT v0 IP block
+      - items:
+          - {}
+          - const: sifive,clint2        # SiFive CLINT v2 IP block
+        description: SiFive CLINT v2 is the HRT that supports the Zicntr
       - items:
           - enum:
               - allwinner,sun20i-d1-clint
@@ -62,6 +66,22 @@ properties:
     minItems: 1
     maxItems: 4095
 
+  sifive,fine-ctr-bits:
+    maximum: 15
+    description: The width in bits of the fine counter.
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: sifive,clint2
+then:
+  required:
+    - sifive,fine-ctr-bits
+else:
+  properties:
+    sifive,fine-ctr-bits: false
+
 additionalProperties: false
 
 required:
-- 
2.17.1


