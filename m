Return-Path: <devicetree+bounces-252806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 63591D02DAC
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:08:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3D861300009C
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A06B466238;
	Thu,  8 Jan 2026 12:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="u5CAiVRa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com [209.85.210.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A18461C5F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:27:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875261; cv=none; b=oJlR/m5d7q01Yp8+UfbNFAi2mt9bNGO6XJ8rX1UF84uEQ85vIwxURhp9AIaWRPgYOQdaOaZXwYKc3uOBatPQ7I0JmpnVgx/jPzqLMKQaCdVK7DfS+LATen2aRpKaskQK6wWmeZA5g8gY9OvZyrMxn1OdB94EuR3X5HhEr01PK38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875261; c=relaxed/simple;
	bh=bv9dzoM+qQXP0CaPNIJAe0gHl9Bs1Sb05T0zGPjfK/0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bw+OhnPUqDJy0aelBy2Ko7sPIEKAdZ6lfWDCY6+kVLCb/yQyxd83gSvTGzByiHK3xdjCpx95akoyM7VJjiv6/KtDXRn370qZp6Ct248/f+c2Yp1JpD1QqKTCx201kJlHl5922J7kh6jjOZdnMlnCROTpgUQw1paOf+Sw+yTD9nU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=u5CAiVRa; arc=none smtp.client-ip=209.85.210.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f195.google.com with SMTP id d2e1a72fcca58-81db1530173so18315b3a.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875259; x=1768480059; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FSlCL63bjlWI7Lu3zwai0kdDlIJMrGyFIXeM2/6yxPg=;
        b=u5CAiVRau9oiXaKliRSTVDdoifngezTNqIFhNdz8ujuOmKCFsCzKQu6s0hJMyaBiwS
         reiRU7wrIMoF4zTCdlwyrw0xaV1RU77EYzh31z09Mus2Vc1PLuEZP2GWIbl14HeJpuuJ
         kkCcwOoTCRpZe6WDfOBUZNh14S2k199yciH8Il2/jNOmJu0wNRep66RwzDvqhjD11TFS
         v1SM6X2FIvBT310zs5EOEOlbCnjsRq2CNrXLAtWaJfFuTPBtOVKbdjedMvIDky0u9rUV
         SD/z7m5bV0ALb+ekMuOEeL0nVQc1FB5RlmYhhV9RrS5nuD9PowHHe3dg5hCJfz88lrOq
         nXXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875259; x=1768480059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FSlCL63bjlWI7Lu3zwai0kdDlIJMrGyFIXeM2/6yxPg=;
        b=juwg7j19HMRuXON4hP+R5nAHy8IGR8PNticAQzSW5QJjg0NsRGtgc8tIVGnS0pGjtc
         mOuxE1KD1/0GGqjt8YF27GiHTPrapb7WSA2cv0aa+MD1aTDMSTPLzLBBx8PplilO9hKg
         QfgrHyZkDCDs24PuGjjviPMwhy3EERLb3GaUvzOcerZCr+BhT9vu82seExpUgFpbLOxw
         fXRgq6MDWWfD1NgFxqa5lN//VO1xobsFxXWCs53ZS+4axc0n2Vwo8vnlgjT7CavZ5Gb6
         sa553VMJ15sEHf/j6z48kd52c812Fu9q3fK+kjeI5pvsQUx5f7sg5+MztSwV44bL1qWX
         wDvg==
X-Forwarded-Encrypted: i=1; AJvYcCVKocBBAXIdceu/KJtlNJ4wWYM5OtOTU5umcOqM/v7YWCnfekBilC4Zuof+BzlIkNjuPXT+HFBj2oWF@vger.kernel.org
X-Gm-Message-State: AOJu0YwZjIulyuyffXdUrXsoGIS/+G1lLqAqSsdJpWQe0hfXe8KiTZGA
	JAEkHBeo98du79GHPZzg7/OxPXytIbTC9fjvSKx9TTO60Z/OiMbI4ivdAodfstr/fSo=
