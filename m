Return-Path: <devicetree+bounces-79880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F01D917315
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 23:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBC301F23183
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 21:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69F511836DC;
	Tue, 25 Jun 2024 21:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="KtMwcpqf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0D721822D9
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719349795; cv=none; b=lZEu+8GmK2uAXI2983+OuLErrTGFRj5RzOOE6uVN8s7jtOaVf89SlcYsMVvfIc3mVLpv4MwF+w4HevXHC8xAqB0IBeCZVJ6hiXI6p+WeqoFRB5O9/MYc5uwbQqYJKCwq9apxWE0IxRxuQeBj3u64R6FTEjswNV6yBvxDU9BSZDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719349795; c=relaxed/simple;
	bh=Ojp1pRYSQcvrnSEurDr0lhqS4jmIZ793itoDV7Yj58k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RJFjhdD7Dob2BAuaPTxPaEAw9FSkZJ0s9+6RZf6RhOBXH4MBHnL39+QHwR1FIpYyHTCSdEd4XMGp3l/jMpOV63dw51IAIv9ZhNIMOxOkNF/SVt3XF7T2LYdXgpVgb3YWwXazXTN2fFtBsf2Gn1UEj0cuxWMipy4istM2xo4HVxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=KtMwcpqf; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-1fa2782a8ccso21688405ad.2
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1719349793; x=1719954593; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZsHcmVVCPLrcBxzvj/XWrk8rIm5ozAhc40jGfT9csjA=;
        b=KtMwcpqfBiu7xMHQvFEEDdSC3Yok0xRslnNw5Rlwq8VUQOUF1QaeI6EHQDiK8f1zBw
         TXZk/scgWcQLRhwHNts9f41rzimAFolbnIWqdwm+TNfqIi1CT6b0xjfNLtgHrX6Hhh40
         27z5jSH4FWCDiQFOn34Ya3Pgp8ydHaPen4rbNEXoHFZpZ+iR7Q50ev8hxFninbvvtTM7
         6v0F2pFGESg3KNDQsgdHfb/yQYfaQoxRHE6ILplD81Cy3W0jGMNSkNqirlBB4ZwaLno3
         BkeM+HPf2fXvRHTcLsegfL0KqP8q5C2b6se/1c9j7T1MlVnPnL3hMQ/HY+UmJs+zvwAb
         UOyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719349793; x=1719954593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZsHcmVVCPLrcBxzvj/XWrk8rIm5ozAhc40jGfT9csjA=;
        b=Y/F07Cz0dDnu/mziJDb9hL71XZu8ldMevpwf4YWPHJnsxW7U3fKAaR0WX7qgCpJV0u
         iS2itFrV3Uz/+5o5taI9CtWDWf9jij09vb2qk9MU52NvmwVsSdvzXuPXri7IQbQSUVyh
         /BpBE9yY/Unpx9T6xlEwAuWk91D6DEhE1V10vHAKovCzwCEVWG0d5IBmIRlj9fPh8yRA
         ZW8MKy36TmsF7X0Z5fOkXI18uLgFbdL8lQsUnh+cSjgDQmH4r95d5FYpEJS6ytJJ1N46
         Ohv7kMiQQ0pcPksSTC1RKnWPZqYjewrJ6akAgwp6AY+jjJ3nZHTvsTfFDmsfUQpN+mlQ
         gGjg==
X-Gm-Message-State: AOJu0Ywinm41vmdpDlj2qwQwu2805UANhUr3iHwtRj2EHIv/FD+smGO3
	+KQnL9Djjfna1ThU0bNo1/eSW4lFxyy5I7r4k2fZt/dT1REeTHXmOMoUPNDUc0M=
X-Google-Smtp-Source: AGHT+IF7960Z3y3y/X3zynf0lJ1wO8G/3jJV2h9jR5m8BoGcdIwQfMMMznl9rO+PXdYb3q90GGzu1Q==
X-Received: by 2002:a17:902:e5c1:b0:1f9:c6df:a84e with SMTP id d9443c01a7336-1fa23f3638fmr104356595ad.64.1719349793095;
        Tue, 25 Jun 2024 14:09:53 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb328f57sm85873455ad.110.2024.06.25.14.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 14:09:52 -0700 (PDT)
From: Samuel Holland <samuel.holland@sifive.com>
To: Palmer Dabbelt <palmer@dabbelt.com>,
	linux-riscv@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	Catalin Marinas <catalin.marinas@arm.com>,
	linux-kernel@vger.kernel.org,
	Anup Patel <anup@brainfault.org>,
	Conor Dooley <conor@kernel.org>,
	kasan-dev@googlegroups.com,
	Atish Patra <atishp@atishpatra.org>,
	Evgenii Stepanov <eugenis@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	"Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>,
	Samuel Holland <samuel.holland@sifive.com>
Subject: [PATCH v2 10/10] KVM: riscv: selftests: Add Smnpm and Ssnpm to get-reg-list test
Date: Tue, 25 Jun 2024 14:09:21 -0700
Message-ID: <20240625210933.1620802-11-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240625210933.1620802-1-samuel.holland@sifive.com>
References: <20240625210933.1620802-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add testing for the pointer masking extensions exposed to KVM guests.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

Changes in v2:
 - New patch for v2

 tools/testing/selftests/kvm/riscv/get-reg-list.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 222198dd6d04..301761a5364d 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -41,9 +41,11 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_I:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_M:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_V:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SMNPM:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SMSTATEEN:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSAIA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSCOFPMF:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSNPM:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_SVNAPOT:
@@ -407,9 +409,11 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(I),
 		KVM_ISA_EXT_ARR(M),
 		KVM_ISA_EXT_ARR(V),
+		KVM_ISA_EXT_ARR(SMNPM),
 		KVM_ISA_EXT_ARR(SMSTATEEN),
 		KVM_ISA_EXT_ARR(SSAIA),
 		KVM_ISA_EXT_ARR(SSCOFPMF),
+		KVM_ISA_EXT_ARR(SSNPM),
 		KVM_ISA_EXT_ARR(SSTC),
 		KVM_ISA_EXT_ARR(SVINVAL),
 		KVM_ISA_EXT_ARR(SVNAPOT),
@@ -932,8 +936,10 @@ KVM_ISA_EXT_SUBLIST_CONFIG(aia, AIA);
 KVM_ISA_EXT_SUBLIST_CONFIG(fp_f, FP_F);
 KVM_ISA_EXT_SUBLIST_CONFIG(fp_d, FP_D);
 KVM_ISA_EXT_SIMPLE_CONFIG(h, H);
+KVM_ISA_EXT_SIMPLE_CONFIG(smnpm, SMNPM);
 KVM_ISA_EXT_SUBLIST_CONFIG(smstateen, SMSTATEEN);
 KVM_ISA_EXT_SIMPLE_CONFIG(sscofpmf, SSCOFPMF);
+KVM_ISA_EXT_SIMPLE_CONFIG(ssnpm, SSNPM);
 KVM_ISA_EXT_SIMPLE_CONFIG(sstc, SSTC);
 KVM_ISA_EXT_SIMPLE_CONFIG(svinval, SVINVAL);
 KVM_ISA_EXT_SIMPLE_CONFIG(svnapot, SVNAPOT);
@@ -988,8 +994,10 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_fp_f,
 	&config_fp_d,
 	&config_h,
+	&config_smnpm,
 	&config_smstateen,
 	&config_sscofpmf,
+	&config_ssnpm,
 	&config_sstc,
 	&config_svinval,
 	&config_svnapot,
-- 
2.44.1


