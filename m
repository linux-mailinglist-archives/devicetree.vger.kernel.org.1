Return-Path: <devicetree+bounces-201157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B2AB17968
	for <lists+devicetree@lfdr.de>; Fri,  1 Aug 2025 01:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6E7F04E3ED4
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 23:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CA2027FD4A;
	Thu, 31 Jul 2025 23:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="3WW+1+89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81C927F75C
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 23:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754003966; cv=none; b=WqlHENFlFZ4WtVUSG9ov0GZ6pbWRam+3gep5uNAqgfrzQzElp+qcEucbOm/fMD+seX/Yw57zh4rrHTdG8S0vn2NPfmd8PAuN7xjOgHwR/u5ME5LYu28LOJboWIwdGsJmiEi66aCTMy89WeUZY1Z8wODBBgGXcXkJkkLMez7Y4p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754003966; c=relaxed/simple;
	bh=3rWM+6ai+GAHLkW+NDrA2ZDlcBd4pzb4hc2PSkPwx/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kazr8V284K+lwod2D08mAtjVivfc3Rh59Ct2dswQNrsv1lel/urI2WaxBkygxUjjQoUhrn6Ck+N4MKXHCluaeRycBcPRTJk5SYBjGB4zT9RW86VQgy1k0+d2z2BnK3CdNpsqFdFMZIpYiqxzz3VW4Gm8MUfi/le6WjT8k63B1YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=3WW+1+89; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-76bc5e68e26so1748740b3a.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 16:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1754003964; x=1754608764; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AetdkWsxzLbheuZJ3kb+4mhEhv1uz8fN4NCKhkFj5X4=;
        b=3WW+1+89GrGqIRUcnWC8S3IqQs//0CNWXN/TdYWW+0ZxImOPxz2aMvJccR7N2Ae9SG
         SxGdo50LtHzE8GH6kUYxjv/leq1uFrLZZCk/j9CaoRpR71qe5bSvtymSF1rrV2rHF4Cj
         l34pp5J5NTBN/68zJiS7eaNNcks2zUe4nVDrLTxM5aFob/vfCg8+KmDhc9mfnRkXYRq+
         4142K1+onHJ6NwgqJ0baDHXU4yfoZesve7GkeRJ+GbG0K/C1rbleOpRCbkeLnLV31fbi
         kUh3bIhx0kdC1fuP8yuwwfbNAxuDzy6M5PP2ghFqBgVpNMbKJWe6QnoYXpmIAoDo2bSI
         jTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754003964; x=1754608764;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AetdkWsxzLbheuZJ3kb+4mhEhv1uz8fN4NCKhkFj5X4=;
        b=PGhR6YYPvGax1z3U1csuenPOR3Fgss6itwyXj39w9rqXAEgA9u7yU2wXwtnrtCKv8h
         pSI/5RM5sLZzMBPVRaVjGkB3thCom3UhE1IY4jBeKhyTnBAh6sjUf2o6VAk5Gcpm7Vyo
         sVkj5taa5efcorII2PBFwKtLG3ifoec0413p2ZfESDDNdAD3RYLsi5cxW67jPQve1kOT
         j8mtw/KLKTTfbyRzPcPcINZFWPLGyxKk0sfelc8lXNtsmcQsjX54q6ANFzomgJQPF6yf
         bdMGMssBtp0oGo/vlv3EhrjsMHVdNBfZtSVmMs6lZ/qyOyyWdBozQxsD9J+NRrZ2vLAy
         vxCg==
X-Forwarded-Encrypted: i=1; AJvYcCXm2b0NIgBJbZhmcePEAciX1H5zH5mbyclRneo1OJ7hOoISw3L89I1Dbsu4TpWb+3Njm+JBAsQi+7hH@vger.kernel.org
X-Gm-Message-State: AOJu0YzHQUGwi4odmKcY5QbAvkbfa+x0YWtrwCCpj62ka9doArk1q5pC
	STSFsdO7Jg9+OZgad4mU7rksENbhLYn47E07P/73d+lVqXZPN4eghvWM1xnGQ8o22lM=
X-Gm-Gg: ASbGnct+qN8yAY2scmNAiGZ7bR4WbLuH/pr4F+sW+fEseu/gE8y/9sIhH/CHIlanSxb
	6LZ/JSNG56kzQSz8zx4mh/Ul7MbjRYbtNd9s4pngb9BoO1UPmzKA+wbCgS7vvDjQcFEpwbuQDLi
	tU8BqA/aE6wnAMOYPeSQxmnlSzPNTXSROggv6RdVnDf1dFujgq0ZfVxcMh4tT0B8zCzyvtvH1x4
	ilygf0RennAsaYE+KfCVFf8AczfaYywI5OMr464kXxJX1/ov4zcWrvD3i+PzO3xr+VNQgpt/hfj
	T8PgkoqhWZc5pvpqn9ybfoNxGEjmjanQwrZMV4S6JfqRZUJFM0m08zIYHfnGkVODGFEBpXrCLKU
	kKVpyaQNDmWaU9rTDcBqiFtYaBywdaupvxC0DjYS+Fng=
X-Google-Smtp-Source: AGHT+IHQbINJSIJX3DRCY7VWQRNn4wGJVllkshwYu6z4COruD7/LM4Lj3NJ+5unK+IoBRvria/ND6w==
X-Received: by 2002:a17:903:1aee:b0:235:eb8d:7fff with SMTP id d9443c01a7336-24096b0404cmr123206725ad.28.1754003964051;
        Thu, 31 Jul 2025 16:19:24 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63da8fcfsm5773085a91.7.2025.07.31.16.19.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Jul 2025 16:19:23 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 31 Jul 2025 16:19:12 -0700
Subject: [PATCH v19 02/27] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250731-v5_user_cfi_series-v19-2-09b468d7beab@rivosinc.com>
References: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
In-Reply-To: <20250731-v5_user_cfi_series-v19-0-09b468d7beab@rivosinc.com>
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
index ede6a58ccf53..9cfe4381f3cf 100644
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
2.43.0


