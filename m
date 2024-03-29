Return-Path: <devicetree+bounces-54434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B01F689127D
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 05:45:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6187F28A6E3
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 04:45:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE3B93C08F;
	Fri, 29 Mar 2024 04:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="u54K+nRe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FB83BBF2
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 04:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711687523; cv=none; b=ICikeU7o60Obx1pd+kI4YAaw6Hdb77pkUr+9BMuCJyjr7T8VphEfIHJbK8/b06eeCwlERnSlPChunvMqFWzzPPLlz0BlbJ0+GsGw4dPbmqGWLi6/0aqnmHOBHpEqwdXaOkcdE3Vgh6cetb/2tpOesHXRaYQ2lo+SUgQSfC0lmxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711687523; c=relaxed/simple;
	bh=h2y9fFmmx6EsZ6oLRRR8+V7ERys+JFhYFmzE85pUkAY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=q5c59CXlwe61+uU+R3p4l0IGF0i5ksiE+Wk0L0TCktEoCzhYFoqlHW1eODtcWELFcH1ct7CgBGIEUYCv+3YoGTHDsSXmSc9e389UofrB/i3FCG7UDNU44xooNqGnqH9tK2u4FzTbrAtGNkbJMK0EBEx9W7wXXSxl2OpxBi5+x6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=u54K+nRe; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-6e6082eab17so1501176b3a.1
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 21:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1711687520; x=1712292320; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3HlYvLaJr4l3bVtwLdV9ET8gn8bkDD3ErKtF/Cp9Ezk=;
        b=u54K+nRelGXPc+EZDYA1XUL/GP9W6FTdzYJCXy3mGERcI9mNLXf8NR7A6NQdrT28Ud
         r0ML9kBaS6O2IvhZzlbBGn7npvuPxpl24zM9P139WQkOUJ89ygIZrswLB9w5ugk6NC1c
         j/+JG+s5qpaXHAm8H/qTUXxhdJF+YWxn+/pdqCV2MNkF6OxLBwOL0hrZiZv8KMaTf5jC
         sVC+pyHzdkjS2ZCTIp7o0FhCe4etlqglqSTAFoOACGwqjgtVHqlrtUxcjOXgbsejFHaR
         2ebnUNuGx2hcT8XK6CGZepmrCJSuMtqc2ljMXZya4LUxBzv6xrJU72NNbuQh8moZaX/6
         AiPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711687520; x=1712292320;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3HlYvLaJr4l3bVtwLdV9ET8gn8bkDD3ErKtF/Cp9Ezk=;
        b=nqZR4JDC60llGUpFQf7OLLX0NoqyNAI3uji+d7CPHjOXXpBNBJ82ZNeBySZDYAQ0YA
         vLX25q7ER0pEJoPWb8eB4eE9kPtc2+Zzu1ncwnAHL3+7HmbNgfcPX4f4siFqGv1m/O90
         1xvrQ6Es/DqfYaHrXMQs5sRr6FuPgsXuFNZ5mhWhCt1kBwQisIKSH/4Z1t9mXY5ZUCpC
         iP94kE6tvMNLCRD6yRmlb/fGF4D44MeLa/nkTPuQO9zq3GQGIHHYZabKkeUMzdy6Wzyg
         UcHBo5Gr/lWOAoBaWGqDbuhBDdvWQtxi/ue43Pt1bAGgOqkqr9ZQJmkSkGLud7bkoL6g
         yTmw==
X-Forwarded-Encrypted: i=1; AJvYcCU4gksZ45EoyVj5YmbRllSIGSRlXMs8WemXNt8JlBbMGuMs6612IoniqAgXbXdlTZpjKpRw67EVREOe4KWVQHfbq24e2JuDwIURJw==
X-Gm-Message-State: AOJu0Ywgo5FeSxFDDoAdp8CUt07EATziC3YfshWbtph/D2ezrl9waGLk
	6bLtxKY/lAQsxBH1MO8BOrHFzu1WuzyNSiBr4DtCWXWkMSzMQKdhW1nZVOZGDeE=
X-Google-Smtp-Source: AGHT+IFTo+txCMZKEE06IZ+V4dIOgngRem/aEEKbckfraBrrpL/AYZj752mW4B4fwSBOz0hRyqWgfA==
X-Received: by 2002:a05:6a00:1c85:b0:6ea:c7bb:187b with SMTP id y5-20020a056a001c8500b006eac7bb187bmr1078563pfw.5.1711687520251;
        Thu, 28 Mar 2024 21:45:20 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id i18-20020aa78b52000000b006ea7e972947sm2217120pfd.130.2024.03.28.21.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Mar 2024 21:45:19 -0700 (PDT)
