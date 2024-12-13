Return-Path: <devicetree+bounces-130718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E57359F0B40
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 12:35:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25428164904
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8951E1DFDB5;
	Fri, 13 Dec 2024 11:33:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="exXTi5/Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E66A51DFD8E
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 11:33:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734089604; cv=none; b=PCGlLGPzBjui678a5ATNSeOREfb6Eu5ZFqh/APwliZEfUfXbNaot7FiHCwJVh9i4LwusJ8wXbaMZ2Io8M86VGg5FYMet0oMej2plbkFFiS8UVq2KbfT2C25cvoS/kFbiJCjqWb8kd6wfuqFa8AJnPJt3TAxVH/c0wpESpvOzjBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734089604; c=relaxed/simple;
	bh=LdPuysx21Ofb0xvFzV8QxmW+nt/zKZ5xS3FFhbJOK4c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nHvdpClSDTw95RF1uk5+h4dnKszSbsO+EN/FrDiB8uUAwLk/FUgPJf+9iivqY2OuXnkCGq6kgXupRS2bjQmEzhxa49wQMmamstTsLgq69Ae7no/7/8hoI/zWKehUWAPQNp245dH173DKsoL1h+QRpsgRHB/9J6li7J6Z5eRS1LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=exXTi5/Q; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2166360285dso15432625ad.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 03:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1734089602; x=1734694402; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nuxCIDMe8qbaOgSvtMiepAGljhokMOIMslTwK0Fvg2s=;
        b=exXTi5/QRHd/lEdEifeOHCnKjtgTnt3L7VvJ2iDvhP28GkCTqvnin2GKCqq96Gamzv
         NCGb7mFHqxRFzJbUOqJ75JTe1aEFnK5eKfWMWmlFaSAG0NlZHpe0cEaqqMX/5sfgDiul
         BLwdhYUbZTyktfluljG6Oy8jvdepvwnb4rbsLWYud4HDyymN2J3sx4YgrD49HXQduU/I
         kZ/HhqnG6CeEpVTEhyRvx/1tMPqkY40LopTjoPANXqFSnGUu78nY02P3juPRf49EzvxF
         N8gt3C+rBbeHQgSkla92VIS5/6+HClh7a2N+2b2Pi+SS+sf3WB5EHU3ywIzQN8e8Mwda
         lNVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734089602; x=1734694402;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nuxCIDMe8qbaOgSvtMiepAGljhokMOIMslTwK0Fvg2s=;
        b=uh3IQOppocaGxB6uTxJmz85AEpUy9CyYy9Fn+53EvqZQMKbQobzE/JwWH7Eg4DkEIE
         M3ICDvWLkBy/f9i3IjY5UXSMR69SATrf/W+I45er/CuEl5Qcvjb/YPm6Spcd4FUlWuYA
         CmNBdNVrQXlvEGm7n5jKbc3NoXV3emwkPVDkgfMKqj/wSAfgZnkzJ/qd9xCGLO97Mx33
         P3sZwdybMo0p55lcvwLdSrnM26BaCqSTtkCsxiOl+E8+KrAfoduwDNiOhYMfmto9FzMM
         K/gk5UK+zMB0MlyRHVghEFOgZ5eP69lLg3CfleqL25DH3KJwDCwW8ET0ZzqwuEpl4wJ9
         WFHA==
X-Forwarded-Encrypted: i=1; AJvYcCXd37FIS5gACKiZ4FjWAi2XNDCYhQaGDAVbVASl1oxugJRhmjlVNlUZHECZWu1UxVq7X6IeCY2A5n2R@vger.kernel.org
X-Gm-Message-State: AOJu0YxnzJspkJKPRBqUhGJ48c7/NuJaJ8aSM1OqutihFPXFbJO2IGfd
	WGaM/cuyQwaiIMy3DdUqUR2LzcKTYXT8jaFsotoyH8ZdUBzpp8DkWw6JxMRgZWM=
X-Gm-Gg: ASbGnct48JGRgDs2zJRrjH3sSeUJtWMvXdK3wbQpOZmLyjy8x+SlyqGKf7W27RvzF3Y
	V5A6cnLX1xIIlSdeUQQu1SeDfuc0T/ChsYkZ+/L9drG3ND1uztWu9qqep02KQUnke5XciXK4Ek8
	f3NI4rvN/+vbhHcraU6A0qnIprdr4aekcr2kP7QbI4oFwtCsdZcEvprVyJevvdJCu6d1lrtmsDL
	GQvnFYkc1t/IsGKcn2t/T8UkimyGRYMyZN/+76MZHlTx8vQ+wKYnIQ=
