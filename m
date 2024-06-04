Return-Path: <devicetree+bounces-72238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B8D8FB2C4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 14:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E73AAB27CD4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 12:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58E591494AD;
	Tue,  4 Jun 2024 12:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="k7DKfveU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA901149007
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 12:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717505275; cv=none; b=Wg8eweZSeI3/DShXZA1t5a2+4w2XxGf6+h+4dRNxFsjW8NkqHZyhTNbB/yIsB3N7QkjGGJbttZa9HqYB6IJjlKURFJZ4nT7EeyzPvEZ8m5OofsozIFjLfiJMV1KqyKnHEFMAUz1x3flenrYSXnE7XaEgT8qWjPQbhEfI+sciQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717505275; c=relaxed/simple;
	bh=3aU9whTA+Gu+pme3mlSjWHKlwBVj96/7tq5nouoIeBI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nClzuCnKgjPwfmJllO+NUcxvFqxV/7hC4EBFH6b5HXEGBQTv+wLSscNvsFpmzivpjW3w+gn+W+EY/q9+O0R7gZDRnO/QQxx3ACVSN3VLAxR8ur2wTT/alEyXrOf7v4FT7Ykc8Il+J/IMeWgD/N4PWb52p+YnQuYWSNVOW94/PL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=k7DKfveU; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1f61392237fso1691665ad.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 05:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1717505273; x=1718110073; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=I/zDxQ1wNU0fShOzqJmwZ3vgRBHHUpydDqOkR2GCFDo=;
        b=k7DKfveUgRxM6k0i+AkRsV/OiwpRdMl/T1FTRMZQmsMW9l+x8CBZJrqvCLPC9lp0HP
         KhavaPSYEk0OFjJVLlGac0X53ypLzLLUmukVQO15hpSkzUYRS09M6RWdDMrWD67+XV2A
         gC1ChAoyyGYZntkP0QkWxKE+KVLa2EAFGQtm/88PLmUYZKCbMpfx9kJgFbAmCSnHt6pk
         ywh3+85Q2X/dsTNj6Dm9OBzB1qDEoYQH5o//ntttbFIzyoYHv9xcw260qnpqDAzYjcgB
         dxxWP6MHQpe/o4wNPlmt+TDW54Lq4QM6fYfCoDSL9U6TwAJ+EaNfj4+HBxS84D0FTcvu
         3gIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717505273; x=1718110073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I/zDxQ1wNU0fShOzqJmwZ3vgRBHHUpydDqOkR2GCFDo=;
        b=fvQ2OTQDhLRMoEEACGrnHv/oTj6gX+WokA+B8OMUCvY5CcBbXzzYuN6r4iDF851mH0
         B7kYI/6ET5xxH2Hqxdbogj+lwd/N9UieBjpR+8S11fvkbjMPzwGTx+aNSr9cprbu4sM+
         98WeCIPyTbZ0bVXwVxTQMrl19V7Q4eFKXhxMcrWdjVCHWhvM2i7noheW/UIM1etUDTRJ
         7an6MkLga88EL6ewpI1eFy/VdufhFkFMp1BomAFLVPe3nFxTJvoHz9uZmdgufBGMk0en
         GbXgq+gsVMQrbWMJ/eGxfF4vHM6U+ZRAjRhs2p7LNoUJoKvesu+mPznXy2xFoLanOt4g
         /5vA==
X-Forwarded-Encrypted: i=1; AJvYcCUUeWal2F05b0QJCUKiYFldtC+a2wpIXFADyFqduMqJba/zHeLUCxqaq7w06E3L9Ug8sf1N/1dSgXsjg5YWP6qe2PecqCW5I6YhvQ==
X-Gm-Message-State: AOJu0YwCEOZyaOaIJpSFdBNTmAcWqLU9AMXtU01K1a1bbKAXvFrYvACc
	11aazXW9bAQiLsOqWzZVkkyq2UnHON9XLrJ3h9lZQoZ7dskSxFqPlB6e2m3H25Q=
X-Google-Smtp-Source: AGHT+IHL5IgKhDmX6Kc3c3T4qmZjDYR+RyEsuG7i3u6/l8X2M2rVeZab4G99cMOKYRyDxecIvsMepQ==
X-Received: by 2002:a17:902:f68b:b0:1f6:39cc:46cb with SMTP id d9443c01a7336-1f639cc52ccmr132738995ad.5.1717505273278;
        Tue, 04 Jun 2024 05:47:53 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:327b:5ba3:8154:37ed])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f6323ebc69sm83042885ad.211.2024.06.04.05.47.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 05:47:52 -0700 (PDT)
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
	linux-kselftest@vger.kernel.org,
	Charlie Jenkins <charlie@rivosinc.com>
Subject: [PATCH v6 09/16] riscv: hwprobe: export Zca, Zcf, Zcd and Zcb ISA extensions
Date: Tue,  4 Jun 2024 14:45:41 +0200
Message-ID: <20240604124550.3214710-10-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240604124550.3214710-1-cleger@rivosinc.com>
References: <20240604124550.3214710-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export Zca, Zcf, Zcd and Zcb ISA extension through hwprobe.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Charlie Jenkins <charlie@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 20 ++++++++++++++++++++
 arch/riscv/include/uapi/asm/hwprobe.h |  4 ++++
 arch/riscv/kernel/sys_hwprobe.c       |  4 ++++
 3 files changed, 28 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 48be38e0b788..cad84f51412d 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -196,6 +196,26 @@ The following keys are defined:
        supported as defined in the RISC-V ISA manual starting from commit
        58220614a5f ("Zimop is ratified/1.0").
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZCA`: The Zca extension part of Zc* standard
+       extensions for code size reduction, as ratified in commit 8be3419c1c0
+       ("Zcf doesn't exist on RV64 as it contains no instructions") of
+       riscv-code-size-reduction.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZCB`: The Zcb extension part of Zc* standard
+       extensions for code size reduction, as ratified in commit 8be3419c1c0
+       ("Zcf doesn't exist on RV64 as it contains no instructions") of
+       riscv-code-size-reduction.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZCD`: The Zcd extension part of Zc* standard
+       extensions for code size reduction, as ratified in commit 8be3419c1c0
+       ("Zcf doesn't exist on RV64 as it contains no instructions") of
+       riscv-code-size-reduction.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZCF`: The Zcf extension part of Zc* standard
+       extensions for code size reduction, as ratified in commit 8be3419c1c0
+       ("Zcf doesn't exist on RV64 as it contains no instructions") of
+       riscv-code-size-reduction.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 575b95744843..fba3d74154b1 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -61,6 +61,10 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
 #define		RISCV_HWPROBE_EXT_ZIHINTPAUSE	(1ULL << 36)
 #define		RISCV_HWPROBE_EXT_ZIMOP		(1ULL << 37)
+#define		RISCV_HWPROBE_EXT_ZCA		(1ULL << 38)
+#define		RISCV_HWPROBE_EXT_ZCB		(1ULL << 39)
+#define		RISCV_HWPROBE_EXT_ZCD		(1ULL << 40)
+#define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 41)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index fc6f4238f0b3..11def345a42d 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -113,6 +113,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIHINTPAUSE);
 		EXT_KEY(ZIMOP);
+		EXT_KEY(ZCA);
+		EXT_KEY(ZCB);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
@@ -133,6 +135,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZFH);
 			EXT_KEY(ZFHMIN);
 			EXT_KEY(ZFA);
+			EXT_KEY(ZCD);
+			EXT_KEY(ZCF);
 		}
 #undef EXT_KEY
 	}
-- 
2.45.1


