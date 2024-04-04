Return-Path: <devicetree+bounces-56101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 28478897C9D
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:49:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 942C51F22BED
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:49:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FF3E15DBCA;
	Wed,  3 Apr 2024 23:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YwMx341w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078D2157A5E
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187769; cv=none; b=dPlX+htf0/17r8Cb6Em1Wr70get/G1HbeccAyTq/3qr9vImVbaPXwIaQyb5yok8xP/11DjYAkn6YfjIP7rpyO6/2XM4QJdbqxOfcl9s79C5C5lDqMpRQZEaBbkkI2VjapObAjpFvffNKCC5k6FPPY9RN2RYZT7yWXZIVE3amfFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187769; c=relaxed/simple;
	bh=gRUEuRotPJjUi2hlrSXSLGRWOK9UqoUEje/IwX9OQE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JdImd1FUk/uLRR4AYFVeEnxdf6wD6F0zNtLSjNYZxB5ZIJfnB9mmnr87ByN2DV5F9KyjpPS0uFq4VY43sCksXiyoQbiOz78RyLU4G5H9e6qyX6qpuYZqTgMApqU4s+epJHKmVym7Dt6RNnHlaFTiwxQ7k8VeqJfLCt7j1AbEaaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YwMx341w; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6eac64f2205so302178b3a.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187767; x=1712792567; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DtlDgd/GAT0EKcB2AjZTXvg/KwB3A8UKH6yER0NyfA=;
        b=YwMx341wx/Wa3bsWUkv9/0EdOfHv8Zq9ZoouLn4DtRxapcnfryBzyRZhRVoBURgbWS
         XdAshDMADFJ7tkrqy1N8EtdmuEX29biH/cLgfTucRcQhBz9waC5NrkvyVyrzaPh7H2D8
         ByrFBZQNk5w6tb1vI/Qw+BGzOrsF78WB0TzEfxO5IGKCzZrab7nPj9pRwBpMAqjeeeRT
         c4TYMLHVGPQKu0ZC+lO3XzbSVWAJPSshnE0J1yXcFtO5FdtVkGvlpuYGOIIAKJsQOzRP
         fRrGblFel1Cb2FBLr7xCOCUPXlMUGd0NaN1ribZ2jbmjzfiQJuWzX3g3qVcmaBZISzk1
         8f1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187767; x=1712792567;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9DtlDgd/GAT0EKcB2AjZTXvg/KwB3A8UKH6yER0NyfA=;
        b=C6LpTX0r20aFIvlh6EFw+h0jFTDo7rrsVB3Aeqpf7e+8RKkB2PkqEg8DMh0gXQzCzg
         i1/YTldYVnKQk0CADNApX+DexP+2gGYAZ3+BEqSgEBpc+m2TmAnc023OBJQRdBlI5JyN
         kSlw5yFjIJSksXC/N7DsjL9TtjrJ1eqmDODem+0CDVBkNaTilIiE+al+ko1hFi4jwsBv
         +cFXi7+a+IffTILbvpkAzlrTQTw4xA8tchDQO9g8yqOUask2kSywXKq4B0LK/iyUR2Rh
         MlWg/QMOvDfeTxCXczEUKoZApWtrxosahPUHxp76Yq6woV8nu4X8xbWvVWKvwG82Evka
         YkIg==
X-Forwarded-Encrypted: i=1; AJvYcCXyCJVfkITlBVjaqhW9q/JPBk0pT5+d8GqGFi0fPUV3HvIjlbzBNuXiOBZhFvjKDGzRD5GZNY8kRFVVKOw9IOca4xdxR8d3OX6C1g==
X-Gm-Message-State: AOJu0YzKIVUgrsugK3RBvvG89jaXp+b9j3heDg4zQeO8QfY7ikSR4+vP
	Jct+UbK9/I9GEts+ERXj0nvQzp9pvj9gWxbIWZbnW7Qkc5s7l73wtZMTZlZADfE=
X-Google-Smtp-Source: AGHT+IGTlfFxuJFVldaZ8jYPJUINkZRKqV1i5a/wExLO9N1TqU40XTAEu7HYkbstJURl0N5AQEsIcg==
X-Received: by 2002:a05:6a20:7285:b0:1a7:2437:3d58 with SMTP id o5-20020a056a20728500b001a724373d58mr1369671pzk.13.1712187767375;
        Wed, 03 Apr 2024 16:42:47 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.42.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:42:47 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v3 26/29] riscv: create a config for shadow stack and landing pad instr support
Date: Wed,  3 Apr 2024 16:35:14 -0700
Message-ID: <20240403234054.2020347-27-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403234054.2020347-1-debug@rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch creates a config for shadow stack support and landing pad instr
support. Shadow stack support and landing instr support can be enabled by
selecting `CONFIG_RISCV_USER_CFI`. Selecting `CONFIG_RISCV_USER_CFI` wires
up path to enumerate CPU support and if cpu support exists, kernel will
support cpu assisted user mode cfi.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/Kconfig | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 7e0b2bcc388f..d6f1303ef660 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -203,6 +203,24 @@ config ARCH_HAS_BROKEN_DWARF5
 	# https://github.com/llvm/llvm-project/commit/7ffabb61a5569444b5ac9322e22e5471cc5e4a77
 	depends on LD_IS_LLD && LLD_VERSION < 180000
 
+config RISCV_USER_CFI
+	def_bool y
+	bool "riscv userspace control flow integrity"
+	depends on 64BIT && $(cc-option,-mabi=lp64 -march=rv64ima_zicfiss)
+	depends on RISCV_ALTERNATIVE
+	select ARCH_USES_HIGH_VMA_FLAGS
+	help
+	  Provides CPU assisted control flow integrity to userspace tasks.
+	  Control flow integrity is provided by implementing shadow stack for
+	  backward edge and indirect branch tracking for forward edge in program.
+	  Shadow stack protection is a hardware feature that detects function
+	  return address corruption. This helps mitigate ROP attacks.
+	  Indirect branch tracking enforces that all indirect branches must land
+	  on a landing pad instruction else CPU will fault. This mitigates against
+	  JOP / COP attacks. Applications must be enabled to use it, and old user-
+	  space does not get protection "for free".
+	  default y
+
 config ARCH_MMAP_RND_BITS_MIN
 	default 18 if 64BIT
 	default 8
-- 
2.43.2


