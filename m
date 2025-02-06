Return-Path: <devicetree+bounces-143479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A69EEA2A223
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 08:27:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 246011625A5
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 07:27:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E8F422DF8E;
	Thu,  6 Feb 2025 07:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Ye+lZv22"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2419422D4C0
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 07:23:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738826611; cv=none; b=CNxBunN5vpR4GX5Qs7DCQPeTciSVP92Wh0unXrF8Jbd1E0UX4oPXFrAIofAIqtlpI3J9/demjdGkkDdRnVHp7sXA9F5KPuY2N91UCdgr4hUQwNwZsWJ//Csg/hxt+1ShqVRoZLgxt6h59IXdBNgA1qwFNcbxUlfLnijcN7IRtls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738826611; c=relaxed/simple;
	bh=HHH1zghcNvQXpV5wj4QvWZZiP+q6wghkX5W0XvlVWCI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CKRCAFOmz96QREhYtqmilZYbQo9F0ZSmbEidQxDB3Ry5DddimITW8dd8aJbnieXN0vlCYlr4Sa8HJmysZ2fLaFw+wgudtNGfVSbrXwpLdLs5Ez9nen+pwDXa1PZrrBfU56Xld1xJqJRWav5UjRjDgKh1QXq+9aFfsSYt8WEAg38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Ye+lZv22; arc=none smtp.client-ip=209.85.216.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2f9f6a2fa8dso783047a91.1
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 23:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738826608; x=1739431408; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S1ycQPnopfj+lIzIUm/dRgw4jBMxR4nO8n6QcQamF/g=;
        b=Ye+lZv22CEuz7dWWpIM2ZTiVPxBwpKOSbRhu00GGh0FjXLSnrV1OWsoeb/TkThAJHE
         mzMowQHjO5q5HfVMUoagdVA9p1XcydJydamHWhWB620LKqMTIJQ+AhfTKy2UADwiGJGt
         P/HR7nMFjVm26+xWm26fqiCd9mNez0A+3/SHWad/38+YqUhHcnsF9HbX79r26IqByUhE
         0ro2qvteimqhiK9Yl7D8YmDd2ld8AZc6zbvNu0+R9sCzQmiM0Gcq8NHrJEdXFXFbeAIk
         qfcJP0XAVge/Ev15fbEzxq9Iu8k5DSAU5+M+WH2L6vn/etiIlBTijZL/xgX/0/VQJDmZ
         Hbqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738826608; x=1739431408;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S1ycQPnopfj+lIzIUm/dRgw4jBMxR4nO8n6QcQamF/g=;
        b=BUSUD6HiduNwoUZDaXUqV2aedpwGASKEeTTY/tVR9Bx+lXDUqF4U2dmN6rz5tfr/RE
         fZXpRrL40qIJyGf0WY9ohAiTbdBP+N8T7q07X1lSRISXDvnnYWspzr8eu+c6OXiHWkky
         mOxcxWXrUxW2+c5klrVePG9v0ZEDG4BpRuzub8Z08cVnioVXwqF8fmtpr7l7DO4Vu5ND
         TIP23r48cEk/secG9npxoQFiXGEDNeXb2iq5fLFpgcOXOHjogqfryX8MqzQX+n4z3T57
         P/V1SWlosH2ffzH6WvbxEv/WIcLYdpO93S7YiBCu696oWyq5q3kxl/w2w43RHgzvnRoZ
         LvHw==
X-Forwarded-Encrypted: i=1; AJvYcCVEMz4A9WwAe1Brys87Y2HpzEFvEZAR1QKko/pAWsZKBZmx/oAxhW3T5qDursDUrV0aWhn3S8vmY9gK@vger.kernel.org
X-Gm-Message-State: AOJu0YyUC72jA/FWm1LYweYq9oxzdMVKXeWRj9QYes6Jgp3Uq43YzsD0
	p8utOuApVtrpBGAtjCk42b4PIC6p5DH5fa1011ivuUatt7qBUzMLe/9dzUiTN1g=
X-Gm-Gg: ASbGncvnYFzs+L3sjaMpRvMfU+z9vOOldMcsyg0AQRgqy9yAofZF1CmMy7m2WL5oGLv
	2W2+DvHxX/3+qO2RHnQfNsGNUNNTJJDYyfb/J9u9jn80AyM0cFLEsIbkaIiVZOHjzKMnCGvWLSE
	mtxj1oJu8mvge2grh/4ynsKLyvn06jw1FIyLPALUA0mH+Vjhe35nBdQmtJ49mc+PVWh8htvEitt
	MAsyPWf/yVNxvM53kMLdHEvg7FZS53PSTxV8OOxWOzaqAdGSvJ4QAoq+YNz4/pIZptcwycZIwsB
	q28jkbeJq7dYaJ7SdZqA4AnUeCz4
X-Google-Smtp-Source: AGHT+IFwe864GICHNnq9EVCYpLvbwfcMr9HibfAj+2D5yDDYG7ZeHAVPjVfRo7yQfH146FLB/di+WQ==
X-Received: by 2002:a17:90b:1d87:b0:2ee:edae:780 with SMTP id 98e67ed59e1d1-2f9e0793401mr10185856a91.15.1738826608431;
        Wed, 05 Feb 2025 23:23:28 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2fa09a72292sm630883a91.27.2025.02.05.23.23.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2025 23:23:28 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Wed, 05 Feb 2025 23:23:13 -0800
Subject: [PATCH v4 08/21] RISC-V: Add Sscfg extension CSR definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250205-counter_delegation-v4-8-835cfa88e3b1@rivosinc.com>
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
2.43.0


