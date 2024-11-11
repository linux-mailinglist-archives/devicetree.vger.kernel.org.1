Return-Path: <devicetree+bounces-120895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCE99C478D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 22:04:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C61C2816E9
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 21:04:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 057D61BBBE8;
	Mon, 11 Nov 2024 20:54:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RhfdRp8N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 245C91D1E61
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 20:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731358496; cv=none; b=UciZz6FOqO9dW1+UnjVqBg8mylpH19Kxwi7HLNB4olmmxE7ogWuMqNKsovNezouMS4r8eJJVf5VlFzF0k2E0C9f8DYioq9JnRQmW8Oqrzw+DVdIK2scvWqyVOwr9kWGbb+KVwkekw0yPbJ1S/A2pBQstj5etgiuBVIS6m3Dvs7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731358496; c=relaxed/simple;
	bh=RDXbAbvxnGgs6s2zfH9vYZ8osTApXgP7z0jhuCPs3Tw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EKZ49q/WYlmF8bVgQBvVpy+Brv0R+KDTXHiZt9VVr8ti9+540PBCBlsaoxwZjFqQ3MI5CyZzjJ0QnAMeGG785L9PlhQc2W+168xQhKM1ocxHkk83KBNgkPOwj7EcHRv8y8XDiL6hbLaeVEnf6Oc5zevS9eIZIetIahMb5MA0L4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RhfdRp8N; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7ea8c4ce232so4338611a12.0
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 12:54:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731358494; x=1731963294; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=289Nwoms47JcaO8kSApuumW+ImHm5WLKWOrCLSEYkbY=;
        b=RhfdRp8NbPL/iJDQFgVz8xyf8Kci2VHcsIQGMiAVSwXkUd0DQduSh+viDXQ1MkGRxF
         aaI1VZyUYEImVGxQkW3oORq+az82qbWtKYL7N5DqkcdT0pF1ta9lhuawwP2uyJaZtpww
         6efP+uAWSJy/g3JEcJatui0+XtXTCRYmNaowy/TPDjBoYJfB42Jk4+mOnqwLqF95BMrx
         m6IQBWsw/asZo/u8Sh/AJzMGB/uVNqcBfl5/MT3wXk5qaSOd6ceEraiUFM6/5MPaH9O5
         eN3dPBITKw70kbmx21Tzy6Y2ch/83I47d1L+IiU2v8HW6fuir5Ao3pXCeeKSw8h3ieVk
         6VTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731358494; x=1731963294;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=289Nwoms47JcaO8kSApuumW+ImHm5WLKWOrCLSEYkbY=;
        b=pvTBWhEaaRcKNji1UMDhJ4C7kFKPGICIpdv9aSA3EfNhgobjeOEyNeIUgrJ1xu584m
         w1ItgEZaLhw/mOmcbBH/5sA3r7jdyFUbsVeJngO/s6LzJqefBBkd5lP5mRRVBnlqF1Td
         Yjtz1+zvd1wSxKToA/iK+fg9VKcSDg2mb1rGau/mfVll69TYM2vJDDOvzgYXDcIChWuM
         8WSuBKzJVfGDxRNzcm5hpNamVQC/HEE8S5hKIL6fMpZfMJDvvXEFdKL7FPSuZSQEU1Ah
         SKLGPvO7+b9GPRDxfqYQTXrRc6ziUf/5J+MLd9vsQdZDNPpk9Xij07zqUfjSZpLs92Eo
         y3dw==
X-Forwarded-Encrypted: i=1; AJvYcCWlonlPOhfVQC+2jpmbt0Ne10FTgGRoULYADw8GY5ztidaO77VR70uenSS55K3AGO9pcuIkXgOSTT5q@vger.kernel.org
X-Gm-Message-State: AOJu0YxH1tPjwDA5JYTb6sjbHzVsFSKY1WRnREzKU0MCihio8lE95i6J
	mfH48UKZHhtf7bZeQd5cY1aJo2BCmKhyxsHDqaBjCKR3vixNH/vIvXNr2Hr0Txs=
X-Google-Smtp-Source: AGHT+IFgfaWfDVg2ag1aCv+RvJc7LebaoP9wiPFi7bt9E035lNfk9/OuTdzMOTjykOKHjKVWywhO+A==
X-Received: by 2002:a17:90b:5310:b0:2d3:cd27:c480 with SMTP id 98e67ed59e1d1-2e9b1787df7mr18295211a91.33.1731358494513;
        Mon, 11 Nov 2024 12:54:54 -0800 (PST)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e9a5fd1534sm9059974a91.42.2024.11.11.12.54.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 12:54:54 -0800 (PST)
From: Deepak Gupta <debug@rivosinc.com>
Date: Mon, 11 Nov 2024 12:54:07 -0800
Subject: [PATCH v8 22/29] riscv/hwprobe: zicfilp / zicfiss enumeration in
 hwprobe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241111-v5_user_cfi_series-v8-22-dce14aa30207@rivosinc.com>
References: <20241111-v5_user_cfi_series-v8-0-dce14aa30207@rivosinc.com>
In-Reply-To: <20241111-v5_user_cfi_series-v8-0-dce14aa30207@rivosinc.com>
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
index 3af142b99f77..ca64b07927cb 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -73,6 +73,8 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZCMOP		(1ULL << 47)
 #define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 48)
 #define		RISCV_HWPROBE_EXT_SUPM		(1ULL << 49)
+#define		RISCV_HWPROBE_EXT_ZICFILP	(1ULL << 50)
+#define		RISCV_HWPROBE_EXT_ZICFISS	(1ULL << 51)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 9050f3246264..716d72abec60 100644
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


