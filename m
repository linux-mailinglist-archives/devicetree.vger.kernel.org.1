Return-Path: <devicetree+bounces-56091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DABD9897C67
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:46:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4EBAFB29921
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84589158DCD;
	Wed,  3 Apr 2024 23:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="nQQ2bTO/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5B2F158DB8
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:42:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187734; cv=none; b=EVtyN7/xvSKFGvjmboespWncMejUDMPZsqiW0H2OLad7TdSGjmGwLDcMXQMphMvnWW6oMh+K89lRdjtbOebQBFL5Jm0doCPStdbdHOdx/nCS2b8yvK5+KFWd8QzQBfOlyYXXrOMIt3HILKQyo1r8I+FSQrE1WVQvDu9x73ipEd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187734; c=relaxed/simple;
	bh=ieGAxIoHQhZwY3VcCNGHe4c+9aNd1lLYYqhAjwk1NeE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=p3ICigCG9G3j8zLANSCXXRx1wqpgWVC9mQsajU6X2vOUWkgxEPZTPZUDQXEOyforBthItmPlkRRjSUqCZG+xV4VisKT+6J5tCYm89pKSZ2SzRPekQF2JXLzbnnxJYkP4+jX59S1nJxdD2wcwVT23l7MfLBG4KH+KGf/9q/F5tHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=nQQ2bTO/; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-2a2c028b8a6so245785a91.1
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187732; x=1712792532; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZ8ix94mmk4BD8MMBywPtAuOuTf4nkdzJ2/QigtbDFI=;
        b=nQQ2bTO/3HIq0/k65+5wkhese5rdalD0SfEiHbgPzu3BHHn6ljTlMmAX/cnupwg2Ut
         K5OrWA8aYYlRkS65U43BezmmwcyOeztB/S68nfjcGcuKBNdaDKotu5r4NDMLpjQmaLyY
         VvDBHaUrZIZl4KTsVdfO6STPNKoaeiVX4hss4LLv6fYteUbuXx2fv1IEP6piRg/0eNXP
         2HgOt9hlvslvtyAxzsfj+KYccHB4CgaLPARpN1r1/At3K4v4iygq9Up+n70fy3CEC+Wq
         ONUYnQCV/5MsELKfzrT18BX1jbjhzQTc94pNcL8wrkSJ0VDF1u6Eg19eCypbGTAYNdZH
         75+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187732; x=1712792532;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZ8ix94mmk4BD8MMBywPtAuOuTf4nkdzJ2/QigtbDFI=;
        b=xNl2Wc3x4rum0n0AfYG/gnc2U0pOkMWlTkzyGHXUcREyQwWb7LV4Xc8b6Cf7uz70S8
         NiZwB0wzaUQx8ChTn+r1nuZQU0NlMWcmICf5LsFFprRWLMw7WsGUhzztNB7rmyH/zxY9
         RirQ6y/bdZMOvjIxwzXhJ7XGpeGMnzwxIT1oR3eLOS7zzEFiAbQIELzPgBqz7tXoy7a/
         z8QiDCD/wY0pvA0X87kzjfUKHO/qKI1afXJSgyUxvhfPmqhgC2Px0LVHgDNnrtyAP2c6
         vJGxJzHFELEp6VELqGAaOoWpZ/Bzr3WOQygwJ16+DYt/P9u8xvflOQEvnm7yy5LvSfLv
         YsYw==
X-Forwarded-Encrypted: i=1; AJvYcCXhMJ0xol4cRsMmF41jrKifAZkyZV746bTsthDz+PE/l4reEAInzm3amafKUJkjLuM3NalUlgLuqzLhesbo1TjOLJSlb2xM1VCEkw==
X-Gm-Message-State: AOJu0YzU0xQ2o2YlNi/M2xb9cRoLH/9vgQOdG55EizgroULvuevM5G33
	kcsXB0ETiLC7hguCakUafZCNBzLLEFoFXH8Bg5HdseKdVTBkyK6VYzon/N0svZU=
X-Google-Smtp-Source: AGHT+IGqMNLnQifKehVyTniVZ6at0ArgKKWUBm835f674K8o1H2lf66wElH3Yt8D0mQ5+pAZCM+6nA==
X-Received: by 2002:a17:90a:134c:b0:299:3035:aede with SMTP id y12-20020a17090a134c00b002993035aedemr916968pjf.44.1712187732279;
        Wed, 03 Apr 2024 16:42:12 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:42:11 -0700 (PDT)
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
	conor@kernel.org
Cc: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-mm@kvack.org,
	linux-arch@vger.kernel.org,
	linux-kselftest@vger.kernel.org,
	corbet@lwn.net,
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
Subject: [PATCH v3 16/29] prctl: arch-agnostic prctl for shadow stack
Date: Wed,  3 Apr 2024 16:35:04 -0700
Message-ID: <20240403234054.2020347-17-debug@rivosinc.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240403234054.2020347-1-debug@rivosinc.com>
References: <20240403234054.2020347-1-debug@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Mark Brown <broonie@kernel.org>

