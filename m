Return-Path: <devicetree+bounces-62979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE0778B34F5
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF3741C2181E
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B041428E0;
	Fri, 26 Apr 2024 10:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="o0rUYkmn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A84E71428F8
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126113; cv=none; b=cA8CIa6dlOtPRT9J8U1D5qFYhQTShdWx+t94rmuzY3vcyZZLInPzcXIUXGahEl7qVdSg/y57fLoEqOnZLP0hdWr5/9nSbddoaDPcwUdGuUwcRoG6n3KuTpBFnX6earMuwtm+FKUx8So2ERXa7MmtCg371PF7AMjxYgPRKLsAaoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126113; c=relaxed/simple;
	bh=sxvf32/JpNtPHFVEpEj3h9lpXz108v2JRtAY8b9TiXg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=sA94NMbZ2vwuX4aflLbdE+qeejwtiSRkkTmEE+np1TDULJSs3yqd2Fpm4tbNhJjQWr8yxF1usNvCNyl63YF0bJgAwtcZEyYAnTxkOHqwRK0q439TqlyJyHcGB797aT30Nyw/d55iBsDUz8hUu2ojo1ObgK/TIicl4qZqXHZ6+pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=o0rUYkmn; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34b029296f5so2007601f8f.2
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126109; x=1714730909; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L/o9GJYOsp32C4ZK5XVSIqlhvuJ+jgCOlcUd/wXUyPQ=;
        b=o0rUYkmn6c+LE1rnfKL2d81TcJUl6/7AljgPLfY7ySMK+QnZ3VZFoz0p7gEetCQebv
         ld3jN1UTi8l05Yop+Cbf4UxRHq/pIYmtj1RXNb08lILJ8WRLa7PPaPzDj308YrN6P5nG
         jbUhvMUmVvvdMbHxucFocyZHajDeBkSPCIJKIUc1cwPTFGTY3VBtUbAKlPpYbg6hF4at
         IVchPIr0GnLJpeN+ECDAH9Q7CcK7AILqB1m8plF2tAEyOYX8VXnwaj75vB0Lzgi861zj
         ZIcP+VDfMSclEBQIBRp9G5KRHjViDv2dCU2fO1hUwTkDY8KQmpkUXZN6Gpbfy2Q+KsVU
         3Qrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126109; x=1714730909;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L/o9GJYOsp32C4ZK5XVSIqlhvuJ+jgCOlcUd/wXUyPQ=;
        b=w6X1MDMBgeiRrCUnpGgx9iTnFo0ZnGYpn5sss14K193aQuEoYgUVOmiMaUtnE8ZYUR
         /YiN+PJK86enwlkl+tIVc1f9T0t9arr5fZpu0gIcQ2JXNiVlZyuE4mWrsL4BsAcvGJzl
         oBbS+TvpRpO39XWpbB9aomRFW4RVeORKkx097ouDbItTPn9BpJ67n9xTQnuw1w7+apAP
         SxlAtF+KOE254R2ILMHYiKKyY2puoOHeMddnPRd30M/JLGoL+vwMjDlYdY1TVfs1fJlD
         G4FQrCWMzqlcEoE2+kHgJ42VyH8mK0MuaKbrDjac3O92+KPNupYydwOwAIdFXZ5xCl2X
         RujA==
X-Forwarded-Encrypted: i=1; AJvYcCXKERCAg1kDw0RB1iINNgTAhPZckkO3Z9dsMRaazyEmW0JXPrUNpSSXMRrixxgutR7HUcYS/nj5rMB1G02xvz3pKiwbYUc7sGh6zA==
X-Gm-Message-State: AOJu0YzkdyTwp24ikyFA7WkiMgmRgaL4p/XtlVro55XchKnA8nKeDLyt
	1vj8spVFIPL8igavRBqhLIT07lg01NSokMQ8m6KsiKdA5mxBCcJUjIhusN9M/0E=
X-Google-Smtp-Source: AGHT+IEh6NIFQ2Uyrzgy0aM64I6nu5g4sKURqj0IXaRCsh7nQfcAkDuLTIjmEAm4akfyGuourKpDww==
X-Received: by 2002:a05:6000:124e:b0:341:cd0d:b78a with SMTP id j14-20020a056000124e00b00341cd0db78amr1941742wrx.48.1714126108988;
        Fri, 26 Apr 2024 03:08:28 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id a3-20020adffb83000000b0034b32e5e9ccsm11528726wrr.64.2024.04.26.03.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:28 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v3 6/6] KVM: riscv: selftests: Add Zawrs extension to get-reg-list test
Date: Fri, 26 Apr 2024 12:08:26 +0200
Message-ID: <20240426100820.14762-14-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

KVM RISC-V allows the Zawrs extension for the Guest/VM, so add it
to the get-reg-list test.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index b882b7b9b785..8c4c27bd4b88 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -48,6 +48,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVNAPOT:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVPBMT:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBC:
@@ -413,6 +414,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(SVNAPOT),
 		KVM_ISA_EXT_ARR(SVPBMT),
 		KVM_ISA_EXT_ARR(ZACAS),
+		KVM_ISA_EXT_ARR(ZAWRS),
 		KVM_ISA_EXT_ARR(ZBA),
 		KVM_ISA_EXT_ARR(ZBB),
 		KVM_ISA_EXT_ARR(ZBC),
@@ -936,6 +938,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
 KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
 KVM_ISA_EXT_SIMPLE_CONFIG(svpbmt, SVPBMT);
 KVM_ISA_EXT_SIMPLE_CONFIG(zacas, ZACAS);
+KVM_ISA_EXT_SIMPLE_CONFIG(zawrs, ZAWRS);
 KVM_ISA_EXT_SIMPLE_CONFIG(zba, ZBA);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbb, ZBB);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbc, ZBC);
@@ -991,6 +994,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_svnapot,
 	&config_svpbmt,
 	&config_zacas,
+	&config_zawrs,
 	&config_zba,
 	&config_zbb,
 	&config_zbc,
-- 
2.44.0


