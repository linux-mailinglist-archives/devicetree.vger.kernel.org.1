Return-Path: <devicetree+bounces-63218-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A53058B411C
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 23:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BAC01F220F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 21:29:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBE0637163;
	Fri, 26 Apr 2024 21:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="K2ssANLg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847D02D044
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 21:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714166968; cv=none; b=TiOkPylDaulD7Bm/Na4IARnzLqliH5ztogHkkc1ZIF85IiZeJ11wPYFkEyU1r7RCFR2hl2Oh2nz/xSK/kOJKAqnecIW5x2piXRow4stqE8I30P/st/TxfC21vWiYC5iPVbq5VBi/zH2OYho7JbfxMkJ7Vyq45dwvAfWL+qWM+Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714166968; c=relaxed/simple;
	bh=BFeF/rMqjmAL/T3qO395y21tghoeF4vuGyaBxCV02tk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C9EtqiSgSMCw2cXPR85l1+T0DGnpLk8vdD2RPl+5X3mVS+xPW+XdSLl2xMmHO/D60WjSEGVNZajI3GH6x4GdxXC2yobVphTAQxJp6Cjy+bLY3OB1dM1+kzlKUlhB6jYZZz3nMFAVCj9VkTEirN+Xdac6hlJ8Oz+1i+mQpGgA3Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=K2ssANLg; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1e5aa82d1f6so24737645ad.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 14:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714166967; x=1714771767; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0gP3BTCO/eMabIcPEHZlkkrT/LBtjjbwR/exXvwDsR0=;
        b=K2ssANLgUEXcDiNQl0JMwtHMNJFG4g6/AHEq2XfA9dkD53f8HEwI+be7JZsvhE0ap1
         SRejLa6YpZ34/auXgTNhzjMJRIE93Gv4lELTGujcTYu/Hh6QE/uaDfXvZBkJf2dZMBD8
         61hqpHiAPmKZ3w9mTuMbQAyZDiwV2YZKQ4NAca5s79ezbMFHFnW74p38WuXSF2DTnBuf
         aIRMtLjr53SqsTOzONagELQ42tTzXJTkkLYGkMC5GbNy/MWnFDSWIRcNxpWCVnIjvDMO
         7cDru7kly4uOp/BQORKwr5RILPsiJllX+0HRCP3zjfr7BQO3T0qvxb2Gce2tQ/8ltQBX
         rBaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714166967; x=1714771767;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0gP3BTCO/eMabIcPEHZlkkrT/LBtjjbwR/exXvwDsR0=;
        b=UPrRNuolprj5CE/N3XHgQVys7f4whWOLI1Fo7LpsCDIvBlY0GcdrhKC1mMnw775uLl
         b9eBjF6UZi0DkwrvZJ1dTJrkGE1xxXfhqpOq8k2l/Y8A60t+RY/aEVPzCSPq2Y//jwZM
         2lO06eFMDmN1kIaEZ0SlTGSJAkmJwX/8sOEc2eVf74C0PtX4nXyED2kX5inKNFt23m2G
         4NAE6Pzy5r0Ba9Lm4Hymnu5Vpq/y19OKjZ/8acJ/mdvvvBqeVxen4CGppHF+Bm/X98Fe
         1Xba3YWrRhRWAT0TiwMEBQX5y2uL3VEUnwUZJyDaRg3f8GqW7rPyT6xNUUaqlfKLftBe
         nB3w==
X-Forwarded-Encrypted: i=1; AJvYcCW+GXmGnYirhsr/3Lq1sInrHj8ZR+I1Vr3XSM5gCZJcgj3FsJUmKUG9+SABUCHJD3lyEHK6q0IthBNGubdZYvBl/buh6jYECC4fRQ==
X-Gm-Message-State: AOJu0Yy32JFohM8a+LjBJlmygeZPRLEtP5vvpNRnBVC8dSyZRdjLwH82
	z5gpVllyPmZsTb7D8KvrTPPMykHvisctUV2G1MH015heqpma9ziTY5/2WGzg1r8=
X-Google-Smtp-Source: AGHT+IGlFC+sWiATjVjZyM4a9iGh03bCS1scNN9odduG8zCHHGW5Sw4IJWA1IOO67MT5kUm71sQ0lg==
X-Received: by 2002:a17:903:32ca:b0:1e4:320b:4311 with SMTP id i10-20020a17090332ca00b001e4320b4311mr1056710plr.34.1714166966802;
        Fri, 26 Apr 2024 14:29:26 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b3-20020a170902650300b001ea2838fa5dsm7226720plk.76.2024.04.26.14.29.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 14:29:26 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Fri, 26 Apr 2024 14:29:15 -0700
Subject: [PATCH v4 01/16] dt-bindings: riscv: Add xtheadvector ISA
 extension description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240426-dev-charlie-support_thead_vector_6_9-v4-1-b692f3c516ec@rivosinc.com>
References: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-b692f3c516ec@rivosinc.com>
In-Reply-To: <20240426-dev-charlie-support_thead_vector_6_9-v4-0-b692f3c516ec@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1714166962; l=1767;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=BFeF/rMqjmAL/T3qO395y21tghoeF4vuGyaBxCV02tk=;
 b=jaORPILErFSO7xhvXfnnGlYnBmdAg6gEwE/qRdqy/WriwYfivrW0a/1HQ1UTuoOhAsFWym1gt
 hQyMCiyz9YsCarHlzfwDbmsyF9vDjGzGdZM+K2GgLhFFCqM2TyXd6RI
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The xtheadvector ISA extension is described on the T-Head extension spec
Github page [1] at commit 95358cb2cca9.

Link: https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc [1]

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 468c646247aa..99d2a9e8c52d 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -477,6 +477,10 @@ properties:
             latency, as ratified in commit 56ed795 ("Update
             riscv-crypto-spec-vector.adoc") of riscv-crypto.
 
+        # vendor extensions, each extension sorted alphanumerically under the
+        # vendor they belong to. Vendors are sorted alphanumerically as well.
+
+        # Andes
         - const: xandespmu
           description:
             The Andes Technology performance monitor extension for counter overflow
@@ -484,5 +488,11 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+        # T-HEAD
+        - const: xtheadvector
+          description:
+            The T-HEAD specific 0.7.1 vector implementation as written in
+            https://github.com/T-head-Semi/thead-extension-spec/blob/95358cb2cca9489361c61d335e03d3134b14133f/xtheadvector.adoc.
+
 additionalProperties: true
 ...

-- 
2.44.0


