Return-Path: <devicetree+bounces-102504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2259774E6
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 01:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81EC51C2408F
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 23:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C51401C68BE;
	Thu, 12 Sep 2024 23:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="YP1E9QC2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A4F1C68B0
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 23:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726183054; cv=none; b=kvjsN/uQg8HWC10I26jrsTVxn+BSVojvOBNLAPOjHQ6+qJE8UgLE4B8eZXIre4K+GYpJk3McYmys4fMsXBwM6scjC62EAeiQwOm/Gu9usicUqlO+tlkPoD7O8XHN4UmsFaqmWjOcN8httee7IL0AMsOQWt46xWmn/TAU/LcfNcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726183054; c=relaxed/simple;
	bh=+I5sB5G+EDwu6sK4K2HvmZ3P+rsbrIb6vKS+qhSNDUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DcQxwvAkIFc8afe6A/dKzhSY9p6fkWh0a4285ahBlTTgPRxzZXYjzRNSrIjubwmFNj8dDslWAGCmNiQk9Q/rwtSy4ATyfcimgcocKl9aQf4599zRh6hFeZq4URkGU/82b5YtzpteH6LbRiemirN2wUcOgkxHdZaNKLpg0sXFKpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=YP1E9QC2; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2d86f713557so1069658a91.2
        for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 16:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726183052; x=1726787852; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OL3ZuDMqCGbJryHQ73fpa2Z59erwJkwOpRXQ2rxwv1I=;
        b=YP1E9QC2GOqbW+TbVmbhE5bCl/050lQpxaZLjlKhMJiPy2cSxBhUfNtL55ULAV5D/W
         mv0pg/uXuFPA7PtXjvF+RnSp51FBknJc/OyGqKR8tgD5TAnWOyQv3AFnIz395H8MG7+C
         zQmFcu0WrIyRxeVpIC8pbXmxQE/m6PuocG81I0mWQczvdSXzmuqrckpARHB2epxf7sVC
         HA3GN8Weg2T+AtLfq7T001lzSuNoxUBGFWBpQedmMio3ZOfRShtVXrRblAYn8CCbAhzi
         mr3qF4h8AwgY1+ZeYV2UiB/iX2J2YuVcY8k1Y8niEjv/lUaq+m8hMwOO9PmTQgRkJr+K
         T+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726183052; x=1726787852;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OL3ZuDMqCGbJryHQ73fpa2Z59erwJkwOpRXQ2rxwv1I=;
        b=hh2+Vj6AAwbPjP8X2OeSDBC7XCVdDWaXxH1I0hT8Q0b+SBkWA7qJRBACQsqoZ1RbYx
         DXE3rUg0OZ+XEUdCQM1xz0A538KeNMGA9e1nFI9JHZ3DK5SC3mDBB0X/qwegaSusV7UR
         RGirfLoeMTh10Vy1PBNlDDqWrJVJsWIv6p5AQYq0CACXYp/QrkMNPKhjS7TDqSsGrtvn
         /nCqfhs44WABgNZpy0AiFyv+50o2DiuxVPtxvkT+o2ClOwuKInZk+bZM6AVVPX+vo1hb
         Kkd0xnz1xBGrwrlq/QTDIdiqfsFETTsJO8Jnk/yCMciMKg01RUSuTSKAUIG4TSeW8uNR
         ebIQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1bRS6Cm8MBgVgyY4hSfE6lFiO8UBz3KSR0uDgIY4vcPBr20ZDDILb7btG8WqMRnzIZMZMmAysqk86@vger.kernel.org
X-Gm-Message-State: AOJu0YyJz4gH9j5vL2iMMxpNNxhUJOFwUEq2VBMZc7qWr3e+CBwlHhEA
	jYdxLJstdNQKTw33kx3TP0Qzg6Jh2KE3/+gYQ7PfkjOwHKfrRIQBt6DHQ9zcAY4=
