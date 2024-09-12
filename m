Return-Path: <devicetree+bounces-102237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2479760AA
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:56:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9195D285535
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 05:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85BE118A6C7;
	Thu, 12 Sep 2024 05:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="1UTbr/Y3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 009D3189530
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:55:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726120551; cv=none; b=KBmElEp7Bdr6gdxeiBBV5djhIX5KKU8u0E5bS0bMapRPWyGkHZZ8S5OkJbONkgg5oS4/+jU3s/FkBu666J5PZ8UeEywWUpcZp4YcJudjN2bs7Eq/zfw3EeyWnBJXK0GbmD3/1X8Gjb7zunna6f0DuYXEv8sGXSUEqzt9xTYVDXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726120551; c=relaxed/simple;
	bh=g0Gsy+5TQh3RSmd39xewdNDSsmzEd+HtR+40T1Y+noY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=q4Ciml7l2e4KFJUCKU+Fhg8MMZaM929e9ZMQsMggP4Q3QlKLMlaKJS00zpfJEq20aVLB+aJD4mCah2CDjXxoYwv9Uii+DkgSXgVGO4TntJiFp8KWjAUAPPJwIyPVZe+bhVw9wymBc4JZSrZNTrR42lRdZ/errQ4viZmfaOZJD2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=1UTbr/Y3; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2053a0bd0a6so6472985ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 22:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726120549; x=1726725349; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8a31h58dvirjjptvxje9y9Mqcx9iPDZwg1ciuyTglV0=;
        b=1UTbr/Y3hs1UDqtntIp9L6nDOdpZ1Kp/pVTR2rOwTpBkjzDghN3wuSPZVLZ8LEap4V
         7LCPI8kTCGzNVzAcJFBYS+MKCtQXMXcoUOXFArx1wXK8Le6xjJpS80fyCKejq3Ubadsn
         p8fHwJL4MqRgvvH2RpBsxNGxq7X8ySTG3L3G7Z9COWE56SVUM0KaFwNaGjfKsXHETsFP
         AG9MmkX/rdJAEqFbimVeoNkS0hilY//LLowHj+5iFZijIDnnpliiEhXGNPXqurRP1kro
         6JQfQ7G1Dl6qQ5zK+LvTG9N0oB3nDDYSk05btCrR/xO5Y6IFbStk6gcaY1ql1Kw9Zild
         dWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726120549; x=1726725349;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8a31h58dvirjjptvxje9y9Mqcx9iPDZwg1ciuyTglV0=;
        b=uGAYpoYbzHEymG07/t1Fu4sm6NB0BjOxpELRJQFfSVS3rLmnp0cNoMKt/YNTFe6/3M
         IYFabkeqiV3QZ6U1XPJuUiJjyQUHe1xK9TRQ9qOjOtOFNyPuyAOmQ3JhrA70zdYbeyGx
         y0SaMk+wvLLQv2IJ8mcL27hxLDbWLFFrexFzlLtbA1BjXaPxPfbutmWSJdcXEOSc7NYo
         Arfr6064250J14r/Hv6lIclYtfQKslh0R0uUSn2gFZvbnSn/pUkstSpZeZrnnekhlHAE
         MBs+yF3CDuo1pqWjraL8pMhMSSb9Hjx3lofIdmGE/USag63TAn/QyhLgb54Y32godGxO
         nPzA==
X-Forwarded-Encrypted: i=1; AJvYcCULLroRjrfM0KAXN6GC90XIpBCbVjVPPIcmO2n8KxVkoabnSRVFuCcfXs+AFs8iE82vrl0qIudLTNy1@vger.kernel.org
X-Gm-Message-State: AOJu0YyN/DMecy/0Sy1HYrYdcBB4FCusXFoauZ+Md0IH9+jC1VbsP49+
	HWzmZdn2ZWkj0+IgtEXYU9dgyJmFGAajdGVPVeWwJpUqxyE1zt+pnnOPPK5Xl70=
X-Google-Smtp-Source: AGHT+IHKCeM+iDzgTZA8iai8wEAdx48qgNifGNBqlmMlN3z+2F0fcjMXoHNP4W4BOCCsUutd/a9kSQ==
X-Received: by 2002:a17:902:d2ca:b0:207:1848:7221 with SMTP id d9443c01a7336-2076e435f13mr19074275ad.53.1726120549289;
        Wed, 11 Sep 2024 22:55:49 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe99b6sm7870465ad.209.2024.09.11.22.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:55:48 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 11 Sep 2024 22:55:10 -0700
Subject: [PATCH v10 02/14] dt-bindings: cpus: add a thead vlen register
 length property
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-xtheadvector-v10-2-8d3930091246@rivosinc.com>
References: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
In-Reply-To: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1911; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=g0Gsy+5TQh3RSmd39xewdNDSsmzEd+HtR+40T1Y+noY=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ9qjpqi6xw2/1SybArcG9ZkvPNr7wOuI2MvGzcmpp08lM
 4gsfHalo5SFQYyDQVZMkYXnWgNz6x39sqOiZRNg5rAygQxh4OIUgInck2T4wx8msdT1Y+GCg4JJ
 iw/fOWJy7lHE19wTRd83WVxqDmV9ycrI0K+yobbz0fd2lzOdi1gq/n0TaeVWlxX4l5/FcOe1xYd
 lTAA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

Add a property analogous to the vlenb CSR so that software can detect
the vector length of each CPU prior to it being brought online.
Currently software has to assume that the vector length read from the
boot CPU applies to all possible CPUs. On T-Head CPUs implementing
pre-ratification vector, reading the th.vlenb CSR may produce an illegal
instruction trap, so this property is required on such systems.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/cpus.yaml | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 8edc8261241a..c0cf6cf56749 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -26,6 +26,18 @@ description: |
 allOf:
   - $ref: /schemas/cpu.yaml#
   - $ref: extensions.yaml
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              enum:
+                - thead,c906
+                - thead,c910
+                - thead,c920
+    then:
+      properties:
+        thead,vlenb: false
 
 properties:
   compatible:
@@ -95,6 +107,13 @@ properties:
     description:
       The blocksize in bytes for the Zicboz cache operations.
 
+  thead,vlenb:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      VLEN/8, the vector register length in bytes. This property is required on
+      thead systems where the vector register length is not identical on all harts, or
+      the vlenb CSR is not available.
+
   # RISC-V has multiple properties for cache op block sizes as the sizes
   # differ between individual CBO extensions
   cache-op-block-size: false

-- 
2.45.0


