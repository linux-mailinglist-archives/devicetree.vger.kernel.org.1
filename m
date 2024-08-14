Return-Path: <devicetree+bounces-93532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 58027951653
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:15:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 93BEF1F234BB
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 540721422AB;
	Wed, 14 Aug 2024 08:14:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="LiVEdjqX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D36C514037D
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623283; cv=none; b=mL31a9CZ5nqkULhWadV4c4rCCnPuGaENYuz5mpsv0Xmsdu0AG7EQWrHCZYF4xpGjcXGjP8ln2Ps5aUiHgT1CgSE8yen5x7D7+j01NobdPVhNK9uCtl5wcRgKOsPtBc5dNcjtWXBTMxKx3loGcm6gjvaDtkv65AayIvx27MFnoas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623283; c=relaxed/simple;
	bh=uaXpZ8T6fuFcxXdhqz/JMbIh/uBMat6GBVL1nnkcRS4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kndzv60eAODq+n6ysxHX2eqJpfdX0N25Em9J4oHZUkEsjPL4lIPE1dCsHsTPX9RwjsIK6i8BZhgybXiIet52OwekAnxXQ6Dlpz1N+BrQ+9zBaSncYIOHOkvi9uv++GHtCH1FZoxFgQ+e6YpZ5LG41tZHYq67wmguhGNsbz/JHCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=LiVEdjqX; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-1fec34f94abso55171515ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623281; x=1724228081; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C80mIDHR/SSEQvshL+evnKrl0xyN36hJKjVYwlCZpxo=;
        b=LiVEdjqXl+JVvSel27rzjPvSYvG4AGcWS/cO7mTvPNAiQLZ1DE8E0bU2N2B4WGX45p
         HjsqGZYz3lSMzDY38kb5wjWelZ49YQ+Nu7T3HU5NKlhssHzMh9jMcoYyMSsRP2t9iJ6t
         vrmwnqhkF16fx5/peQMa4CpNNFkH/CIzrRUGN3bv+k4y8XYdmqVxFwI3Bl0M+ATba/hG
         HCwW8Z4oqy5qzZM9H48v+lnBL4SEIhEind43v+ZdECFL7JdIzzlLn1hjA+Lu25C5cnRv
         KyNrQhqb1yID6da7kj7hzBR3LympsG9zrhi3Zbyd6epvVrtfpZUZkkxqkF3tYf3VUYJB
         Um6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623281; x=1724228081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C80mIDHR/SSEQvshL+evnKrl0xyN36hJKjVYwlCZpxo=;
        b=h0771uS/XDxpnz6ZIGqVxB0OZ9tGeUJqQqvpj+iXUWYIj2MIz8LYpS2RthV4YQiJto
         8DQNFIFAb6eWnrFglAVd45B2MTH0+4i7aDpC9yPlk0LbvELtcZCg7sc2aAu+UTg0znOB
         ftODrzvBB6esEJDxUIPdWDmMxQXHlPmtNKXyBkGcQFKd9M8NpyYuutumXA2vlKhQeXit
         2jkIA9pqSyQKJm1fdaRSCbasAbXUP6EAMQ7OO+B3ndE34uCHa4tMWGMVP9UpUOSY9/jx
         JKHY4DP51ROw85IC61nmimDPD3g1o91GEn1a+JXTirBOsBOf6TyiKxtIv1q+41C0nO/e
         0L6Q==
X-Gm-Message-State: AOJu0YyDdqB0/4bG63FClYxVHe9S1MhLhBG8K6neh9rh9Dh9f9VQynZi
	bp9eYzU0BuFU3CYsS5AhXEebO4RXzuZehtIklF63mXGFx/lbGQMyYQt3Sl8u6kw=
X-Google-Smtp-Source: AGHT+IGWd5aALk9iRQYfLQnu0uXb0Y/OpPlLQY90AVj4YNjDUrUlwY/SjzwpqXSSLSWsurvD0nsz1A==
X-Received: by 2002:a17:902:ec8a:b0:1fa:7e0:d69a with SMTP id d9443c01a7336-201d64b1542mr20521085ad.46.1723623280985;
        Wed, 14 Aug 2024 01:14:40 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:40 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 01/10] dt-bindings: riscv: Add pointer masking ISA extensions
Date: Wed, 14 Aug 2024 01:13:28 -0700
Message-ID: <20240814081437.956855-2-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240814081437.956855-1-samuel.holland@sifive.com>
References: <20240814081437.956855-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RISC-V Pointer Masking specification defines three extensions:
Smmpm, Smnpm, and Ssnpm. Document the behavior of these extensions as
following the current draft of the specification, which is frozen at
version 1.0.0-rc2.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v3:
 - Note in the commit message that the ISA extension spec is frozen

Changes in v2:
 - Update pointer masking specification version reference

 .../devicetree/bindings/riscv/extensions.yaml  | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a06dbc6b4928..a6d685791221 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,18 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smmpm
+          description: |
+            The standard Smmpm extension for M-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
+        - const: smnpm
+          description: |
+            The standard Smnpm extension for next-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
         - const: smstateen
           description: |
             The standard Smstateen extension for controlling access to CSRs
@@ -147,6 +159,12 @@ properties:
             and mode-based filtering as ratified at commit 01d1df0 ("Add ability
             to manually trigger workflow. (#2)") of riscv-count-overflow.
 
+        - const: ssnpm
+          description: |
+            The standard Ssnpm extension for next-mode pointer masking as defined
+            at commit 654a5c4a7725 ("Update PDF and version number.") of
+            riscv-j-extension.
+
         - const: sstc
           description: |
             The standard Sstc supervisor-level extension for time compare as
-- 
2.45.1


