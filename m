Return-Path: <devicetree+bounces-86262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA57933692
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 08:02:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 577C5B232F6
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 06:02:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A573C11720;
	Wed, 17 Jul 2024 06:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="N4Bgf5Is"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82CF171A5
	for <devicetree@vger.kernel.org>; Wed, 17 Jul 2024 06:02:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721196158; cv=none; b=AHjD2cPQ6rFEiQnagVIuClO5ri0QkHTqQUmdnnBfkwdn6skg157N8Esil9GSRyCG+toQz5LzHzkoOnyD8fJt0OzQF9c0MaYERlvZQJIOmtd0EnHpUuc2vacNURTeXszGz78DFIdU3+7x/DKR9YDla+k3JZrYtgkdf+oLLrpSIVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721196158; c=relaxed/simple;
	bh=LZA4zhT5BIJyw4yEug/ytb1tl/M2pa5AKaP9gougVIs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Fofk7xY82GJ+mL3BMs1idGw43j3lr+bXJtGrGuwnPtYtl6QysmeBB7lxRpFWvvA/8hIurQSaWhuA7QTTj3/HTxhhu0bHMPjFQntcxClIPt3z8eYDPhgRL5x4A0qzOmBIKUnyBz1Kcx0wFXZwfys/tpQ4dLhmRS9Q1aVeJD4y7r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=N4Bgf5Is; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-427b1d4da32so2184155e9.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 23:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721196155; x=1721800955; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pXmippFvjJBdPaOFd0Bb9N+zo48IbYES3OA/c/+iV6I=;
        b=N4Bgf5IsURrP2XiDcAL8Fd0i078+Eqi1JTXItVF/nc/JDZCf25b4rat5tbeNpyK2vA
         jqrW/gB/UtlINm6eL+CC0sURipJj5AfqvX5ZiXTPAwavTeusbqoMmyT4VOTqWiYyIKiM
         aowvGK2+MHhdPGhTCNB8u3nBOX5+LpGv4925iiNRN9cqzA4V+Pe2kE6dlQhMAehDHoLx
         E6uH5qm/fuZSEXYsOARn3NKizzUwBJ4sP6LjzgYRq9jsjUSajlC8sbogpOVZppnibK4p
         keaoChdIKTjFOgn08yLRxlMWLfOzjnJDHwQ2RrgQfpEDTZ/cYwKt9FgxISenE6nog2El
         FTng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721196155; x=1721800955;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pXmippFvjJBdPaOFd0Bb9N+zo48IbYES3OA/c/+iV6I=;
        b=KjiJu55Eg6hikx1+IFtBiNGDOXzpjIh3DYCpY3oeUyd8pJQsSSFmKPMbYHsjB1h6PM
         tsASVlagUQ1T9atWbYAYMJLjsZ52ImVC7aEA+CbdPf8ZmW7VE9njK/xxuXnJ9QfetMWp
         /OtpDSmXcOfd7JPj2VwWLwGFnmkP4tAyBj/qIGTYiMyeEdt6egNlwzbI6muLvG8hMqSU
         pNbIE5Fv/SfUQcLMO/k9iPeHGaxnuIXBIMcsXQqGmHWmEHNA1rhTU44L9F6hbEDQhq7C
         uAptTenPq3kKeR4Wu52AM8Pe4azIKleMojoKUDILA6hmMmRiPZaiDHmOu169OoRoahq/
         5oeg==
X-Forwarded-Encrypted: i=1; AJvYcCVdPWhS/c5ehIkvQxYBG3FVIbZwoKaksiFrIDLsQYMq1w1/OCFR/YOtanG52/u2laqfmoB7iMbHjvooHJEZeloQQUzCLp5FmWRh8Q==
X-Gm-Message-State: AOJu0Yx8umnnfNqfOc2IObiGuNIhg7C91u7fiNl1YDc/QDzPWPi7LALK
	Aewk4Nf0tqD166v8n9TB4JGPKxBhODG+WztYMpRGHK2+S5f2cGwzVW/4FDYctvo=
X-Google-Smtp-Source: AGHT+IEsqNOSqGgGsp+64azNiE6BQN3Oyun3IARQaHDYKamOpOynPrKTjcW0Bs4EgmHDicXeJE1Lzg==
X-Received: by 2002:a05:600c:3c83:b0:426:706c:a55a with SMTP id 5b1f17b1804b1-427bb67fcfcmr30629405e9.2.1721196154921;
        Tue, 16 Jul 2024 23:02:34 -0700 (PDT)
Received: from alex-rivos.home (amontpellier-656-1-456-62.w92-145.abo.wanadoo.fr. [92.145.124.62])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4279f09d1d8sm188634835e9.0.2024.07.16.23.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 23:02:34 -0700 (PDT)
From: Alexandre Ghiti <alexghiti@rivosinc.com>
To: Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Ved Shanbhogue <ved@rivosinc.com>,
	Matt Evans <mev@rivosinc.com>,
	yunhui cui <cuiyunhui@bytedance.com>,
	Anup Patel <anup@brainfault.org>,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Alexandre Ghiti <alexghiti@rivosinc.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 1/4] riscv: Add ISA extension parsing for Svvptc
Date: Wed, 17 Jul 2024 08:01:22 +0200
Message-Id: <20240717060125.139416-2-alexghiti@rivosinc.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240717060125.139416-1-alexghiti@rivosinc.com>
References: <20240717060125.139416-1-alexghiti@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add support to parse the Svvptc string in the riscv,isa string.

Signed-off-by: Alexandre Ghiti <alexghiti@rivosinc.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index e17d0078a651..6dd0dd8beb30 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -81,6 +81,7 @@
 #define RISCV_ISA_EXT_ZTSO		72
 #define RISCV_ISA_EXT_ZACAS		73
 #define RISCV_ISA_EXT_XANDESPMU		74
+#define RISCV_ISA_EXT_SVVPTC		75
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 5ef48cb20ee1..60780d246743 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -305,6 +305,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(svnapot, RISCV_ISA_EXT_SVNAPOT),
 	__RISCV_ISA_EXT_DATA(svpbmt, RISCV_ISA_EXT_SVPBMT),
 	__RISCV_ISA_EXT_DATA(xandespmu, RISCV_ISA_EXT_XANDESPMU),
+	__RISCV_ISA_EXT_DATA(svvptc, RISCV_ISA_EXT_SVVPTC),
 };
 
 const size_t riscv_isa_ext_count = ARRAY_SIZE(riscv_isa_ext);
-- 
2.39.2


