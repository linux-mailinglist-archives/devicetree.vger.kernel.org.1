Return-Path: <devicetree+bounces-143481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A46FA2A227
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:28:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3662B18861B8
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:28:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 564A9226552;
	Thu,  6 Feb 2025 07:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sfuo5oMe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688CB22E3E3
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826614; cv=none; b=XxnY0U2sM7I0lL+ZHYUx8Q6G42RGohSU1/4q9FL7RknOPKIfcs7zQ7ynh+V8YX6/wF8xcmjSM0fpnCO2ew9ge8iF8gS0Ogp93IHT+oG3D9MpbAeLKwvd2JuLjL2OqL8A1UeqaftoN64zWNZW9syo+haINQkhODyOYVKf7vo5ep4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826614; c=relaxed/simple;
	bh=SZGcyybVo7K7BymyY7cT9hBPC2J7AQxoReUyWoh5bqE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jjzrfk3w6rTS9Vw470ERvLgJgVUnBVUQQr35q+FArCJXF91dImgPJUaz+441CPqbUe4ndkvmv0i3uFASks7BTmf38hWSOTdj15MboFPtZSWR8cCFvNUL1E3A05nWXaD/m12O0/peQZiK01jpxtROqwV6ip79Jb+Ivv4Xdw1Emlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sfuo5oMe; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-216728b1836so10521365ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826612; x=1739431412; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxHoYiVqgOBhm1wpVoVRMHPjl115bpEgggXMBP5Q3iA=;
        b=sfuo5oMe2mPuc6Qh0aH6nbYrt0D83ceFgFw1rJllq1fTqZ1AOctcDNf6i9QmBPANPE
         1fS9WQQ3PzNtZsyj8FhNfMdZHzFC5pemZhlm81BE22ha5y0+Y3As1uIK6sfQtumnV2q9
         Xi/c3TFuaEEXOmQKtwmh5ejHrfAyuWutNvEXC/yhCejxFfuW4NqG4C5Xcrg0uYyIB8/W
         oGB0e8u5A57HXyWkUFyDU1OxYo8ceTdyCIA0cZmK5eGlDwSM/1stNO44BVbYQW+gCyzt
         h+YQgpTnT/xl0H9xJHh7O0KLELYYRLiy7Tinotm/HvrBQxCAqsUNP9jVWtSv7liibayY
         zQDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826612; x=1739431412;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bxHoYiVqgOBhm1wpVoVRMHPjl115bpEgggXMBP5Q3iA=;
        b=egn6LRSAbn99FbK4U1hMQeQvsLgyCWJyZmjVK2vqrAQggJUPGSlL7L57wTvFl+OLPw
         Y75Cvt3oQGd2oO9Cr2TYcw6l6gcsu9Mnuf+nfjUoeEOgEFz31dCuhWUs67M4tsFeWLhK
         8HacguVEUXvEMpe2H8KhwS/68PQAYLRyvVnhOJUHEE1XAyeuew5dsZRbD4sToh/zavBj
         3WdugN7XoFsKwx/CqCZ7/kUjvMPGEOKzTm5B6/FCIV5sfx59sh3Wy1SsSCxSRcOs0D6f
         7yekBFBjwusPHbgtMMsuA9zA2jTWBkET6D4RDdOpD2Y9/XeUKS0CZPoQrLI4V2kcTYnl
         iQOQ==
X-Forwarded-Encrypted: i=1; AJvYcCVeYFlThPzVy9z6k9l0J4CxaqfnUQWArICueXC34N/hcOuOYyuRyqiJeM2LI9tTZFcZxzehLWDtPegG@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7CGaO21g5QI//SgJdyFvoNmiIMaLzoRFIyPtjdRCGp8Bbb3Gm
	lXfzg8WAUlNZ1GNJ28cNfewQ4I0JOg30CvGJVc0Pd+s3SSncopqpovbLKas5AEo=
