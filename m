Return-Path: <devicetree+bounces-75576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 17010907C69
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 21:22:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B7191C257A9
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:22:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47CFE14EC54;
	Thu, 13 Jun 2024 19:18:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="w/JZTemT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2F5014D2A0
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 19:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718306285; cv=none; b=eHlFqnuJ8XkKR+sW42+x0pfN9YE+ZbmWuXu9DRDlAd/YzTKQ54cUpZPQF1WY02QcGWLNzP40hY0AlDXIqlAgyDVHM0+OZoabVMH+rv3Xw/pMYWWm2TH5QswlnB3slt9kLP1bgujB8wAI20PVfomk99modmezNPSwI1l1MVUNDRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718306285; c=relaxed/simple;
	bh=ce4Q/NufruI5urXZ7chvDXPvs3yC6pJfyCeEUEbRjjk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JOg8umUfljIz8D9FWS6KIvJP6x0acYU17PgxAykxbvaXmCfgtrm0PhCCCgTV9XGyrbX+XUTjZH+ADrUQ9SvTK0KVozxgJBRZ8UuFNiHfGAE59WgYy2QyShGVxcs99FMQ5OGRvD3nNV4rOEABpfLRDxpu1oSyi6sRgjr9ohjtHN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=w/JZTemT; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-1f47f07acd3so13345655ad.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 12:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718306283; x=1718911083; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lznOWuT3zuZ+7YZNo94Ic++y7Z2ydYmmMFGw8gZ0Wmk=;
        b=w/JZTemTCsVzzfSSQW90F/em0dnvxk8R6ksBQaHsAgHtVW9M9LF+b02MOkkRdhEpVI
         Z8GearT0rh/SIqS+PRTgSuV0c85/xcM1PUeLyBnd55rKxU1xSxZaj9SpIbHsQJvmH58+
         DT0LkLOvYp+mqxcuD+Vl5A6SVKdd2GC4PVDf84QIh0KjDelGTb/Lwkb0sQ/XqmrlDgeb
         unA8eUQ9iLFDlWTvkrmu3gAHDBCSYFdEU3fiUPvw3S95P+3U2vvYpnNp98ztN63dXx42
         l8oos9WUytiefc/YPXM1Lc+V4wsPBH3v3bzHeUNwdETi8EhQ6yQDx86jxt/TiYj0bhT6
         0m6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718306283; x=1718911083;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lznOWuT3zuZ+7YZNo94Ic++y7Z2ydYmmMFGw8gZ0Wmk=;
        b=Tv3xyvlH80TP06fzM9tr0iiSRCSyG5ypOTm88Kc9RvDIOEAd2wRsJ0iRDsn5oVHgwX
         qEnBtUJoa+AJmon7z4voCKNJi/LBkEosinniyKqyNFGdnbVEaxHorJwvVvxNM59rFGiR
         /8joy0Uhu8g7DKH8xhj8p3AScPpfImiHphshswPK369SO9q4/tIESlBt5SR+wd0ogGtq
         l9HSJhYHVn9E0v+0JW5x/568RHCP5KVQhVtn1Fv6qLym0x0HBZ+m2m84KAWd+A8Yx4bY
         zMTwhpBf5WUClSxASGecvzXOH+fw2yO9iCqwmi5npWJePDHbmV1GTwbdNY0OJg6WGdZJ
         jzQQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQizAW/CtjJYi+cPkywGOx9b44EulSFQyF4fB9BHUmdvqJaE7edoIfjCGcey+yTZ0P/oDW5Zv65HYGlkEwwLp7OVpkOZyRwSa7Bg==
X-Gm-Message-State: AOJu0Yz5Rua91M2tyH9ilY+71GhKCjpvzHhXbvuMdn0HmWQQKzNNyW7x
	va2o8ooSyTPjaJ6bNVL51sO20DEhI7XdSG4gy+2MAwfzbgrmIFur9uPXKyGF9u0=
X-Google-Smtp-Source: AGHT+IH16Z30xWnnVCPD+SWE8CuZmhFACgLpQTZU9/kCBeM9FuPyEaJYp2X2ogoYFLKkXmxabg3ZrQ==
X-Received: by 2002:a17:902:f68b:b0:1f7:1706:25ba with SMTP id d9443c01a7336-1f8625cf2b0mr6158425ad.15.1718306283241;
        Thu, 13 Jun 2024 12:18:03 -0700 (PDT)
Received: from jesse-desktop.. (pool-108-26-179-17.bstnma.fios.verizon.net. [108.26.179.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f855e7ca78sm17471015ad.106.2024.06.13.12.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 12:18:02 -0700 (PDT)
From: Jesse Taube <jesse@rivosinc.com>
To: linux-riscv@lists.infradead.org
Cc: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Evan Green <evan@rivosinc.com>,
	Andrew Jones <ajones@ventanamicro.com>,
	Jesse Taube <jesse@rivosinc.com>,
	Charlie Jenkins <charlie@rivosinc.com>,
	Xiao Wang <xiao.w.wang@intel.com>,
	Andy Chiu <andy.chiu@sifive.com>,
	Eric Biggers <ebiggers@google.com>,
	Greentime Hu <greentime.hu@sifive.com>,
	=?UTF-8?q?Bj=C3=B6rn=20T=C3=B6pel?= <bjorn@rivosinc.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Costa Shulyupin <costa.shul@redhat.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Baoquan He <bhe@redhat.com>,
	Anup Patel <apatel@ventanamicro.com>,
	Zong Li <zong.li@sifive.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Ben Dooks <ben.dooks@codethink.co.uk>,
	Alexandre Ghiti <alexghiti@rivosinc.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Erick Archer <erick.archer@gmx.com>,
	Joel Granados <j.granados@samsung.com>,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 6/6] RISC-V: hwprobe: Document unaligned vector perf key
Date: Thu, 13 Jun 2024 15:16:15 -0400
Message-ID: <20240613191616.2101821-7-jesse@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240613191616.2101821-1-jesse@rivosinc.com>
References: <20240613191616.2101821-1-jesse@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document key for reporting the speed of unaligned vector accesses.
The descriptions are the same as the scalar equivalent values.

Signed-off-by: Jesse Taube <jesse@rivosinc.com>
---
V1 -> V2:
  - New patch
---
 Documentation/arch/riscv/hwprobe.rst | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 7085a694b801..344bea1e21bd 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -236,3 +236,19 @@ The following keys are defined:
 
 * :c:macro:`RISCV_HWPROBE_KEY_ZICBOZ_BLOCK_SIZE`: An unsigned int which
   represents the size of the Zicboz block in bytes.
+
+* :c:macro:`RISCV_HWPROBE_KEY_VEC_MISALIGNED_PERF`: An enum value describing the
+  performance of misaligned vector accesses on the selected set of processors.
+
+  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_UNKNOWN`: The performance of misaligned
+    accesses is unknown.
+
+  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_SLOW`: Misaligned accesses are slower
+    than equivalent byte accesses.  Misaligned accesses may be supported
+    directly in hardware, or trapped and emulated by software.
+
+  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_FAST`: Misaligned accesses are faster
+    than equivalent byte accesses.
+
+  * :c:macro:`RISCV_HWPROBE_VEC_MISALIGNED_UNSUPPORTED`: Misaligned accesses are
+    not supported at all and will generate a misaligned address fault.
-- 
2.43.0


