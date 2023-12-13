Return-Path: <devicetree+bounces-24727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C245C81101B
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0136B1C20B2C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15562249E9;
	Wed, 13 Dec 2023 11:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="dbtjg5ig"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7789312B
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:21 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c32e205fcso10694035e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467200; x=1703072000; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NSyk12PGgNh6ZiEbOULW7RPQKbPPPMGsxhdUj3Rl3fw=;
        b=dbtjg5igt6+QL9XNlD/CQQCAi//+3rRvDDG38AGTrAOAa0XN62sUZZqJ10vWn+Flse
         zhVGcViymdSlnPN6dlESEmSqtcehaYdIHP5d8cskhCTqDxWc5Hne1KbRbVsUGTnme46b
         UzeZDJ2Y8bruodbRbH0jTdqYXLN5Udz0nXyj7pjBIZo1guCRs7+AQ+eKZPGbk8cKH0Zj
         bxZlzRmMh1qi0IA+5BsNhinM6pM150LVihzoIz5xZNtrREOdGlYGuupJbbtBgCyDYZmy
         AQVP7T+AqDBJA41f4UpCqxumXT84rSJfON6c3v5eQWwJl4kRvPTS+SPZrMZyKQKEflWR
         hxiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467200; x=1703072000;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NSyk12PGgNh6ZiEbOULW7RPQKbPPPMGsxhdUj3Rl3fw=;
        b=rpyQH1GsSGWL+/e50TEJPrbleWRDD4nMACiUlw24cNawYkCylnQM3IzY6s5x1/XIh2
         xMnlUTJHAReK0iuTf+2eVE4XVDV4B2tzBvGJRQjPXCNoCvNfhB9WqGfqesFw9iPe4J8D
         poGkgDx6TUssaL+iAqBhVc0v/tDRSMetwL9jE/LxpAEyyXA3UNsO0UbU/6G7M/Ig2Cfx
         bsTLLLCCRftLvcUxJyLIhtJPdvmNO5kZoGP1x+Ip0e9/S7lcx1HTNmyMc0Zes5ni8gtz
         fMeLAwTkbCRsbrDfGm9I1oQkI4l968T9q272p62qJSm6peT8/nvrIL5Q/szM7L6ZM7Cg
         9q6Q==
X-Gm-Message-State: AOJu0Yw1AJ/8mj1Fun7CPFxVR69MZTIR1+sdMYcp1R+m5NJrIXV830v8
	gtatPNtDflrBlxYWg4FvVEyUaw==
X-Google-Smtp-Source: AGHT+IGpaCx+D5ojXDBVQxpZqQUYiYfjlRdA9ehLOCWbM5XAh+lwFxnI5yxd/Hyl3z3Rfp/Vdi/pXA==
X-Received: by 2002:a05:600c:3b23:b0:40c:2631:7c3d with SMTP id m35-20020a05600c3b2300b0040c26317c3dmr9593738wms.2.1702467199960;
        Wed, 13 Dec 2023 03:33:19 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:19 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 7/9] riscv: add ISA extension parsing for Zacas
Date: Wed, 13 Dec 2023 12:33:03 +0100
Message-ID: <20231213113308.133176-8-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add parsing for Zacas ISA extension which was ratified recently in the
riscv-zacas manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 016faa08c8ba..8aee032f092f 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -86,6 +86,7 @@
 #define RISCV_ISA_EXT_ZFA		71
 #define RISCV_ISA_EXT_ZTSO		72
 #define RISCV_ISA_EXT_ZAM		73
+#define RISCV_ISA_EXT_ZACAS		74
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index e999320398b7..62443cd632b8 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -259,6 +259,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zihintntl, RISCV_ISA_EXT_ZIHINTNTL),
 	__RISCV_ISA_EXT_DATA(zihintpause, RISCV_ISA_EXT_ZIHINTPAUSE),
 	__RISCV_ISA_EXT_DATA(zihpm, RISCV_ISA_EXT_ZIHPM),
+	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
 	__RISCV_ISA_EXT_DATA(zam, RISCV_ISA_EXT_ZAM),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
 	__RISCV_ISA_EXT_DATA(zfh, RISCV_ISA_EXT_ZFH),
-- 
2.43.0


