Return-Path: <devicetree+bounces-229050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 694DABF3629
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:23:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 37F7F34870F
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:23:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5FF2E62B9;
	Mon, 20 Oct 2025 20:22:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="VTwOS41c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AFF2E22AB
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:22:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760991764; cv=none; b=SSpgvMF/Eaa/SUmjnanVg98mDlB7Ol/OCbSYwXn6Dn2V4xOpM88Y6zE1u252LMQUF798FR9nj0+xerY2XTTLRrkLTWalosWXgPeo8LuG+l5sj1oOw3edCEnIqBOhJjG8ebCiZM/JotWdZre7zxlgdfLSMADaL6ut82c58kyw1oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760991764; c=relaxed/simple;
	bh=omr+A/BOicIje23HsXl7grjzobxFuycKUasQlCN+FZQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=O1UH6l33RuvCGoq6hVDrdbzz8uGtI11W3Sn/LnvMekIOqeaNhgWS8I823NoKAJZEl8xew6GQBRyIoCtG0ysTsG6rTKr6KRJMCElB5seHlo3rPYCh5jepJjrMPXbMw/6WOwNNzNTODeShShs3FWY1AxEmDM5LjNc97h2ZzrWMRKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=VTwOS41c; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-781251eec51so3765038b3a.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:22:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760991762; x=1761596562; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U5X0eU5n70apxl8FByquMpjWi58YW7xT98Nr31GIt0Y=;
        b=VTwOS41cjA34rbcUzCdp+E7VsikTGqQwFoTyThoWsUSnSLxLslokzdzc0p6bCBFz/0
         6eL5AuS59Sq1VT7qpi21AsSZtcKSEv6hrhknsJt1W+DbmlGiCoUCCspUr8nWaWPJYOYB
         NBb6mS8LDseSb2nhFCCoHMDZVMnJRa/vbLF/EBwMmg01iqCspxmVhUJFc3+Zq69j+jwN
         bB0esMhISyQfxpjZDa80O9DN9KdM4A8qoumoJeDfXJ84ssbl/ntUT0X0ZQYyjoBtMZfS
         Lw8h3JWWCr7nGEreYs2SHCoq4DRvxmGSMYMAxMUQAZjL4MPq63aE/fS0SnPVNR7p69iD
         ZV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760991762; x=1761596562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U5X0eU5n70apxl8FByquMpjWi58YW7xT98Nr31GIt0Y=;
        b=FPHJJiCIN5A8ftVSZVhC0YQL3gP4pnZPp8Pe2xClVBsG4w7qx42SNV9mq9DkFE1wST
         FP2eOLURlMFGLUmn9dpL4DAwvsCRpv+rNuI4Vey7WL1SVkmxNP134GW0yeueTS5DKo7e
         0uUcSg+teTLmw4ApzYImXBYViBgBAIgjGdGLxR5y2BIkjoGa2QGPgv+gHuu7lAEXKMiN
         860kcRGtjpikj9xBRvQjgwvesAJUiP0Zyk5gky0B15p2Bgymqe4frBmzx61e36oqeIRN
         zN72kTgXWjkvgRYoyyVqbznQPu3B6W/FoX3+3yJO4bKH78QVQgUaCzM47SPiwFADatmn
         eFpw==
X-Forwarded-Encrypted: i=1; AJvYcCUniXI3CeOF476ApRf/BR7d5GagNjqSD4S6FJqMtf5GwtLd3LePJ0zchT01QWCNTvaNIfQ7oDUfUy9p@vger.kernel.org
X-Gm-Message-State: AOJu0YxyXyK85m/ckJFrfGw9f8OLygSBpK8PoRuFvHNceFgPUGNnpaZc
	HmtAWk0l7QsNrZnpgfgcdI4wzRA35y9g2vC8xMVJBrrNVDQtPB4ZH4zlpCHcjkKqroM=
X-Gm-Gg: ASbGnctLecmetW8JaDS8rJMUR08QNsZzSPY9QMEefPsTQOD2rRcOvkhnmbBzaZd51de
	9v0IrQONiP0GOb1wJdNYL8oetBb33mKxCz1BsYIy4N7Su3CqHKYeFTDUJuyBox69HeTCmHCqgI8
	K/PjPupG3qxFxEyhaC9BIXMxJZl2gseBmufLv8VR4c0M5pZ82NUp9MkMehilCFSLKHlhAOREnqM
	5gc8YiY7xzdXn2/u08fHm00oQQo0zUkG9EVkcs4qi8lPsqZXCgBlxaaewU7GOZ/B7A14zZXLONv
	Z/g4Ybj02TWI5/s/T0Z8WD7Vf3XwVUL+oLz+KhCiGL67XDSoSbD7BvDyIL9SE4A6fE6tIyItRWD
	zNcSi8+2NO+AqW2ZgZuRwMbkbIj8jMyhGJV8EUtbXbq/bmJvqUdiDCQBfy5n8xQ/X9E6Ohqx8Bd
	qWHosC6Lxqxw==
X-Google-Smtp-Source: AGHT+IHEvyI4J6sPrBxVlVCaHky5xMHxaAzs+PZxvL80WqSoNdemSVWitLZhoB4ljrrK9RkRoQOjQg==
X-Received: by 2002:a05:6a20:4309:b0:2f8:4558:ad9e with SMTP id adf61e73a8af0-334a860747emr20871921637.33.1760991761685;
        Mon, 20 Oct 2025 13:22:41 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b6a766745dasm8443240a12.14.2025.10.20.13.22.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 13:22:41 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 20 Oct 2025 13:22:31 -0700
Subject: [PATCH v22 02/28] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251020-v5_user_cfi_series-v22-2-66732256ad8f@rivosinc.com>
References: <20251020-v5_user_cfi_series-v22-0-66732256ad8f@rivosinc.com>
In-Reply-To: <20251020-v5_user_cfi_series-v22-0-66732256ad8f@rivosinc.com>
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
 Jann Horn <jannh@google.com>, Conor Dooley <conor+dt@kernel.org>, 
 Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
 Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
 =?utf-8?q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>, Benno Lossin <lossin@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, rust-for-linux@vger.kernel.org, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.13.0

Make an entry for cfi extensions in extensions.yaml.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 543ac94718e8..3222326e32eb 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -444,6 +444,20 @@ properties:
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
2.45.0