X-Google-Smtp-Source: AGHT+IFZ6i4b8fOxVCmjx+lwckw8Xv1f0ANQiCeNQYxiBu6aqzxk8+O3BUIvgfb3ruaR891H/Kr1qA==
X-Received: by 2002:a17:902:f68c:b0:216:48f4:4f1a with SMTP id d9443c01a7336-218929c3556mr29884975ad.16.1734089602210;
        Fri, 13 Dec 2024 03:33:22 -0800 (PST)
Received: from [127.0.1.1] ([210.176.154.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21631bd2c2dsm103327125ad.263.2024.12.13.03.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Dec 2024 03:33:21 -0800 (PST)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 13 Dec 2024 19:33:08 +0800
Subject: [PATCH RFC v4 2/3] riscv: Add Svukte extension support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241213-dev-maxh-svukte-v4-v4-2-92762c67f743@sifive.com>
References: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
In-Reply-To: <20241213-dev-maxh-svukte-v4-v4-0-92762c67f743@sifive.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, Conor Dooley <conor@kernel.org>, 
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kvm@vger.kernel.org, 
 kvm-riscv@lists.infradead.org, Max Hsu <max.hsu@sifive.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3057; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=LdPuysx21Ofb0xvFzV8QxmW+nt/zKZ5xS3FFhbJOK4c=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBnXBt3eMXow98+LeyNOGLt9sRJUeftUptMMHTfr
 LOMd2baOgWJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZ1wbdwAKCRDSA/2dB3lA
 vaLCC/96w2hpgaZxW2gTD9xyx+m6UFTOHkHPCwOB9gPWzgxY2+SUx/wcYgE/0qnki6dxvO1o6+N
 a/HfwfIcN+EIHHdaN7OYoZvY0uvVQ/DCw0dH41jsZwrYVsQ3KxwlVEsAFx4LJwxQrNy8LdY60dJ
 JxZEVae+hLwZeVx/SUSvJzOaJ4L27NOpqHYHY65QgH7ZIKK9GA1ZygKrV1g/kKvSmfzH3Ad56xm
 JW7gvRfQrEpDAxOlc1vr2GwzlrbbrrfWgli5HiqmnFqVQZ6SyodaYuY6N+TDzBm/Knwy8HtrvRP
 QU2/h4B2NbuNNfAsfVFFo/oySwbEsxhnRR7oYGmSWgNt6eDsGZVZiW9y7XGlv5pNhpHDsYvGqNA
 e7GIv9NuLmxirqBSseZQ+C9Yd7W4q2oSdG/LNp9IEmI1zoGDGRB/TZByvI+6Kj6iww3XACvuVc6
 NeyaIAIonLUhLS4GCs9hP0CITzjlY4DKMbut0ZR/t+ZgzDaGKMhdbgQ1KVicEZ4VP+6Jo=
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
index 37bdea65bbd8a1a313cc7ba00b80fc5071b9809a..aeb62e9901452f8ded56961ab31dabbb2fd22cc6 100644
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
@@ -204,6 +205,7 @@
 #define ENVCFG_PMM_PMLEN_0		(_AC(0x0, ULL) << 32)
 #define ENVCFG_PMM_PMLEN_7		(_AC(0x2, ULL) << 32)
 #define ENVCFG_PMM_PMLEN_16		(_AC(0x3, ULL) << 32)
+#define ENVCFG_UKTE			(_AC(1, UL) << 8)
 #define ENVCFG_CBZE			(_AC(1, UL) << 7)
 #define ENVCFG_CBCFE			(_AC(1, UL) << 6)
 #define ENVCFG_CBIE_SHIFT		4
diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 869da082252a460559c9beea3829cc90860d6e9a..811c34d64df88dff116abb52e05054715a474dc5 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -100,6 +100,7 @@
 #define RISCV_ISA_EXT_ZICCRSE		91
 #define RISCV_ISA_EXT_SVADE		92
 #define RISCV_ISA_EXT_SVADU		93
+#define RISCV_ISA_EXT_SVUKTE		94
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index c0916ed318c20e2e2f6354a3a4be1f4437f7f564..932774350de42ec9b66fd7d00efb478ad55856f4 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -402,6 +402,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
 	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
+	__RISCV_ISA_EXT_SUPERSET(svukte, RISCV_ISA_EXT_SVUKTE, riscv_xlinuxenvcfg_exts),
 	__RISCV_ISA_EXT_DATA(svvptc, RISCV_ISA_EXT_SVVPTC),
 };
 
@@ -944,6 +945,10 @@ void __init riscv_user_isa_enable(void)
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


