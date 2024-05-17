Return-Path: <devicetree+bounces-67525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1908C8886
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:54:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1418B288349
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0A7F6CDCC;
	Fri, 17 May 2024 14:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="NPTy3bM6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F03F86BB2F
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957602; cv=none; b=E1ZSHc9U38+X6S0GVl/UWPnxi4qEBmgvuHeh/Nhbxcob3nr9hn9kFszwCmDpSUrYCYJYBFKrMvHyVlgEXd01Iv4kUCZkmvBHU/RA1cmixJ9Cx8SwoplnZJoOciQhCuOwQU/WJUtBRT13wPwac3UKq54bfgbk49X4zMYnG0mxyM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957602; c=relaxed/simple;
	bh=LVrkH9IVUx7mgbMsu9uapm2fQaZPUX17Rdmp94is1Z0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tdgcslbqNJaa4HkZmxWguYk/Ahk5NV6zFmLScassQpn9T6VwvO34JRCe0HI07nQFb5EjbeQLsgus+4lq+lnCKbXVEUjl7LNlEog6GEh/tE+UHu5PZfU7e+U3sGXizBClraGcA7TQYNCw48/MUejfdu0ibTzUjNBr8lrMBzG2wb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=NPTy3bM6; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-351cb099fd7so39706f8f.0
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957599; x=1716562399; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mlgURxZu8fG6RfbwOGV4+VYUtdkFAEEBFMEpVJI3jww=;
        b=NPTy3bM6E0lXq0jwhjb19JenvL/DJjvKD8ov/UI2AcOkO53aZQRz30qyEomcU8qSdc
         7HjTjof+erEhAsm/J9M6cnI6/Pko65vYIXJ1FtTq/mud6U8dd7yGTKd6HjUOGwgQMJQr
         HfTD4RFZR+w6hXu5UWvbDs4EQxhZMY0dhvVUQskcRFFvCbl+RA3ghA1uUZLrn5amvnGT
         fBHp4G21GlST7EdccGQc17NH6zqudGtBpU1gYf03B2DXjsbUS2CKYp7fw31IprQ3d+X+
         ymM+5lzvsikTy1o+bYz8uBZYmICHT1lBXOoV2bLbyus8zoJogrI9MF7F7ZF0/jmBWu3k
         CQlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957599; x=1716562399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mlgURxZu8fG6RfbwOGV4+VYUtdkFAEEBFMEpVJI3jww=;
        b=NpdJx/0RU0T+Sls6WZ3P7BofkprcG9f41FF96ni3aMqSwnNFYExtl+L4DxjxCuLM3M
         MufTuMMmlL8X49CjZmRo6pJ3Re0poq/VdLmfD3AIfUg2TnhdR8TP+1UhQnI/zgR/r47T
         afVMPsqxmqctjKicPdXbcQeTAWzJXh0pY1xBCDQZE4Iprq/aXYEcuey72nc9+JOBUkXw
         TEIltQoMaZnv4wM64fba6T30DDFQYuOmkr/dNeBOuUNjrHCsp0J5kreYsdnAMKGMMwLe
         uPPzQ7t1AGsX7Zlycr7VD4ChCLIUGhZrIoGSGj0L2KrwNht17H8VQ07Qs+iBnHHZB4dI
         42dg==
X-Forwarded-Encrypted: i=1; AJvYcCWxSms1Fdq3DJ2VbRe/dM8bzRRp78i1k17B+w2lfV0nsspT6weWGKigZhq2OEbidZkCLoxG//So0IIdKxSbtqEdXGvlcnTIXOeoBg==
X-Gm-Message-State: AOJu0Ywk5NrHcbgSvVkJI15jtmT9CL4Ja2jfsx4lBFtZz6oL7kpERMF8
	BATFyFDOe6NZNbWn/+uRWzLOom/ZK8BwelT2qpqVh9kQw4iTo7tkcPaQeqtVfQs=
X-Google-Smtp-Source: AGHT+IF+cFq0XlN1HQdJuEHOqwM1sBxbfnwqtGyG9WotzHLFqO6Kw2Bla6mFarFdrIDutFqb9Mbfrg==
X-Received: by 2002:a05:600c:3b86:b0:41a:c04a:8021 with SMTP id 5b1f17b1804b1-41fea52ed5bmr160325795e9.0.1715957599520;
        Fri, 17 May 2024 07:53:19 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:19 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Atish Patra <atishp@atishpatra.org>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH v5 03/16] riscv: hwprobe: export Zimop ISA extension
Date: Fri, 17 May 2024 16:52:43 +0200
Message-ID: <20240517145302.971019-4-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517145302.971019-1-cleger@rivosinc.com>
References: <20240517145302.971019-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export Zimop ISA extension through hwprobe.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 204cd4433af5..48be38e0b788 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -192,6 +192,10 @@ The following keys are defined:
        supported as defined in the RISC-V ISA manual starting from commit
        d8ab5c78c207 ("Zihintpause is ratified").
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZIMOP`: The Zimop May-Be-Operations extension is
+       supported as defined in the RISC-V ISA manual starting from commit
+       58220614a5f ("Zimop is ratified/1.0").
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 31c570cbd1c5..3b16a12204b1 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -60,6 +60,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
 #define		RISCV_HWPROBE_EXT_ZIHINTPAUSE	(1ULL << 36)
+#define		RISCV_HWPROBE_EXT_ZIMOP		(1ULL << 37)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 969ef3d59dbe..fc6f4238f0b3 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -112,6 +112,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZACAS);
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIHINTPAUSE);
+		EXT_KEY(ZIMOP);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.43.0


