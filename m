Return-Path: <devicetree+bounces-121695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9FF9C8096
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:24:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9DD5D2830D2
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56EEA1F667F;
	Thu, 14 Nov 2024 02:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="fvIuZszZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0DDC1F5858
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731550908; cv=none; b=jNkvRElq9Vymi5pz6o/eZz0kDVDmpLKPYFsRC0Y2yx/4qCxL3k4RdulII87jn9znYX1ZdgFE73YAOkg16xonULCzvJsH7iE6vNRSwYpw7HQgoAIErp42L+o8SsNI0BuzKZ0JZK/HYskk97DoCCHCdsdMbZe1ZFeDnNrZpRoQMWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731550908; c=relaxed/simple;
	bh=axygyvRofY8jgvMUc19UONS8a43nS9JJ/ADtP/AgulM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=e5A6aIvDqSTESdYrMTt8g785p3af66rwp7AAd2wOThy5tt0W9o51BZNZqXAKlXzP0mwIQ3DCRNZuGpQBD+PdiZE3NUY08ze7rwvKOU3faix4j3nkfVaL24yQeHGkLyQold4hgFxWc3reB4cd3+z66ab0xFfzDxG6cYsZWZERTgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=fvIuZszZ; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-20caccadbeeso780195ad.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:21:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731550906; x=1732155706; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S+K6XdyYjajCmDAUcFCASwGFCPNniRmkd4LLh+AllFU=;
        b=fvIuZszZcG2pmuPS270lHpyyjPWyDF5l6rmKGQqfQCZzLLaAH3uAzEojMSOD+E/ZeV
         t9rUPC7Io8DHkDqituJvhlt1tqWUZC3Nv/cNF0n85u0KfdGCsxlMdfbV2NwMdYwNV+ES
         2QG6rue5zIVePxOOUqsgaDZC5/mJ4ISBPRyJSA0yEsr34TdlEAv1+VpAE47hVy9Hqp1I
         AnwGi49wRtCYEe7ZJ1qMvdpvTg3ysHNxH4q8u1SvY+qPyue4IFWy0hwacGap5i2wQjLn
         m4ChvcZCGmLhgpLjRbout1h+oq4qAmWjIGkj7GQF64KtMkC388Yh778W1DdBjDQt+Df1
         ipnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731550906; x=1732155706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+K6XdyYjajCmDAUcFCASwGFCPNniRmkd4LLh+AllFU=;
        b=lgExAqYWOpBSyqWVT6TU4mB3fqmlLFgBNEUlodZx3mfh4N0erN6gz1y7ccB43QAXID
         Tk+PCTrr/kELiQaTd+YOZ64P0GFKJLHAcE+SokwRAf6k6+vl7zkDKGAeWJio+IgKCI7z
         dhImEoyzwph61xtEYcCjDAbwRKrwMFNWPe5Aq2x+ZQ9wG3W7pHttcipRAI5zpJx15w4l
         +O/p/YOfM5Nek/PJj1yGTddhI076IXyn2KbKYlrzNI/vXHb36Fl3/8OQnbyHakSUmuGQ
         d1NGhG4fZkwoACIFdh4QQ8R/Ngox56EZH2iRgg98X7wk/r9K+xTkM75k15l/fYFacs7D
         z4uA==
X-Forwarded-Encrypted: i=1; AJvYcCWzNKqehOkXNDb/9AKHSywBvte9zu9UOnwc0IosqvHaJidStYNBaUlR5if/lJPA9YpW1q9nXKTUZy1I@vger.kernel.org
X-Gm-Message-State: AOJu0YzZ4IO/r9HNvN62kryOX3FIDpieOqLyA2Lrz5S+f7hm+BNihm55
	kPg6EaxaAJ8q0TWrMh2RSXIJ6Dp23RVDfOeVncAXj3EosESFl2z4Wd2pnA1QPo0=
X-Google-Smtp-Source: AGHT+IHgCex1jt4eHPktJ/CxZel/utQf55hi+AUTxlL+spOp3rXICsTxS/dPYfvZl50LJzJdECcBYw==
X-Received: by 2002:a17:902:ec82:b0:20c:d469:ba95 with SMTP id d9443c01a7336-211b6609df6mr56594655ad.16.1731550906137;
        Wed, 13 Nov 2024 18:21:46 -0800 (PST)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211c7c499c9sm406875ad.68.2024.11.13.18.21.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 18:21:45 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 13 Nov 2024 18:21:14 -0800
Subject: [PATCH v11 08/14] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-xtheadvector-v11-8-236c22791ef9@rivosinc.com>
References: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
In-Reply-To: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Yangyu Chen <cyy@cyyself.name>, Andy Chiu <andybnac@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1910; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=axygyvRofY8jgvMUc19UONS8a43nS9JJ/ADtP/AgulM=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ7pp3EKvUM9rnuZcTBunlay5um9JXGV1wDrtF3wMv9h0f
 8gs3Xaoo5SFQYyDQVZMkYXnWgNz6x39sqOiZRNg5rAygQxh4OIUgIm8zWD4p5M7N0/jIev79v7a
 59IrrHk2bUw3jEjeGtuVnT5jz5M+dYb/Fbt91e33Xdwm9WLxj8et21U+vGzjjmZS1m7iv1n3RqC
 cEQA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

xtheadvector uses different encodings than standard vector for
vsetvli and vector loads/stores. Write the instruction formats to be
used in assembly code.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/vendor_extensions/thead.h | 25 ++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
index 93fcbf46c87e..e85c75b3b340 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -19,4 +19,29 @@ void disable_xtheadvector(void);
 static inline void disable_xtheadvector(void) { }
 #endif
 
+/* Extension specific helpers */
+
+/*
+ * Vector 0.7.1 as used for example on T-Head Xuantie cores, uses an older
+ * encoding for vsetvli (ta, ma vs. d1), so provide an instruction for
+ * vsetvli	t4, x0, e8, m8, d1
+ */
+#define THEAD_VSETVLI_T4X0E8M8D1	".long	0x00307ed7\n\t"
+
+/*
+ * While in theory, the vector-0.7.1 vsb.v and vlb.v result in the same
+ * encoding as the standard vse8.v and vle8.v, compilers seem to optimize
+ * the call resulting in a different encoding and then using a value for
+ * the "mop" field that is not part of vector-0.7.1
+ * So encode specific variants for vstate_save and _restore.
+ */
+#define THEAD_VSB_V_V0T0		".long	0x02028027\n\t"
+#define THEAD_VSB_V_V8T0		".long	0x02028427\n\t"
+#define THEAD_VSB_V_V16T0		".long	0x02028827\n\t"
+#define THEAD_VSB_V_V24T0		".long	0x02028c27\n\t"
+#define THEAD_VLB_V_V0T0		".long	0x012028007\n\t"
+#define THEAD_VLB_V_V8T0		".long	0x012028407\n\t"
+#define THEAD_VLB_V_V16T0		".long	0x012028807\n\t"
+#define THEAD_VLB_V_V24T0		".long	0x012028c07\n\t"
+
 #endif

-- 
2.34.1


