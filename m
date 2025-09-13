Return-Path: <devicetree+bounces-216723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AECF0B55D7E
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 03:18:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5F6F5581DD8
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 01:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A5C81D47B4;
	Sat, 13 Sep 2025 01:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S3MR3wRG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACB32C1A2
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 01:18:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757726310; cv=none; b=r2AWnbqKJ/t84gydtfjKG8YbeSEja495E79YosT0dviF6m4aCOQFOmp8SOdMmMMwE6zn8sWoAU58iTYoaDla51FbuWSLWrBCI9GvQqQB17QX5Sr4yKQOLDca5hPnCYUDFlyNSwgVxjiN7oACOHnxMdWc+HhBhisqIeitHEuHUH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757726310; c=relaxed/simple;
	bh=gqqGfNEIy1h395KAAal0EqVTqfHBZvgS53UXMAzAIg4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uLrhF8ZB9G9GQMEzeZizX1mxwannYGJtV3F2hoqHfEBS7y3UcxbpKgNgFXSCZ9YQn6EFbtZ+VDG/a/M/vO1cH0mhT3qO4cBvoRg/hA71QZf8A0AZrVQj43L9rYXifd1czYFWgqcT+SXX31/ISKQzWV6Y5L7YHld/KOTTQDDqHmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S3MR3wRG; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-b042cc3954fso453278866b.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 18:18:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757726305; x=1758331105; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=azZv/jvf6IRhG0wveCq5ECQcNHAHnPNLNif/IfsLlkA=;
        b=S3MR3wRGhC/kXLFi7tEzWsnegJT9EOlT9m/C/MFzc4mLffsb1zPxwJp1ys/R7WkKtu
         lGH2qDNYyTs5AoU//E0brWD5vIAIWB1n3FQosPRaK+QRoGA0DZdmhSh/3U5iRy8W4DJp
         Fenld0TY4Z6v7xbzE43yOvUjTFLByOJ5B4tAPAr4+lqeApOt2QlD3yf3593AS0fFkyGD
         QIRxGEpNIvRn18hyuD6Dfkz7pZwRQAb4wq9+5bZobdNclLuXePQzPiQWeZfPixQk4bNj
         mQU+cnszndYycrVnwj9dFqcHiTNWiRrAaiY+Wgi8p28YIcrLfiIHcIobM8FFJ7GF7SK9
         5mww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757726305; x=1758331105;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=azZv/jvf6IRhG0wveCq5ECQcNHAHnPNLNif/IfsLlkA=;
        b=LzW09iYcH0WjCjCX560On09CQ7FBUAXZJb+pBZEeq339Bn4B3JUSFdkajU1k2FZOaS
         0jWSrZEbZ8/sCW2wx430sgn50ry+VugSubW9qCyACen6Ml80ig2JDRwTGNqe6K/skR68
         7bYN+ri5BzakoZyQG+mnPex87GnEjwgJtkZgLu/q8pl1Q+6lqXIS4KrxQIAPpRRDy+8J
         HB0zznG1B97/wNBXnoU6V7rDyrItVMHr3BeYppEPZeKhtOvwuUVWjBoU4XegUsB79lFl
         NCMRSEOe7nHb4CPKrG/r9LtUUyrCr4dshJ6I46VWaj/Xo61TuC8hl5Yo1rkyQdpMI6aX
         qblA==
X-Forwarded-Encrypted: i=1; AJvYcCXiaHKJSgHQTr14OmFCAoZh4/cQP/pCPe6Q3WZJTmS0HnqhNLwS31LivjASC7Khm8+TJBdch3w9TSXT@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5Wr4AzGsJrkV0lA6fUUQzChOS6cDbVwN4uqzBtqcxa6tearYs
	NbhcehnRixaElHbOQkFkYARut42A8+AJayloIbOY9TiDH78mTGXMI0MF
X-Gm-Gg: ASbGncvTLGahSXoqpjeDgEDA2uosmjnjn0d13MkRPjHbtAoHgNNPveJ7Z1891btsEqd
	gvYAe7Nx+Dax0Zd//91SPqq84myJipiuJjs5UjHL3SqYis7Ru21l5ucNQB95q1TPyne3YG2RXaF
	s8RHbWP9vrsrbEr89R5L2kGhqZTCUhoJctTEMlgZVXHRvIUzsPI4Co4H5pVR1UzHQFt7Q2iRWsv
	2KyHgaqoUx3fXot23gaou5kIRJ2sjwkEupf3wGxzC4Y0RXzaxmUy+m4IV9vzI3YlWl56xPz48kC
	Kk2aoCR6L9AXzazIStDXFzrvyrHduGSVbUnR5NIMECY/nH3UA7vFxaJjyUU62vPldfqXYP472ZR
	ciRBeGwUcKE9HJwn+tEY=
X-Google-Smtp-Source: AGHT+IExQyu+Z7m4GD3MP2gVTN78xlktku98kUsQddou1aWuxY/hOtzAat6yYKAto7vnFggGkvcCIA==
X-Received: by 2002:a17:907:3f18:b0:b04:45e1:5929 with SMTP id a640c23a62f3a-b07c35cd746mr507554266b.28.1757726304508;
        Fri, 12 Sep 2025 18:18:24 -0700 (PDT)
Received: from localhost ([212.73.77.104])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b07b32dd309sm475244766b.53.2025.09.12.18.18.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 18:18:24 -0700 (PDT)
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
Subject: [PATCH RESEND 35/62] init: make mount_root_generic static
Date: Sat, 13 Sep 2025 00:38:14 +0000
Message-ID: <20250913003842.41944-36-safinaskar@gmail.com>
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
 init/do_mounts.c | 2 +-
 init/do_mounts.h | 1 -
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/init/do_mounts.c b/init/do_mounts.c
index 60ba8a633d32..c722351c991f 100644
--- a/init/do_mounts.c
+++ b/init/do_mounts.c
@@ -174,7 +174,7 @@ static int __init do_mount_root(const char *name, const char *fs,
 	return ret;
 }
 
-void __init mount_root_generic(char *name, char *pretty_name, int flags)
+static void __init mount_root_generic(char *name, char *pretty_name, int flags)
 {
 	struct page *page = alloc_page(GFP_KERNEL);
 	char *fs_names = page_address(page);
diff --git a/init/do_mounts.h b/init/do_mounts.h
index f3df9d697304..f291c30f7407 100644
--- a/init/do_mounts.h
+++ b/init/do_mounts.h
@@ -12,7 +12,6 @@
 #include <linux/task_work.h>
 #include <linux/file.h>
 
-void  mount_root_generic(char *name, char *pretty_name, int flags);
 void  mount_root(char *root_device_name);
 extern int root_mountflags;
 
-- 
2.47.2


