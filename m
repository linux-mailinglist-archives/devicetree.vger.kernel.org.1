Return-Path: <devicetree+bounces-67528-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 525528C889C
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 16:55:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8EA91F28B75
	for <lists+devicetree@lfdr.de>; Fri, 17 May 2024 14:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA187351A;
	Fri, 17 May 2024 14:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="Od07MaDS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E2E6E61F
	for <devicetree@vger.kernel.org>; Fri, 17 May 2024 14:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715957606; cv=none; b=riQIp7tWTxGKIwVWmgiyeOrrKxnaBePOBtU53/JU6ultn9t/oKMzL5uVB16swIT7YeGpGY4Xw+Hlkv/xGNyTSwwhktZB+XdfBi9FevgUKT7HanSeahCGBjApWtFWf32C/dvT07uSFhKMfiId0Lq/5L0H7J92SjyTcunBl08W8zA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715957606; c=relaxed/simple;
	bh=3pUouzGKtTo71pYkdkJFB3gRP9khPlS9i6RZ43zvw+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=nDXSYS+1vR+R+IKnhmf3JzWd8iA7NYYnWvy0BpP7TDwq8uY01mZ0lt8DoQh4+KxZLO/vWcidFZNTAvSU3YJuWT/waZGBYPoNpUvVKt536rZbrllRZpZc4ZJQy3Xrvzg7wBTi8FzVdka/DMz9TtB4baum0I8qg2lbjhwcyS8nPdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=Od07MaDS; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4200e4b7bcbso327925e9.1
        for <devicetree@vger.kernel.org>; Fri, 17 May 2024 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1715957602; x=1716562402; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrSVtGZRwZdqSUCPKBtbbPV0rvcWw4KEF79SGVRT1V0=;
        b=Od07MaDSgqqLKczElJ5KdqW/Odq7UViRs9G6uHM16OeF/GlxqrWYQkTs0MlFXp7rAn
         bJNUiteNjPviSW7SOcOpNHhL1CNp1rAZr9VxGyGXtfiBuO/blte8C+PuP+xxk9NUhSEr
         +MkD1KVa/IZKRxZYSdpwGTk1AWr1Eya27EPIpNnlkmC38w0lrOuHttfq9gQ2495tF4Lh
         pRGh0Vt+N3BCSlOuAilA4gVUP96iEZqfc+c4CAXjNXFKQYgT0PJ09Sk9V2wdV/2vTLOU
         mzzm1nhamMREERi7fFLuF5YEDnneFzoGjsCMtDffn2I+mYb9CaMGyWHdAhLEY7NPovMa
         IVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715957602; x=1716562402;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qrSVtGZRwZdqSUCPKBtbbPV0rvcWw4KEF79SGVRT1V0=;
        b=vbRunDLtERmJwQ4+0mTfj3TtBkwfu+yO7MxbjIEHALsVVVNafo7g/HEl+rpo4VZ51+
         mKX0jRu7rfHA0qQVV+E52POGoQ6jVJSQ5oyqcfGNYTec1vFKlRyCTNxlfXdBYIX2xSYE
         QOJYyc1cFckEY9rjBkU9kNiyfBN1WGgNzo/gZnGQYtqbJTXL047cWabiN3QjHvDhzGZG
         3c6Xm0FxfyXi4ToU1EDcEuWvNsaCe9xo9vNg47mWBtSYaLVWQFBWvXgb5foM09lNbYME
         NKyOZ3myJMqMfD919GsdhVFyZ9rKIhRZ9XmGVwr1qFU37v3RXrfBRkaV0ESjtkCB7JMA
         WXsQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOmuBKakisPouN2OWMbC6EqX88N3KiGxno1gzrDKygPSohLKviQ64Ass3NQp7cH9PTpyRxUjAlnZZthKO+VVf9+f3obbDRp7GluQ==
X-Gm-Message-State: AOJu0YwDsDEjS7E0X5RLBssdE0EebGqEqqV76Q0TnTJlK9Bk41j6/BDo
	jQfJwderm+2FcHUEexj7ET7nr2BsHCpPlAvUU1McCkgJeGIcumK94shIhruejcU=
X-Google-Smtp-Source: AGHT+IGsuE5xt92dGgSdWc5RJ3a8C2oD54vDPB0hNfYCMvTglFHEtoobZF7XlkesElGq2tbCGZs/Lg==
X-Received: by 2002:a05:600c:1d0a:b0:418:1303:c3d1 with SMTP id 5b1f17b1804b1-41fead6ae1bmr185460015e9.3.1715957602088;
        Fri, 17 May 2024 07:53:22 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:46f0:3724:aa77:c1f8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce9431sm301723695e9.28.2024.05.17.07.53.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 May 2024 07:53:21 -0700 (PDT)
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
Subject: [PATCH v5 05/16] KVM: riscv: selftests: Add Zimop extension to get-reg-list test
Date: Fri, 17 May 2024 16:52:45 +0200
Message-ID: <20240517145302.971019-6-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240517145302.971019-1-cleger@rivosinc.com>
References: <20240517145302.971019-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The KVM RISC-V allows Zimop extension for Guest/VM so add this
extension to get-reg-list test.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index b882b7b9b785..40107bb61975 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -67,6 +67,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZIHINTNTL:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZIHINTPAUSE:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZIHPM:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZIMOP:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZKND:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZKNE:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZKNH:
@@ -432,6 +433,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(ZIHINTNTL),
 		KVM_ISA_EXT_ARR(ZIHINTPAUSE),
 		KVM_ISA_EXT_ARR(ZIHPM),
+		KVM_ISA_EXT_ARR(ZIMOP),
 		KVM_ISA_EXT_ARR(ZKND),
 		KVM_ISA_EXT_ARR(ZKNE),
 		KVM_ISA_EXT_ARR(ZKNH),
@@ -955,6 +957,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zifencei, ZIFENCEI);
 KVM_ISA_EXT_SIMPLE_CONFIG(zihintntl, ZIHINTNTL);
 KVM_ISA_EXT_SIMPLE_CONFIG(zihintpause, ZIHINTPAUSE);
 KVM_ISA_EXT_SIMPLE_CONFIG(zihpm, ZIHPM);
+KVM_ISA_EXT_SIMPLE_CONFIG(zimop, ZIMOP);
 KVM_ISA_EXT_SIMPLE_CONFIG(zknd, ZKND);
 KVM_ISA_EXT_SIMPLE_CONFIG(zkne, ZKNE);
 KVM_ISA_EXT_SIMPLE_CONFIG(zknh, ZKNH);
@@ -1010,6 +1013,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_zihintntl,
 	&config_zihintpause,
 	&config_zihpm,
+	&config_zimop,
 	&config_zknd,
 	&config_zkne,
 	&config_zknh,
-- 
2.43.0


