Return-Path: <devicetree+bounces-138594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E91B5A114BA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:01:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09FE5188460B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 23:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED1D5225A21;
	Tue, 14 Jan 2025 22:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ByoSjsS+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F5B225773
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736895515; cv=none; b=eU+gVG6GhnND4rp4FTVJtaErECx1b7sGMo0xKjEQ+Jr+G1A1qR0pOTxPdfidPchzYaUVQTSZDVrMeKkGCOqmAZf2i5lcI+9CsowrrYtAjn1WZocJQE2vGnb09+2JXOuglEyDi2bOydPNxi20ni6A0SGKPcWldg/pZ83RMz8Z2LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736895515; c=relaxed/simple;
	bh=6cvdh9C7OPpZKWwBlCCCuIR/XmKs0464rb7Zln508uw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iDV969lMFUx7eEcDKmohZlhvciYts34I/N4dtDrk8HtJGOADMsgLTuHQ4R56uZ15B3n4Iv/2uKHpjRr7oiXbS+kVxdzbpHFIl5KeNMoGUo7lr85dfWMOQEeLe7HatSxidxVStSVnVbKt5aZMeqCjRbX4NeV22Mf0MLRrvJBXI00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ByoSjsS+; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-21636268e43so142411955ad.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1736895513; x=1737500313; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nWIGDLFCubHBSCVyRujLDRmHtXnqwdBi6tbEZKWPh8g=;
        b=ByoSjsS+rJagZici9xtLzFoM1xDW5uEXH4ApT63qf79CvC7hNj/rsKJzdVum+fTHm1
         F7RLgwVD+7ra2Ty3u+WEHKhsFtLdbkQTRVQDnuA++slaDQVTzULiBpnjMflhdKpJc+eC
         Gj2xSkhEjXLu/dkHzYbV6RoAfVt01Q/AJZL4ANQbXYzZuQSi8AYAes8BtSoZX0GoW0T/
         weZKWWAkiHMBKFkSD8riT9gGg6CgsPQLebb3wwQV4/1ep/zJfGZa0S2oFYuq1zwPdtWQ
         TS6FWgaXMqSJ3TpJkbSQq3CiPw5ipK4PoNdjiaW/1ZeyQsIWvIYJoIcjcZOCpOBGDLWa
         MN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736895513; x=1737500313;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nWIGDLFCubHBSCVyRujLDRmHtXnqwdBi6tbEZKWPh8g=;
        b=PmA6k0rjgF4/qMSUCjQyBdrMU/gTva8def1KpNha6rRSWEvSNmfuq4JuKoj2LLykrD
         xEcEa5BuPJHhaUhT7/fa9H0dUznO3dj3RhQYGHuUaSKwRigCZUC2/TGgULPy0P0o6TNj
         E8rJ1cQUGSWLUi2p9fb2sMmtqchwU7ISU7xdpu1Ho6BYNtvLK6bIEeJzNmhDV1CJpESp
         rNktg4GpiPp6zIkJ4FUPTOVj2RiFOvcTE4untRcLlGBD+Bi6se5OlawqvikDiCYvsZpL
         PN8Y8oB14tJhRCAnJA3FFEXmMtjjnRIEpjZerRTVVzmLTTAXjf2+W3q0bcT3N9xwOpKU
         yu9A==
X-Forwarded-Encrypted: i=1; AJvYcCXDPfI7LJY9h7hceMdTK4u96lue5LdUwa8dlwJTbPM7BsGG8hYdxVukZGjF2IjCPumIefJb/MIbYxRg@vger.kernel.org
X-Gm-Message-State: AOJu0YxjtW8T3qCCJKNoy9bfzSJrbQYBfQe/NjYis4+2iqHgjmsOIx8P
	ZiWM6G93ovIGi9ToVnEghIGZqo8oMmkz6dHfe86t4xBmMU2PfigE29CKPfUbGYg=
X-Gm-Gg: ASbGncsCCwz9dbMI9AlhAy0YoB5d2nmpFWc/ddgjyNv1hcExBrfwgwDAwuF4azAMRJp
	sOnlWTgWBbKk/oHiZHofYx8NgLvJXp7Xh5v6Eup81P6u1cTq7k2J5yAMskIO9DwEkyzQU88gFbV
	IFwDFlmuZOns6HeRkPe5HyGM7ju7VRa/fPaWaZiHDZ1Md6wVumO4E5NtZmQ8GosNF8yoji+MY8H
	N+O587+vB3pHfAYXPX/6fwqRGU3KwulprodnRweTqQjSzLkkPxryEXm2euu5Z37uHTANw==
X-Google-Smtp-Source: AGHT+IEA456GfI5+8oEuqGE6qvT+i61hsuXVFO4kFDRLI54KTxTxc0Qi5q2Wl0+CmS3HjZwnXXbB9Q==
X-Received: by 2002:a17:902:dac6:b0:216:4a8a:2665 with SMTP id d9443c01a7336-21a84012a17mr412337025ad.50.1736895513466;
        Tue, 14 Jan 2025 14:58:33 -0800 (PST)
Received: from atishp.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f10df7asm71746105ad.47.2025.01.14.14.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 14:58:33 -0800 (PST)
From: Atish Patra <atishp@rivosinc.com>
Date: Tue, 14 Jan 2025 14:57:34 -0800
Subject: [PATCH v2 09/21] RISC-V: Add Smcntrpmf extension parsing
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-counter_delegation-v2-9-8ba74cdb851b@rivosinc.com>
References: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
In-Reply-To: <20250114-counter_delegation-v2-0-8ba74cdb851b@rivosinc.com>
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
 Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, Atish Patra <atishp@rivosinc.com>
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


