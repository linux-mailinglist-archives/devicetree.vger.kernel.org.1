Return-Path: <devicetree+bounces-259219-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOs6I96udWmSHgEAu9opvQ
	(envelope-from <devicetree+bounces-259219-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:49:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E85A37FD3A
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:49:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7802301D064
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 317903115AE;
	Sun, 25 Jan 2026 05:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="RtnK43jV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B839331076A
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769320116; cv=none; b=GOZ1b3obbwVVOHHwSq0I7GgtwlIXO9naCQfYinhI4fbrUbIxeKZz0UWQgi6IhGUlqHENcw6BMHrPcCUyfSi/IAkZgeiHY8htDF1GpJwHxiZNskR24BdnVSHgE+VdPmraWx0NlBcDj9BulFJPSc75GyyS+6l6/liznUzZDbXfqso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769320116; c=relaxed/simple;
	bh=MggLumQq1x29FlbN8dhuDp+k2EL5u3F4d+5kR9T5TFY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U3/R9102hydX87PnVYENaRZAmq6SqicAHTtH0ExFTLViZvngNB4maEqaY5A9S1S64kaRLITpxxxjHrYhk0cRXWOKWJ2tmQtd9qjjvrL4nTgVcl3bXINvPq/y0JakOdMqnxWgbOFyupztrhQsf90NiLYlI96LOp2RDeGxTfOqks4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=RtnK43jV; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-81db1530173so1802316b3a.1
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769320111; x=1769924911; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQeXE83sx7gap+YTDZDQSdBwe9aoYbsG4akyTawLjBk=;
        b=RtnK43jVQRfemUyaa4UoMArkRPVshdZTGUHZBwHZhofxhvrprvu4dbU1zaXpuYJIHS
         RFv2Z3XzmitVC98nxBgH2xHwtxe0WSOLHyZLh5tcZrPalJron/YrzeRM++MDWW4EjumN
         xRMws3n9pgqu8eaJ6dWvD9zbklLGTAVxTl9e9wersilWfydNWa+SF4lC1uV697bEL90w
         iVRHIDsKLGtpggmtq7bXYu3ApHeQSzfEpKGUp3tedoihE1uUZhdmL9uiikwh2TQ9uz7e
         zvu0nfN6OvZ6osBLpLL0vOqrjQB8cOuDoDqUcDOnjQTgaxzov+DU00fsuNLHOl8gp4N1
         l0Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769320111; x=1769924911;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gQeXE83sx7gap+YTDZDQSdBwe9aoYbsG4akyTawLjBk=;
        b=ufcK7BkHIPGvj6VlMMSiQEOGHv2VUIo/GO/oAGhE+e5urhqs3Zv3wQhFtnzMZ4AOnd
         m91+KEF8yU77lh0aZU/o3CqoHhec3TIn00WsyN7FqlQukwzgtvG/bsvLlZjgNSU5RhmM
         DdmJZLshrc9YmSO0IBr+3Lk5yF1tsYj0+QYF8zorOXL4VKx3pnAE4EYzSC8owOquj3zs
         SGaOuDJIAt2vhqclNJxp7kjL7CTdUEZ2zcbd7et7N4C7D1uxGzINF2D357cx+p+jLPR+
         XW6bFfkuWmFjbM5zj/L83gxE0wE1Rqb7bfwTHjkDfBPlnZSFUxxdRUwoItWv0LBwmC5A
         53dw==
X-Forwarded-Encrypted: i=1; AJvYcCUuMiWrN4Biy9vlUXqZNfsVVrzOICM8eF7PpUHd42QuISWKZJK+phN9ATqVUH2iRZSH6iJXy/i0VydM@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhx34iwZF7CGg0DFZC55aLHm0qkpi/UiuL2Yy7Wq+xXQXpuGhD
	WGeKU3nQSQo4aQ2Rk6Ioj9mcxn7c6vulzZX8n+nNXRx0PJ0mvby5vsR8kBy90ACZjGg=
X-Gm-Gg: AZuq6aLqIyBvXWLQkBm/UCpJzql9NQd+HqP/WOvhOImu9wF6MityCZtCkEop0JN6Zr5
	NAB5xtUL8yT1HtEu/AgKjQOlpEEOPDsjVFeMr8cYFXQRWzfNpzcaVowLEHFB7Fogj5GpOCoQ3Dj
	aSlKQYnYZFOnm94oh3lV/kf2YG4IhA/GfrryhFOe2yrLmiemhOTDw9dsKZ097DAukTfIj4G4Ni6
	X6tAB0J6Z/KAtLzG/2vKFEs5t1tfDLPGDhk1np/WKn4aIFp2AXsi7rdsm2r1hv73d2V0JwYQYgj
	QABb2CFsdSLbZ1lqsZPzqS0k8z+JCJTajoQ/256KB47BWT8zmi18E59EakVl1W7Ep1RhoeIZn4K
	rHMrmcklBX2ocZDKjKa/rr82O1/4OWeKZty9ZH1xVsPtnTCncMGI6r0z2jSrlthIIj6BeQCnUDH
	M0DVB4MFkfHbjxHlBAADLC13pF41xwB7yOvUc4eBVCKg==
X-Received: by 2002:a05:6a00:9511:b0:823:135e:7336 with SMTP id d2e1a72fcca58-823412a3382mr712548b3a.53.1769320111277;
        Sat, 24 Jan 2026 21:48:31 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a3f1ebesm5680016a12.19.2026.01.24.21.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 21:48:30 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 25 Jan 2026 09:36:07 +0800
Subject: [PATCH v2 2/3] riscv: cpufeature: Add ISA extension parsing for
 Supm
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-supm-ext-id-v2-2-1e3b9714c860@riscstar.com>
References: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
In-Reply-To: <20260125-supm-ext-id-v2-0-1e3b9714c860@riscstar.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>, 
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 Evan Green <evan@rivosinc.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Conor Dooley <conor.dooley@microchip.com>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, 
 Conor Dooley <conor@kernel.org>, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Guodong Xu <guodong@riscstar.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[riscstar-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[riscstar.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-259219-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[riscstar-com.20230601.gappssmtp.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[guodong@riscstar.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscstar.com:mid,riscstar.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,riscstar-com.20230601.gappssmtp.com:dkim]
X-Rspamd-Queue-Id: E85A37FD3A
X-Rspamd-Action: no action

Supm has been ratified in the RISC-V Pointer Masking specification
(Version 1.0, 10/2024) and is mandated in RVA23 Profiles (Version 1.0,
2024-10-17) for RVA23U64. Supm indicates userspace pointer masking
support.

Remove the previous macro aliasing of Supm to Ssnpm/Smnpm in hwcap.h,
treating Supm as a distinct RISC-V ISA extension ID.

Add ISA parsing logic for Supm, and implement a validator to ensure
that Supm is only reported as available if Kconfig allows it and the
underlying Ssnpm (for supervisor mode) or Smnpm (for machine mode)
extension is present. Supm relies on Ssnpm or Smnpm to provide the
underlying hardware implementation.

With this change, "supm" will be reported (when available) in
/proc/cpuinfo as part of the "isa" and "hart isa" string.

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://lore.kernel.org/lkml/20260101-legume-engraved-0fae8282cfbe@spud/#r [1]
Link: https://lore.kernel.org/all/4ebbe14b-2579-4ba6-808d-d50c24641d04@sifive.com/#r [2]
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add Reviewed-by from Conor.
    Update RISCV_ISA_EXT_SUPM id to solve rebase conflict.
---
 arch/riscv/include/asm/hwcap.h |  3 +--
 arch/riscv/kernel/cpufeature.c | 35 +++++++++++++++++++++++++++++++++--
 2 files changed, 34 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 7ef8e5f55c8d..aa2af21f3bd3 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -112,6 +112,7 @@
 #define RISCV_ISA_EXT_ZCLSD		103
 #define RISCV_ISA_EXT_ZICFILP		104
 #define RISCV_ISA_EXT_ZICFISS		105
+#define RISCV_ISA_EXT_SUPM		106
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
@@ -120,10 +121,8 @@
 
 #ifdef CONFIG_RISCV_M_MODE
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SMAIA
-#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SMNPM
 #else
 #define RISCV_ISA_EXT_SxAIA		RISCV_ISA_EXT_SSAIA
-#define RISCV_ISA_EXT_SUPM		RISCV_ISA_EXT_SSNPM
 #endif
 
 #endif /* _ASM_RISCV_HWCAP_H */
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 1734f9a4c2fd..e1f7ad882289 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -317,6 +317,27 @@ static int riscv_cfiss_validate(const struct riscv_isa_ext_data *data,
 	return 0;
 }
 
+static int riscv_ext_supm_validate(const struct riscv_isa_ext_data *data,
+				   const unsigned long *isa_bitmap)
+{
+	if (!IS_ENABLED(CONFIG_RISCV_ISA_SUPM))
+		return -EINVAL;
+
+	/*
+	 * Supm requires Ssnpm for S-mode or Smnpm for M-mode to provide
+	 * pointer masking for the U-mode execution environment.
+	 */
+	if (IS_ENABLED(CONFIG_RISCV_M_MODE)) {
+		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SMNPM))
+			return 0;
+	} else {
+		if (__riscv_isa_extension_available(isa_bitmap, RISCV_ISA_EXT_SSNPM))
+			return 0;
+	}
+
+	return -EPROBE_DEFER;
+}
+
 static const unsigned int riscv_a_exts[] = {
 	RISCV_ISA_EXT_ZAAMO,
 	RISCV_ISA_EXT_ZALRSC,
@@ -450,6 +471,15 @@ static const unsigned int riscv_c_exts[] = {
 	RISCV_ISA_EXT_ZCD,
 };
 
+/*
+ * Smnpm and Ssnpm provide pointer masking for the next lower privilege mode
+ * (U-mode), thus enabling Supm. Both extensions imply the same subset.
+ */
+static const unsigned int riscv_supm_exts[] = {
+	RISCV_ISA_EXT_XLINUXENVCFG,
+	RISCV_ISA_EXT_SUPM
+};
+
 /*
  * The canonical order of ISA extension names in the ISA string is defined in
  * chapter 27 of the unprivileged specification.
@@ -577,12 +607,13 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA_VALIDATE(zvkt, RISCV_ISA_EXT_ZVKT, riscv_ext_vector_crypto_validate),
 	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
 	__RISCV_ISA_EXT_DATA(smmpm, RISCV_ISA_EXT_SMMPM),
-	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_SUPERSET(smnpm, RISCV_ISA_EXT_SMNPM, riscv_supm_exts),
 	__RISCV_ISA_EXT_DATA(smstateen, RISCV_ISA_EXT_SMSTATEEN),
 	__RISCV_ISA_EXT_DATA(ssaia, RISCV_ISA_EXT_SSAIA),
 	__RISCV_ISA_EXT_DATA(sscofpmf, RISCV_ISA_EXT_SSCOFPMF),
-	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_xlinuxenvcfg_exts),
+	__RISCV_ISA_EXT_SUPERSET(ssnpm, RISCV_ISA_EXT_SSNPM, riscv_supm_exts),
 	__RISCV_ISA_EXT_DATA(sstc, RISCV_ISA_EXT_SSTC),
+	__RISCV_ISA_EXT_DATA_VALIDATE(supm, RISCV_ISA_EXT_SUPM, riscv_ext_supm_validate),
 	__RISCV_ISA_EXT_DATA(svade, RISCV_ISA_EXT_SVADE),
 	__RISCV_ISA_EXT_DATA_VALIDATE(svadu, RISCV_ISA_EXT_SVADU, riscv_ext_svadu_validate),
 	__RISCV_ISA_EXT_DATA(svinval, RISCV_ISA_EXT_SVINVAL),

-- 
2.43.0