X-Gm-Gg: AY/fxX6LU/RkaNws2Og6vF1ayw7xBcIDvgLdt7afe7gS89VpsLgYGBIUVz0NS8aTHBO
	hGKaIw2/hrNq2UmqM/waCd7C1yPoUqye1iijlrJyzRQ786rHpqo2hZGwTA1c/e/BP9KmP7CjpVP
	d4f8UrkXUnp+pew55y3kPnGfguAwSdugrQWx4Z/UOz59ZRsleoXPft8Ox11tmddQ6Xf8uQh1PMB
	TDwceUAQLox+mCwyocJZjzYlhXl+IywkFj4usXGgHgg15qSAjQG79chP7/VRluZooaG6aF5m6xK
	a+jkHOiQ+7KOA5q6fD8Y4M+XvYrv048tAczYnShwMXn//byDymUIYmACHjSx997BYc9py7Io6Ew
	Df5g4WWaxX7mz/Ls6LTb/sHKpd5zzwYXcEzAKF7eynnJ59AK6S8aP7TGZrxLxTynadlsNjNdEfS
	rwd62G2Gto9hs4BXRnWDgh6GaF/eWa8Vuu0IORR6O3Yw==
X-Google-Smtp-Source: AGHT+IFkYm2SREYy+7WJ7uAuLhJAJVWSuC3ES+DlILkoTqpUr0EQ9J4ASyAuPfOv5z6+UGv+JulmOw==
X-Received: by 2002:a05:6a20:3ca1:b0:366:58cc:b74b with SMTP id adf61e73a8af0-3898f91d2c1mr6221633637.21.1767875258815;
        Thu, 08 Jan 2026 04:27:38 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:27:38 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:59 +0800
Subject: [PATCH v3 08/11] dt-bindings: riscv: Add Ssccptr, Sscounterenw,
 Sstvala, Sstvecd, Ssu64xl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-8-ed99eb4c3ad3@riscstar.com>
References: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
In-Reply-To: <20260108-k3-basic-dt-v3-0-ed99eb4c3ad3@riscstar.com>
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
X-Mailer: b4 0.14.2

Add descriptions for five new extensions: Ssccptr, Sscounterenw, Sstvala,
Sstvecd, and Ssu64xl. These extensions are ratified in RISC-V Profiles
Version 1.0 (commit b1d806605f87 "Updated to ratified state.").

They are introduced as new extension names for existing features and
regulate implementation details for RISC-V Profile compliance. According
to RISC-V Profiles Version 1.0 and RVA23 Profiles Version 1.0, their
requirement status are:

 - Ssccptr: Mandatory in RVA20S64, RVA22S64, RVA23S64
 - Sscounterenw: Mandatory in RVA22S64, RVA23S64
 - Sstvala: Mandatory in RVA20S64, RVA22S64, RVA23S64
 - Sstvecd: Mandatory in RVA20S64, RVA22S64, RVA23S64
 - Ssu64xl: Optional in RVA20S64, RVA22S64; Mandatory in RVA23S64

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v3: No change.
v2: New patch.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index ee2cdd3856b91a5bbf486e8a2da0986269e82a2b..78b75ab0a473b60508f72fc30d4809a797a2c40a 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -160,12 +160,26 @@ properties:
             behavioural changes to interrupts as frozen at commit ccbddab
             ("Merge pull request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: ssccptr
+          description: |
+            The standard Ssccptr extension for main memory (cacheability and
+            coherence) hardware page-table reads, as ratified in RISC-V
+            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
+            ratified state.")
+
         - const: sscofpmf
           description: |
             The standard Sscofpmf supervisor-level extension for count overflow
             and mode-based filtering as ratified at commit 01d1df0 ("Add ability
             to manually trigger workflow. (#2)") of riscv-count-overflow.
 
+        - const: sscounterenw
+          description: |
+            The standard Sscounterenw extension for support writable enables
+            in scounteren for any supported counter, as ratified in RISC-V
+            Profiles Version 1.0, with commit b1d806605f87 ("Updated to
+            ratified state.")
+
         - const: ssnpm
           description: |
             The standard Ssnpm extension for next-mode pointer masking as
@@ -178,6 +192,24 @@ properties:
             ratified at commit 3f9ed34 ("Add ability to manually trigger
             workflow. (#2)") of riscv-time-compare.
 
+        - const: sstvala
+          description: |
+            The standard Sstvala extension for stval provides all needed values
+            as ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
+            ("Updated to ratified state.")
+
+        - const: sstvecd
+          description: |
+            The standard Sstvecd extension for stvec supports Direct mode as
+            ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
+            ("Updated to ratified state.")
+
+        - const: ssu64xl
+          description: |
+            The standard Ssu64xl extension for UXLEN=64 must be supported, as
+            ratified in RISC-V Profiles Version 1.0, with commit b1d806605f87
+            ("Updated to ratified state.")
+
         - const: svade
           description: |
             The standard Svade supervisor-level extension for SW-managed PTE A/D

-- 
2.43.0


