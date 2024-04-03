Return-Path: <devicetree+bounces-56078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0369897C26
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:42:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CFBA1C26091
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3B0C156F46;
	Wed,  3 Apr 2024 23:41:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="xVyb1E6f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200F6157A43
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187700; cv=none; b=ttFWfAu6/3HAeXHN8RMmrUnt01pFi6qUOUMuZNKJz6KvR4WUoWX7RMwBdIQnqXVXhy4xulqiyY5nWdQ3hI5i1YcV/9sESUX07XeIDQUuBeiar3Y51ivrmsQ8ZKJ4l4TbwNImpBVnGlKUHR74FGFyFCLLtOrMQNQ/x6esMse3/K4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187700; c=relaxed/simple;
	bh=WFAQCIaWfm43yk6vTTYT2ol2DqpufPCvk2uJy0y2hNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Drx7R81mIYsfwDZ1kFTCaAWZtg3wg2xYPVYeOK75Cr+6utZqKPVyT+kWNEI3beM2qlBwtFRNtNwFDI5s+JeZGfqp8g18N5c/XkAfTXKfHsb4hdHgy1w3xWtsVtULE6kIdrCa74seRR8DS86MWxXmiZny4NgtbswDtPUcHi+cuLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=xVyb1E6f; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1e2987e9d67so2183865ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:41:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187698; x=1712792498; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FP/iR/CjhZ8+5rFjFCPv+Z1AgkLCTj0+E8uD6j+a7EM=;
        b=xVyb1E6fQGKWUxuAH0XCt3weMCxOYU9U2x/k0cIXpEd6gzHUSGnM2zQDWf46oKnhWw
         XBt+0o84Ra7AxDD7RfyjmNczzhXjDXbIg9C59UT4+KNT+w5LA1zSlneZ13LEFmdX08Pn
         KU8QY/wUMNfAzdo4H0FmWkbpKe0fnslnGcRGxqw3ON/GN95w0M369sG9egbUB1SGHCLx
         1E/eGdwTK3TfPMh5z534sTUnR0jRNbaqtO88VGkFaXEkmwfJ5KUaUChYiiy3iXReQS/f
         gX0pczDAW0jSwA8pOUg+czA3rxpeQ+r1D8ubCuF7kzEmb5I62DZUfjPkmkQXd9F1YBML
         eEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187698; x=1712792498;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FP/iR/CjhZ8+5rFjFCPv+Z1AgkLCTj0+E8uD6j+a7EM=;
        b=RlOUXpZZ/9ZWW4VEqwaby3ilmzzvOqJPo6Z2/WnbGESg2zt3lzFNGZ8bH9CmiFclvI
         +BNP5YDQ6fHITaR65itjweGcakTNBZ0j5lu/Ob0ipQ+fwmDHHeGMZZ5MvPWdA026JejC
         fyhiAcJlGsnqskf6wEGtN61EbSm5r1gPGb2501riTx95OJ3nUWKhCXR9N2BaJz6VibBr
         Ham6sS/gn8XwWcM82GorqYMDJtPHGpHGYrPid8EXGGZHptrc6iBHslBQ+fPMCWvhbeXf
         0eDwgBNqXJlYtItu6rHKENCcwARFjagRo5xGeUVGMVLWQ5TzMbXwk6BmjX+Ld+jmhfkg
         /n6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVUQNrWQ+IkrUV/b2pDydDsRuH5JAzNm5LwZwDDjCyBu0xMvKcQtgfjUukK4v5SCls5dcQqzkBPNRrWhxKuzCR4KGv902u9VAtJIg==
X-Gm-Message-State: AOJu0Yy9zd8NyfZfJkFvW2PI8TrffbH/NDOvOV9Ek66lGmqNA8J1ZlpJ
	YLqW0I0pSV7IXhsoog9DRFLZSY/lQGSJfmcszADJV9+UNb4wgJzW4hIloSpShug=
X-Google-Smtp-Source: AGHT+IGz7S4BbcAxWhl0gW+uX+xLjSyvbd4TctmglI8Ag3ABaLDho4nYEEcOpuaastWra5ggKM/l9g==
X-Received: by 2002:a17:902:ea08:b0:1e2:8f1d:6fa8 with SMTP id s8-20020a170902ea0800b001e28f1d6fa8mr5120728plg.19.1712187698319;
        Wed, 03 Apr 2024 16:41:38 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.41.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:41:38 -0700 (PDT)
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
Subject: [PATCH v3 03/29] riscv/Kconfig: enable HAVE_EXIT_THREAD for riscv
Date: Wed,  3 Apr 2024 16:34:51 -0700
Message-ID: <20240403234054.2020347-4-debug@rivosinc.com>
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
index d3109557f951..ce577cdc2af3 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -200,6 +200,11 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
 	return 0;
 }
 
+void exit_thread(struct task_struct *tsk)
+{
+
+}
+
 int copy_thread(struct task_struct *p, const struct kernel_clone_args *args)
 {
 	unsigned long clone_flags = args->flags;
-- 
2.43.2


