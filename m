Return-Path: <devicetree+bounces-253450-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9A9D0CFB9
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 06:21:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 482E9301B830
	for <lists+devicetree@lfdr.de>; Sat, 10 Jan 2026 05:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 249A7336EC6;
	Sat, 10 Jan 2026 05:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="edYNBsCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363E730E85B
	for <devicetree@vger.kernel.org>; Sat, 10 Jan 2026 05:20:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768022411; cv=none; b=MP6iXLjClbYvKJhbxGS+8+mkos9EthizUop0KsTtv8yDPO5T8Z+Ld1750V/sO7HCTQ+CwKqyyn5tXzOw7SIPx0LYEML22GKIWtl+1/3dYByhyfU7uPVXb0IWXkzN7kskr4BTTPKNTbNvERrdcpX4T0IZTHYzbOSHPV3tDtkrFN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768022411; c=relaxed/simple;
	bh=Fd0buc2DICUicJJxowP/3caVS6geQPw8Aog8chsWueU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=b/9rHAcGKRti8fJkUd8Ad94k32yXuRBYx3hgzdUdbpTLLUYxI0f/DhfHEoLXfG1DEwdW9b/4rB80CtPqY7Uhb7GyBHJy1OmoT3L1pjzwOQAFhRo0hwv655PSRnBbzU2rLDqDCCBrhcc1HXIdwxw7vc8xKDHY9cFcsfiRV91SjJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=edYNBsCy; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a07fac8aa1so36603825ad.1
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 21:20:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1768022408; x=1768627208; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qbchAZCHr5FOjLOm2QkYq+0AjxbAU/srw4MJShYSMvo=;
        b=edYNBsCyU4tEIIBzntm/ufcbYyMYjo0Lm4bW9rs0g/Dn+lGeV6VEghB6TtjZch5/ZY
         twBJDf0eNLJJahvUTiwniMFGQMRohc7xzModKV0rNKOUL9po6CiSiK6dDsmU5K2l7e1n
         A8YM59Z2yO9K6Qi0213HPvgh2lmGMEqW/bEbU0jZVOQ7fNdWnF7a3XTj83I9uXAiGWcs
         6YqcGNY4dFmlA29o/TcJ2RUTVfjfLneRd3uqBftRGcsUWQreVLqpzXaCuDtkASamXMlW
         mQBJsh8iD2sIsak6D97YDtx3E2zWS07wEqZhnHX8q31EqvtotpZHh7pwlZUWM04e6yjC
         59tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768022408; x=1768627208;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qbchAZCHr5FOjLOm2QkYq+0AjxbAU/srw4MJShYSMvo=;
        b=mdiU4TGDEdKQzhWYFJWM+gNYLDLprXiGsFOVP9JBBhaSXF7YmEpGTWVnsFOU6dn/4W
         yCPnB24YsNYrzmg9WQ8l27Je8VxYdMIfMakmQRzdPkJpaC03LXfvDTR2e6V21oEh9TrS
         wOC+8EdnyhK9levXM0BFct85UGXhJAOVVhTBqqExqsyWsHU9E5OhVwiGusadShhjGbF2
         4z4ALC0aQbgQGl0nmg6Yj3Vl8EngoebIflMTYjqsloKon9/liXm9CT3k647Q5KdMzBCS
         OqHiPpMFmuvlTYA7kk/37ZLvoRxPUPKR+Lvrqn/OHEq7UZ9JRfwxa/JVJlZbJqZpNApo
         3xnw==
X-Forwarded-Encrypted: i=1; AJvYcCVyYPcY+l/+gnekc3F1oKi045ZMeo324U+UVvox1QF/Xf09iB1yHgmfzYrCqmZLC/Cbgp1jR3QGCH8x@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5Yta6JxaC0jt+PestFVj/m5A8qLjGavaT2jIB9sXmKGFmuY33
	5Va1QiVpuZW+F2DDds/7MRzKAP1cpV37VIskBPdPl6ocgySzjqSbkRhsiq0D3zdthM0=
X-Gm-Gg: AY/fxX5nIo1R5b+hjmjKVMzBLCv+HCgYGXHyV10DmRDyMTBJfcpFm4gHHWhZFoSrghi
	WiNwE81/u04ZqjY0YaRgUBvdlckq3HBswHBeSE/RbNrqdOFAkjHIpwocfys41WYZxlZY9bgWMsI
	vb9PKJdd2r2QBUpYa1yaO7J0tkhURxDGaW41kV8Lk7X9ar7O5FpQLlNZDP+TUkMOoCUCUjpbLJZ
	E3MlrAlf6fkJMnXt9+rbXWjb3XztH4B6MNuB6ZUpS7MIkOxqTkTqjSW874P3xkQN8F14/IizYxa
	y9smvfWfVlbT3OCxlRj5vyFd7BrNuBK5oka6vL3LXJR9hS4mZvhd+EgtrJR4VzGEcEl4krpvWYk
	odCfaNzkSWM28No28zQTJmb+B1xX4ah7HhvV71YtxVWf78CQOHvLMZlCW51Y5ZtMW7KU3t/gGoM
	jaM1Sub8kNKS/mqP1cztwfBb1eALfp+QufJiN4USQ1+XPlceRK+v1ytA==
