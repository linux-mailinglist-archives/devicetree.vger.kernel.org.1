Return-Path: <devicetree+bounces-61857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52B568AE69A
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:44:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76AD31C21B00
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:44:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AE61350D1;
	Tue, 23 Apr 2024 12:43:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="HfOtS9PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19DF3131E3A
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876229; cv=none; b=rIR5kPMXcHgWBvaznlbTmfZvtNBGFEDYLWBFIoJ7936MxlxUI9Z0rpIbX1yHTIup4xm1/mWMLurW0btzlQBAtHsM0mM/i/FHYDvQ9+a1k6S+wIx7/cFGz9FaIUhoF1j/UdMdP0+6GI0ibD7UY5XdranuOxco9+Dzl/7gX5pdri4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876229; c=relaxed/simple;
	bh=l6HwQhAS5cBw6tUNZ3QEVVTb2yliEfsikw1VTQcl4U4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MaCjax+cP0nLKRurseI5zOlgRYn0DS9yG5KbmPGZ8aLZtEnBsp7Sxhm3zrCYZFWOUhMDPzP7vfknwcsyMZy5FPptfIE6z21XmMXnhQ4YSv8kFyE+uvsD8lPXxVck1dUumcqALAdyuIdhdGr9k9LK8S7O8EUZTSu8i3Djs3AOqO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=HfOtS9PG; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-346a5dea2f4so1223482f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713876225; x=1714481025; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t82SHWSKnQwBrCB557sYOimgSCzDvuCob+i4t0Pqx/Q=;
        b=HfOtS9PGpEu345x+8F9DY1uSF+0Nad2HEo5H+69CLA0/USVEVRqCnmp1O7fN5qpXgl
         dxF3j/oImsyztFKh5FaPzownmWBltqbqzDyITEtUPH4Ac1jFPVAsxWWEcFos7U4fhm9h
         Fbjlz9QeR77fDRx5AjCa2cvp3xl5Yubds7dG/C6qDUMg8kZmqeHQrN8lO6xCcm9poow7
         sEZXKC17CpCDZibnerNckDyWYXN5OpOkye6Hj02iMrjKmPwgBBD43gxftDw7NTwJ2lSn
         Oa8rzl7oKUZAIemB9+xkf8sksbnGHUuYx+JPIcjwvWvMmb3PMc99RY8VL8SoZCHVy8Cr
         3mvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713876225; x=1714481025;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t82SHWSKnQwBrCB557sYOimgSCzDvuCob+i4t0Pqx/Q=;
        b=t6ODwdIdLIwnv7pRhjxTl2EVY4yC7KNpjO1W9Xt8BQNtk8V+m++IjKvenK89aL762m
         mbGnG5G04Ex/sAc3DaF4vlx97f6jek/to1u8JmjyDKRZ6ESs8VoroWj9WQQnJnja9OH4
         MLerzB+VzMzTGLFmWvSI3m8MA4RnGbV6FpyBKfB66usYe+ZoLDuYLMiBHmQ/VGkJnM3L
         14+ZS32Ys/tiz6gH7S/sATiOobFJFskyXrUlviEAlo4vKXUhkRYPH8c2vlB56EPT545n
         bfjGsSj+AMDFgZf8cF+jlXC8qMtF9+8DCjzXe4Gc6fDNKdlLyqmKFJ98AGg1fmYZoXI4
         iPjw==
X-Forwarded-Encrypted: i=1; AJvYcCU5SCSXqNpgLVfPx/RxmQ+b8nnA23pUN+zOCdhrzh6QI0Y0tP5zBpcCcbmwdRJbWw04bFtYU8Qg1DjH5Zix7slRl/PZUiz61vSS/g==
X-Gm-Message-State: AOJu0YxRzqO/qT4WPoW1NeTb4d95tmylwQDBKb4R/m013Cq6xHDYyC7F
	nuXDxCL+MllefxGhuKsMhMoNyi8gzc92N9MTn1sVzUFeYvDex8HmNWl2V+mbPBU=
X-Google-Smtp-Source: AGHT+IE/eueGlNPIrUduJCVDegDdMKs05ZlFrNlzlIPU89DYEz6J20JSDrHNrjRsKkBm1vefWMRNGw==
X-Received: by 2002:adf:ce02:0:b0:34a:f7f8:807 with SMTP id p2-20020adfce02000000b0034af7f80807mr5046634wrn.5.1713876225582;
        Tue, 23 Apr 2024 05:43:45 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:71cb:1f75:7053:849c])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b00418a386c059sm19975709wmo.42.2024.04.23.05.43.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 05:43:44 -0700 (PDT)
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
Subject: [PATCH v3 04/11] riscv: hwprobe: export Zca, Zcf, Zcd and Zcb ISA extensions
Date: Tue, 23 Apr 2024 14:43:18 +0200
Message-ID: <20240423124326.2532796-5-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240423124326.2532796-1-cleger@rivosinc.com>
References: <20240423124326.2532796-1-cleger@rivosinc.com>
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
---
 Documentation/arch/riscv/hwprobe.rst  | 20 ++++++++++++++++++++
 arch/riscv/include/uapi/asm/hwprobe.h |  4 ++++
 arch/riscv/kernel/sys_hwprobe.c       |  4 ++++
 3 files changed, 28 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 9ca5b093b6d5..bf96b4e8ba3b 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -192,6 +192,26 @@ The following keys are defined:
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
index ac6874ab743a..dd4ad77faf49 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -60,6 +60,10 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
 #define		RISCV_HWPROBE_EXT_ZIMOP		(1ULL << 36)
+#define		RISCV_HWPROBE_EXT_ZCA		(1ULL << 37)
+#define		RISCV_HWPROBE_EXT_ZCB		(1ULL << 38)
+#define		RISCV_HWPROBE_EXT_ZCD		(1ULL << 39)
+#define		RISCV_HWPROBE_EXT_ZCF		(1ULL << 40)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index c99a4cf231c5..2ffa0fe5101e 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -112,6 +112,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZACAS);
 		EXT_KEY(ZICOND);
 		EXT_KEY(ZIMOP);
+		EXT_KEY(ZCA);
+		EXT_KEY(ZCB);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
@@ -132,6 +134,8 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 			EXT_KEY(ZFH);
 			EXT_KEY(ZFHMIN);
 			EXT_KEY(ZFA);
+			EXT_KEY(ZCD);
+			EXT_KEY(ZCF);
 		}
 #undef EXT_KEY
 	}
-- 
2.43.0


