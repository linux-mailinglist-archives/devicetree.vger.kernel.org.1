Return-Path: <devicetree+bounces-106893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 790F798C272
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 18:09:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ED7A6B22DE4
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2024 16:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D606A1CCB3F;
	Tue,  1 Oct 2024 16:07:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YfDEZ+0Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CE201CC892
	for <devicetree@vger.kernel.org>; Tue,  1 Oct 2024 16:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727798839; cv=none; b=mdGkFp0sf4NHwDw1an6PlwWtInrUKmHLh0SetLclR66AFs660nHGX6o5ipgkPVojTA2YQm3ur/xnWwYBrIG0f5KQUm+lkUNfz7BHIzROBE/7LkH6EF4F9L+n24+G+nhUFcie6gisLmhThlXsdqNDDusI9wrADVKjYkIYYcMQDRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727798839; c=relaxed/simple;
	bh=9D3t/x5ldu0vCmZ6SpOxBl6mFpP5YEsCpnxU+0fCsAk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MVs9Ekb3q03ZwHSeiXDRlpT/Rr6SyQ4wTxZ+9wnA2X+KTltyA78BZLLckXiWp9oCbfznKBWR0TjRsicajGjGODdTnke2Sz8Ugh4IjS/v0zn4+Zf0MjE+T82o+bugf6LKhZMSsUCq9XNfB3Ogx7iuyNehgd5BpQ7VSf4IqcIf5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YfDEZ+0Z; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-7db637d1e4eso4450548a12.2
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2024 09:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1727798838; x=1728403638; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KtNVXjjPkEHV4V6z1fTmchaZwC5pGCKRUL8HB/rDqj8=;
        b=YfDEZ+0Ziov2Qey0fUVLrN3D4eyVU7O7R2TQgjAlWvWj6yoBHMhaJjpXQm3dvopHNG
         QYdirShh+f09sMQng0W9XCdPt56+MI5caQA5AsLkwJDlZMGYxErlHmqXRxpDhg/z9bxL
         +ZzN8N1xdoDj1ceQvPdWUo3q2BFDsrzXnIFGcdx7powX4FOgWljNrDtVBWIWNEYFLRr5
         P/iZ7A4jQNH57fOfaeSCMucHQoMH4AyAM/2tkbcHTYO128XREbCmFdZxM/h3jOIs5VPh
         1t/UzcggXddCXUQyxaaBnXU/AU68wioasopczipdek+bBAuah3APXG4Rgb270dV1G9hm
         WVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727798838; x=1728403638;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KtNVXjjPkEHV4V6z1fTmchaZwC5pGCKRUL8HB/rDqj8=;
        b=LYDVMWpv99BGnHi7BjNJRUDhngO+7jplKcyrYlSNCt7XV8Mpw8aa5GdCvI3NnHnpGv
         d+PZF+kX3ShWi7MFgerzLIOVE+1wtFx4bGRQdJ4FeKV+aoRZ4/AGyoyS0XH3MvGuUj9/
         Uj8hGfsW5jKJSNlF6Ntem7dqKWVUXrsJoy4944p1RooMeypal32jPfxwPVbqFVJE4LCl
         1FJ3uT6DnBtnApYjU2hCbw/Kp3LivaFA7KJA2E0e+fwVTJ8VQ34xb/aMPuFvpRiPAgBk
         2zA1yRKWJ7iuX/jDW2a4KiAHLdw9buhRpyKRX0OOQeRSxARney8YAITBNmGEfs+wT7A5
         Q2WA==
X-Forwarded-Encrypted: i=1; AJvYcCUNQIEx9d3DIZJZmRnxA+84DAfE89nZ7suOzTNkYOKJzMdog5TJi6ohLYQ1uDZjKCw1U7frE22vHq+B@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ2qpjaZ2bhT/jN5IriHj5uWLkWmDxDzf7Jft9sqDy6h1EEMqs
	YSznv+3wqwWqJLY3IyH5Wagqasu1TxWnAUypbU0EysW8tsT6A1jbmUohtRMJL8tCELIGldZmuSw
	F
X-Google-Smtp-Source: AGHT+IGUHiuJzYzZ98ttT4VkP6ZUowafZttsMI2A0s9DSSKJP7pFR0E95zO3sMygBlOUl3biGdauQg==
X-Received: by 2002:a17:90b:94e:b0:2e0:ab57:51e5 with SMTP id 98e67ed59e1d1-2e1846bc39dmr235253a91.23.1727798837693;
        Tue, 01 Oct 2024 09:07:17 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e1d7d47sm13843973a91.28.2024.10.01.09.07.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2024 09:07:17 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 01 Oct 2024 09:06:12 -0700
Subject: [PATCH 07/33] riscv: zicfilp / zicfiss in dt-bindings
 (extensions.yaml)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241001-v5_user_cfi_series-v1-7-3ba65b6e550f@rivosinc.com>
References: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
In-Reply-To: <20241001-v5_user_cfi_series-v1-0-3ba65b6e550f@rivosinc.com>
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
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
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
---
 Documentation/devicetree/bindings/riscv/extensions.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Documentation/devicetree/bindings/riscv/extensions.yaml
index 2cf2026cff57..356c60fd6cc8 100644
--- a/Documentation/devicetree/bindings/riscv/extensions.yaml
+++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
@@ -368,6 +368,20 @@ properties:
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


