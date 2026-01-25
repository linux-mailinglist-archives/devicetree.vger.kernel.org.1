Return-Path: <devicetree+bounces-259220-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MGENLwavdWmSHgEAu9opvQ
	(envelope-from <devicetree+bounces-259220-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:49:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD87FD49
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 06:49:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3C01B302BE12
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 05:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71F7C3112B2;
	Sun, 25 Jan 2026 05:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="W8Jok31b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8350B310785
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 05:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769320124; cv=none; b=E7wg+pjSZUjEkgytF/siyGt2xB9f9N+0GKA5mCjfz+K1Um5awhUwAiZFk0kygXq3ezt4XWMuCh45Yt8KmnhLnUvM3TAGyvNZM468Dp50nTjVJt72Uz0xtzEQtiXKOMw8p5A9zeiot3gCcYTDSW4rKJ5Q5Sn6ZshuRvOxteQ6FbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769320124; c=relaxed/simple;
	bh=j9twRYt++/Qt39qWjUKyovND+JuPmmce/NF6PXeUO0Y=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VtpNAP+GSX9uyNZcerbFhnHBGXdcyr4xpF4YhcI0kbEch6bjVtlHZVPqFFeSavvM+h96xWKplrqg752wab51LqKNGUFu9j+UOCQNN+0EiOYXh4hwycUFWiTLES4D/4Lgqdvj0NQ0ZNB3YLJ33xp/JYQvV3rOygIzUMP0+uXmKUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=W8Jok31b; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-823081bb15fso1800859b3a.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 21:48:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1769320118; x=1769924918; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4A63a5MkcfqNFPDYb3h6iUN+5H/Fq6V9l7kfp7+HlTQ=;
        b=W8Jok31bV5Sg0cxDSFXJX4T3EDWYJgbFPqU3ZQ3t2JXLrDC7RdGx7LGY4AgAko17xr
         xHDZLFXSPTBw1fOlktU16p6SYbGD8Kp+PlzGbA7o3+0JOkZ9clasAJqV/2wrnl140/Sg
         YXGBRS2QKR6tm37ZV9cgJ4yeJTiqL/mtnLdKWELOPN7r4F7fXUl2rQQ+gODkaSOtcRKn
         xgDaSD3vXaenkFhAZsdlY7hj8/kDwscIIeopS/IwmPa/LIaDLQGo6qPIDI/ifGf0FQr8
         dljxi2o7zoyCnz6YBds3OW6M8VDuyc/KmAl+UZVOWAJYqF2XvrzHCpLHT0N227baDSOZ
         PS5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769320118; x=1769924918;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4A63a5MkcfqNFPDYb3h6iUN+5H/Fq6V9l7kfp7+HlTQ=;
        b=nq64+VrszpE05PRyK85kSRiYfrm31xTJT+LYwiv4fmnyfkcffniIsCEiUnETN52YR5
         naSzfMh2aD8ondp3TIO8Oy83VxmDqmD5cnAZUi9LVQ5N5B0/CdkYOeZ7+Bb4sUXJO391
         PPf1uRHPRmbLxCmgcOqHixIKAKyTULWS2Y/dSrijxDCvOPKg4g6FwbqAolmIUkJRv6QV
         okKb1HO7wi4+Jt3joxQL5X+JhVT1TSflVY01loc4wbUG9BQ4GB6hUnuUBiikwL94TRQh
         erdZFQcjdBpQVJgrkgyKn4Mb5WGoKAgWDznKMuMEs4g+cnApx0dr3zHr/TSAoKxPkKnj
         EUZA==
X-Forwarded-Encrypted: i=1; AJvYcCVDCJYtSJlJ2rsoMcbcgcoU3vnDjvKzDlomDd3M/1ZKFCH6alHOsETGzeL+9fzGq3coHHex41NstmdY@vger.kernel.org
X-Gm-Message-State: AOJu0YwPCnUgPSStFcFDt+X4aGEqeQDoC2rNLEn4ScNwFdfpzLfOTGyl
	rncQ2w4LIF2A5A8aW1Znw1B1W5dIE65jRcTccUKftCuVfUGdjVkFa6NwWgcB7Lr5YqTu8s6O8pU
	JG+bwcFfoCKkR
X-Gm-Gg: AZuq6aLCd/qba974reFc8J+D9avvQJjMa/PNGF/Q19sI61YU4qQjt1W+0Ebmr2LcWtO
	3z7tCOLAg/vTCtDlISubbm/btmluQ2y/Uc65AJEKschabqgYnNIHWs2Ku5QF8kxPV2M4X++T9zd
	THX57wGWwW4gTruSNYVtAqVnqhJoKETzTK+wbW0S/2jKmEhusYoG3+vZkVT7kLolilWF7xctP7B
	iUy7ZxeXTDYvyq7rVYu4AYmhayMVZqz9KzqvojeX24sztrsgfsDSnce1gFbBdvmC4IOGyJ0/6dt
	6K2PZRrgwYraimRWeOtfEezD5qYe2hlIKOsOQ167QNzC72b6EajW4ZBIGFXcSIXwX1s0Th5hRwy
	UNfMz8aEgcAqt+kreWDSokonBSIvKIsDinzvej2EeyhsKtyNYQHPWRvcdVP+BH2fK8eaCrgOzux
	+0F1tavqSWd+pKGFu5i46ceRW/fk8/I7jfPTSAobwwow==
X-Received: by 2002:a05:6300:8d:b0:38e:7422:ac83 with SMTP id adf61e73a8af0-38e9f0f4274mr627411637.10.1769320118423;
        Sat, 24 Jan 2026 21:48:38 -0800 (PST)
Received: from [127.0.1.1] ([2a12:a305:4::30fc])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a3f1ebesm5680016a12.19.2026.01.24.21.48.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 21:48:37 -0800 (PST)
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 25 Jan 2026 09:36:08 +0800
Subject: [PATCH v2 3/3] riscv: cpufeature: Clarify ISA spec version for
 canonical order
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-supm-ext-id-v2-3-1e3b9714c860@riscstar.com>
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
	TAGGED_FROM(0.00)[bounces-259220-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[riscv.org:url,riscstar.com:mid,riscstar.com:email,microchip.com:email,riscstar-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 11AD87FD49
X-Rspamd-Action: no action

Specify that chapter 27 refers to version 20191213 of the RISC-V ISA
Unprivileged Architecture. The chapter numbering differs across
specification versions - for example, in version 20250508, the ISA
Extension Naming Conventions is chapter 36, not chapter 27.

Historical versions of the RISC-V specification can be found via Link [1].

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Link: https://riscv.org/specifications/ratified/ [1]
Fixes: 99e2266f2460 ("RISC-V: clarify ISA string ordering rules in cpu.c")
Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
v2: Add Acked-by from Conor.
    Update the Fixes tag to point to the original commit who added the
     description.
---
 arch/riscv/kernel/cpufeature.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index e1f7ad882289..63ad6393b2c6 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -482,7 +482,8 @@ static const unsigned int riscv_supm_exts[] = {
 
 /*
  * The canonical order of ISA extension names in the ISA string is defined in
- * chapter 27 of the unprivileged specification.
+ * Chapter 27 of the RISC-V Instruction Set Manual Volume I Unprivileged ISA
+ * (Document Version 20191213).
  *
  * Ordinarily, for in-kernel data structures, this order is unimportant but
  * isa_ext_arr defines the order of the ISA string in /proc/cpuinfo.

-- 
2.43.0


