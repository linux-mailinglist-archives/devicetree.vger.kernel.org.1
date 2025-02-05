Return-Path: <devicetree+bounces-143085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D8674A280B5
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 02:22:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 518FE7A28AC
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 01:21:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70BBC2288E0;
	Wed,  5 Feb 2025 01:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="2SuG2IHV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B23C7227BB2
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 01:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738718520; cv=none; b=si3SsjoY7Wwnov8FeOY5EK9jO8S/KJyuHraxWurceFPEckFehRqqIj9V+MS7L400BIOD51AuhRBUm0Qkh6wGlH5nYJJC4LA799kAqhbfjM8zaKaU3Fez1vjSwRRef1nqaQpzDfp4qJ9tyZXAeBHsIfekGy3pyjoVSnvkXCQUT80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738718520; c=relaxed/simple;
	bh=DjlSjyKZg5L1RJtFrw9Awsbe+InTSaQHdJt80sHp1pA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QOmzBUgTSA/JI7gKc4159j782YP9Ai3HLUXV6JPM7EPSS0TYZNXvW+p/snA2an2IznlQAewRy+JSAEJ7ABv+tYcKzqSEazLQWBOp5k6DvXNBlFZBI4xWXPB6vpzQAWcJOSSHUAKqE52STDOHoiR82PpAp6l/74qgjOW8Qyf5Vxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=2SuG2IHV; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2162c0f6a39so6257795ad.0
        for <devicetree@vger.kernel.org>; Tue, 04 Feb 2025 17:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738718518; x=1739323318; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kHEXIimjUTXAyC0fOzh8XAkym19Q72QcmDI6hc+cq4k=;
        b=2SuG2IHVeSCEy6VslnXTwB1Zyu/SHh9Xyt5jI/6LbsU5hfYh219JX9L4ybPfJlIiRe
         BbbhC6+r5Ctti+6beAwhJJjoeR63cAK6cm+dhfolEguRVT2ghxGxHuovStB6+pLoIXl3
         NmE3JpCLdmV4UaKXd7hSNcG1pN//dL98bPc+ujkyp7Xj4jfKT22LlerO54Qf5iy1rf9o
         RUYoP+V90ugw0o54SFc1as1qQ1s4BZjgsmVusccJO/IOVThSE8ZGoCa0q6Z07R9DfmN4
         0CF9EcPLqY9H43h+FqUpHI/ymJiU9hEQckyhv9e6S18718YY+awAugVgIvqJa5XVHwpZ
         dH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738718518; x=1739323318;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kHEXIimjUTXAyC0fOzh8XAkym19Q72QcmDI6hc+cq4k=;
        b=luMxdVk6H4AW17NDhXkcY95oT2W70WzbDs2ouYiJd53PdMSl6ctnV4GIRMXQfkxfRd
         vPdQLTOGWadB0HyJZKGlr9wVWzGOvRZHHkjpTKwij93dz3/M0Yc8ZnAvtYfGieZR2m6u
         2UK/+7siSym1q+BhGv8Yrr8vgCCKa97SW3+LED5NZ+2IqV9XrbKStR2SB9531v9e5tnd
         jHXQtxWVXJTqbU08gycAKPP5AWq93fVpjDzCvcfcy50xorkyOfIOhiMXAAxZLlYOVrc/
         MvPDUZoVGwCf4mTilRl1KLdUq1POfq9vSs0m1Ax48ESpHsUNfb7Bs07QXKTw/vDLShGI
         LD9g==
X-Forwarded-Encrypted: i=1; AJvYcCUCCfrlZzT2jDpcgdgw9zWms821tmEIw6HQIUQzcabEj2A3IJl6DYcwYr0VGObWid8WH7EoQLbl9WWr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5qUnKDbfFldX7DONUpFrwMC9RoohNhz9YZBFBsIBNJwSDGwKE
	PinwWfXWCb3W1WDqtcBYklzyV9kWmq1/qisUCC341nXSHc5Z5XtOzuKt5HhyWjM=
X-Gm-Gg: ASbGnctN3y8WN7++P3Eleeqv5ukzZwXE/CgcthO3qGG6sYk7DRr9nfNBdrDdEYuByvD
	EPxsvjmXjSa6z1i6sksF5sLlynaYwKLsvilr4RsD7KrZP4iFF0PMwwb/U/fgTHL7QZsOQo0y3Cs
	uBt4UPrhz2eYaUIbIJoamBbsMElV7EqCQth/nb2243MxMvjL6nspRWe2mdC31XDrbXmoZyf6PUV
	A0+NEkyHxq4TDOdp8g8CoxRoSTPcHM62Tmq750Qrcs3IMYyayRo7l3+ITdr19450kL2L3+xWS/O
	jBdfrywfAyJFOneT5X0FnvD4pQ==
X-Google-Smtp-Source: AGHT+IHzHonQ1oXGudf3ZfMVrMZV3mKwGoRuXs9FutPohSBaJGIm20BPBEq9+EHRoF58EkXIbMe1gA==
X-Received: by 2002:aa7:888c:0:b0:726:a820:921d with SMTP id d2e1a72fcca58-7303523eaaamr1533935b3a.10.1738718517175;
        Tue, 04 Feb 2025 17:21:57 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72fe69cec0fsm11457202b3a.137.2025.02.04.17.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Feb 2025 17:21:56 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 04 Feb 2025 17:21:49 -0800
Subject: [PATCH v9 02/26] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250204-v5_user_cfi_series-v9-2-b37a49c5205c@rivosinc.com>
References: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
In-Reply-To: <20250204-v5_user_cfi_series-v9-0-b37a49c5205c@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

Make an entry for cfi extensions in extensions.yaml.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index a63b994e0763..9b9024dbc8d2 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -426,6 +426,20 @@ properties:
             The standard Zicboz extension for cache-block zeroing as ratified
             in commit 3dd606f ("Create cmobase-v1.0.pdf") of riscv-CMOs.
 
+        - const: zicfilp
+          description: |
+            The standard Zicfilp extension for enforcing forward edge
+            control-flow integrity as ratified in commit 3f8e450 ("merge
+            pull request #227 from ved-rivos/0709") of riscv-cfi
+            github repo.
+
+        - const: zicfiss
+          description: |
+            The standard Zicfiss extension for enforcing backward edge
+            control-flow integrity as ratified in commit 3f8e450 ("merge
+            pull request #227 from ved-rivos/0709") of riscv-cfi
+            github repo.
+
         - const: zicntr
           description:
             The standard Zicntr extension for base counters and timers, as

-- 
2.34.1


