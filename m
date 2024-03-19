Return-Path: <devicetree+bounces-51790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 36BA888070B
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 23:00:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFC091F228D1
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 22:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48CE25FBBA;
	Tue, 19 Mar 2024 21:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="HYuG4MNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3F415FB87
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 21:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710885564; cv=none; b=fK4DkFOsD8BJYKMJufzYiARMSe3HOSSyv9612HvlY7XorJuKzeEJVR3tn+tzqJbRbTHtef3D6KGTh7fGa70A8I7+YDUNPveHv2Ip7m6dgXtge+lq1xFS6k5+f0tj5gZCAYxh01br5yeHR/2rXIrfilqjxAviLnAxeqp25mmR/Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710885564; c=relaxed/simple;
	bh=cEPz5xiSAtfk2P9aOMl8XYGHlXI3VdaxfNONGT1LKvM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=R3HvDAhCPUouDtZw37v7ILzdcOywqxrbBZwaHaEy7AajEMcNODuVYfK7So6Lyi4YDFEE2hh0GDBJ6LTfyuJnW8SKnJt/uZeYtX1nut42JmNzInBN5IMIRlC9Pa1ON506YbEYYXoR3lRZr9B1lHZCPCYDMpNTs72f7xLSBgx5wPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=HYuG4MNr; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6e6b54a28d0so4683430b3a.2
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 14:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710885562; x=1711490362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ciVO7+10eZV72+E/ORaPRZFjospVEi/8CuyB7rGS1wk=;
        b=HYuG4MNrlbRtf7eMgMVlSp7YIFl/zaBSEkSN2nLCpeGaa8injNEpimcOM/pmORtX5B
         wkOgt2UsyMS3WNLkmjcb/Gls9H9TD8/S0QowXNmoCv3eR6hlnmr8g2IiuB/IXFDaU7es
         5mX/GEYb4GFWUw2LZbFjygdKRPnMyM32Mbxw6HutCpsebShXiv6ieP+MPHp0an8wp3Za
         7abnvPp3zhMmR7yeuciUt0UB7a0/XFuecp8aXpaaIjKRkzIu98vfGEmvacKWmHXUroSj
         tm8YNa5jd+eTdpe30nTHV38k5NCtSxDfj7gn3OOmbTKKR+E+wbVtmoYJ/6jo45BKSD1N
         r0hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710885562; x=1711490362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ciVO7+10eZV72+E/ORaPRZFjospVEi/8CuyB7rGS1wk=;
        b=bL5y32ZcCmr6ADXG9xkIoBiRU5d2ZLG/EmiLgVEkaMhT5wZZKPbGC7qYvb1IiJkDVz
         dhNAQZLx6v7xvgGvV5jIK8YmvxHzvTd9Bi0iStJTi3oyDiyFToS5lm/f2c5tbrSIBC7g
         ez92UF071l0hZesu5ltZFBoBMuw+Ub5XukyYl+A6sbm2rsC/vG+RvAQ9pmy4wQYHGxxa
         9x/kAicSQYMpN+s2kFJGU53ecgvsXoVgJtuKHrGAlJozJEbNgFZuijFhi4enBfrvMIIV
         82dVX1URFQR3MwJom5zd1e5FNFX6shwSbhI62jDUkp1T3uDCiLgf/u7WDAMKWCGiVQjt
         CwXQ==
X-Gm-Message-State: AOJu0Yw0HutMyFjBLDCMJfu/fDQnMP/6I5ANfsJJCDcRt1bNNjKQwJY7
	Hz+bHx7yorW1x+qHByLUdXMQducJkLOLxGR66ZrTfJch21CT8mDvtCRRKOy5v8E=
X-Google-Smtp-Source: AGHT+IFywIvk95HmWYC1ps8ZiAyORSpJBD5fZsHjoqcZoqHYlw5bVo0KamFA/Wgvuncr3jxrfpyfUQ==
X-Received: by 2002:a05:6a00:721c:b0:6e6:fcd4:4f44 with SMTP id lk28-20020a056a00721c00b006e6fcd44f44mr11479878pfb.16.1710885561953;
        Tue, 19 Mar 2024 14:59:21 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id z25-20020aa785d9000000b006e6c61b264bsm10273892pfn.32.2024.03.19.14.59.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 14:59:21 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	tech-j-ext@lists.risc-v.org,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel.holland@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Paul Walmsley <paul.walmsley@sifive.com>
Subject: [RFC PATCH 4/9] riscv: Define is_compat_thread()
Date: Tue, 19 Mar 2024 14:58:30 -0700
Message-ID: <20240319215915.832127-5-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.43.1
In-Reply-To: <20240319215915.832127-1-samuel.holland@sifive.com>
References: <20240319215915.832127-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This allows checking if some thread other than current is 32-bit.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

 arch/riscv/include/asm/compat.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/riscv/include/asm/compat.h b/arch/riscv/include/asm/compat.h
index 2ac955b51148..233c439c12d7 100644
--- a/arch/riscv/include/asm/compat.h
+++ b/arch/riscv/include/asm/compat.h
@@ -12,11 +12,18 @@
 #include <linux/sched/task_stack.h>
 #include <asm-generic/compat.h>
 
+#ifdef CONFIG_COMPAT
+
 static inline int is_compat_task(void)
 {
 	return test_thread_flag(TIF_32BIT);
 }
 
+static inline int is_compat_thread(struct thread_info *thread)
+{
+	return test_ti_thread_flag(thread, TIF_32BIT);
+}
+
 struct compat_user_regs_struct {
 	compat_ulong_t pc;
 	compat_ulong_t ra;
@@ -126,4 +133,13 @@ static inline void cregs_to_regs(struct compat_user_regs_struct *cregs,
 	regs->t6	= (unsigned long) cregs->t6;
 };
 
+#else
+
+static inline int is_compat_thread(struct thread_info *thread)
+{
+	return 0;
+}
+
+#endif
+
 #endif /* __ASM_COMPAT_H */
-- 
2.43.1


