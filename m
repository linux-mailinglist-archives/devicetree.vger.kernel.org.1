Return-Path: <devicetree+bounces-73983-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 843F19019F9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 06:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 894831C21061
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 04:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2144F44C64;
	Mon, 10 Jun 2024 04:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="GbOhPy11"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB4F23E47E
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 04:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717994754; cv=none; b=E4NQea7zyrENxLreuJpnkzLACr4Fm6jzerxuk2iQdXRZYwF2xax0Rkvi9CFjqIJx9KjPTT8KtRiSB/oJRYB5ovWWpCW4e2yjkKF+6CK5GSQS5ls0x/zWdMRrIDfexrBx3FyKSJGFuxcX6fkSveJH+qFP1t+iiqF5Qs0snS1exhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717994754; c=relaxed/simple;
	bh=fwxPC9e5acCJKXfvxD0QuLfngnuG8uQUjT/zUUS4iJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fmyPqxHqPLnWmwvfwNE8OQ3LztEvkPsLsxRz6cSKei9rYoIfrkDvWAxFONIWZ1vv1T2CxY1R6pt9ByGLFBXpmA+oD26flTmJFmfz/3kxQWrLA53iC9MzNznIqUQ+Liui/naDRKRwvf0Yfo/c7Q5NBEVusNpkjTNCyjKac5zDpMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=GbOhPy11; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-1f480624d0fso32513905ad.1
        for <devicetree@vger.kernel.org>; Sun, 09 Jun 2024 21:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717994752; x=1718599552; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XLBLJWgoI5ONq0p19OcZNiSMS9NNG1Jn9M7ZhOPyPpg=;
        b=GbOhPy11pStnMkVHjlgMummwUIfAQCvtYyeOOO58Jujx6+fh/xbpjWAYEw3fOnfUCl
         FtHYHNmU5OMDc7+L67OfL0P51mUylm2x4zJ0hHrtsg/9P39RzJhZ6ZOphXgGCiFbUaua
         IccJDhpZNi7E7LonJ4GDIEWLVizgDUE/HG/etsH4M5L0YW/uuxgirHMNlOmc9wKZs2YF
         yz/cZXgvvPs981uDCacbnxMSgGMEwiC2+6QtE1Wj3/OZOufTt/WBLwqlcsuKws/o2riO
         B5cHcTsaEM3vjPG5DU33mKwmFdGoHlu57li5JROHlCUDjbAuaNgsExP8SwPSNaqm1vfv
         9vYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717994752; x=1718599552;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XLBLJWgoI5ONq0p19OcZNiSMS9NNG1Jn9M7ZhOPyPpg=;
        b=JAIW8FpQDq4+j6SdhVJ8LYYXyFhVLUMkFa+zMDAxlc5yyJ0QWmDseuCgq9VNItQze+
         TKWIuuarEm4EKlo3gdE+9bItOjoImWHbch3zZH6jSe5llUEVZWB/0asa4Ed8hmNW0oaP
         5R2D9zvQB4WGQxKaZgrSL9TZQZEQJgfNj2ZNtBjb8MTIDSFop6Up5LtjFIO1qUtUKcYk
         bl8Q3pIf7P+CPHVZTQpKC1DLOyIHntnbRZq4OXBgVXRasiYGG1bb+jqmhmZCY7suJ4My
         FwDgUAHwMW6Zm58Py4BfzRsITk7OtS2KtxpOs1W6HPqLJLBqrGjdl4ZrYuKonAUZngap
         YV0Q==
X-Forwarded-Encrypted: i=1; AJvYcCV6s+zrubKhFwImLtifpDY6OdLiE6bMSlY8SyvvH/4bZ8scW1mdMulYiftvi+cTiDEOb+9bqLzXerodEqEnwCeoB9UhSlMf93NvQA==
X-Gm-Message-State: AOJu0YxAaQx1NZjQ7Hb5uosfcPkOEJ5fw4uydIEx08yHxXKheIdNgpYh
	iXB5fndvhxxqpvgGVukcVfl6RYqLIFZAZcjbpb0rKsUiCqey+DRGVqztstK0JE17z6lr0g1PY2c
	M
X-Google-Smtp-Source: AGHT+IGhzNw67XowR+pxZXHezAitcTACLUYAiHb9cEpJzp2JsugT0jDK2XmWOKiIDx7qVYVsfrIJPA==
X-Received: by 2002:a17:902:ccce:b0:1f4:9ce1:6e78 with SMTP id d9443c01a7336-1f6d02dda70mr108577415ad.19.1717994752097;
        Sun, 09 Jun 2024 21:45:52 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6bd76ce8asm73124095ad.77.2024.06.09.21.45.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Jun 2024 21:45:51 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sun, 09 Jun 2024 21:45:13 -0700
Subject: [PATCH 08/13] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240609-xtheadvector-v1-8-3fe591d7f109@rivosinc.com>
References: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
In-Reply-To: <20240609-xtheadvector-v1-0-3fe591d7f109@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, Jonathan Corbet <corbet@lwn.net>, 
 Shuah Khan <shuah@kernel.org>, Guo Ren <guoren@kernel.org>, 
 Evan Green <evan@rivosinc.com>, Andy Chiu <andy.chiu@sifive.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717994732; l=1908;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=fwxPC9e5acCJKXfvxD0QuLfngnuG8uQUjT/zUUS4iJ0=;
 b=M+PUFY/NkfsExTsLVk8k8J14gBVKv6BFH2DHRNNQUnGVcMQ3tAUdofnki8To6aiLBdBSyd3l8
 CwcONHmOkfXAJxo09mBCTw8CQBL707I5DEdUsNXqUeM68eA2H8/JeMP
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

xtheadvector uses different encodings than standard vector for
vsetvli and vector loads/stores. Write the instruction formats to be
used in assembly code.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/vendor_extensions/thead.h | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
index 48421d1553ad..27a253a20ab8 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -13,4 +13,30 @@
 
 extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_thead;
 
+/* Extension specific helpers */
+
+/*
+ * Vector 0.7.1 as used for example on T-Head Xuantie cores, uses an older
+ * encoding for vsetvli (ta, ma vs. d1), so provide an instruction for
+ * vsetvli	t4, x0, e8, m8, d1
+ */
+#define THEAD_VSETVLI_T4X0E8M8D1	".long	0x00307ed7\n\t"
+#define THEAD_VSETVLI_X0X0E8M8D1	".long	0x00307057\n\t"
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
2.44.0


