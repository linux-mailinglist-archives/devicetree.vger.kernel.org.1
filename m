Return-Path: <devicetree+bounces-57812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 300E489EE59
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 11:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 99E881F243C8
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 09:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2871815B96B;
	Wed, 10 Apr 2024 09:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="LpcuxJuf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A872D15B0E9
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 09:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712740279; cv=none; b=CeS9fk9mlv9o5QO+pxpZhDCtftxD4vFpT92IfF6YIMWqifXila3DBlplH4vYv5jAwEGKGWcKJM7MNSFR7EJhsNu2A0uLL3bAb8F4n6ZXJ81o1K0iROkh7t7h2SfOJ2JAz2MeDzxw6EHIMh0XBPqv5BarRPUxI5b7gRjozU/h7L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712740279; c=relaxed/simple;
	bh=3Jj8U7JAqzUG1Y5U6ZWjwOPk4JMwb1iZ63AmVurw2vE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=gejX02EEque7BvNI97cu8X1piGX0L6pJU6mxKWz6OoAQXAiKJ49rFl48W6iXKYiON8KvOXiIfYGsK4mVo7m1PtqZsPuuai+AcBPrr7a+iZwuPQbhWpaKx9GqfvgwmJYO6hppL86zaWgyGSIfpWwKcue/b90t7REJgS0g9ixMzLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=LpcuxJuf; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-34560201517so889158f8f.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 02:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712740275; x=1713345075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Krk/y2eKZuups+NlFH1/XAt2KVWyJ/NRH9pac0EUcSA=;
        b=LpcuxJufT38ohKiTFAqiehbu26nIw0Pq90sq6SWrkqHXbAsYH+h0fBg+iuxkBbTOYv
         hV8ywBv9oDO15QDxCc/bIC4qovZWAnWcgnOEa8pJdl1AcHqF3LDaYXooWuJP2c1bfayC
         9HU1RQpXaDqzROIsGhrukdYHm3sUr1Gcfv3zHWbj2/JeseO4as3FkTZ8Njw2SLcOx7qi
         hQGYV/44lHTGUzFONEdYYd3iG21U8E2jayt9kc8ly3eKPWYtQheO0ROIqHXLgr2Db20U
         30wZxbZQBkVDN/XE1EOg8sKShil947xPfYa0QjF0u9eeA30VhqA3Ccx7kctLwlsRzXTB
         3eHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712740275; x=1713345075;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Krk/y2eKZuups+NlFH1/XAt2KVWyJ/NRH9pac0EUcSA=;
        b=NjD2iyn9KfM+dIBqepaey+zCUW1Mm3T2dm/5FjVoco41Wu+e+c9Eufg2ddZOXTz5tX
         PWLdGFB3p6A2lnSZD+HaG7q4cl9hH94sa+rPyD1RaXVYRUzv4aUyHSu0QxV9gkhrucl0
         Z3QhkrROOSpWp2hdoHowAW3ImOtQhFcuamLjTZlrYqyT6mkW4hl6YlPHUlRkEf5R+0Iq
         93JZEdey+UBH1XpOoquTajP7ixvva9puA8IoKY1GR5xIBJr9wvbGpSkC+w0pMoy73IUA
         N2FGRajUhahOh3EcoZNayd0djo2Z3PRrQaayUQnouVYt00EFQnqVEP7hoBGnwaQ3ZNL2
         4NeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBZgCFRdqx6ZFvz6i/SyL4CINUkO8KXuIlfsu7znc9mlaiWcsLQQQkfs/1BkCHb3gaEg+KjFn4hUrNwGKXRUA3yiwihI+wImgFZw==
X-Gm-Message-State: AOJu0Yy1gV8/3AtCFIPpJcL78IWP3nCXBXZGftBfmQAUbtW4vdwOly43
	HupDab7/bshckQiyBY9cpKGFchvXPpDVWGxfg7IeUdJFYV5IUKxM4zR0DGAHK6I=
X-Google-Smtp-Source: AGHT+IGyqbOgjtNkZZQIuk3rup0XlbTGJ4jWdEvRqfh1gL7k9yxCMhJp70f8uLGTtSc+Ou6jAVkYhg==
X-Received: by 2002:a5d:6da5:0:b0:346:6d9d:431a with SMTP id u5-20020a5d6da5000000b003466d9d431amr963245wrs.5.1712740275117;
        Wed, 10 Apr 2024 02:11:15 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:d4a6:5856:3e6c:3dff])
        by smtp.gmail.com with ESMTPSA id d6-20020a056000114600b003456c693fa4sm9079086wrx.93.2024.04.10.02.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 02:11:14 -0700 (PDT)
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
Subject: [PATCH 04/10] RISC-V: KVM: Allow Zca, Zcf, Zcd and Zcb extensions for Guest/VM
Date: Wed, 10 Apr 2024 11:10:57 +0200
Message-ID: <20240410091106.749233-5-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240410091106.749233-1-cleger@rivosinc.com>
References: <20240410091106.749233-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zca, Zcf, Zcd and Zcb extensions for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 4 ++++
 arch/riscv/kvm/vcpu_onereg.c      | 8 ++++++++
 2 files changed, 12 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 35a12aa1953e..57db3fea679f 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -168,6 +168,10 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZTSO,
 	KVM_RISCV_ISA_EXT_ZACAS,
 	KVM_RISCV_ISA_EXT_ZIMOP,
+	KVM_RISCV_ISA_EXT_ZCA,
+	KVM_RISCV_ISA_EXT_ZCB,
+	KVM_RISCV_ISA_EXT_ZCD,
+	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index c6ee763422f2..7d47fc910bd9 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -48,6 +48,10 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZBKC),
 	KVM_ISA_EXT_ARR(ZBKX),
 	KVM_ISA_EXT_ARR(ZBS),
+	KVM_ISA_EXT_ARR(ZCA),
+	KVM_ISA_EXT_ARR(ZCB),
+	KVM_ISA_EXT_ARR(ZCD),
+	KVM_ISA_EXT_ARR(ZCF),
 	KVM_ISA_EXT_ARR(ZFA),
 	KVM_ISA_EXT_ARR(ZFH),
 	KVM_ISA_EXT_ARR(ZFHMIN),
@@ -128,6 +132,10 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZBKC:
 	case KVM_RISCV_ISA_EXT_ZBKX:
 	case KVM_RISCV_ISA_EXT_ZBS:
+	case KVM_RISCV_ISA_EXT_ZCA:
+	case KVM_RISCV_ISA_EXT_ZCB:
+	case KVM_RISCV_ISA_EXT_ZCD:
+	case KVM_RISCV_ISA_EXT_ZCF:
 	case KVM_RISCV_ISA_EXT_ZFA:
 	case KVM_RISCV_ISA_EXT_ZFH:
 	case KVM_RISCV_ISA_EXT_ZFHMIN:
-- 
2.43.0


