Return-Path: <devicetree+bounces-252805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC005D04A20
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 18:02:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35D0132D1801
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C26F444D68D;
	Thu,  8 Jan 2026 12:27:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="TUvoujhn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1A844D688
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 12:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767875248; cv=none; b=XCGUHp4ioneELIUVBkvJEBKWO1Lb+3jccku2J5cKlcmNsUx/1SqjTjp6nbRvOi4YICgzffshInM+28Qo8u3dtCQRzhjR/9rAFNI8+FHgfj+MzYLHnNQJ/OXBVVmqGXHmNkaAjNvvKFvbY7EVYo10bdSj4L3Nzh5Pu9nq7+zn3SE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767875248; c=relaxed/simple;
	bh=b3TbBB/uGCPBAgc/CZlMEVAVW/g+2p73yz3LsGsKSkY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GnEiFjB3lB3GxmSD7k6MOfQpttA1ogrzI88hw3tVIS7U+/yn0/uWAagGBGZl6BYStLL9OVidGGOXG+etBcK+CI9gME77EMKT+g+dadEr+vDtF0D0qYlqnQjz0WzrHlS0UTpGlqdLvh/bkWx56CWU4FyxV/yxdsForDAwyr1aZUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=TUvoujhn; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7ade456b6abso2123633b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 04:27:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1767875246; x=1768480046; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mwaC+shKtPHF9hxjazt9bdYtYDRjr/r6esw6vyxkzGA=;
        b=TUvoujhnlkMtGmNTOP3kcbLm1pREmIfmQp/DRS/7OVyeKG3Lsu9ASlDiwj3iolTHg2
         vcXV8+NCPzRdZgI4d3iiSspf8Y+Ir158msuYqvPOwgqx+DBbhAToKYSNUe/uMg9QK0Kp
         V2tUQzGNcJPzJPTuEVZtR5cvtjEc1iLEQhNlxSydw2btmZw5MjpDV/igLwrsLvk1lJ0U
         Dlncw5BQ0Bbgymgec/bevPwPV8q2RkGXwWndsozYOLoIn5zkc922Nefh6mRwpMM9x3UH
         fqKbgPNpkpEGddFdbOrVqzHPnC6v5Bv+bPtOiHg2gBci4AMPd02/u6aTXa5TkjxNSk58
         fg0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767875246; x=1768480046;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mwaC+shKtPHF9hxjazt9bdYtYDRjr/r6esw6vyxkzGA=;
        b=o+UyZ5EZdJlF/6tfRZBXR+3eEL3D/eW4z36cEVf04wykFjkqJNWk/oq09wXMsOuzJ5
         jJAxAoEWj19f40ZC7PvBVuf3dK7DgD4NCy4abnXS697PCby9mXhkKPykQaw+5PGbjso5
         KD+glAgALvjHpnbGglzfK9ui66ZaICvfCx1XrHt6zsw2O0SI0EMQuTMbQNMzJ4H9BCHH
         4VcPEn84oFyPV6qkviRqsc9bJ2wZMI8cSfL1lPxmSrP7VlmlEQeQ95wQMsDseWrL1yic
         ZQIf8xdYYu42kulaDrzF++lgRGuk7GAVis9Amxvk412O6JcK0XL6ZNJZ3IIYWqeiN2c9
         aWlw==
X-Forwarded-Encrypted: i=1; AJvYcCUZwVrAGLHKmP7EXKHBkSbwg5Bj33DPnu+cxxH5CVV9GoCBiXVws+9XwmTXfk7lfZExAArXFdAkQyBo@vger.kernel.org
X-Gm-Message-State: AOJu0YwAv2IwoFpBabhHhfgmyKkAeidDdLCVcwq45lyIBeQJ9//yy12+
	/zk28MgVe331ISZNiAIBsy5F/ajC5ia+/J1KIND6wMXDtAnA5edrdhchGyWlTrZfzxE=
X-Gm-Gg: AY/fxX703am6gr7CmTXjxribxlYMINjrsnUPAhZPQbSCJLUuHvr9xiIjz+jOZ2cfOmF
	TYccOFVdNi0FizV5u6HFotQX+odrctaksJEtcO3AmMoLbOXELvqtRWSQC3qP8hq3hiDhmTKyXtv
	QFL5rtrWOT22sRVvaHc/vS1OWFfP8+fh02B4ebzQsOe42OeO8DJymchBa91UR8y7NCbwrjsu5l3
	syFPDUkqfrQgjPHDVOLDsuloySrnbVPCVRCSEUw0+11WPjwZ4sjngUSdgjbwcJtW+rU44GWtWQc
	TsHTU8UTAmdnBv6/7dgBxQYrqy10mFcpvDONcHij6TLM2iKBoBPnO+f0xEx6sVRKTQdEzn1/0TQ
	4Ulp85/y6Oy1NOy+WHjs17fGA3XoxXhUzOtgNw5OnkP45WWqv2meMn7eDZLS5XJIvsqUaFrBmfv
	yPg0uqSJ2SBsriz1kaZ9h6bigmhNFDl0gYLBaAIHdKEA==
X-Google-Smtp-Source: AGHT+IGhCCDZv7bjh6IErkPehfJ2jVcvReECzkxUQUoLDLwfeIJZYdhcoUvkJgdrBLVOE06Ipe/4/g==
X-Received: by 2002:a05:6a00:1bc8:b0:7aa:ac12:2c2e with SMTP id d2e1a72fcca58-81b7d8563a8mr5548416b3a.25.1767875246380;
        Thu, 08 Jan 2026 04:27:26 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::40df])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe991dsm7656401b3a.16.2026.01.08.04.27.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 04:27:26 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 08 Jan 2026 20:25:58 +0800
Subject: [PATCH v3 07/11] dt-bindings: riscv: Add descriptions for Za64rs,
 Ziccamoa, Ziccif, and Zicclsm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260108-k3-basic-dt-v3-7-ed99eb4c3ad3@riscstar.com>
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
v3: Update the commit message to explain the relationship of Za64rs,
     Ziccrse, Ziccamoa, Zalrsc and A.
    Add dependency checks.
v2: New patch.
---
 .../devicetree/bindings/riscv/extensions.yaml      | 49 ++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index e026b366c8f5dbe7d6988d3ed374183c165de35a..ee2cdd3856b91a5bbf486e8a2da0986269e82a2b 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -237,6 +237,12 @@ properties:
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
@@ -378,6 +384,27 @@ properties:
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
@@ -780,6 +807,18 @@ properties:
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
@@ -821,6 +860,16 @@ properties:
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


