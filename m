Return-Path: <devicetree+bounces-141271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4F4A2039C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:00:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 272C91885853
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3CE91DEFC4;
	Tue, 28 Jan 2025 04:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="x0JqsMIA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A131DD0DC
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 04:59:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040397; cv=none; b=BZcoEdLTaLw3cCD60/aL+85dUWTh7AqymNHoThx9hnDmRRilMl69/Qu5+fz5t5KPDLmby6alNM/x16ltC73IA0xPuX9/TbKiXT24EceAPnX1QpdxBRrHb0ELpLIw2aykyjpqRKEN8VW5aLvC9ZiWPqlrBHMs5YvxvJanJPB9cPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040397; c=relaxed/simple;
	bh=m6q4Neyt8+DISvN9Er7fHAb+rxOe7GRGob3X+Htbmbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ctY7L5iO8Wuena6dD1GrdefEWrXOS3Z/K3x6pDC40YMVZOXZf8sjGWELZWnWrz7t/ps/V/qdCNJRYgmHYB/8NqQcq2hQfi728OgF8IWqG5mFj8iu3B1DABOPxusZISfS0vPvH8tj8ET/wjmA8bdcn5y+TRBDeYByZL7MO7hxaV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=x0JqsMIA; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2ef72924e53so8917573a91.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 20:59:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040394; x=1738645194; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XdmJbLVNE72s4snJvlCZyY59rcdtG68osktCOOFf4IU=;
        b=x0JqsMIAVwzdxLFNyE/FKoa1Lnf0o0xinvpF+Pxttt/Ewlm8M1a9i78nDFfyopnJdb
         aV8w0S/NaSEQExij1KnrJKbbBAqN5vTkArJZyg+D+upHReo9uLLlKVVWfg3WfjWKDVut
         2OL+65gDk8UvlATNxAOvew7UfJ29t0ibo6lZu1w4+Wfci4RAu5iRSKBj3Z4lMWWys0oN
         WW5syeeglHPUxK2EdQIppa8WDUyMoy4mK7P8B0kmFuwknYhh37TW8sz9cOaGNnSbPagC
         kd1rFDfMQ9dRxo8/6PvYd7bbzeAa2pFT3Xg0ophyV/hUqhOLSamnlP0NI++gIzoixVKF
         uZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040394; x=1738645194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XdmJbLVNE72s4snJvlCZyY59rcdtG68osktCOOFf4IU=;
        b=N+38/WCV3RCqarhpzUTCURPDN4A2DaUixsCOBwkjLCkjGv2V3H3cErzI1xUjAyZwiE
         zvMbSQXV/0yEJcnZ3y11kkgcPI84g2Eer7KMSanF1IvRQwUhoB9KJPZy1a3ZX+hsW9+5
         tcHFJLFheyXHjZG2hDe7u6n61KKZZ1H20Z0PardByV7+GVGaMv7rUfRukp549CA2wNyp
         dTS7W1Q4qggHC0OnZZ9r5jhB4KR+OLi3v2MJi5iX3aacJDhGUy1Izt2IA0Eff2F7jArN
         GGt7Kb/zc2ui+aNmrDnrqfPP6ttIWWIMJzxalHvBGKjhlveuJN1akoGJDDw1R8ZtzN51
         lo0Q==
X-Forwarded-Encrypted: i=1; AJvYcCWPnDPuawAbE9y8DsGips6KJVdQUFrG8tj0fp4u+7Rg8WSefA5FmhZcuWRvb3Ye0t7aeSyMTaew4249@vger.kernel.org
X-Gm-Message-State: AOJu0YyWCinPBMh8wtsTqXYArfJoFAQ5u6LO20JFittZvxjO/dOfTAcO
	uFZ8nDonjsogoISBrCAPQLzn4AoYFB7CWe1uXI2M2sNsmXMj/n4SFDZTXaWPO7s=
X-Gm-Gg: ASbGnctOV3Yt+jlzLM13uyNjIFwrvm3qk4rd+t8ZICwD5lbWzOfalxYF5Z6qRuxKnaC
	2WPs49NYbYWHKdk/rKe34CgP2n3+tUKE7w6QucdMBdU9v9DQGobM6sAjpOGyBlE4ZePOY3ye+h8
	XlCC2VR3B4H2o4L0OqSLvBg8ABn1Lp+kkdzYwmTa1VmfCkaOYbbuAFfSfm+GXT9aYffg3l9TZ1B
	EyCywSZocar0HhMfkBpXGEh588Rk7OC11mp+wPKyBsQpXlTDTLyqZ6CgPo8b0+rvrhgQcsDM72T
	bVZmwOOOJ3qNBy9Hw6kw77TJyViL
X-Google-Smtp-Source: AGHT+IHSyPvtuQcDcqt3ZNPeK0UBj94g96yzFH1G7FLZXdPg/qfAF4HitoyPnQvPmyX4Tw9btm7mhg==
X-Received: by 2002:a17:90b:258b:b0:2ee:48bf:7dc9 with SMTP id 98e67ed59e1d1-2f782cb092dmr65904028a91.15.1738040394340;
        Mon, 27 Jan 2025 20:59:54 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.20.59.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 20:59:54 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:44 -0800
Subject: [PATCH v3 03/21] RISC-V: Add Sxcsrind ISA extension definition and
 parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-3-64894d7e16d5@rivosinc.com>
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
 Atish Patra <atishp@rivosinc.com>
X-Mailer: b4 0.15-dev-13183

The S[m|s]csrind extension extends the indirect CSR access mechanism
defined in Smaia/Ssaia extensions.

This patch just enables the definition and parsing.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 5 +++++
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 7 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 869da082252a..3d6e706fc5b2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -100,6 +100,8 @@
 #define RISCV_ISA_EXT_ZICCRSE		91
 #define RISCV_ISA_EXT_SVADE		92
 #define RISCV_ISA_EXT_SVADU		93
+#define RISCV_ISA_EXT_SSCSRIND		94
+#define RISCV_ISA_EXT_SMCSRIND		95
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
@@ -109,9 +111,12 @@
 #ifdef CONFIG_RISCV_M_MODE
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
 #define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
+#define RISCV_ISA_EXT_SxCSRIND		RISCV_ISA_EXT_SMCSRIND
 #else
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
 #define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
+#define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
+#define RISCV_ISA_EXT_SxCSRIND		RISCV_ISA_EXT_SSCSRIND
 #endif
 
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c0916ed318c2..d3259b640115 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -393,7 +393,9 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
+	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
+	__RISCV_ISA_EXT_DATA(sscsrind, RISCV_ISA_EXT_SSCSRIND),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
 	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),

-- 
2.34.1


