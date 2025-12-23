Return-Path: <devicetree+bounces-249118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4D3CD95E5
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:52:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 09A0A3009F2A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:52:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB86C3191D2;
	Tue, 23 Dec 2025 12:52:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="k08dGaJG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1E7B311C10
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:52:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766494367; cv=none; b=C5cHjqst5lT5JABhsLrW4lqQGsQlCvz6h1Bez0MxF2zUJQIpAYVtb/rK79M1WqKl7x4FvQJJDCRUOUxPzbE1NVKyf8ztP1FTGtjBT9iy9ETKxsegUoev3ZW9usIpNUV8G8uFmhsbtzx2zJVYzdJ3vczSVPBHdU3jiR2LoayybJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766494367; c=relaxed/simple;
	bh=sbn5jFid8qTIn6LTCCz8XkrH5sCEjaVDdQyakXfJPHs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Pr3jCBkceL9NTnIvBjcUdhWYUzWFNtjx1hNS7iJ9ajZPFtdDPUzhlVA/y+8H21oBEboXNuRfbm20WwbFMNPwbBL9wEt2yI0TS0JDBjnk+AAnVXXAQaiwXNl7jifpNcw/UScaAyI+wll7AJDvHAF1XHkxD3UmEmYp4PWix1/C6m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=k08dGaJG; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0a33d0585so46854115ad.1
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:52:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766494365; x=1767099165; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KUft/djecL/633yjqFPHb2fTczKMYiorjO+DCBYlTTw=;
        b=k08dGaJGujPE5RiYesDD0E04xYxPmjAY21ZWpyBy9V6WHYfyFetfcijuKKX/eW00Gm
         MII6OWZaSbtGsZj6O3AZcRpVpGzhob+5LZcKDXUIUHl1ihqMYlpB6ekLGl2vP7hYVxrn
         o1iH7uYduSBFIq+7qH+0mhmcY7p+0WDkr2QmHBg1ioMzgshPhgj/lEX2bRExEMXfU6mS
         fmMZi8gsew87ZRx5dl7ixDxAbTDYjEzty15Y+Wc69Q/plNYUs9OYhanmuSBoDTDsmvin
         tfeZK88hu7vfcH5wu1bjoiaBSILhKJBkdXrcB51N+zgTq4dGw/L9grQS2dR+grPWjf00
         ANhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766494365; x=1767099165;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUft/djecL/633yjqFPHb2fTczKMYiorjO+DCBYlTTw=;
        b=IaGfPpQmRobhn7zVzJOxSdQfgzqB1YP761N7TRCaPdr8bykognTzlC8fjVEL1KZfFy
         3l1MMmxu8bVNXilkv84UozR4qnyUQKDfm/n4sKDO1DQ5DIw3ACAQCpkjgOuZ6ofYcxNd
         jwvAuYfqk+cU8KVVAyEFlopHec0/7N2Pmo6OYXeSBpr6YcEJ5JcxtFszseIqLYs2DJ2u
         1FnBA8l9AlRsdvrtrjktCev9fB859JJusi2rk6mbqvugElxrnqFHHNVVoRVPWHL9sISB
         sksPCTkT1zgD7rtXggqdZUSG5GVnQkmPiDHd3V3wPOCB8qq+KuWE7WM7epzcng41w/Yc
         /iEA==
X-Forwarded-Encrypted: i=1; AJvYcCWzbTkFWIxRoLkQKhsoZ79lP9kdoQ68kwav3Zer+3H2nRVrk8lydv3+r3D1rPEiJkGUrGunsNdN3/OP@vger.kernel.org
X-Gm-Message-State: AOJu0Yyta6Yhm6z8D++qY/xSiNKj3GxCR75zgpQ1OYhruHxjNQtgX3b7
	rvKLWf5/DSetEK1kEceQ/LFwlX8lswcLAQ+M088xsaWCLNJMutUnidPQc1xFshUyOIY=
X-Gm-Gg: AY/fxX6MsZq9/29e/YhsoA1814J5FzhlZVkRC10ln7sUA+Do7SvWHlR/dowu5XkqaTN
	W1OkTvpyUmO0EQBPCbFYm+42Nq7nWz30g9pODF1UfezxDIevLfOZbKvPhuUeFcazY5n0fkQdFY2
	bTX9P7OIl/tEQdWsYv8wPNdNxQIR2veVyttYpm1mWdKt3GxqEEDXnZWKuzo5Qfg8NePIsCtuiG/
	9CWWw443Ry2WPOwCwMezE3Trz9onmLedaO4P/1RJQFgiCvRoX7vUSV5/Q7g7LXS7cy3JBOEkzdC
	6/I0n+97p1sYxydAK6YF5dCCKJd0w+2dInP64IAIWhP04kBeaUgnz1jRWLkONanwu2DpRfO4TfI
	tEzJsVexFWlH3SV5VLnT18YGHcG33lPRhUinZdtiZP4QPtC9GivmfLkuuUdsY7rrbxoG8FrzpgV
	/ibuW1rvR7zCFtNUPekt+gikmuN/TdeZo=
