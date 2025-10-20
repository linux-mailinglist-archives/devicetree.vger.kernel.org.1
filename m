Return-Path: <devicetree+bounces-229072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CB87FBF3850
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 22:54:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C36394EA323
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 20:54:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6493C2E7BDD;
	Mon, 20 Oct 2025 20:53:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b="FvDMBt34"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 828772E6CAD
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:53:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760993622; cv=none; b=bFK0Jv5SnapmawvyGB9L3GGZbX7Gb1Us8rSP0boNC2JQDwPOB0GVTAv8bWEwWo9JxtDtPWjzIXCgNAGBYH3Dfs9yhU9yZke9V6WLbPI1Gut2EKUDtH1zep9YMlKT857QgqMPTz24FDCrVnLa2i+XQfFywOvDBMYiV5ONhIhG4gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760993622; c=relaxed/simple;
	bh=onQZPDO/5PI+EGQWomoauY3V7EJZG9au2H7fkbOgnBs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uwbLIwWmEKlIxOPebLTuY/0e8zc/T/nEBEb1RWPD6UmXGzFuhm7z/YzlfeLLJfLTKp4LXDHt37pwPw3hTgWIATCFPIs7jMGMgwsnz4KCb7C5OmR62MOgPBQ80p5zC7EbR06oUWmES75K07vYe2fJm5Eq7y11SDtjfX0V+YtAjWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc.com header.i=@rivosinc.com header.b=FvDMBt34; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7833765433cso6034829b3a.0
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc.com; s=google; t=1760993619; x=1761598419; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Vc18KrWuMNfUoArR2DO1WTDm9aMJ2VnekXi8RaYkOI=;
        b=FvDMBt34Bf4iVxQuImCUekwk8iBwWuuao9LFHHwRIUfSil8m2XEwWsXFsT2QHTaeoS
         MvKPM+w1ALObY3TlROkcZBrA2fyK7c/DJUoAKLtB6R01OA7PAzIibBn/N8QJfhjAq01V
         ymS6quQHPn2u7rftkeTdvpBuQrcSZV4W5yumPha+Stbj08h3P2gasXyXjEYDIcoixVI6
         SFawYv9yF+UvxIv4MQFKp9SmBmpGmSc8J8SOz0/5jzi8rEyVlpudDGtE2b1LEml2HwIg
         aaBzHeNgzZqeV48h5QKVNvwJCZtVbL2sPe0yRmL4MqjSh5qoXS1jJE4ka5WyGKnG6DtK
         oYyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760993619; x=1761598419;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7Vc18KrWuMNfUoArR2DO1WTDm9aMJ2VnekXi8RaYkOI=;
        b=dT2XLdBUvoOOEPQ5uV2SynoNt9x8DqtmLtFmorMSy/tA52tChPeUrGrWhEjbaSRttM
         V5qlAfNcHsQsV00R495Kv5+3nBq3u0SM4EdFA0IBAraq5DvHVIka69BGBM5PVwfu+XIB
         HA5IapcG+DAJ+tsMlQJMVKAhaSHMzacCjRWQHOxvxuJcGspdmTpTEuccXX3RzvJayoW1
         lScGJIBEcq7AyKHUDnxyx9MQ3ejK9NNjSaqcPu6CE4n28UDLNGq2sx4yUpCUjAVohJK/
         jB99yyuX56zQSAfM6rCEOpDFIEVVsf5iHonHG4uMqlbN9G/O2VvAV2vaUebkFNCixe2q
         aEpg==
X-Forwarded-Encrypted: i=1; AJvYcCUGRvthqB/72EFLeHbPm7nuWUu1O79LezW6zr4bfXRfmlm6cdJGqupO3ybS/BplOxMT1zU0mI8xT6IA@vger.kernel.org
X-Gm-Message-State: AOJu0YxYqW+zdigiUJthNi3g4a25kbdc9VtnCYJfH5psQ6Rs58Uq6ZKF
	02dCLa6vA17PcRNZSaGquuj7J81ZBZjokqhlhITzC1DO3msP3/bg9nxIr2upmjazlpQ=
X-Gm-Gg: ASbGncujwiK4kOL6uOegTuW1/YqryU/UbuObjlpxvdUnBBEgaNE1lLs0wVv/q6xWHQM
	nWK6KJMXXNBvzYFVMOQXvegQkjhqQvQvJLELE+duYN0dJREnCuMZDs3sgMd6jDfXdFnbwgXGl0R
	mhyHM6K10papPDumuVc5/UHfOo5pCJZz6sFJdoAUgBhL3n3yn0KYdZW23AO/7fbvmOjJ4Ok5RYO
	Qq7QjyfDlBlk1tKSB4sowcxY47GsszHjtU8MF0+br6/WC7XkPty32ZnAmf4zznMPAecTC6+pKhh
	oC0bIsebpjbSJi8wHESVMH3Us115y76ytjqdJyD7or1zFpVTG8QFj/VwcB7cY/qyPSaAzm5WHIY
	dpQhpTCNdqFdVNNEA442A2DUlH+A7dSma3VQojrqCuVy5HB78PVpOgKfeBN4Kni8AOdS69ziB9m
	/KVVSe2TJ8gqwZ5zWtxiSZ
X-Google-Smtp-Source: AGHT+IGL4wpVGpFAR6+71Q3uMu9smAAvPQjPoICYz6gHBaftPyajfTVLLzLP1i70rrv4AcCHkeSJkA==
X-Received: by 2002:a05:6a00:acc:b0:781:1b4c:75fb with SMTP id d2e1a72fcca58-7a220b0719cmr19998820b3a.18.1760993618646;
        Mon, 20 Oct 2025 13:53:38 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff1591dsm9453867b3a.7.2025.10.20.13.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 13:53:38 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 20 Oct 2025 13:53:31 -0700
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
Message-Id: <20251020-v5_user_cfi_series-v22-2-9ae5510d1c6f@rivosinc.com>
References: <20251020-v5_user_cfi_series-v22-0-9ae5510d1c6f@rivosinc.com>
In-Reply-To: <20251020-v5_user_cfi_series-v22-0-9ae5510d1c6f@rivosinc.com>
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


