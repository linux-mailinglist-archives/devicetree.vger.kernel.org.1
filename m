Return-Path: <devicetree+bounces-56097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BEFD897C8C
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 01:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E757BB2A4A7
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 23:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1156715B10A;
	Wed,  3 Apr 2024 23:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="zeonD28X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F95D15B0EA
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 23:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712187759; cv=none; b=qit+/uQPQUqzKclyOoOkPm748yDm8Hios8GNtu7A8CnCdLFUFrZTihRnL06S7PNWGYXz97fwhHJTI0PU3I4V2EljF7uwo+Z1ordBMEB2x4NrTe/Cs7KeonfTuvs7rS89r7fChb2cE1RJKMzhB2fgqHuJY3nqFBY4XCPfHCgbPBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712187759; c=relaxed/simple;
	bh=pKLFkKzJOJ8TVEvV0fhdtvjJa4v5yVb6+o0QMASZ3Hg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=N9b0RvC9QX3z+XQBhedQZ3Yc22G6tlcHF4IvN4nadTHhCGx0yFb9iiStNVqux9BjUp906538UHUx8Q5RoB+TWZ9MXkUyKm1ZjITJxX58Tzk3AU3st5AfTQX30aL6fLlblns4frYwNdiMi7eaE4QJjTSfuw/r3oJ8hcsaqljIb40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=zeonD28X; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1e252f2bf23so3148535ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 16:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712187757; x=1712792557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qc6tDQVZMFWZI8yrez6t0wejTQ8xJVxgJAnHf9JsPCA=;
        b=zeonD28X8y+FbBr/1sLhYcVnrAHddElHMKnmeCwKi4dbok67AVeZwn0LlwQwqiXPiU
         PGEr6z1DIE7hog6DHEU8Qnh9cBt0/tuhYK9yky9U0GVHKAJhg/i2Zt+CRKAYf1aS9EZd
         r4aAqk3N9y64MDJ+l6pIrLb1Os+E6HWCyQXc0+aTvtjva+sT2wRfbQTWqCk7mMVoCy0S
         PsIeUS8+gi3CBkFAd4NDBSsT1DHzoZaeCulmT5NVlQg2NASCnQD1FOgi41lSfhWogFj3
         lcxS2z/D7X1rxtQpaz1RgzV096xVoLLocVfyJK+xLrcfil6+MuSH6f6aQ2z1G3gmeuzz
         jUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712187757; x=1712792557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qc6tDQVZMFWZI8yrez6t0wejTQ8xJVxgJAnHf9JsPCA=;
        b=ifuzqSL9cCumn7sNXu1qAno0KslJV7XoaLeO8D8IFPOyRqmPFqD2kRq5bxJDrM0JDp
         Sz+Qt2R51FGEdaaL/3v8ud04S6JFBUe3BwRVs2b+kyuGDy13eKimpsAuSVVTGvSjglav
         5jDPTpEAuDYVTC4+nzbSIN74V2wffAQeo8304qsQ5T/Xa8DQiMUuPTWi5+dLK4UxUwx9
         21XZl79SItkqd9sUVACZlQgZYd6j5A9EqKAF8zXU7lWuFASWocQUHMZY3Xu7iZeCSCsH
         dO/ltHaxziinHsnDVQMbVPH95LZNUxQpj5bYPta6Ab/0CNq9SlesiYFTW8HBCRJGopHo
         zhZg==
X-Forwarded-Encrypted: i=1; AJvYcCVXNfEbr8GZAEFectOfMA08cHUzz8SJ479eEa6HgX8oOK297CGhxT4pJUBmXhheRWeKQw785lqyHfTW/0fnQRCpFbBto9FQvlh2cg==
X-Gm-Message-State: AOJu0YxTO0N/WvRi0doKHuttBA2HkrXC0kGspI1jiKPkJq+YmR97Tv/M
	J5HYzPgjN9NcbZDuldIjwfdpzK5Inh5KgfsYYc7beD9YvlqOHHOarPWPGjqk/FI=
X-Google-Smtp-Source: AGHT+IEuhCBj/2TDLKKsCyPyIBeMUKZ3rkD1bUlrx/H25eFGajkGFoQcn3/TeMJd7JPKfofV2mRlIQ==
X-Received: by 2002:a17:902:d506:b0:1e0:cdbf:24c2 with SMTP id b6-20020a170902d50600b001e0cdbf24c2mr951254plg.29.1712187756641;
        Wed, 03 Apr 2024 16:42:36 -0700 (PDT)
Received: from debug.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id b18-20020a170902d51200b001deeac592absm13899117plg.180.2024.04.03.16.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 16:42:36 -0700 (PDT)
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
Subject: [PATCH v3 22/29] riscv sigcontext: adding cfi state field in sigcontext
Date: Wed,  3 Apr 2024 16:35:10 -0700
Message-ID: <20240403234054.2020347-23-debug@rivosinc.com>
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

Shadow stack needs to be saved and restored on signal delivery and signal
return.

sigcontext embedded in ucontext is extendible. Adding cfi state in there
which can be used to save cfi state before signal delivery and restore
cfi state on sigreturn

Signed-off-by: Deepak Gupta <debug@rivosinc.com>
---
 arch/riscv/include/uapi/asm/sigcontext.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/sigcontext.h b/arch/riscv/include/uapi/asm/sigcontext.h
index cd4f175dc837..5ccdd94a0855 100644
--- a/arch/riscv/include/uapi/asm/sigcontext.h
+++ b/arch/riscv/include/uapi/asm/sigcontext.h
@@ -21,6 +21,10 @@ struct __sc_riscv_v_state {
 	struct __riscv_v_ext_state v_state;
 } __attribute__((aligned(16)));
 
+struct __sc_riscv_cfi_state {
+	unsigned long ss_ptr;	/* shadow stack pointer */
+	unsigned long rsvd;		/* keeping another word reserved in case we need it */
+};
 /*
  * Signal context structure
  *
@@ -29,6 +33,7 @@ struct __sc_riscv_v_state {
  */
 struct sigcontext {
 	struct user_regs_struct sc_regs;
+	struct __sc_riscv_cfi_state sc_cfi_state;
 	union {
 		union __riscv_fp_state sc_fpregs;
 		struct __riscv_extra_ext_header sc_extdesc;
-- 
2.43.2


