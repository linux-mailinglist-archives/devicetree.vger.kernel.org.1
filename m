Return-Path: <devicetree+bounces-61860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 211DF8AE6AA
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:46:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CAFA21F2063A
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:46:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7460113790C;
	Tue, 23 Apr 2024 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mewy2Q5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B307D136989
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:43:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876233; cv=none; b=At2uczugH8y58QXA5nqfY6oKKT0idXyNzd8Jwa+XUzgbW6PB+aAjnd772cd+dr7hdC5RxlhLok2YD+5y4fYtOHg5lM2Ojy1SlmkZ3Gfl0OCh9AsBGlvQszilDRRKWHyEQ42pJrvQDN6CDMer3M7imvvmhnAUG4+3C690YX5Fsjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876233; c=relaxed/simple;
	bh=3M7rDvhT85TLsBy8W99JYSiy6tBgacGiXMP1xFaO0YE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o7cd91ywxBzEDS0pRyk86jT6PVVE0OMmnlfrl3vScSX5WIOQEN2Yrd5PGGGMeRK6aouva+fYiChLny02YEWusce/ILg4Fky/RFOJKOdcWwNiqXjK9YeAVQMlyssVzrKgSbDotTSiLyX+X2iowhXZ/SbPyTpRkRmLmCT111MnRD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mewy2Q5L; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-34b39ecbd0dso313402f8f.2
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713876230; x=1714481030; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qPMUP7jTPhU8KtBceS7+PJO2x6890fNpaWNWTvJnT8g=;
        b=mewy2Q5LKVwSxHvV/pHGVupVeXoOZYEShmyCJj7dPyM96q1gZuTnF8N/Xyxa1561rl
         p5HskHtDoLNFlh67U/ufKXTwh/NQCUI07OrXmB+UWAZlNMks2w7S/KSFFV+qD6ENhZtO
         ++iVtCvTSl+W55YYN5Z/q7cmBNiAx8sm4nEbaWx3LBPBf4itaGfu/aC4LZ55YGR1TSg0
         Ence6CtXRHaisZpw4idlOpZa2dRmt9baCLc9A35IjRYC2bfjTXVVSbl6ZCatwPT5UPwx
         TI4tZX27I+E9mViHFNGw1Bo/fZgH3U0iI/elVXAURDIo8AHQ9jwhBZ9kT3hBK66xIBi7
         W68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713876230; x=1714481030;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qPMUP7jTPhU8KtBceS7+PJO2x6890fNpaWNWTvJnT8g=;
        b=NTkyx91JxV7gx43Nwv2hKcSYqsJJCJW2SkWiCJXHV56OnFT7FgQsXHceX2/nc5pjxP
         vySh41u28ptmsyVc+CzsD4Gp1VxFrqZv3zTlhxgfETJWCnSmbQHENyV5X+EWreFwpP8m
         THjQC01Rt+JwF6SMR+FnYig5TNKHujJcd0Y7j7pPJG0Xu720+GmN+j/tCCl0fvtSmS2Y
         j+JafyAV1oyHwLyaNwZYcqkhl6S/62SxwkJxbrwB9gxjNKfAZuyhN20BWw9TihCqBZda
         KyM7f6IIyzl1P9g6cVaXOebAP+pnbHdpr2w8Svaqi2j66IjLVQ8tHJH7glQoMFMEvLXR
         l1Pw==
X-Forwarded-Encrypted: i=1; AJvYcCXy7gCTFNaUhu+yBfv+fFH+KiZ41SMWOMUm/S/IwjREaUkOqNhBn/Jl6Ka9DWT0V4SUn/LUUhCPYS9bBwB/pTokc8Z5fqh5Pjhgwg==
X-Gm-Message-State: AOJu0YwlrUw4HlSgL7AaRIwTc2mtu8BSaqvgixego5K6K2EP0DUz9rIQ
	Jkm3lsOrTq9aSAkGK4nFiOVWAfUyiEB4rQA3F/lN7ir+gmDC1WO0MpTbVqHFbwXf4r8AHppz7+s
	1EOo=
X-Google-Smtp-Source: AGHT+IF4Owb23uP4IaZsltc9oiRU6sq23tH0PC+Yw0dOc5/Ns9UfmjB52gYnOefx2T6o79mISwlW4w==
X-Received: by 2002:a05:600c:1c9c:b0:41a:bc88:b84 with SMTP id k28-20020a05600c1c9c00b0041abc880b84mr1191832wms.1.1713876230241;
        Tue, 23 Apr 2024 05:43:50 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:71cb:1f75:7053:849c])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b00418a386c059sm19975709wmo.42.2024.04.23.05.43.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 05:43:49 -0700 (PDT)
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
Subject: [PATCH v3 08/11] riscv: add ISA extension parsing for Zcmop
Date: Tue, 23 Apr 2024 14:43:22 +0200
Message-ID: <20240423124326.2532796-9-cleger@rivosinc.com>
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

Add parsing for Zcmop ISA extension which was ratified in commit
b854a709c00 ("Zcmop is ratified/1.0") of the riscv-isa-manual.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index b7551bad341b..cff7660de268 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -86,6 +86,7 @@
 #define RISCV_ISA_EXT_ZCB		77
 #define RISCV_ISA_EXT_ZCD		78
 #define RISCV_ISA_EXT_ZCF		79
+#define RISCV_ISA_EXT_ZCMOP		80
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 24bf3fbc0578..f59c3a5ef9db 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -319,6 +319,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcb, RISCV_ISA_EXT_ZCB, riscv_ext_zca_depends),
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcd, RISCV_ISA_EXT_ZCD, riscv_ext_zcd_validate),
 	__RISCV_ISA_EXT_DATA_VALIDATE(zcf, RISCV_ISA_EXT_ZCF, riscv_ext_zcf_validate),
+	__RISCV_ISA_EXT_DATA_VALIDATE(zcmop, RISCV_ISA_EXT_ZCMOP, riscv_ext_zca_depends),
 	__RISCV_ISA_EXT_DATA(zba, RISCV_ISA_EXT_ZBA),
 	__RISCV_ISA_EXT_DATA(zbb, RISCV_ISA_EXT_ZBB),
 	__RISCV_ISA_EXT_DATA(zbc, RISCV_ISA_EXT_ZBC),
-- 
2.43.0


