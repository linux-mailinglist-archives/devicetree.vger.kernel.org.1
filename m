Return-Path: <devicetree+bounces-173214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5470AA7CBF
	for <lists+devicetree@lfdr.de>; Sat,  3 May 2025 01:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66B953B50F7
	for <lists+devicetree@lfdr.de>; Fri,  2 May 2025 23:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F95E22F744;
	Fri,  2 May 2025 23:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RrCBEhO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF6422A80C
	for <devicetree@vger.kernel.org>; Fri,  2 May 2025 23:30:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746228649; cv=none; b=EtTxiFVNZJ74qlivA0F3drAsGxnIELelZfxTuSabtydFDaiZYH09xlEDxOqYIxKx05ltyd/aLCEB8ECMdFpD22TBoE7i0Z0gmp9ySvKyHFf/2kc7yHUojpWIRiFznSKTE7Mw1tPSB1ZP5pO3QwDYhYuqHeiUPqMQhGrOvw5/ZLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746228649; c=relaxed/simple;
	bh=0tq61D9uccU6FiQqC8xv/y4u19vkZ7ShJckqXhsFT6s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JnBPvwzO1Z8faYNQEgE2mFsbU2ItjZR/JAbR3LM3kE0rqe6GoYsIntpTrY2CeaNJq5lLiyB3dx4xm5xdcDUcj312daTzPxqJrGwFzmkR1/ckwa+pPJPPp85IJ+3DGT1+ZxVqQzndoABZWf1G9JuDgvGOSFOUFQStL/G5CStYZYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RrCBEhO/; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-22c336fcdaaso32745135ad.3
        for <devicetree@vger.kernel.org>; Fri, 02 May 2025 16:30:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1746228647; x=1746833447; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yHp8skVfcDwQ99Y8qvuLL+UOu6n4/KmOGLmf3JbJ7iE=;
        b=RrCBEhO/bym/PUAppKE9EUs1vGGxECFx4JYqM9GhgT2G/62v1fo9rYEELKBViD4EfZ
         bsTZPgAV+rw6wyLwMSpeQksFsxVwBo3ASb1nVM2ifAlvgsZrlyxNl4rnrLOhMiLluDtC
         DNUhAbf0K5TpPGRF4pDyO2y97dr2OuoSO6ZNvqNKq7oRX1AJR9JLa/njZLPx9RsYQmN3
         xRm7gq7nUcMq9hjAyl+X0/vyjAptO+g66dN2Cy8NGri2zfExyO9O5jfCsLVxVHBN1tAc
         L5rmdIXraZw5SO54o/dccdlBzAIoKxqlYgVlg9ZQqcF3uBrvYDq5fgdpiRE8nkkRwReU
         f6MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746228647; x=1746833447;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yHp8skVfcDwQ99Y8qvuLL+UOu6n4/KmOGLmf3JbJ7iE=;
        b=G9uK8UDKpmdtCPb/3TNEatRNnLLI/5FCIz+edj7gsfaiPyftBxelG9koauqvIsrPc9
         byl99Va9USmjBJFIWB+XW/M5CrolmpHUx4vpWkJ8D9kgl4ZFjzmRKo1cQqT8wll9UXav
         SGZlZXdZ8MatJzZULardazPlWjeDp/7vox7Iyazd5ik04KMRDZZoU/pKvLv9pzG3aHjQ
         TeGo+TZ1mOeKDZ/Ksq+9RGvFe2JOrAo56odGD+6gXOSIY8aFyxcQdAqcWsy1WztHZU4d
         N1nlR4bZ/F338svvvRznEukSEEGBON3sAqd/HC4S8RITf66YuwmtPG68DCvFWbw3EWfP
         f6ew==
X-Forwarded-Encrypted: i=1; AJvYcCUIHWq49p9avVC8PmZ0Q5AQ88RxSBGIMS8ylT9vP72pZh3qp4CON+3Pvvv7vj3frBrua6X1srpuY7Lg@vger.kernel.org
X-Gm-Message-State: AOJu0YyTCRIg52BiBFmFlvkK3v/bGo37M914VhRygr5cM/uz/chYELdg
	WM3UWDKHLoxnSoRwfhf7Txz5XaUVBVutLT8nwYhtjmZj4hmLz77QS5NN0qAhHk4=
X-Gm-Gg: ASbGnctfUyHJ7RqrB0sLT2Nt5yeXfTJtbIdk6fDLv1Q3mR7vh3K5yMvpTBic51rQJZp
	6OrAC7oh87MLdvqBxOCE+ys48JxkUFZH1n20+HazQU9XOJmvcAGaEf6lSQtiWZkUP9xMAD7mWhA
	7j50ZK3uqAxcVrxGdY82w1UNVWTr4PMWIBVMW3EXZyP03VImKmgwKVrmWczHsiS0cIhOUZN/+Jy
	jwxhB8pTboXNeB6i43D4W0ToXhyIAVcHUva6FcItF4eaSVEFUiInyVf1g5m35mkdJgoK+ZFILjx
	CALmhEPidayRCjvcQpXdY0NCiSXVLUz8M5ncmVcgaIt/1eDBit/SWcZUqKPlXQ==
X-Google-Smtp-Source: AGHT+IE7dZgo/vpzWfqm3CX3dsTr88XWeuxnKV7R1SeEHd0BNwvl70GJFY+aLiGFC3AULLyuCpB9mw==
X-Received: by 2002:a17:902:e88c:b0:224:3c6:7865 with SMTP id d9443c01a7336-22e1030c76amr65218425ad.3.1746228646876;
        Fri, 02 May 2025 16:30:46 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22e15228ff2sm13367055ad.180.2025.05.02.16.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 May 2025 16:30:46 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Fri, 02 May 2025 16:30:33 -0700
Subject: [PATCH v15 02/27] dt-bindings: riscv: zicfilp and zicfiss in
 dt-bindings (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250502-v5_user_cfi_series-v15-2-914966471885@rivosinc.com>
References: <20250502-v5_user_cfi_series-v15-0-914966471885@rivosinc.com>
In-Reply-To: <20250502-v5_user_cfi_series-v15-0-914966471885@rivosinc.com>
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
index bcab59e0cc2e..c9e68bdbf099 100644
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