X-Google-Smtp-Source: AGHT+IE3azJw/I++SvkHmJwZU+zeSQFOA0tCm0OjoB2dGO96pk6muEXdu7wFCQPtmLiZleMZdyVjig==
X-Received: by 2002:a17:903:a8f:b0:2a1:3e15:380e with SMTP id d9443c01a7336-2a3ee4aae30mr108360315ad.34.1768022408419;
        Fri, 09 Jan 2026 21:20:08 -0800 (PST)
Received: from [127.0.1.1] ([45.8.220.108])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88cdsm118208265ad.73.2026.01.09.21.19.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 21:20:08 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sat, 10 Jan 2026 13:18:19 +0800
Subject: [PATCH v4 07/11] dt-bindings: riscv: Add descriptions for Za64rs,
 Ziccamoa, Ziccif, and Zicclsm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260110-k3-basic-dt-v4-7-d492f3a30ffa@riscstar.com>
References: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
In-Reply-To: <20260110-k3-basic-dt-v4-0-d492f3a30ffa@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Anup Patel <anup@brainfault.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>, 
 Yangyu Chen <cyy@cyyself.name>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
 Anup Patel <anup@brainfault.org>, Andrew Jones <ajones@ventanamicro.com>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-serial@vger.kernel.org, Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3

Add descriptions for four extensions: Za64rs, Ziccamoa, Ziccif, and
Zicclsm. These extensions are ratified in RISC-V Profiles Version 1.0
(commit b1d806605f87 "Updated to ratified state.").

They are introduced as new extension names for existing features and
regulate implementation details for RISC-V Profile compliance. According
to RISC-V Profiles Version 1.0 and RVA23 Profiles Version 1.0, they are
mandatory for the following profiles:

 - za64rs: Mandatory in RVA22U64, RVA23U64
 - ziccamoa: Mandatory in RVA20U64, RVA22U64, RVA23U64
 - ziccif: Mandatory in RVA20U64, RVA22U64, RVA23U64
 - zicclsm: Mandatory in RVA20U64, RVA22U64, RVA23U64

Ziccrse specifies the main memory must support "RsrvEventual", which is
one (totally there are four) of the support level for Load-Reserved/
Store-Conditional (LR/SC) atomic instructions. Thus it depends on Zalrsc.

Ziccamoa specifies the main memory must support AMOArithmetic, among the
four levels of PMA support defined for AMOs in the A extension. Thus it
depends on Zaamo.

Za64rs defines reservation sets are contiguous, naturally aligned, and a
maximum of 64 bytes. Za64rs is consumed by two extensions: Zalrsc and
Zawrs. Zawrs itself depends on Zalrsc too.

Based on the relationship that  "A" = Zaamo + Zalrsc, add the following
dependencies checks:
 Za64rs -> Zalrsc or A
 Ziccrse -> Zalrsc or A
 Ziccamoa -> Zaamo or A

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v4: No change.
v3: Update the commit message to explain the relationship of Za64rs,
     Ziccrse, Ziccamoa, Zalrsc and A.
    Add dependency checks.
v2: New patch.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index f671299ac819..345624326e9f 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -240,6 +240,12 @@ properties:
             as ratified at commit 4a69197e5617 ("Update to ratified state") of
             riscv-svvptc.
 
+        - const: za64rs
+          description:
+            The standard Za64rs extension for reservation set size of at most
+            64 bytes, as ratified in RISC-V Profiles Version 1.0, with commit
+            b1d806605f87 ("Updated to ratified state.")
+
         - const: zaamo
           description: |
             The standard Zaamo extension for atomic memory operations as
@@ -381,6 +387,27 @@ properties:
             in commit 64074bc ("Update version numbers for Zfh/Zfinx") of
             riscv-isa-manual.
 
+        - const: ziccamoa
+          description:
+            The standard Ziccamoa extension for main memory (cacheability and
+            coherence) must support all atomics in A, as ratified in RISC-V
+            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
+            ratified state.")
+
+        - const: ziccif
+          description:
+            The standard Ziccif extension for main memory (cacheability and
+            coherence) instruction fetch atomicity, as ratified in RISC-V
+            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
+            ratified state.")
+
+        - const: zicclsm
+          description:
+            The standard Zicclsm extension for main memory (cacheability and
+            coherence) must support misaligned loads and stores, as ratified
+            in RISC-V Profiles Version 1.0, with commit b1d806605f87 ("Updated
+            to ratified state.")
+
         - const: ziccrse
           description:
             The standard Ziccrse extension which provides forward progress
@@ -783,6 +810,18 @@ properties:
         then:
           contains:
             const: b
+      # Za64rs and Ziccrse depend on Zalrsc or A
+      - if:
+          contains:
+            anyOf:
+              - const: za64rs
+              - const: ziccrse
+        then:
+          oneOf:
+            - contains:
+                const: zalrsc
+            - contains:
+                const: a
       # Zcb depends on Zca
       - if:
           contains:
@@ -824,6 +863,16 @@ properties:
         then:
           contains:
             const: f
+      # Ziccamoa depends on Zaamo or A
+      - if:
+          contains:
+            const: ziccamoa
+        then:
+          oneOf:
+            - contains:
+                const: zaamo
+            - contains:
+                const: a
       # Zvfbfmin depends on V or Zve32f
       - if:
           contains:

-- 
2.43.0


