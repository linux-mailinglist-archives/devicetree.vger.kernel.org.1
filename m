Return-Path: <devicetree+bounces-227259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id F0000BE0077
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 20:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id CD7224E1A04
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 18:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE86E302CD0;
	Wed, 15 Oct 2025 18:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="Q8ZFNbuH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E282730505C
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 18:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760552029; cv=none; b=aeg468wtZMg5oyWpAxUyD7YC6gHJ511A2aj42xrVatg87yHIMMRciLsIS3LqOyR/OqG47Ad8rDGvcIgXTFfVTiQ8cf+D0l9i9tHw1A+3X5WkYcBAJEzXca6qK/I0M1u22C7RmJ+LawshDxMDmvSkErud+wwx4S3Pu2fBQ4GhkuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760552029; c=relaxed/simple;
	bh=onQZPDO/5PI+EGQWomoauY3V7EJZG9au2H7fkbOgnBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rvdtVPkyqzYq2KHi/7aSI7RFx2Ic7HivRTEVTCWl/lmDIc8MqTEz/5ddGdgCV2VBd7zUtXfS0gvptfTxJP9855QL9SjGwVAGC7L5ET4QhdMtuRWuGzaGQtiaceNmzeNtsNMVo/FBJcd3U9oRKlxNWdW2RYTxRD9cIkhqoBodnSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=Q8ZFNbuH; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b67684e2904so4207586a12.2
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 11:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760552026; x=1761156826; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Vc18KrWuMNfUoArR2DO1WTDm9aMJ2VnekXi8RaYkOI=;
        b=Q8ZFNbuHG2AEPhvEZXnbKpfGdBxs1HiFJF2cXbOmjFhGMg+0wAW9f0N+5Y7bT6Gi3i
         wQM49YzIJ2xf1vqe6zUcbjH/aoX2sG0Yh98I+beaUiJJDSesmRbnL31I0ty/6IA4sWyD
         g1zJ2YY/UWV0+UIDaoqrO0vFEk9INv12rom6K6QkWZ/G1epvAaAt23W5p9kQ4e3PouYW
         hby/wsuD17jm9OC1Pv2+l0wOenDvPIu7kJl+rgCyOK/JV47kn+LXjds71cRBa5ihq/Bv
         PbwYkf5dSh5SYSh0KQ2UGi7ZcPpBrLLjF2fCC7OXD2UTHqhti4mGHKhZwnQI0vlj4QNZ
         5YDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760552026; x=1761156826;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Vc18KrWuMNfUoArR2DO1WTDm9aMJ2VnekXi8RaYkOI=;
        b=g6SZfv1Xr9Yz7QclTZsn1Tz4afzFjeXbzAbyDKfWn5qdn6WxxCcSFSYXZeLBAn5rNx
         DGWn8cA9b4DxVqhflDXI4PyFRVSey0j2fE8Kl9vzEOduphxpdYmdASrA4Don+3yqtG0B
         oDTrhggHkgu8p+WIXlkam79C1d5FdmKzldROkuvYJFLtGdVUCQAqkOAz0AgBDjUQIykV
         p1C7AZoUaT4w8a7v42+iaHzNGKwaf4mPt7mTNDhOs8/8jJeFcBQPl32UQEa/PBBNLLPy
         K9Hl3Wc77DXVtDkJb9o//Zbf8dl67I4Tm4JJ+wkhs8LFp21NE0uaPaLiVFXEzpP6luji
         MKAw==
X-Forwarded-Encrypted: i=1; AJvYcCWxt5gPxIzH1Y+162usz/GwHhSkImUeQdmpIzXaqSchgpr0NPinIzmiItaYp3h5gqHIjPQ+pymTh90y@vger.kernel.org
X-Gm-Message-State: AOJu0YwBnkrVnziSG3b3uLrBtCn7h02eBcHzniVUEsWB/P60hBHrXNUH
	7gGoCUbJgHU+dn1bioRk7FuoSXUwrTqiHbmAyO+JItoETJc9izvpQgfbTzOZAfuBkoM=
X-Gm-Gg: ASbGncuYmSfOJOwXsZ6YoZBiQnsktKlfsNvQggW3Jc1lurTjbhUUmMqKYg/iQOFz7G+
	t+3xzG92bf0ptaCnCsj0Pn3NI+slKlY7pNeukmZT/XEQVRs1dsFSCLGQZ3caTrSmaMbG5SO3RuP
	+fADY1qcSzQxjWUKvnFk60091dvQxu1FVvnUNfvJAfcYMjSVVgonun5wtrB7BFdziSVKdJ3FjKk
	TJVitdCockHfHcapxuWLfMdR5Yqr2KVjWF/jp+X8vUtOaF1fghOagGCOhbFgpRjT3z+Pzz3y33P
	8dTX2GIQB1iaeamUmBcDZ/TUeY/BA8UIPtJ9kAGHR3AXjX2xfaObh6tiyMCqhh2uEfK2RKaooEd
	cFNf40WJzbT6ol4fAsNyFDicqE/Ycjy74J/kx0ClnlYFvyhDoXIs=
X-Google-Smtp-Source: AGHT+IG5lE0uCP31F892Rhz+3o+LdNX1Rw5571X/JjIijPM/WottLx6odEgFGO357kvJF6BtLvDxeg==
X-Received: by 2002:a17:903:3c25:b0:26c:3e5d:43b6 with SMTP id d9443c01a7336-290273ef107mr347052995ad.32.1760552026115;
        Wed, 15 Oct 2025 11:13:46 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2909930a72esm3126625ad.21.2025.10.15.11.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 11:13:45 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Wed, 15 Oct 2025 11:13:34 -0700
Subject: [PATCH v21 02/28] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-v5_user_cfi_series-v21-2-6a07856e90e7@rivosinc.com>
References: <20251015-v5_user_cfi_series-v21-0-6a07856e90e7@rivosinc.com>
In-Reply-To: <20251015-v5_user_cfi_series-v21-0-6a07856e90e7@rivosinc.com>
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
2.43.0


