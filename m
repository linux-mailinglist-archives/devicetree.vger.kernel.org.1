Return-Path: <devicetree+bounces-141274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A4CA203A7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:02:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C07CD3A6D91
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:02:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4E41E04BF;
	Tue, 28 Jan 2025 05:00:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ANmD/XCF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3CEC1DE4FF
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040402; cv=none; b=P0Ip1/swEiDztSH9g2NHg2m/YvxS5Fo/xglsnck5VWxAh/yTn7YQMuieuk9BzAvTt7RUpX4039N3/dOZaxuiR2TEvsKfL2+nkgb6inS+TWCzPic+1OH2UWQkSSYJ8bUQxTVHkgBsi0ZYMFoSdmJ4HDnBjcSjRuboNVNyN6yXoU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040402; c=relaxed/simple;
	bh=h5wOko5/ga8cV219RAU/eWL2w/vmxvwUPsYu9zhL7hY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HJvMDmBAc6HQkvYj7BrjGISqu5w4fb9guNWAR7loYiPM3X0OQSr4Aq1Q1MBuEJAkdYR5MnObb20qsRBPuZe4LONjvhUuV/zFJ3USO31YSYHqeazb3GC428FgsZPbCJ6w4LLkVHJNAtPMtf6zs2CjwWgiSptKaV/Xf9vFsYQhfB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ANmD/XCF; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so6896163a91.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040399; x=1738645199; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qaBtUmcc8yUuB4kb43/yPbo3SeenY+DY+wt99rutmtE=;
        b=ANmD/XCFnxZIciEMcbjQPVgpjqyOUPOldnaCS+gG8hLn0oK4EbroXHL4Nos4iQVwIY
         J62cEQpvWMxk2WybQup0fCEv7Hm1qNxAAbmNwWhW7Kp4ERtSk6yKIukZENsO8wFjrxyK
         a3c0jnW9Sf7i6XnGhm9hMWHUSn6J20q8mGzGDqC/djd8F3bemeVKGLsi0XmtIt5u6ZnO
         MM1UGuQMkDy+SzuaWFpRDgdztMAVY/UroIoBeGDD2ShvaqaQXfB5gFnOhSBJLtCVcIba
         MbRL7j1KW/HKsbYfKTh1yhsMJObduR09+TDMJblx1z0jgNkUSPFkqix3izRoTFGOXDOP
         EaWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040399; x=1738645199;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qaBtUmcc8yUuB4kb43/yPbo3SeenY+DY+wt99rutmtE=;
        b=s8rWfhFmiaT0614NFa8g7bZImpsz62n6QL/q4k0ooGjG13oJD/EvS6lcJqckZfv2pX
         CqpzSUFOR21CPOHGsKC1xucn21YuPsdF0z3Fq2QcnnIE2mNteAXK5+mMfsJjTAKHKxnG
         xMPbzMqKCs1r/Fe5Grv8dwHmViFAotAf8aenjBNYgK0QTp1g7LMWkdB3G0UuVfWOORm6
         BXAQW0cNyuakr2OsZ5uoBM6lL24oLiGgsuLSrZlQ3fOmu7Kg7UpkMrfLUjPauodxW5Y7
         nVmJMbev+wg1V0/XnIRDeflJf+bQHDU7wHNNQUrLQSgb4n3+DcbWpxD6jcqikD5PrrNX
         3pSg==
X-Forwarded-Encrypted: i=1; AJvYcCWW+lgUnNciZPT6t+dnbJVW7UIgXTzO0crPiJjOlenTdMNSoz+4MbTy5eVTCSJnYUIu4sXYfdgbvQ6v@vger.kernel.org
X-Gm-Message-State: AOJu0YwxnpRSSG+Sl0AegmdqFC3t4771CfecnGr3jkE7TvZqyeJhJZcV
	zJn0bSMvBai4ldr+gFtkt/q8oKMtZd6us/e9LgO701OFCRtd0xTJOyLRQGgLbxcEUr4InuhvqPU
	MJVc=