X-Google-Smtp-Source: AGHT+IFXXeWneJLmEXSTz/XeUq636FEGDnRNwLIerGkMy48rLshAsmW/d1IdhfLR6XjRug2K5XkhRw==
X-Received: by 2002:a17:902:ef52:b0:2a0:dabc:1383 with SMTP id d9443c01a7336-2a2f22234a1mr170426955ad.14.1766494364842;
        Tue, 23 Dec 2025 04:52:44 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::402f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d4cbdasm128789745ad.65.2025.12.23.04.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:52:44 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 23 Dec 2025 20:52:24 +0800
Subject: [PATCH RFC] dt-bindings: riscv: update ratified version of h,
 svinval, svnapot, svpbmt
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-h-description-v1-1-98bea93b0919@riscstar.com>
X-B4-Tracking: v=1; b=H4sIAIeQSmkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDIyNj3QzdlNTi5KLMghKgSl2jJMvElLQko7RUizQloJ6CotS0zAqwedF
 KQW7OSrG1tQB8jjB1ZAAAAA==
X-Change-ID: 20251223-h-description-2b9adfb2fe8f
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.2

The descriptions for h, svinval, svnapot, and svpbmt extensions currently
reference the "20191213 version of the privileged ISA specification".
While an Unprivileged ISA document exists with that date, there is no
corresponding ratified Privileged ISA specification.

These extensions were ratified in the RISC-V Instruction Set Manual,
Volume II: Privileged Architecture, Version 20211203. Update the
descriptions to reference the correct specification version.

RISC-V International hosts a website [1] for ratified specifications.
Following the "Ratified ISA Specifications", historical versions of
Volume II Privileged ISA can be found.

Link: https://riscv.org/specifications/ratified/ [1]
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
I'm not sure the 20191213 version has been removed or there are other
reasons. But since RISC-V International is the official source for such
documents, I think the version history in their website should be
respected.

I checked two sources about the history verisons of ISA Volume II Privileged:
Link: https://riscv.atlassian.net/wiki/spaces/HOME/pages/805568665/The+RISC-V+Instruction+Set+Manual+Volume+II+Privileged+ISA#History [1]
Link: https://github.com/riscv/riscv-isa-manual/releases [2]

There is no 20191213 version of ratified privileged architecture in
both.

Actually, in version 20211203 of the Volume II of prvileged architecture, it
listed the following extensions:
 - Svnapot Extension 1.0 Ratified
 - Svpbmt Extension 1.0 Ratified
 - Svinval Extension 1.0 Ratified
 - Hypervisor ISA 1.0 Ratified

That's the first time the above extensions appear in ISA Volume II
Privileged Specmification.

The version before 20211203 is v1.11 (Version 20190608-Priv-MSU-Ratified),
which contains only a draft version of Hypervisor extension, and no
mentioning of Svnapot, Svpbmt and Svinval.
---
 .../devicetree/bindings/riscv/extensions.yaml         | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 565cb2cbb49b552959392810a9b731b43346a594..6a4697b36b8d540ac14bcad6373ffcf3db13d3c0 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -117,8 +117,9 @@ properties:
 
         - const: h
           description:
-            The standard H extension for hypervisors as ratified in the 20191213
-            version of the privileged ISA specification.
+            The standard H extension for hypervisors as ratified in the RISC-V
+            Instruction Set Manual, Volume II Privileged Architecture,
+            Document Version 20211203.
 
         # multi-letter extensions, sorted alphanumerically
         - const: smaia
@@ -202,20 +203,22 @@ properties:
         - const: svinval
           description:
             The standard Svinval supervisor-level extension for fine-grained
-            address-translation cache invalidation as ratified in the 20191213
-            version of the privileged ISA specification.
+            address-translation cache invalidation as ratified in the RISC-V
+            Instruction Set Manual, Volume II Privileged Architecture,
+            Document Version 20211203.
 
         - const: svnapot
           description:
             The standard Svnapot supervisor-level extensions for napot
-            translation contiguity as ratified in the 20191213 version of the
-            privileged ISA specification.
+            translation contiguity as ratified in the RISC-V Instruction Set
+            Manual, Volume II Privileged Architecture, Document Version
+            20211203.
 
         - const: svpbmt
           description:
             The standard Svpbmt supervisor-level extensions for page-based
-            memory types as ratified in the 20191213 version of the privileged
-            ISA specification.
+            memory types as ratified in the RISC-V Instruction Set Manual,
+            Volume II Privileged Architecture, Document Version 20211203.
 
         - const: svrsw60t59b
           description:

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251223-h-description-2b9adfb2fe8f

Best regards,
-- 
Guodong Xu <guodong@riscstar.com>