Three architectures (x86, aarch64, riscv) have announced support for
shadow stacks with fairly similar functionality.  While x86 is using
arch_prctl() to control the functionality neither arm64 nor riscv uses
that interface so this patch adds arch-agnostic prctl() support to
get and set status of shadow stacks and lock the current configuration to
prevent further changes, with support for turning on and off individual
subfeatures so applications can limit their exposure to features that
they do not need.  The features are:

  - PR_SHADOW_STACK_ENABLE: Tracking and enforcement of shadow stacks,
    including allocation of a shadow stack if one is not already
    allocated.
  - PR_SHADOW_STACK_WRITE: Writes to specific addresses in the shadow
    stack.
  - PR_SHADOW_STACK_PUSH: Push additional values onto the shadow stack.
  - PR_SHADOW_STACK_DISABLE: Allow to disable shadow stack.
    Note once locked, disable must fail.

These features are expected to be inherited by new threads and cleared
on exec(), unknown features should be rejected for enable but accepted
for locking (in order to allow for future proofing).

This is based on a patch originally written by Deepak Gupta but later
modified by Mark Brown for arm's GCS patch series.

Signed-off-by: Mark Brown <broonie@kernel.org>
Co-developed-by: Deepak Gupta <debug@rivosinc.com>
---
 include/linux/mm.h         |  3 +++
 include/uapi/linux/prctl.h | 22 ++++++++++++++++++++++
 kernel/sys.c               | 30 ++++++++++++++++++++++++++++++
 3 files changed, 55 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 9952937be659..1d08e1fd2f6a 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -4201,5 +4201,8 @@ static inline bool pfn_is_unaccepted_memory(unsigned long pfn)
 
 	return range_contains_unaccepted_memory(paddr, paddr + PAGE_SIZE);
 }
+int arch_get_shadow_stack_status(struct task_struct *t, unsigned long __user *status);
+int arch_set_shadow_stack_status(struct task_struct *t, unsigned long status);
+int arch_lock_shadow_stack_status(struct task_struct *t, unsigned long status);
 
 #endif /* _LINUX_MM_H */
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 370ed14b1ae0..3c66ed8f46d8 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -306,4 +306,26 @@ struct prctl_mm_map {
 # define PR_RISCV_V_VSTATE_CTRL_NEXT_MASK	0xc
 # define PR_RISCV_V_VSTATE_CTRL_MASK		0x1f
 
+/*
+ * Get the current shadow stack configuration for the current thread,
+ * this will be the value configured via PR_SET_SHADOW_STACK_STATUS.
+ */
+#define PR_GET_SHADOW_STACK_STATUS      71
+
+/*
+ * Set the current shadow stack configuration.  Enabling the shadow
+ * stack will cause a shadow stack to be allocated for the thread.
+ */
+#define PR_SET_SHADOW_STACK_STATUS      72
+# define PR_SHADOW_STACK_ENABLE         (1UL << 0)
+# define PR_SHADOW_STACK_WRITE		(1UL << 1)
+# define PR_SHADOW_STACK_PUSH		(1UL << 2)
+
+/*
+ * Prevent further changes to the specified shadow stack
+ * configuration.  All bits may be locked via this call, including
+ * undefined bits.
+ */
+#define PR_LOCK_SHADOW_STACK_STATUS      73
+
 #endif /* _LINUX_PRCTL_H */
diff --git a/kernel/sys.c b/kernel/sys.c
index f8e543f1e38a..242e9f147791 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -2315,6 +2315,21 @@ int __weak arch_prctl_spec_ctrl_set(struct task_struct *t, unsigned long which,
 	return -EINVAL;
 }
 
+int __weak arch_get_shadow_stack_status(struct task_struct *t, unsigned long __user *status)
+{
+	return -EINVAL;
+}
+
+int __weak arch_set_shadow_stack_status(struct task_struct *t, unsigned long status)
+{
+	return -EINVAL;
+}
+
+int __weak arch_lock_shadow_stack_status(struct task_struct *t, unsigned long status)
+{
+	return -EINVAL;
+}
+
 #define PR_IO_FLUSHER (PF_MEMALLOC_NOIO | PF_LOCAL_THROTTLE)
 
 #ifdef CONFIG_ANON_VMA_NAME
@@ -2757,6 +2772,21 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
 	case PR_RISCV_V_GET_CONTROL:
 		error = RISCV_V_GET_CONTROL();
 		break;
+	case PR_GET_SHADOW_STACK_STATUS:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
+		error = arch_get_shadow_stack_status(me, (unsigned long __user *) arg2);
+		break;
+	case PR_SET_SHADOW_STACK_STATUS:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
+		error = arch_set_shadow_stack_status(me, arg2);
+		break;
+	case PR_LOCK_SHADOW_STACK_STATUS:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
+		error = arch_lock_shadow_stack_status(me, arg2);
+		break;
 	default:
 		error = -EINVAL;
 		break;
-- 
2.43.2