From: Deepak Gupta <debug@rivosinc.com>
To: paul.walmsley@sifive.com,
	rick.p.edgecombe@intel.com,
	broonie@kernel.org,
	Szabolcs.Nagy@arm.com,
	kito.cheng@sifive.com,
	keescook@chromium.org,
	ajones@ventanamicro.com,
	conor.dooley@microchip.com,
	cleger@rivosinc.com,
	atishp@atishpatra.org,
	alex@ghiti.fr,
	bjorn@rivosinc.com,
	alexghiti@rivosinc.com,
	samuel.holland@sifive.com,
	palmer@sifive.com,
	conor@kernel.org,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org
Cc: corbet@lwn.net,
	tech-j-ext@lists.risc-v.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	oleg@redhat.com,
	akpm@linux-foundation.org,
	arnd@arndb.de,
	ebiederm@xmission.com,
	Liam.Howlett@oracle.com,
	vbabka@suse.cz,
	lstoakes@gmail.com,
	shuah@kernel.org,
	brauner@kernel.org,
	debug@rivosinc.com,
	andy.chiu@sifive.com,
	jerry.shih@sifive.com,
	hankuan.chen@sifive.com,
	greentime.hu@sifive.com,
	evan@rivosinc.com,
	xiao.w.wang@intel.com,
	charlie@rivosinc.com,
	apatel@ventanamicro.com,
	mchitale@ventanamicro.com,
	dbarboza@ventanamicro.com,
	sameo@rivosinc.com,
	shikemeng@huaweicloud.com,
	willy@infradead.org,
	vincent.chen@sifive.com,
	guoren@kernel.org,
	samitolvanen@google.com,
	songshuaishuai@tinylab.org,
	gerg@kernel.org,
	heiko@sntech.de,
	bhe@redhat.com,
	jeeheng.sia@starfivetech.com,
	cyy@cyyself.name,
	maskray@google.com,
	ancientmodern4@gmail.com,
	mathis.salmen@matsal.de,
	cuiyunhui@bytedance.com,
	bgray@linux.ibm.com,
	mpe@ellerman.id.au,
	baruch@tkos.co.il,
	alx@kernel.org,
	david@redhat.com,
	catalin.marinas@arm.com,
	revest@chromium.org,
	josh@joshtriplett.org,
	shr@devkernel.io,
	deller@gmx.de,
	omosnace@redhat.com,
	ojeda@kernel.org,
	jhubbard@nvidia.com
Subject: [PATCH v2 02/27] riscv: define default value for envcfg
Date: Thu, 28 Mar 2024 21:44:34 -0700
Message-Id: <20240329044459.3990638-3-debug@rivosinc.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240329044459.3990638-1-debug@rivosinc.com>
References: <20240329044459.3990638-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Defines a base default value for envcfg per task. By default all tasks
should have cache zeroing capability. Any future base capabilities that
apply to all tasks can be turned on same way.

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 2 ++
 arch/riscv/kernel/process.c  | 1 +
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 2468c55933cd..bbd2207adb39 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -202,6 +202,8 @@
 #define ENVCFG_CBIE_FLUSH		_AC(0x1, UL)
 #define ENVCFG_CBIE_INV			_AC(0x3, UL)
 #define ENVCFG_FIOM			_AC(0x1, UL)
+/* by default all threads should be able to zero cache */
+#define ENVCFG_BASE			ENVCFG_CBZE
 
 /* Smstateen bits */
 #define SMSTATEEN0_AIA_IMSIC_SHIFT	58
diff --git a/arch/riscv/kernel/process.c b/arch/riscv/kernel/process.c
index 92922dbd5b5c..9a85c9d4c902 100644
--- a/arch/riscv/kernel/process.c
+++ b/arch/riscv/kernel/process.c
@@ -152,6 +152,7 @@ void start_thread(struct pt_regs *regs, unsigned long pc,
 	else
 		regs->status |= SR_UXL_64;
 #endif
+	current->thread_info.envcfg = ENVCFG_BASE;
 }
 
 void flush_thread(void)
-- 
2.43.2


