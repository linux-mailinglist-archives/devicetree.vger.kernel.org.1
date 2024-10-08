Return-Path: <devicetree+bounces-109240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DA4995ACF
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 00:48:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7B961C21E7C
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 22:48:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 922E6227366;
	Tue,  8 Oct 2024 22:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="03vTABuL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6492256D3
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 22:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728427143; cv=none; b=aXh0BsC5bsr1lcsggCKrRV2ImwzDKyKFtew6TmmughoiGpXNyLn1RBIA3FANlIgmV912mIpGzLWkFqo8STL2Eamkhm9vMgbwbVIyS1ywnSY/6ZiIDALJSFo5SKnDqLhm3cASdW++fu1clofxzMOh4DPEcNEgZbUhmRrmbUbDsug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728427143; c=relaxed/simple;
	bh=z3F5GZUNNZRZ61rUGXBlYYR6QqrnCnK9ZskBaiISZhk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Eg4Utz7vZ9vIADEWugpbzUfoL1WVWY6jhlaoTqpsXtdFFOZPcwO7sEPPVjDPMrs5aQ2j7+JkIjGvUQRjpLhW/zaJRA9kjTMyWZQsucLVX0IC38TMHeQtkmdGZ+YC/XE/DMfuhOCp/ipLoYqb5aw/b28y4IKgSbE78sxuJDl0wME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=03vTABuL; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-71dff3b3c66so1963428b3a.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 15:39:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1728427140; x=1729031940; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IjvUiWFDgNIgR9D1bPvnv0vD2BBeNN4jEZqEwYO5LXU=;
        b=03vTABuLWyQKQ++ve+lGmODli/k4yaI4eq0ANLS4F5LaMa6JHc9IhHxiA1MaY1T5Iq
         HLYrvwjXEpDvU9vGqFnnzOzESN1XO6L9WIpj3Tws27zXoMxgGlHL95DDOExmFi14xznH
         VA+v2NoXcqTBVWI7n4PixUlOVPp43XTCDd6M7ASSUcjBnU34k2uDYY0JgetGnuUGNWvy
         AfpHu/QR724ulaJjWYlNtrmD84G+85h1e2PZFcjAhpPYlQ7RNn+V6GIk2pBzT60CpRy5
         57X2Axd7mxWjVZugeAxisLDLCaQg9lJA+r/orpB8KjwDxWZ+i3WjVgbcYhpLZ08j7Wac
         8njA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728427140; x=1729031940;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IjvUiWFDgNIgR9D1bPvnv0vD2BBeNN4jEZqEwYO5LXU=;
        b=bs2I5NvU7mMv9URe94Mmnxlx5AAwYgmRanYG6bUOFZoKau5xfEfHxN4tfKBigr/+Lt
         cBs2K1ntMRSHVB10fFb4md6EReTJyoPf7dmP4QhoDf7yjziV97uJthw+DAmp34aqYdzy
         E4iRRvDz7XoUP7wwMdWds3uGW3eTrIgM6NrqWo8I+KFki5L1iXJKW+NyjkQqdkmalu5I
         6LhPj872eQZ0XrIPlKmdP4qQR+/dykcGpPfSyms2BOFFQ4//pVhT36joSYUp97H3Cfu8
         nK43bs5VB8qP+YF4rNktKUJ6+OEYm421Xf6A1vcDqWcO0sy/S1Ew68HsJbl+Q66bzhLd
         XcfA==
X-Forwarded-Encrypted: i=1; AJvYcCVfWdMKTJRdDa7J8OCtKMHjG2Lon/35zNjfLlq5uyPahHbTgyGU4rO9fopFH/FPN9i3yKJ+6Kc44RhJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyyydQHC6ck8FFydQdNH3zqNeaUxWYfZ2A69B2PH3hB1+PW6/EQ
	c64CdODRthEdDQllz9vvW3B3HWH4+22/1dZ3/eMysYeDs1tgHLaZ9sQ3YdVKXQc=
X-Google-Smtp-Source: AGHT+IHmwPn5jM9quB16FyWf+V+eEat1fojl2g1P7nEi3JtER4PWJx1A+GiQhOrwkldgMrai14wFrA==
X-Received: by 2002:a05:6a00:1495:b0:71d:f510:b791 with SMTP id d2e1a72fcca58-71e1db7734amr622915b3a.12.1728427140255;
        Tue, 08 Oct 2024 15:39:00 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0ccc4b2sm6591270b3a.45.2024.10.08.15.38.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 15:38:59 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
Date: Tue, 08 Oct 2024 15:37:08 -0700
Subject: [PATCH v6 26/33] riscv/hwprobe: zicfilp / zicfiss enumeration in
 hwprobe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-v5_user_cfi_series-v6-26-60d9fe073f37@rivosinc.com>
References: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
In-Reply-To: <20241008-v5_user_cfi_series-v6-0-60d9fe073f37@rivosinc.com>
To: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, 
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>, 
 x86@kernel.org, "H. Peter Anvin" <hpa@zytor.com>, 
 Andrew Morton <akpm@linux-foundation.org>, 
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@suse.cz>, 
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
 Christian Brauner <brauner@kernel.org>, 
 Peter Zijlstra <peterz@infradead.org>, Oleg Nesterov <oleg@redhat.com>, 
 Eric Biederman <ebiederm@xmission.com>, Kees Cook <kees@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
 linux-mm@kvack.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 alistair.francis@wdc.com, richard.henderson@linaro.org, jim.shu@sifive.com, 
 andybnac@gmail.com, kito.cheng@sifive.com, charlie@rivosinc.com, 
 atishp@rivosinc.com, evan@rivosinc.com, cleger@rivosinc.com, 
 alexghiti@rivosinc.com, samitolvanen@google.com, broonie@kernel.org, 
 rick.p.edgecombe@intel.com, Deepak Gupta <debug@rivosinc.com>
X-Mailer: b4 0.14.0

Adding enumeration of zicfilp and zicfiss extensions in hwprobe syscall.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/uapi/asm/hwprobe.h | 2 ++
 arch/riscv/kernel/sys_hwprobe.c       | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 1e153cda57db..d5c5dec9ae6c 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -72,6 +72,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 46)
 #define		RISCV_HWPROBE_EXT_ZCMOP		(1ULL << 47)
 #define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 48)
+#define		RISCV_HWPROBE_EXT_ZICFILP	(1ULL << 49)
+#define		RISCV_HWPROBE_EXT_ZICFISS	(1ULL << 50)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index cea0ca2bf2a2..98f72ad7124f 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -107,6 +107,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZCB);
 		EXT_KEY(ZCMOP);
 		EXT_KEY(ZICBOZ);
+		EXT_KEY(ZICFILP);
+		EXT_KEY(ZICFISS);
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIHINTNTL);
 		EXT_KEY(ZIHINTPAUSE);

-- 
2.45.0