X-Google-Smtp-Source: AGHT+IE9fam6IfuuZkZ+ZvbmFrswnqok3RLTHJaic61nQCF+zeo3Ji5hunRDoKXFzuz+ce22C8cSog==
X-Received: by 2002:a17:90b:1889:b0:2d3:c4d3:de19 with SMTP id 98e67ed59e1d1-2db9fec65ddmr5214534a91.0.1726183052278;
        Thu, 12 Sep 2024 16:17:32 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2db6c1ac69asm3157591a91.0.2024.09.12.16.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Sep 2024 16:17:31 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh@kernel.org,
	krzk+dt@kernel.org,
	oleg@redhat.com,
	tglx@linutronix.de,
	mingo@redhat.com,
	bp@alien8.de,
	dave.hansen@linux.intel.com,
	x86@kernel.org,
	hpa@zytor.com,
	peterz@infradead.org,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	kees@kernel.org,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lorenzo.stoakes@oracle.com,
	shuah@kernel.org,
	brauner@kernel.org,
	samuel.holland@sifive.com,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	greentime.hu@sifive.com,
	charlie@rivosinc.com,
	evan@rivosinc.com,
	cleger@rivosinc.com,
	xiao.w.wang@intel.com,
	ajones@ventanamicro.com,
	anup@brainfault.org,
	mchitale@ventanamicro.com,
	atishp@rivosinc.com,
	sameo@rivosinc.com,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	david@redhat.com,
	libang.li@antgroup.com,
	jszhang@kernel.org,
	leobras@redhat.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	costa.shul@redhat.com,
	bhe@redhat.com,
	zong.li@sifive.com,
	puranjay@kernel.org,
	namcaov@gmail.com,
	antonb@tenstorrent.com,
	sorear@fastmail.com,
	quic_bjorande@quicinc.com,
	ancientmodern4@gmail.com,
	ben.dooks@codethink.co.uk,
	quic_zhonhan@quicinc.com,
	cuiyunhui@bytedance.com,
	yang.lee@linux.alibaba.com,
	ke.zhao@shingroup.cn,
	sunilvl@ventanamicro.com,
	tanzhasanwork@gmail.com,
	schwab@suse.de,
	dawei.li@shingroup.cn,
	rppt@kernel.org,
	willy@infradead.org,
	usama.anjum@collabora.com,
	osalvador@suse.de,
	ryan.roberts@arm.com,
	andrii@kernel.org,
	alx@kernel.org,
	catalin.marinas@arm.com,
	broonie@kernel.org,
	revest@chromium.org,
	bgray@linux.ibm.com,
	deller@gmx.de,
	zev@bewilderbeest.net
Subject: [PATCH v4 06/30] riscv/Kconfig: enable HAVE_EXIT_THREAD for riscv
Date: Thu, 12 Sep 2024 16:16:25 -0700
Message-ID: <20240912231650.3740732-7-debug@rivosinc.com>
X-Mailer: git-send-email 2.45.0
In-Reply-To: <20240912231650.3740732-1-debug@rivosinc.com>
References: <20240912231650.3740732-1-debug@rivosinc.com>
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
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/Kconfig          | 1 +
 arch/riscv/kernel/process.c | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index 0f3cd7c3a436..d1d629a3eb91 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -177,6 +177,7 @@ config RISCV
 	select HAVE_SAMPLE_FTRACE_DIRECT_MULTI
 	select HAVE_STACKPROTECTOR
 	select HAVE_SYSCALL_TRACEPOINTS
+	select HAVE_EXIT_THREAD
 	select HOTPLUG_CORE_SYNC_DEAD if HOTPLUG_CPU
 	select IRQ_DOMAIN
 	select IRQ_FORCED_THREADING
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index e4bc61c4e58a..9b66dc07c3d2 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -192,6 +192,11 @@ int arch_dup_task_struct(struct task_struct *dst, struct task_struct *src)
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
2.45.0


