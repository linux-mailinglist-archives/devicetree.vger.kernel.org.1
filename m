Return-Path: <devicetree+bounces-216714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B3282B55CCC
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 03:08:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F00371CC6A38
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 01:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3352918E377;
	Sat, 13 Sep 2025 01:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aN1KTiCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F17414B953
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 01:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757725711; cv=none; b=SFz14YvZkHGWhHUUbULNZiwC2F3Yw+T7kx2rMkCy2pUu0QKb9gChVVUa6FE55ax5gUwfRyqx9JidkXykr7QFyFSLo/Jj3zmqnU/mQEe+uggI5+QiB99q92ciDUS2Al4LJhq2ONmZIcjNPxOLg6fumTx+HOGbBpOt4AbO4pgv4OQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757725711; c=relaxed/simple;
	bh=gH7Rddwu9MUu/+t3B7A94tjqEJhL770gz/5Md0mQZOk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rojh4ts563D0zzoiZbvD2lBP99Mfukl99+lkYig8FWSb2Xv4Azi7CrJ86463oXez+s39pDaN/tU6hP8E1ppztBAniyKaUpmkfAi2bfkaPT8SVjRxFyjAig5elM5m+sq3h0vd9UL0RFYiJDbNI26Tp7X5N3/Pk7IRNXHCKJCMq5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aN1KTiCS; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-625e1ef08eeso4237408a12.1
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757725706; x=1758330506; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=076xoEVbaVUh2WXJ09mT2DE1QkI5WvxeMmJOzlrP1Zs=;
        b=aN1KTiCSwNPhtSh+4uLVVS63QBvN1SQIF/X+JI6JOkxphBHQx6cZlucBweKr0dd0aN
         TyaIVk7Wj1K4VbPS2H1rxAtLy39JfuTVaf8ZjwqRG3ylPlDNWaL8Rk8F3bDrnhZ7xQ9e
         zWgd+E9p49vul5ymwY8zacDsBH+TLU0baB9Emkeu29h5FMnkiJxkorjM2Rx/2vd3Wutp
         N9bjlEMsBJ83lkS8d/LH2Pnq6MagRHvRD+W+JloMVC4Fp4g8J5IWzZtPVJoAMLtnuXwv
         zaoOA/2BrTy+aWoOHpYqAtaMEkFqAJBBJyuc53gZ0vBFnbXXf6VzmFsbv1wjwLn3amUT
         doXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757725706; x=1758330506;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=076xoEVbaVUh2WXJ09mT2DE1QkI5WvxeMmJOzlrP1Zs=;
        b=vfmrQmqKnhSR8drIrLISjUDdZXsliY55W17gU8IHg14EXbLSQG7X4dMwMqT43WvYGz
         7MhA6aTP/yeFZChhw5OE7QJybGtqwpWbxk/cvzvKOCGil3exvhYNvcpkrsjNfzYyDJbL
         U7GEScUBrLob8Xpwo6kwcY5KEuQ8tEwuTGOAFOqsm+hMfU7X8L9ROUOvUJ6zSitX0dAo
         OnO2WDm9XXzZ/a6utSffWvF4rDnXceveothKv6hqGxVpPLBXz7Ouge2MB5NPHU5JlyR1
         cdCPoWGwYWc/aipOeP5TiIAMIpoeXvj4T/vai/eXt25rERlpBtku0gADZcMsXk2dREDj
         RNZQ==
X-Forwarded-Encrypted: i=1; AJvYcCX1nD1iG5CRrPgcwUyOUo45zBtpE+KfLwxHMYwJlgiXpYmRjfgVJWZbeX1/z0RCDiQqqKkxSB3kTyaX@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9pxbfzcS9XAZ9p6YPlMVWWjE7fBaD1A2QGJw2ey9ATYtdeUQQ
	mVS6p8VMcz+H0zSmAlxuzepzL+KVOQFQZ3ttkSVD202t+NEkSperWr8F
X-Gm-Gg: ASbGncsGBrSySPu8B7ZhdOe+USsPQWC3nmkhvfBQY0D6byEy4MTdlEbP6dPwB2p1AXK
	OA60Bt2mZhDoZFA3Mj3Q5t9vRu9HNMUsYY5NfqrfazF7tI6QaWYIOAX1B/kiNQu6WI05E3jtv9t
	Hc7Yt0uB8NZejpfHrLC6tK6pcQJ2OammryRV++xVYg/mYPS2d6XCTxVqsgVAm785zSIBztWJLSl
	1GPybhkArtg1AKXtxeUaVMFWSsbcM2xzxza/r1HdtnWxa86St6GPe6cyNoCEHW8Pi3G9rIoyDmT
	eGh5xPld1ck7ir1G9CcLk6yeF6WAFklzPK2ei5kMcYGlxy/gf4m9XPWsVDV8NwU8VbVGXx6Aiyb
	a0L6/nRt0BpwImQc5gjBpyI5aGVsYqQ==
X-Google-Smtp-Source: AGHT+IGdk3XVuMADNouJH/aBQO3dgisawWr0ra1gK5dmtwng/BJ+8DUWD+mdbhpnTmhbFrSAIQbncg==
X-Received: by 2002:a05:6402:26d0:b0:62e:e5b3:6388 with SMTP id 4fb4d7f45d1cf-62ee5b367b9mr3462166a12.19.1757725706048;
        Fri, 12 Sep 2025 18:08:26 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id 4fb4d7f45d1cf-62eff1a5c6esm720024a12.50.2025.09.12.18.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 18:08:24 -0700 (PDT)
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
Subject: [PATCH RESEND 26/62] init: move phys_external_initramfs_{start,size} to init/initramfs.c
Date: Sat, 13 Sep 2025 00:38:05 +0000
Message-ID: <20250913003842.41944-27-safinaskar@gmail.com>
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

Move definitions of phys_external_initramfs_start and
phys_external_initramfs_size to init/initramfs.c

Signed-off-by: Askar Safin <safinaskar@gmail.com>
---
 init/do_mounts_initrd.c | 3 ---
 init/initramfs.c        | 3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/init/do_mounts_initrd.c b/init/do_mounts_initrd.c
index 444182a76999..06be76aa602c 100644
--- a/init/do_mounts_initrd.c
+++ b/init/do_mounts_initrd.c
@@ -15,9 +15,6 @@
 unsigned long initrd_start, initrd_end;
 int initrd_below_start_ok;
 
-phys_addr_t phys_external_initramfs_start __initdata;
-unsigned long phys_external_initramfs_size __initdata;
-
 static int __init early_initrdmem(char *p)
 {
 	phys_addr_t start;
diff --git a/init/initramfs.c b/init/initramfs.c
index 6abe0a3ca4ce..5242d851e839 100644
--- a/init/initramfs.c
+++ b/init/initramfs.c
@@ -600,6 +600,9 @@ __setup("initramfs_async=", initramfs_async_setup);
 #include <linux/initrd.h>
 #include <linux/kexec.h>
 
+phys_addr_t phys_external_initramfs_start __initdata;
+unsigned long phys_external_initramfs_size __initdata;
+
 static BIN_ATTR(initrd, 0440, sysfs_bin_attr_simple_read, NULL, 0);
 
 void __init reserve_initrd_mem(void)
-- 
2.47.2


