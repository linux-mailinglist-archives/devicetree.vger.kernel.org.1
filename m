Return-Path: <devicetree+bounces-14327-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6501F7E3A66
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DE34AB20C6D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E10B2C868;
	Tue,  7 Nov 2023 10:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="c4wX3fG5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C314B29CF3
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:08 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5C9C116
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:02 -0800 (PST)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32f831087c6so1250674f8f.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354561; x=1699959361; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yWXszjrW0mqtPT5ge0XuiGQJ6aaCxrPofMKEXjPvYnQ=;
        b=c4wX3fG5F8aKGGSfMvLi2Y10+n1g6YLC+lOXGQAKQwVD0nXggrkTKAPvnjXEHsPpLi
         Tv4HM0vAaLODqcka4Ei5ysUBLc1Yv9aFeOGTq9LxzeXy98reED89s/UFBrluLK6VpMHo
         Y7eJNQhTTPwtkWSQy482lR8DOlQkpvD6uSqKqnSH6t37wdnzgWpAMBTXewPWMX1k75TQ
         J3yG0alz4pmsuQ3f5xZK7wdfCUOfEttBddRUyrnKDuHqAarzm6ZHy9RHovNXQiOQ5bTK
         mvC6s5xAnAaRHmqcbIxLkhLl2Z1wRY4yx9TD2unBfEC0Lx+i+avJ7H6cqhWSZMM+kN8c
         dECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354561; x=1699959361;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yWXszjrW0mqtPT5ge0XuiGQJ6aaCxrPofMKEXjPvYnQ=;
        b=rlejs+5f5MwAw69155xd7rpWwAwRE2a0tsqTqIeSUfG8KRr4JJwOufavzKEwt8xUpv
         qIexMt5FtZ2vxsbq42pNzR9hnp6IAcK/1iUzuWtWwwwRR9JqSxK42vUJRopaHZ0gvDZv
         UcAAQmaj5kjTEJ2DSce5Nubh6W2cK5UdIaS5NcWZJbavjIffxRd4hgqeRKW+2OH8Ucgh
         1rfD8scp84ojGBDuK+YwKohBuiu0k0cv0mY3NtN3BFecnBzbkXVNKiyjJRbH0AWczWqo
         FmLGZa1IOemrprBkyASaKFHfMEojjAaIWzeT93Vhd2wbI2uqNZS/Ym1Bin8qI44Igjys
         KpFg==
X-Gm-Message-State: AOJu0Yz6r9U8GCe2hSh6BMhcHO+GGH57VzE0emMT6RpnbeWMZSPimvDv
	FcPQrnvwJngKxefLRgRPhrqefQ==
X-Google-Smtp-Source: AGHT+IGuavTtsmwxI8/q0+XaTOH3JqZmAYfCgV3LA6iUJWNnV+0tLfzziM9Sx1y+OIsrf624uUG+Gg==
X-Received: by 2002:a05:600c:418a:b0:3fe:d637:7b25 with SMTP id p10-20020a05600c418a00b003fed6377b25mr25010147wmh.0.1699354561462;
        Tue, 07 Nov 2023 02:56:01 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:00 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>
Subject: [PATCH v3 01/20] riscv: hwprobe: factorize hwprobe ISA extension reporting
Date: Tue,  7 Nov 2023 11:55:37 +0100
Message-ID: <20231107105556.517187-2-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107105556.517187-1-cleger@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Factorize ISA extension reporting by using a macro rather than
copy/pasting extension names. This will allow adding new extensions more
easily.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 arch/riscv/kernel/sys_riscv.c | 32 ++++++++++++++++++--------------
 1 file changed, 18 insertions(+), 14 deletions(-)

diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index b651ec698a91..49aa4e82797c 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -145,20 +145,24 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 	for_each_cpu(cpu, cpus) {
 		struct riscv_isainfo *isainfo = &hart_isa[cpu];
 
-		if (riscv_isa_extension_available(isainfo->isa, ZBA))
-			pair->value |= RISCV_HWPROBE_EXT_ZBA;
-		else
-			missing |= RISCV_HWPROBE_EXT_ZBA;
-
-		if (riscv_isa_extension_available(isainfo->isa, ZBB))
-			pair->value |= RISCV_HWPROBE_EXT_ZBB;
-		else
-			missing |= RISCV_HWPROBE_EXT_ZBB;
-
-		if (riscv_isa_extension_available(isainfo->isa, ZBS))
-			pair->value |= RISCV_HWPROBE_EXT_ZBS;
-		else
-			missing |= RISCV_HWPROBE_EXT_ZBS;
+#define CHECK_ISA_EXT(__ext)							\
+		do {								\
+			if (riscv_isa_extension_available(isainfo->isa, __ext))	\
+				pair->value |= RISCV_HWPROBE_EXT_##__ext;	\
+			else							\
+				missing |= RISCV_HWPROBE_EXT_##__ext;		\
+		} while (false)
+
+		/*
+		 * Only use CHECK_ISA_EXT() for extensions which are usable by
+		 * userspace with respect to the kernel current configuration.
+		 * For instance, ISA extensions that use float operations
+		 * should not be exposed when CONFIG_FPU is not enabled.
+		 */
+		CHECK_ISA_EXT(ZBA);
+		CHECK_ISA_EXT(ZBB);
+		CHECK_ISA_EXT(ZBS);
+#undef CHECK_ISA_EXT
 	}
 
 	/* Now turn off reporting features if any CPU is missing it. */
-- 
2.42.0


