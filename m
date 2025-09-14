Return-Path: <devicetree+bounces-216855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29070B564A3
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 05:50:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8961A1A206F6
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 03:51:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB72026A0C7;
	Sun, 14 Sep 2025 03:50:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="a1P8kBWK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C07851D7E5B
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757821837; cv=none; b=nKILZE4Koq9cfMxbCngCoqztOdLx43Yam4HP4F9Zw1njdSByGee1lX81z6zJPmYcjpCR48zU28tk51EkJy+8rtJgHvMjlg4BE3HA/1hkn8P5bctxyPNKhDOJZbqeJeHqvHU9sdL6HsyH59mhBpO7B5DT+ZcqSxaiLzyCfGQOL+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757821837; c=relaxed/simple;
	bh=UKYo3sZQHTOBTzj/ZrSKU3L73PiTPpOmU1LUHeX039A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GK6AhrT4CtFzV4yCkiV41beqDIC4yxxvM2bMGNXClfOMmlnigFT6eG9QP3KP97Wr3CoF2fcLr1exOmUFwk5PKKcI/K2r3JcrAtfvWBw53VoYYGjOgwzBmmNG688p8tUIB3XXz7Fp8XBPmYezjVC3sLj5rMg1vtCcbnvG7r8LL+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=a1P8kBWK; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-62ef469bb2cso2845643a12.2
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 20:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757821833; x=1758426633; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xULsRy9EzPzDuVUBFXoTlnqFZHMdg+FSwp5f1Vonn0Q=;
        b=a1P8kBWKhC/YGuTQ1qtgdu/eEmNliJm6xmjHlAYF/nZVCc+MkYl483G0Hq/aOPOuVQ
         co1t+z2BxO/DqCnrZV/EXoLvGXKtEHZqFdATOOJ7EzTdu3MgJ41k6O6rnPR886VF0J+g
         jgvNa+Ki1aT0KILtz2E0BMca3UYgzXBOakUCCFuFTU7ebx7Nd0hzzslIgv4hyWtZH0Us
         YbZQmnVSwIBoXEECRLCw5/S9dNhg9pi/sa5YxeFeAtv7H0GbAy2fZWrU6+0CkFOt7mcb
         RR3YbY8LMKAJx2sciiyJGNfQKUPjHVakvWWvmZVaCaVDH0xUngt3/RwvkIeU1VGaFSWY
         JGOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757821833; x=1758426633;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xULsRy9EzPzDuVUBFXoTlnqFZHMdg+FSwp5f1Vonn0Q=;
        b=CF1CbyL+cHPv4T+Eq1QGsd1tsei0ESfuRc5d1xes4tTnTcQOMiByApuipMx2139gAf
         3QDHkRE+zLsMTrYphmaQPaeLnvKm4p2kdIog7136CFjPy3CCsybW9Gm3ax3MI1K9XPEB
         b9GBtNdTBwxlWNri0BAM4ng27Vvbk4820g/NzZUYMFiEwSroPQWTod9oGd4FxmB6XwX2
         lFxMZHuF4SB7PtXLHW9D6tTDYh1HHUSOntJ8iLYepujobRu0rcupElZRm34XBpjINQqq
         9WDjZ/ArOxIhqQ/2cMIX5rPPh0g9yh0ETqksMy28RLwBrXqeZh6SqrM03rSwwkEIXKFu
         7UNg==
X-Forwarded-Encrypted: i=1; AJvYcCUPp3k7dCNA0y0qOiI2x2+knK9Sv5SUElPZMsCejFJREWTSNLYWRUEb9wGdg9bc6BJrH6bTF6QxLyZ/@vger.kernel.org
X-Gm-Message-State: AOJu0YypLPvNdIjrHScHtz9Tc6Adj6EBPykCFOZlcp1pAa0PG5cNWbuK
	ILX/bXCGIc2kf+MoxKf2OY/tAVNe9wiGryJN9PBxpvOK1RBxPdJ2kz1F
X-Gm-Gg: ASbGncsmq2Fl4pq11YTBJcKgVyoN1o4qTxcFzpSoHkgE1dBXsg6LkOxy9hDw5D7M2NK
	Q8UXkOxycJaRLqOHcK/+D9xNzMZZvN2lgbFRvnC3MqPk4gRM84c8XLekliLD7kl7cPjpVfiu2Yb
	6Fum5NbIhqegNA1nDp4rJHdflJMdwXJmdua3CW3uYnqWIM5S9VnDgOIcfBcQWQKERtOur0JVGie
	P9SkTBApn2e+5nHbo12zYVAUFMSZz35ntSxB7Uhh6hJiAR3Sz/D4N/9qPh1su9FUn/F4P2cWUuV
	Iws1NGE/wP0gtBko9iECfqU4T0xMc2dSKyg1hnKbFL5G/GCVxKmWmHciHnNUmHUAAHOblJV8PUC
	ifzQEM0R37jsLWtr1KXx8j8m6C3456Q==
