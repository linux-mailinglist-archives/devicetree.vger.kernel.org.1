Return-Path: <devicetree+bounces-72234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 408A28FB2B2
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:48:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1A2C1F25AD5
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EE5148317;
	Tue,  4 Jun 2024 12:47:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="BrWG3W3M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F31C146A8C
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505242; cv=none; b=R4h9VIkaiLz8/r/3+EtEOEo472avGjPcUHJyqPQO8tZk5vTgyEqr7B5bMcNuyzU1i4PUEpp8ZMTNyxA1rYhNJ2Yj+dHwKB0TP2iRC8YFcqPB9MhwfwQmYYUYIO8jE+fcJCESdxQvI+bP7QDuaXQh89ryzMkBiw3bMELcJfuE4dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505242; c=relaxed/simple;
	bh=BeTgSd0+/cjAAYS23pyY1QSxXrTM/CfR+Kb+Gb5WH3Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=oBS5/X8x7BFuCO0izxUsI4LQevnTMNHVPDjiJ9IlUsuPG1mdg5u5zpfLXyAGcIpemr8b5/X6xdLi+KAjrXNxVWw69PFn6rAXH8edRObXautUIvqCzvBecqZ15tkXsxrwZ4DbweNgrqQJs1sVwDdiNas2YWhu1z8HOLV17h/aNH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=BrWG3W3M; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1f2e3249d5eso4367375ad.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717505239; x=1718110039; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MDggCbJq5xAgdt5U/mnZ4/8n6MHnmjzG09lZvHegJVk=;
        b=BrWG3W3MdLdBsAlySBsEDS1VJcm5ESRHlXYwVzaWrADGgQKgyidVMzUC9gHLNCaLer
         T6x7Zxo1dXpAQAzM8Iquo6QbX3bNOn/Q7aFiSAaISwGnMBsZlRAhNH0VsvyN08RYtjxP
         KdcxF5Qx8YAoezWZ4uWSyngWjZVOo5/LY21tmXWJ06lmrLYA+EPs5egwoAOZ+BRqHAhM
         6+WKgMBR8VZ+FHZ+lNH8P7sF1zzGwnqxvxf1cPb70z3MUxls0Ep1nbp7A5cRVoCs1R8q
         bieBmJK02GVH9RTSrhESb9yio8DU0n1Orx6JXWmrikfxVZIXXURnaawGJhaDQiMLJ2aJ
         sK+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717505239; x=1718110039;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MDggCbJq5xAgdt5U/mnZ4/8n6MHnmjzG09lZvHegJVk=;
        b=SXdA/vsQJ9ZMflSJIXNnpT7AgzsleLuNILdo+A1B8+A55XNrMS5bG4GQbmWF1948S7
         pTMts5qtUwW1hBCswWuTJ3hnBiFrzxGdxeLkgLYOE394MWDmr59bfpbLTq3zWQGmz8sn
         5aOHnFz3xfG+nvd+DzxPBNL8CJ/QzBbuYBF0RsEP2dEkRvKu700aKsN1rYWDtIDnljvn
         x50kgZ/6P7DzBOqV0K+CQgRdfh/FAr5/bxR0TqHzwfd3ve53Gm81crM7NWLXxwteZ6TA
         4whLumEUNeDJJButrnn6fEnwvSm77rB+lSE1uwL9r2aSfRfxtbMX8fbqnz3gMVKSOBs7
         aomg==
X-Forwarded-Encrypted: i=1; AJvYcCXsrziie8lo6sl3kSEx4RGVGHxe+dbxOUhbwMpQR3zEwXyPglvGb/t5PkXRF2rFeVJbb4S4ZNoxVYlsSYcUk6eJmXOk1RQJmLxsvA==
X-Gm-Message-State: AOJu0YxeQknxr7t+A0wiJ2RPKAlLQh26Xobf9NMQUune+mkzM6jlgtU7
	NqIoAWRzBZjNiEq6vWIwjJbWEEqacggemUZ6IB1PkCxfml/FKXbfi6VbGWfH9l8=
X-Google-Smtp-Source: AGHT+IGQMTJjGTRyExe5WucoZYIN7+QmoxG6l4x/LYMJNGm+8SMfBCqkxppCIaA9Kdjsd1UwcvgPcQ==
X-Received: by 2002:a17:902:c952:b0:1f3:453:2c82 with SMTP id d9443c01a7336-1f6370c3578mr132333805ad.4.1717505238694;
        Tue, 04 Jun 2024 05:47:18 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:327b:5ba3:8154:37ed])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323ebc69sm83042885ad.211.2024.06.04.05.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:47:18 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Conor Dooley <conor.dooley@microchip.com>,
	Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v6 06/16] dt-bindings: riscv: add Zca, Zcf, Zcd and Zcb ISA extension description
Date: Tue,  4 Jun 2024 14:45:38 +0200
Message-ID: <20240604124550.3214710-7-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240604124550.3214710-1-cleger@rivosinc.com>
References: <20240604124550.3214710-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add description for Zca, Zcf, Zcd and Zcb extensions which are part the
Zc* standard extensions for code size reduction. Additional validation
rules are added since Zcb depends on Zca, Zcf, depends on Zca and F, Zcd
depends on Zca and D and finally, Zcf can not be present on rv64.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 616370318a66..81bce4fa2424 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -220,6 +220,38 @@ properties:
             instructions as ratified at commit 6d33919 ("Merge pull request #158
             from hirooih/clmul-fix-loop-end-condition") of riscv-bitmanip.
 
+        - const: zca
+          description: |
+            The Zca extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcb
+          description: |
+            The Zcb extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcd
+          description: |
+            The Zcd extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
+        - const: zcf
+          description: |
+            The Zcf extension part of Zc* standard extensions for code size
+            reduction, as ratified in commit 8be3419c1c0 ("Zcf doesn't exist on
+            RV64 as it contains no instructions") of riscv-code-size-reduction,
+            merged in the riscv-isa-manual by commit dbc79cf28a2 ("Initial seed
+            of zc.adoc to src tree.").
+
         - const: zfa
           description:
             The standard Zfa extension for additional floating point
@@ -489,5 +521,51 @@ properties:
             Registers in the AX45MP datasheet.
             https://www.andestech.com/wp-content/uploads/AX45MP-1C-Rev.-5.0.0-Datasheet.pdf
 
+    allOf:
+      # Zcb depends on Zca
+      - if:
+          contains:
+            const: zcb
+        then:
+          contains:
+            const: zca
+      # Zcd depends on Zca and D
+      - if:
+          contains:
+            const: zcd
+        then:
+          allOf:
+            - contains:
+                const: zca
+            - contains:
+                const: d
+      # Zcf depends on Zca and F
+      - if:
+          contains:
+            const: zcf
+        then:
+          allOf:
+            - contains:
+                const: zca
+            - contains:
+                const: f
+
+allOf:
+  # Zcf extension does not exist on rv64
+  - if:
+      properties:
+        riscv,isa-extensions:
+          contains:
+            const: zcf
+        riscv,isa-base:
+          contains:
+            const: rv64i
+    then:
+      properties:
+        riscv,isa-extensions:
+          not:
+            contains:
+              const: zcf
+
 additionalProperties: true
 ...
-- 
2.45.1