X-Gm-Gg: ASbGncvUsmBnKiFfZIe9dyBF+IgxVeG4QkYtoXtq3uPO4ygwJZQO1keRH3qgpNoKzdE
	f1RKXmvoynwq+3GK+MdJDznbPQUjAvHcvOmqohN3hDvZSpYavCJd4JGnHIvoMkRSrnEv3xVsTYJ
	z67ORh11WTT68nNd2MXV0gNzN4cXBCTCAzEDKyWis7ebtFm0Viq4KVbocG/OOg3pthHoZwd5Wph
	NKf8jht17ZPZZeovBbwNCqSkUmaB+eo/KlSQGJPV3Ug+EQXL/R52ct9JejCO7LuMqe7d+00tBd7
	axFnZuzXvWhbw/188hCpZ5rTJur/
X-Google-Smtp-Source: AGHT+IHdxb765FF/tuEHMIXniBEbzBGChueSqoBlXVwelYSzs5G+a6kTSb+Hcc24wmC4wtSYLVHKkg==
X-Received: by 2002:a17:902:f64b:b0:216:7c33:8994 with SMTP id d9443c01a7336-21f17f32366mr113621535ad.53.1738826611778;
        Wed, 05 Feb 2025 23:23:31 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:31 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:15 -0800
Subject: [PATCH v4 10/21] dt-bindings: riscv: add Counter delegation ISA
 extensions description
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-10-835cfa88e3b1@rivosinc.com>
References: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
In-Reply-To: <20250205-counter_delegation-v4-0-835cfa88e3b1@rivosinc.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anup Patel <anup@brainfault.org>, 
 Atish Patra <atishp@atishpatra.org>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Peter Zijlstra <peterz@infradead.org>, 
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Namhyung Kim <namhyung@kernel.org>, 
 Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
 Jiri Olsa <jolsa@kernel.org>, Ian Rogers <irogers@google.com>, 
 Adrian Hunter <adrian.hunter@intel.com>, weilin.wang@intel.com
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

Add description for the Smcdeleg/Ssccfg extension.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 .../devicetree/bindings/riscv/extensions.yaml      | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index be9ebe927a64..b20dc75457d2 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -128,6 +128,13 @@ properties:
             changes to interrupts as frozen at commit ccbddab ("Merge pull
             request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: smcdeleg
+          description: |
+            The standard Smcdeleg supervisor-level extension for the machine mode
+            to delegate the hpmcounters to supvervisor mode so that they are
+            directlyi accessible in the supervisor mode as ratified in the
+            20240213 version of the privileged ISA specification.
+
         - const: smcsrind
           description: |
             The standard Smcsrind supervisor-level extension extends the
@@ -175,6 +182,14 @@ properties:
             behavioural changes to interrupts as frozen at commit ccbddab
             ("Merge pull request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
 
+        - const: ssccfg
+          description: |
+            The standard Ssccfg supervisor-level extension for configuring
+            the delegated hpmcounters to be accessible directly in supervisor
+            mode as ratified in the 20240213 version of the privileged ISA
+            specification. This extension depends on Sscsrind, Smcdeleg, Zihpm,
+            Zicntr extensions.
+
         - const: sscofpmf
           description: |
             The standard Sscofpmf supervisor-level extension for count overflow
@@ -685,6 +700,36 @@ properties:
         then:
           contains:
             const: zca
+      # Smcdeleg depends on Sscsrind, Zihpm, Zicntr
+      - If:
+          contains:
+            const: smcdeleg
+        then:
+          allOf:
+            - contains:
+                const: sscsrind
+            - contains:
+                const: zihpm
+            - contains:
+                const: zicntr
+      # Ssccfg depends on Smcdeleg, Sscsrind, Zihpm, Zicntr, Sscofpmf, Smcntrpmf
+      - If:
+          contains:
+            const: ssccfg
+        then:
+          allOf:
+            - contains:
+                const: smcdeleg
+            - contains:
+                const: sscsrind
+            - contains:
+                const: sscofpmf
+            - contains:
+                const: smcntrpmf
+            - contains:
+                const: zihpm
+            - contains:
+                const: zicntr
 
 allOf:
   # Zcf extension does not exist on rv64

-- 
2.43.0