X-Gm-Gg: ASbGncvsC+USc+qoRf3XUDwyJCQnYx2szEwgwjBGX60NPD3pzEbFsYsOsSgVlszpPmA
	COcr7Re7XHDP3LWUe9JlcnODzHSUe1XCq4k2a31RmOAA6nbZjC/2Ak5EyMflD16lJmYf3KMJme1
	AG2TRKi5QnJZpA0qF614Yx6hj8ULyCrluOlpwf/b14tB6c6dHRE5jYUTeerglTiVQkBQ5lJD9yz
	IPESPpeWl+r2ZuBbyHUojoHOxvGhOOnkSfgnMKI/LcvRokSfk29+JYYPh+Yct3GWS84c21H6GTZ
	aI1uIIht/LwzeIEF5wKVcrfopfQi
X-Google-Smtp-Source: AGHT+IGvdsN2QjvjEdbxBM8fo2c3ojaIC5oAQTKaWVxAx/Vzcck7YYYeeDIBW3vl6CdvOvXnZUnWVw==
X-Received: by 2002:a17:90b:3a05:b0:2ee:c9b6:4c42 with SMTP id 98e67ed59e1d1-2f782cb68fbmr68628638a91.16.1738040399051;
        Mon, 27 Jan 2025 20:59:59 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:58 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:47 -0800
Subject: [PATCH v3 06/21] RISC-V: Add Sscfg extension CSR definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-6-64894d7e16d5@rivosinc.com>
References: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
In-Reply-To: <20250127-counter_delegation-v3-0-64894d7e16d5@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>, Kaiwen Xue <kaiwenx@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

From: Kaiwen Xue <kaiwenx@rivosinc.com>

This adds the scountinhibit CSR definition and S-mode accessible hpmevent
bits defined by smcdeleg/ssccfg. scountinhibit allows S-mode to start/stop
counters directly from S-mode without invoking SBI calls to M-mode. It is
also used to figure out the counters delegated to S-mode by the M-mode as
well.

Signed-off-by: Kaiwen Xue <kaiwenx@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 2ad2d492e6b4..42b7f4f7ec0f 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -224,6 +224,31 @@
 #define SMSTATEEN0_HSENVCFG		(_ULL(1) << SMSTATEEN0_HSENVCFG_SHIFT)
 #define SMSTATEEN0_SSTATEEN0_SHIFT	63
 #define SMSTATEEN0_SSTATEEN0		(_ULL(1) << SMSTATEEN0_SSTATEEN0_SHIFT)
+/* HPMEVENT bits. These are accessible in S-mode via Smcdeleg/Ssccfg */
+#ifdef CONFIG_64BIT
+#define HPMEVENT_OF			(_UL(1) << 63)
+#define HPMEVENT_MINH			(_UL(1) << 62)
+#define HPMEVENT_SINH			(_UL(1) << 61)
+#define HPMEVENT_UINH			(_UL(1) << 60)
+#define HPMEVENT_VSINH			(_UL(1) << 59)
+#define HPMEVENT_VUINH			(_UL(1) << 58)
+#else
+#define HPMEVENTH_OF			(_ULL(1) << 31)
+#define HPMEVENTH_MINH			(_ULL(1) << 30)
+#define HPMEVENTH_SINH			(_ULL(1) << 29)
+#define HPMEVENTH_UINH			(_ULL(1) << 28)
+#define HPMEVENTH_VSINH			(_ULL(1) << 27)
+#define HPMEVENTH_VUINH			(_ULL(1) << 26)
+
+#define HPMEVENT_OF			(HPMEVENTH_OF << 32)
+#define HPMEVENT_MINH			(HPMEVENTH_MINH << 32)
+#define HPMEVENT_SINH			(HPMEVENTH_SINH << 32)
+#define HPMEVENT_UINH			(HPMEVENTH_UINH << 32)
+#define HPMEVENT_VSINH			(HPMEVENTH_VSINH << 32)
+#define HPMEVENT_VUINH			(HPMEVENTH_VUINH << 32)
+#endif
+
+#define SISELECT_SSCCFG_BASE		0x40
 
 /* mseccfg bits */
 #define MSECCFG_PMM			ENVCFG_PMM
@@ -305,6 +330,7 @@
 #define CSR_SCOUNTEREN		0x106
 #define CSR_SENVCFG		0x10a
 #define CSR_SSTATEEN0		0x10c
+#define CSR_SCOUNTINHIBIT	0x120
 #define CSR_SSCRATCH		0x140
 #define CSR_SEPC		0x141
 #define CSR_SCAUSE		0x142

-- 
2.34.1