X-Google-Smtp-Source: AGHT+IHE3K7efxQ+hk8pVBE6YY31PD4G3LjwwPuEi1DqCDNI+Ud0foCSPIjpPnt40T661VaNMc1/Ow==
X-Received: by 2002:a17:907:3e8c:b0:b07:8836:dea9 with SMTP id a640c23a62f3a-b07c3819dc5mr855439466b.39.1757821832889;
        Sat, 13 Sep 2025 20:50:32 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b07b32dd3efsm668828766b.55.2025.09.13.20.50.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Sep 2025 20:50:32 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Christian Brauner <brauner@kernel.org>,
	Al Viro <viro@zeniv.linux.org.uk>,
	Jan Kara <jack@suse.cz>,
	Christoph Hellwig <hch@lst.de>,
	Jens Axboe <axboe@kernel.dk>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Aleksa Sarai <cyphar@cyphar.com>,
	=?UTF-8?q?Thomas=20Wei=C3=9Fschuh?= <thomas.weissschuh@linutronix.de>,
	Julian Stecklina <julian.stecklina@cyberus-technology.de>,
	Gao Xiang <hsiangkao@linux.alibaba.com>,
	Art Nikpal <email2tema@gmail.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Eric Curtin <ecurtin@redhat.com>,
	Alexander Graf <graf@amazon.com>,
	Rob Landley <rob@landley.net>,
	Lennart Poettering <mzxreary@0pointer.de>,
	linux-arch@vger.kernel.org,
	linux-alpha@vger.kernel.org,
	linux-snps-arc@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-csky@vger.kernel.org,
	linux-hexagon@vger.kernel.org,
	loongarch@lists.linux.dev,
	linux-m68k@lists.linux-m68k.org,
	linux-mips@vger.kernel.org,
	linux-openrisc@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-riscv@lists.infradead.org,
	linux-s390@vger.kernel.org,
	linux-sh@vger.kernel.org,
	sparclinux@vger.kernel.org,
	linux-um@lists.infradead.org,
	x86@kernel.org,
	Ingo Molnar <mingo@redhat.com>,
	linux-block@vger.kernel.org,
	initramfs@vger.kernel.org,
	linux-api@vger.kernel.org,
	linux-doc@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-ext4@vger.kernel.org,
	"Theodore Y . Ts'o" <tytso@mit.edu>,
	linux-acpi@vger.kernel.org,
	Michal Simek <monstr@monstr.eu>,
	devicetree@vger.kernel.org,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Thorsten Blum <thorsten.blum@linux.dev>,
	Heiko Carstens <hca@linux.ibm.com>,
	patches@lists.linux.dev
Subject: [PATCH RESEND 38/62] init: remove most headers from init/do_mounts.h
Date: Sun, 14 Sep 2025 06:50:27 +0300
Message-ID: <20250914035027.3609569-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250913003842.41944-1-safinaskar@gmail.com>
References: <20250913003842.41944-1-safinaskar@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is cleanup after initrd removal

Signed-off-by: Askar Safin <safinaskar@gmail.com>
---
 init/do_mounts.c |  2 ++
 init/do_mounts.h | 10 ----------
 2 files changed, 2 insertions(+), 10 deletions(-)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index 7ec5ee5a5c19..5b55d0035e03 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -5,12 +5,14 @@
 #include <linux/fd.h>
 #include <linux/tty.h>
 #include <linux/suspend.h>
+#include <linux/blkdev.h>
 #include <linux/root_dev.h>
 #include <linux/security.h>
 #include <linux/delay.h>
 #include <linux/mount.h>
 #include <linux/device.h>
 #include <linux/init.h>
+#include <linux/init_syscalls.h>
 #include <linux/fs.h>
 #include <linux/initrd.h>
 #include <linux/async.h>
diff --git a/init/do_mounts.h b/init/do_mounts.h
index e225d594dd06..53e60add795a 100644
--- a/init/do_mounts.h
+++ b/init/do_mounts.h
@@ -1,14 +1,4 @@
 /* SPDX-License-Identifier: GPL-2.0 */
-#include <linux/kernel.h>
-#include <linux/blkdev.h>
-#include <linux/init.h>
-#include <linux/syscalls.h>
-#include <linux/unistd.h>
-#include <linux/slab.h>
-#include <linux/mount.h>
-#include <linux/major.h>
-#include <linux/root_dev.h>
-#include <linux/init_syscalls.h>
 #include <linux/task_work.h>
 #include <linux/file.h>
 
-- 
2.47.2


