Return-Path: <devicetree+bounces-170208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 992C8A9A33A
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 09:21:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E23C23A0FD9
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 07:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228101F418C;
	Thu, 24 Apr 2025 07:20:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="hWS5HHox"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753BC1EDA24
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 07:20:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745479230; cv=none; b=MLJRetFmw6vQNULPrywCjQtwjYi7JpZWg7z5LzMn/6TxkDzexKMK1Z5dKouKfZyp9O57vMfteIFocYyylsFPSJDUulPmIeAXInzIE3UNBddtnycHYO4mzZaEXSfnkNE5HSKIGd48O0BdFrox+CyPOdUKBxb4u65OX6CIB/5g1LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745479230; c=relaxed/simple;
	bh=YiVhhtwo3/7LJndpVIgtujp+IRS33vrzSOrk/lIRdRk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=u09f0hs9kDGKCqom58VcG1V5Rk7dUOXn9h6dWCrIoepOptP/oGOptDdxVmWk53wfiVH28yfetO03Vp88IlG4iGrK2CPtoUBmHgA8u3/19ygJ0XsOhuyOH7hGHcVeAF8bnMhwLy6JbbYAA4mCQxpxQFtw9xlXY4+rZgnix61jSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=hWS5HHox; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2241053582dso9951335ad.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 00:20:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1745479228; x=1746084028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DnsN/FT6wHpekGZzdtp9zZaBWWGp9NhN+LtMYNwstuQ=;
        b=hWS5HHoxvm5MOWQTLCMyR9dRx4b3dOMxsrXWdTOwFnJ0kMmHgger579sRaM9G7GHBr
         9HNJelZ4gQ25T6hs9mTbVYmVnrrNTkawXgsib5Er36LvdW053BW01C1sBLqxZpERPjBX
         YODYKTS/lFEQexDv4zhE8ojSveqzTuB7Ep2Kl90SlKsDCW+pLu5JLGQYlp1S3JB5at05
         /7YL2hVLERzwpNg984cyS069FEjCYeArPwAbxvKqZKoRJLGDwJzPToAs2O5J+85pknH/
         6ooXr8etz3jzaW4XWtbj2POL1DaeTdUIbl448Av0uYoW3Sk7iZYfbP6GL+83A96KYDZC
         n5JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745479228; x=1746084028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DnsN/FT6wHpekGZzdtp9zZaBWWGp9NhN+LtMYNwstuQ=;
        b=DNykwmZ88gTEJLxMMPdWvzKtbYpZswsmdfdOUUoLUCL5XSD3sHGqGtaIrvMj4AKpv0
         NRD3o4GeJc6SsHAlzmxNP/gzrM3gaIKKXZKahtDjcE+4XN6hBapVV64UnfvhlNfQLU7x
         IGXsDNINEw59ISYpDk6HxmuUzpGj0IbT1WIyKoAh5r4OLBpO2r0EbDbTm9dv6L05z0QM
         LidkKvzoQZwAZc9Ib2K7e7H5UoZ3WOZEkkWeLdEOqQP5Hy/swS1DPc6Uupgxp3B8X3tP
         fMoIxoxlNeTFPdAzJ0UNk3LkeBP2/1t7OfgzfhZ/INLPUHm7eP9vKgQjL2sLyBfDcNCO
         vQ8A==
X-Forwarded-Encrypted: i=1; AJvYcCXxMCh8N6aLcqzNqnGR3AxR0ADkFwn181ifCF5MKFmZ0/wf8Ab7hcmdqVqUC/mUZVVAn5DwoI3cvC6G@vger.kernel.org
X-Gm-Message-State: AOJu0YzCFqpO2M+KTbkPjnMyu+xes2ZRbr0Yrr0fuuE/DEia1F7HoFjO
	PI/JT+M6yT9BHQ+2v5caw2G24Qi7krTCy8jeoYux50/tCaR9WiasTyqIpNo6ysY=
X-Gm-Gg: ASbGncsxKcJFLNZ9gNqwsNxldZ29fkHHZjOo0RKS9Oswf46DczIJlLtWmsrVrqb+He3
	KA+vHqurUdv5mgbEZlMYDV0bRsx9bhYtY7klEVokteVcGMSH3dh8rYIb6v+vrcNjr7xoIneg/YC
	d+0wKx+baqEYg/FBtf6+IkKdf7skbwgZ3BW39r4hCQLwiwmErALOm+w3a7uPzIa4QnZ4/6Ujiwg
	fMeDZL9P+a4u+JE+DReO31jCwoTTbNbrv+LSN/Mb5UYieWsGa3AZVRdJOm0/IXy9zvDcYG5j79d
	RVstyj+TSiwu99UWl4JgcNkLm7e8dcnfOQL4muMOHCBcaolElUxflA9rak9m/g==
X-Google-Smtp-Source: AGHT+IEU+Y137gYRHLnOx26vSf7L3l2vsQIYY8+sFwtF+6f0KCB41T+GdLc1UUDDDmJfXYf+XxTPnw==
X-Received: by 2002:a17:902:ce0b:b0:21f:6c81:f63 with SMTP id d9443c01a7336-22db3bd0f4amr25027775ad.16.1745479227851;
        Thu, 24 Apr 2025 00:20:27 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22db52163d6sm6240765ad.214.2025.04.24.00.20.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 00:20:27 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Thu, 24 Apr 2025 00:20:17 -0700
Subject: [PATCH v13 02/28] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250424-v5_user_cfi_series-v13-2-971437de586a@rivosinc.com>
References: <20250424-v5_user_cfi_series-v13-0-971437de586a@rivosinc.com>
In-Reply-To: <20250424-v5_user_cfi_series-v13-0-971437de586a@rivosinc.com>
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
 Benno Lossin <benno.lossin@proton.me>, 
 Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, 
 Trevor Gross <tmgross@umich.edu>
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
2.43.0


