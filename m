Return-Path: <devicetree+bounces-123246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5BAA9D3D56
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 15:18:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 79E511F21126
	for <lists+devicetree@lfdr.de>; Wed, 20 Nov 2024 14:18:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 179D01D79BB;
	Wed, 20 Nov 2024 14:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KGrIHSs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com [209.85.214.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80B971C8FD4
	for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 14:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732111794; cv=none; b=eREXmKVpTryabf61SnptKXeCS5vYcqoqUQ34c02WKCzFomO/4NdIa224eouw54Ps7vXTfCp+teYf0PFHwvuvfT0jw+i/+YxIJJniDPTvoqdDTGFgDT0Hv001MMC+2hseJwF8VR6VvWNI75IUN5/LsQ399MCivCZRxQgMKzmH6mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732111794; c=relaxed/simple;
	bh=kquTSCG6ldl8Jsr1Yyg5zz3XR4Ry7zAqV4fXZmtCDZs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CIU3WHXYNK69riaC6t4FEjscMmDMI/i0arTV2mvpjhDSPcxeGMNX5QbaFb9JgOeZ3bLig/NTz0lmeYI6uom7wo7yG3welbkWS8gpaHovm7AXE4EsN07eIBPr2c6SL5xT7PR9SyIXt9fsMwS94J0EF02O+dMZGRWsd73vetCQ3Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KGrIHSs1; arc=none smtp.client-ip=209.85.214.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f195.google.com with SMTP id d9443c01a7336-2124a86f4cbso20664715ad.3
        for <devicetree@vger.kernel.org>; Wed, 20 Nov 2024 06:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1732111791; x=1732716591; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3HiZ5B1+Hi9dts06uRmUFzh40lIglAJLzfcQl+niZxQ=;
        b=KGrIHSs10UWEJLj+4M947ZtToYfZ2mNyNVnVrbpguN35/vbFXGsimmaksaPT14Akh+
         qBiVn08cW+KglO8QbNWePjteMC1RQK4NtDLi2fsPuw/DACM+6H4JelpU51pzHKTxKffU
         gohT0xzD6iDb0YHJN0JH9XV2ARGwpRnkCQDrrqikspsXStt9EJVJ0KsG7S9isJUsO0Wu
         TQTST8GeOhLjrNM+VBJrMXNVlirptOWydm/8fge5jTyeZz4MXsGj9yHbfrsdslSE2u7g
         YmljSwO8fSRcpB+IIGjxv/+RcWKNFFXMKMcUF32071elCTywNXUeVczi/k3FvQmfzDYX
         8jaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732111791; x=1732716591;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3HiZ5B1+Hi9dts06uRmUFzh40lIglAJLzfcQl+niZxQ=;
        b=VA5gdirWjnEDmoJY2PO+HqVxhm3Po9FcrTGzD69AEMILgjgG5xGcPKmNSJxNwk+/Oq
         hhppBMCrKD3xBevEbM2xTbaOrriS+WHO7lV/0xfehEKRQqiNy6AKqYi9+Q/WSfXAOMaZ
         ibbJmimlDQu/udVmoKhhNn4pHUFOlBIyJHReVFyIk+7+Y38JYVQvsnwzHsD+YP9NGHUF
         jwrUFd4qbuWkOvyFtonKDmb+mHCrzAG0yMOBteKHweQnKXPgklFPl7xFtO9GBK7dbTgq
         9MZDyGvd+u3TPO6CWnPQjmHLkl47kAU1afKKaChRTC/uBh0CVHlqlSeLpEcIPyk6T9hz
         OFmA==
X-Forwarded-Encrypted: i=1; AJvYcCVvyLPFtMu5LWP9s7MePgZkCT1FyIJOBGar7GB+9ZE/xXpaHdGVnnMQ3IU3Jn63vGB0WOS1iHlID4GC@vger.kernel.org
X-Gm-Message-State: AOJu0YxgnYq+2QQSWRQgAAW9Wmb0m7wbsQYwzhwhXvzyXv9eEDraPpRP
	B40RtW6kMLlPDB/LOe2EfO7h8elUpjz8HUs9OLzz7Bx5Ko8XBQcbeZ72dnEb9oBFoFmGntSAsva
	vQu6kNUa7T+PjHt/xu9kkQ77IPWc64USUc5UBqq4T9yBXhkUu4D7jKwZY0sGvId9sodLQZNhng1
	WcMtrdPgwJcuwjpXrL2+gN1ajAr1kiPtq26Boev5I+dKA45jEA
X-Google-Smtp-Source: AGHT+IENrSz65ancGchI+RHAOkUIUZtI0x71mxt8UzBTQ5e4W/m5EYNF2C+k64+tvhVagvHee3ibxg==
X-Received: by 2002:a17:902:ccc6:b0:212:51ba:cbd3 with SMTP id d9443c01a7336-2126a3bc80bmr34655035ad.30.1732111790594;
        Wed, 20 Nov 2024 06:09:50 -0800 (PST)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0f474fcsm92502505ad.213.2024.11.20.06.09.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Nov 2024 06:09:50 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Wed, 20 Nov 2024 22:09:33 +0800
Subject: [PATCH RFC v3 2/3] riscv: Add Svukte extension support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241120-dev-maxh-svukte-v3-v3-2-1e533d41ae15@sifive.com>
References: <20241120-dev-maxh-svukte-v3-v3-0-1e533d41ae15@sifive.com>
In-Reply-To: <20241120-dev-maxh-svukte-v3-v3-0-1e533d41ae15@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3055; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=kquTSCG6ldl8Jsr1Yyg5zz3XR4Ry7zAqV4fXZmtCDZs=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBnPe2kCySnhiICdX2FOUve6ohMWBNinXyZuOSER
 TmwTRZU4NeJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZz3tpAAKCRDSA/2dB3lA
 vQmxDACFDP3s/vWUFpUHlP87/uUPfleS9wQf2NhdzuRJWsDsduU2xxQhqEam/z0lAI0wqvR1DJl
 PyP3S/5v5NjRgpOwVC/NbwybscDQaz80y6p6BMOpwbpm+NON5pE8ZHEZz/sglp2wdMIYgSS+D9E
 ZlY4FYlnyJmU2EOuap5LE2mpW+YpKjIpD73bSULkLpIQpioRJY4B1ErwWLFPiqA3zwrpSMogbLR
 5n8HjWry7LU4vE2M0y1n/3AKkNhlG2kn7vAPqKcH9xA42vKCZUK8wOiVYjwJz6ZTf0tP0OFCgGL
 0cw/TDn1891BWiRDICzNaa1hfhGR/WuuJJsf/ANrmhyeWYQcHiP8dvGYUrEtQYJukfNrGqz8pvi
 vXq4W9bNG9oenwdz7/sa+HJ0Hn3FKLwWU6CBAq37WIti5aFXs+1HKpNaCF3ANZX72J5RZ30xDnR
 p5q264P1pYt8wQ9CzpTKFNXiln9VdNY1lRxY1wPxDOcYtUaM8Ufx3SLHKFrQ6hnUq8+nE=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Svukte extension introduce senvcfg.UKTE, hstatus.HUKTE.

This patch add CSR bit definition, and detects if Svukte ISA extension
is available, cpufeature will set the correspond bit field so the
svukte-qualified memory accesses are protected in a manner that is
timing-independent of the faulting virtual address.

Since hstatus.HU is not enabled by linux, enabling hstatus.HUKTE will
not be affective.

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Reviewed-by: Deepak Gupta <debug@rivosinc.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 arch/riscv/include/asm/csr.h   | 2 ++
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 5 +++++
 3 files changed, 8 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index fe5d4eb9adea1d4e3065a4d6e2ff361a52aecc44..67ff78f7e480bcbfef04e58191ef85d5434f427e 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -126,6 +126,7 @@
 #define HSTATUS_VSXL		_AC(0x300000000, UL)
 #define HSTATUS_VSXL_SHIFT	32
 #endif
+#define HSTATUS_HUKTE		_AC(0x01000000, UL)
 #define HSTATUS_VTSR		_AC(0x00400000, UL)
 #define HSTATUS_VTW		_AC(0x00200000, UL)
 #define HSTATUS_VTVM		_AC(0x00100000, UL)
@@ -203,6 +204,7 @@
 #define ENVCFG_PMM_PMLEN_0		(_AC(0x0, ULL) << 32)
 #define ENVCFG_PMM_PMLEN_7		(_AC(0x2, ULL) << 32)
 #define ENVCFG_PMM_PMLEN_16		(_AC(0x3, ULL) << 32)
+#define ENVCFG_UKTE			(_AC(1, UL) << 8)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
 #define ENVCFG_CBIE_SHIFT		4
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 08d2a5697466d07fe2319a2423f04657177db37f..98488d8ebf528ff5cd494ab753d91b77accd2488 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -98,6 +98,7 @@
 #define RISCV_ISA_EXT_SSNPM		89
 #define RISCV_ISA_EXT_ZABHA		90
 #define RISCV_ISA_EXT_ZICCRSE		91
+#define RISCV_ISA_EXT_SVUKTE		92
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index eb904ca64ad03565c6d521350f5e6b4c5cb9c6d9..a38e40477f0123eb7e80b096a38e0f956c9d4bc0 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -389,6 +389,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
 	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
+	__RISCV_ISA_EXT_SUPERSET(svukte, RISCV_ISA_EXT_SVUKTE, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(svvptc, RISCV_ISA_EXT_SVVPTC),
 };
 
@@ -931,6 +932,10 @@ void __init riscv_user_isa_enable(void)
 		current->thread.envcfg |= ENVCFG_CBZE;
 	else if (any_cpu_has_zicboz)
 		pr_warn("Zicboz disabled as it is unavailable on some harts\n");
+
+	if (riscv_has_extension_unlikely(RISCV_ISA_EXT_SVUKTE))
+		current->thread.envcfg |= ENVCFG_UKTE;
+
 }
 
 #ifdef CONFIG_RISCV_ALTERNATIVE

-- 
2.43.2


