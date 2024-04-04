Return-Path: <devicetree+bounces-56287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C5F89851B
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:35:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AA006B26361
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F4AB8287C;
	Thu,  4 Apr 2024 10:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="vnxzuEo0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1441780031
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 10:34:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712226869; cv=none; b=e6LrSiYyWK5ltvcqbdHMLu7TXL5+NNfItahHi9Pa/apWIYxtaf1/XcAcAhEEXMdQ7Wy4aBCgFm25hj8vlDv1vwMlxODaJr+p0qLcz5+VDpiaTtxfE2rfsPFVkuED8u+HSaeun0MGctooemMGpLoixi2+M+nm2mDJNo/yiKQsIEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712226869; c=relaxed/simple;
	bh=lZP1OhIthNyfKGBgLui9SHH/SaxE/ebthIO1/OB0+2g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=U6y4i4YdClEfgellYGLShDEPs3xjdQ69qKGGtvrmb/nvqvuzAlO9ozGWRSsXyqQQZmcakglc8pY1b9D6ywmI6fnrBEwF8Oj9CSjAerHGDWBbxXfOK+pre2Uz2ullSAUfas/lhnzap5D8GaDvYhG2/B20rb3KBtN3sMwbGEjs4EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=vnxzuEo0; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-513dca8681bso265724e87.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 03:34:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712226866; x=1712831666; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hjF6QSE2cP2K1a6PPhsxX1XHwBciK6+3OaYc7SlX0j8=;
        b=vnxzuEo0ey/KkzSv27sz7xst0hPkHMpBc1iESnrydRMlghdfKUsFD09zcfrSKCN+/u
         1IOgoWVFPKAW2n14yTAow2JPZLXb1gSuM2Sf+PEn3qbHLqxpE5QcB6WxyqEJOdw7PoHv
         QiXE2TyGNTUDkaNZme4pESBL7JEI5t6+WaefHN2LzS8LmM201JfbDlVHT4jZAmt7vstN
         dnsweONljZg6eJHVx2KkNgNZFtn7pzUwq8k6WtEy104cTGNk9F0Hq839GaE6cGYxhff2
         Z/DFV6XrEa6us9a9T2qnH9N45jlCueekTWT7O9m6TlBjlUm3orCeDHxloCwvKSJPYMAe
         Xcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712226866; x=1712831666;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hjF6QSE2cP2K1a6PPhsxX1XHwBciK6+3OaYc7SlX0j8=;
        b=t1VxhJN+ECxiRq+Jo8fTvNO/p9OobPgxxDzG2hClprGGo6AErFOcEs1PllqB3gINMm
         UCFl/368V/+QeyLi7MXxrpDXeWKKxpaQYrvweaVjy3AOqcpOQ/kXwCfFHLc5HcsFmfCr
         xpgelNwKycVdW9MJE4Iqr1rn0owH4A5ZEpwtQ4GFYlcZ+3zPsOrscnCnyC3G/3C17PAM
         Fz38nOVawTLRqU76ncfT0FXeT8n5gl85Jnz1olIZjx+JIkKhebCX1DIXpOzXRZ6lXGVj
         AyUVbwU/EBAiDnJ00LcEieYeNRbwItuaTUupgcwOGxG68BiTFwPDxqaL0mZkr7HKUe8L
         Giog==
X-Forwarded-Encrypted: i=1; AJvYcCXMne5GCCzpeIBQgu3TKHbK7PB/GMDnIfyCznn4wPHFFqAoDIdrH3vc41E+7KbSJuunOLl5n/JJLWef5wPyGIpEI7CyL2UXNJZOeA==
X-Gm-Message-State: AOJu0YwO/ZjUecW9ePNDQVjcJDB1mA/ztZrcOaZdAk7kYAudNOYSc6A9
	dps2U4ibh/slAxjQ8sXUqmMeWlE/kATnUBgIWODP0wZBTUU77p62pOEI7b/ahU8=
X-Google-Smtp-Source: AGHT+IGlaI4aSTYeXf+5DsSs23XOj+0Iy8aSNYAWISenw8IXMUNIbrPzkzLCarPsEjj/RpuSZ193fg==
X-Received: by 2002:a2e:b0f2:0:b0:2d6:fa0c:77b0 with SMTP id h18-20020a2eb0f2000000b002d6fa0c77b0mr1408426ljl.2.1712226866293;
        Thu, 04 Apr 2024 03:34:26 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:555b:1d2e:132d:dd32])
        by smtp.gmail.com with ESMTPSA id ju8-20020a05600c56c800b00416253a0dbdsm2171340wmb.36.2024.04.04.03.34.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 03:34:25 -0700 (PDT)
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
Subject: [PATCH 3/5] riscv: hwprobe: export Zimop ISA extension
Date: Thu,  4 Apr 2024 12:32:49 +0200
Message-ID: <20240404103254.1752834-4-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404103254.1752834-1-cleger@rivosinc.com>
References: <20240404103254.1752834-1-cleger@rivosinc.com>
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
index b2bcc9eed9aa..9ca5b093b6d5 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -188,6 +188,10 @@ The following keys are defined:
        manual starting from commit 95cf1f9 ("Add changes requested by Ved
        during signoff")
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZIMOP`: The Zimop May-Be-Operations extension is
+       supported as defined in the RISC-V ISA manual starting from commit
+       58220614a5f ("Zimop is ratified/1.0").
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 9f2a8e3ff204..ac6874ab743a 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -59,6 +59,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
+#define		RISCV_HWPROBE_EXT_ZIMOP		(1ULL << 36)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 8cae41a502dd..c99a4cf231c5 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZTSO);
 		EXT_KEY(ZACAS);
 		EXT_KEY(ZICOND);
+		EXT_KEY(ZIMOP);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.43.0


