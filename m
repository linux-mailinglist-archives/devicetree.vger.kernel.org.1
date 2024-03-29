Return-Path: <devicetree+bounces-54435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4582A891282
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 05:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95FC6B219E1
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 04:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77AB03B78B;
	Fri, 29 Mar 2024 04:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="PFSrz0GA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B527A3AC10
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 04:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711687558; cv=none; b=bixxZBeM6rT5Imj7+ZsPJTDDhb83eIprpSlWKtd31BQXT6Pktb9n8Q7f92aKzwmZCEsR4LmUSX/UNk5dOBvLJCCj2FsxsXKtHlZ4S/j1lPiqyMtr7TnsSS56ubYLhdsiQElD2RV2bku+nfjJ1EZ4m79gQ/htyuadyGOIzHWLhF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711687558; c=relaxed/simple;
	bh=vRWXVEM9xb56Q7Mqdkjo9sVJAKe9N+KayoZj+4xiEu4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ImYs/MMeMn5eWCZgKCn5HqIKpChXgxXttjO4RGYTGn5vv60qgP69btfJMBuU5CAniCsL6pXF697TUdIsQ0yWl48PopqA9dPXwm6cE/F9RDoHuV+tMcN4/yVAS88VgHxcLnK/tzJioGw2nUInn3I1r3psnkFNEGyOUftUAizP/4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=PFSrz0GA; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-222c0572eedso829210fac.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 21:45:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711687555; x=1712292355; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qng37K3M8eikqBpPaGOFEE/tLaKw4gdTCP/Sk21HmlA=;
        b=PFSrz0GAlS1qzLSphEL23gAKOoeuyFLtO460hM2DUsZ1Wtj0OL/2SfltZz19LMce7g
         geeWgOmdboFMxPHDA+cDubL4AEycxll8vwv7FOt3eFPUfARBRZtBeBrKbc2QxFpnPzuf
         5gBq9atL0zBkzdNOn6sEjiJ+PJ/nhwLjuYffRuefY7MkmVMAcCO0KQD2Wunf+8oQmR24
         aQ0S6xhJwNKfI2lFRnwuDRxf6W1JnkrDj7m8SR5Za657/8cfFYfNBy3wtnIJ7IGx8ziD
         hUl9YERhTrhc+2dMglZO2kCrJOT4a7gtG+yBWQGPnI/irNLvZoqbVJLThXJFHy5fKU4l
         3tZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711687555; x=1712292355;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qng37K3M8eikqBpPaGOFEE/tLaKw4gdTCP/Sk21HmlA=;
        b=SNT1WpnHhu5bXNFdSaqkdycB2MdABRyrlBb858IyQBOHgd9jB8Z1PguxOPZmlzO/eN
         QMIvps3zCr6k+b1lSTXPhy8iIB8GaLeBCtS5FJCTneQsEBktYi9BHr/kA5OPDJMp4Qpw
         Rf4V7Wo4knCS+W0PComrgxcdGcSSDb9Q98Owl5t8zFhmtUA46/hHEqJL/5BgO3h+NCqf
         U7t/lcU0oPWpvQu+gswvcEp5zupsBPToqeCLuY+Rwdq/M6ohkKmq3Xk+BCbyVei7z1Zp
         dLEmmz5cu0FssJJMw+ss1WT8deq2eaxMsM1nXBg37uJiO7hkHtDdpYdmkuUcGQp0y1lv
         AGTw==
X-Forwarded-Encrypted: i=1; AJvYcCW3HPMjCSHN/eUJ8His6PANtjhDHCgzlNPaqdw6+s1MN06cOFWCtWKIAxoZBD2PBUjVhPhvghcXU/r+T1t2DJermHsKyI3n89cnNA==
X-Gm-Message-State: AOJu0YyWkSxSc8Yler5lOT55mzS9tvp5yh5bx+VJc/8ZIWieHPjLvluI
	j6lPTEE6+O1dt9BMtfPfwKNqAciUaKmW8ozQ/hnWAzl/HhnWaVe8jjJiu4IMwq8=
X-Google-Smtp-Source: AGHT+IEKOjTE3dTftWOMe2SOt89v3AzQ5X6q/KOwkPfLyYHAC9S2vY+NFOYACNL9schcS27A//V0AA==
X-Received: by 2002:a05:6871:4096:b0:229:9cb5:4fe3 with SMTP id kz22-20020a056871409600b002299cb54fe3mr1713256oab.14.1711687554880;
        Thu, 28 Mar 2024 21:45:54 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id i18-20020aa78b52000000b006ea7e972947sm2217120pfd.130.2024.03.28.21.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 21:45:54 -0700 (PDT)
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
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	tech-j-ext@lists.risc-v.org,
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
Subject: [PATCH v2 03/27] riscv/Kconfig: enable HAVE_EXIT_THREAD for riscv
Date: Thu, 28 Mar 2024 21:44:35 -0700
Message-Id: <20240329044459.3990638-4-debug@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240329044459.3990638-1-debug@rivosinc.com>
References: <20240329044459.3990638-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

riscv will need an implementation for exit_thread to clean up shadow stack
when thread exits. If current thread had shadow stack enabled, shadow
stack is allocated by default for any new thread.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/Kconfig          | 1 +
 arch/riscv/kernel/process.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index e3142ce531a0..7e0b2bcc388f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -149,6 +149,7 @@ config RISCV
 	select HAVE_SAMPLE_FTRACE_DIRECT_MULTI
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
+	select HAVE_EXIT_THREAD
 	select HOTPLUG_CORE_SYNC_DEAD if HOTPLUG_CPU
 	select IRQ_DOMAIN
 	select IRQ_FORCED_THREADING
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 9a85c9d4c902..d864eef5a10d 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -195,6 +195,11 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 	return 0;
 }
 
+void exit_thread(struct task_struct *tsk)
+{
+	return;
+}
+
 int copy_thread(struct task_struct *p, const struct kernel_clone_args *args)
 {
 	unsigned long clone_flags = args->flags;
-- 
2.43.2


