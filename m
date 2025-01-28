Return-Path: <devicetree+bounces-141277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E44CA203B1
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 06:03:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 684B53A2BD0
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 05:03:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1534F1D47B5;
	Tue, 28 Jan 2025 05:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GZVpJZdG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B61E11C5F3F
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:00:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738040406; cv=none; b=Oj4pDf2nQIvzZTBmiiazZKsThX1sDgzY5XDSa5lMLGb2Q8klNvzDyfe9AawqtGZxmseCJXzwfzlzzaW5d2nzhpkKrSPAPUzeUWUw5qIQ1XRGrEo7CBuVwsmpj/hdeeo3NQWAI7IebHXaJVa7iPscljGveWYQksTXt0Q+EBK95f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738040406; c=relaxed/simple;
	bh=6cvdh9C7OPpZKWwBlCCCuIR/XmKs0464rb7Zln508uw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=OqbMRFIDBQhpB6CHbOvfkVQRIObYym3Hh0zi37q0rhIKEc+JWEmmpZm4565+79dRoWDDmhikKtIgaRFBueD/P7BEczNemFTATlw5ypT8oxOwWwGJUJkfT27dmpR3bxfV4pmYLGHYrHnsvQwIKCWY0FNPS/jg0X3FvD9h8TnW+c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GZVpJZdG; arc=none smtp.client-ip=209.85.216.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-2ee8e8e29f6so6896238a91.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 21:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1738040404; x=1738645204; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nWIGDLFCubHBSCVyRujLDRmHtXnqwdBi6tbEZKWPh8g=;
        b=GZVpJZdGtC3jnLTogmO3r6LqiJ8uDTNF50xGi6KxF8ShNnR1fCdDCxEn+xMT0fliwx
         gzX0TOYzqdFVtJslklfdF7YIIhxgdYulyYTaqsqo3q3iZXxTdirTA03Yec2bRaCrBsW0
         Iat8ZdU4WNnhfxuo3W+Yf+opLtamyXltwQg/EaLr+RkINkW4m0g4roIOC+7NKWW9glqN
         JeyIZLdZU+3uAgGDuVHtOkQ9BWQ9m+A+9bsHBbKgQ+1EW1GDAI1O759qXX5j3I/gQzho
         Yhj5D7pVi2dHbEvg3Hrjd52qQ8LmeuOmCOXyl9GBqkjBeJiIOBMiK0t+B48Uk3rDshLo
         ng/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738040404; x=1738645204;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nWIGDLFCubHBSCVyRujLDRmHtXnqwdBi6tbEZKWPh8g=;
        b=RvVwCB2ifURmxqbJELRnc81A6QJ3OEn7426yaxn2HZOoi9wHRQg4cr7DvuV88yVRmJ
         lknr2k3+NgS6A7akJlBtaRksC2WVdshf2B7vuS4JEkGKEbRVcLmadIsOxoW5dKBQcTmI
         3kwUs+dwBv8xZwDkoq3AG9wbPHCkLQoWnpDpw/xn9tjkafJADd0JyBW2UGb3Lp1ZMkfr
         o/qosx8bMZAJyb5BnWRnJb1aD02Lg2fs2UAq5QlOJZtxdihiM1YT8blnJPBuY4nE9XA4
         N6DNBhhsrrCHKaAJQNBDGatRab4VF/NhchU/ZK+2kdqSQsSd4cmWoY9lkNyeVZpxmOWF
         OOsA==
X-Forwarded-Encrypted: i=1; AJvYcCXSpJuT5dUvLGaqkzOzetE+ZWeAbyIbx0i4Nxs9Hm2vG5r7jjNlWO89ZANHjwW2AifjOCDQjFKux468@vger.kernel.org
X-Gm-Message-State: AOJu0YwZjYDV2h29La7I3Nqc8WBBlkW3JsHMqWHo4bit10Wmogv9oFwg
	6S4hE7cmDMuZrZOFGKzy/OxWcu63qDTs+f0Gs7E+0vrldpjIpax1Q7KB7EVluf0=
X-Gm-Gg: ASbGncs6apaRq450gptQ24P4pr95sjyaYIBhYTQxUljMJ/Yc0F6YaoAC4EESn2Ekh6+
	cfTOR6387cOjOhyHqYupEP5/O7wpeL2ty1yVBPQyszf8Ega9tbgDNE2S/ucEMEZbt7nwnlkBUJy
	3akMFnTP+OC2FWYfDSlLJpAtnhcY/bUjF6QyQ8IO6G3Xlf4VqVSDf6RuFdBP+J8ShIaYlrWxMy/
	cO+2u/hbydAjh6wyhWpXuCoErktA+Z5/1FArYKSiAvjEKDc2HUni3PVz/EUO5dE2qMEl/NF1eTz
	CMtI15cyPLuGFdr2FRbY+vgHD2jm
X-Google-Smtp-Source: AGHT+IF6z2gLBaxXEkT5T0gtB5dB8hKkZBHYBvrUyOYQ2AWcmEN76E95Mjw0gLw3wzxwSkAZ6LwcMQ==
X-Received: by 2002:a17:90b:2c85:b0:2ee:c9d8:d01a with SMTP id 98e67ed59e1d1-2f782c92ce0mr63874654a91.11.1738040403855;
        Mon, 27 Jan 2025 21:00:03 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2f7ffa5a7f7sm8212776a91.11.2025.01.27.21.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 21:00:03 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Mon, 27 Jan 2025 20:59:50 -0800
Subject: [PATCH v3 09/21] RISC-V: Add Smcntrpmf extension parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-counter_delegation-v3-9-64894d7e16d5@rivosinc.com>
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

Smcntrpmf extension allows M-mode to enable privilege mode filtering
for cycle/instret counters. However, the cyclecfg/instretcfg CSRs are
only available only in Ssccfg only Smcntrpmf is present.

That's why, kernel needs to detect presence of Smcntrpmf extension and
enable privilege mode filtering for cycle/instret counters.

Signed-off-by: Atish Patra <atishp@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 2f5ef1dee7ac..42b34e2f80e8 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -104,6 +104,7 @@
 #define RISCV_ISA_EXT_SMCSRIND		95
 #define RISCV_ISA_EXT_SSCCFG            96
 #define RISCV_ISA_EXT_SMCDELEG          97
+#define RISCV_ISA_EXT_SMCNTRPMF         98
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index b584aa2d5bc3..ec068c9130e5 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -394,6 +394,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
 	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
+	__RISCV_ISA_EXT_DATA(smcntrpmf, RISCV_ISA_EXT_SMCNTRPMF),
 	__RISCV_ISA_EXT_DATA(smcsrind, RISCV_ISA_EXT_SMCSRIND),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscsrind, RISCV_ISA_EXT_SSCSRIND),

-- 
2.34.1


