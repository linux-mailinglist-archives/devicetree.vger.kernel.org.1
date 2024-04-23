Return-Path: <devicetree+bounces-61862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F068AE6B7
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:46:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 84ABB282063
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 271C913B2BD;
	Tue, 23 Apr 2024 12:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="c0XJltOj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD334137C5C
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876236; cv=none; b=jLVhL5xPNUm9fmy7nInrIU17HV1PdMgrFL4KZ6w+dJI874dsZvAX40rgkKVszpScbjTOYowQ3Bqo3atmwxnfBcJgmAppBMqfpkgo8W8PnlD6pgUOOt9eLESjgepVHzjkbstt1as47nj+Smt8sDIY4USGdZRcqm+NxE1H3YfR2h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876236; c=relaxed/simple;
	bh=a0XzsdggPUj0Ja28kYjSZ2eAp6PAvvyuna/HjP+bSA0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Uh0Fz2L4sJ/f7zplfMymZ3gcVNdUiRCDkfHpasLVL7Zi+cBAdgqSMSBqrhaomQOL1SlBAUh4bn/TjW2dh5R3D6bIFEhgSR/oa1RrkjFzyaoNZyTuNY+O1N0wa6Ko9PJ2q7et+0kNoHiKelm2x1iZvo4WWttcw5iaRZYBEbEY1ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=c0XJltOj; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-347c6d6fc02so875608f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713876232; x=1714481032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GCiDEygHIpDe3Ww8uIgQjb2MclVWFXcZkaD66mBe1pc=;
        b=c0XJltOjiNF57/b+YdDEOIGt4isxWKV7BV1IoApSsRcpNWY86kZV/VygOxWAyB84j8
         ZTMKTaN5gtrvhH/+1CbR66Il1a1Z9vWoCEAZEqYgwxsEJLHgyFWV+jtcC8mtvWV1jk7r
         0KiVugH8UiGRIYxtPvfBf+/B/v/GSwvf0o354DuroONxu+k01hX4IWDtIMB8MddqKieD
         PP7LRF3WzfJ+tx/yHAZcZWHekpnL08XTsIps85/ZWA55DptlHhloyDWIsDbHiZ75+UEr
         uoiyBUQ/UxODKLAKol5tZulk6YZ3q2sZQmfnoTnAkFqPBxcZJ10xBBjSF6ziHrq40JlN
         dwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713876232; x=1714481032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GCiDEygHIpDe3Ww8uIgQjb2MclVWFXcZkaD66mBe1pc=;
        b=NqH9UfP2Mx0oVXwwANbV46yqIZv2/3tVzHpF+rM6wNZBjMm4+PJH9+xT4epYKUGULs
         156YME3Mxs7B8rcEBB7WLFnq+H4zrFQbrZSUIc7naMB/za1F/BUklc3RSLDsjmLur5N2
         87+MdW8iylLKDUze02yU5YABiQ1N0F9Bvfbh14K1pAnhc0nU7TiUlZ1dbGY4MrQnkRAt
         HEbBgA9DwZctXQvjUWTj2+ZiAokJiijXDK9i+JtgtvnTW5R6b/1pRU2JyK4BHSHuDR+g
         Wp09CCnibEIzPLw621EZ6tXtwZAvX35stbntOujLoH+KYVa7L2/C+dNFWYoz+UYjGy8x
         QLeA==
X-Forwarded-Encrypted: i=1; AJvYcCUgX+eWtnExD1ygSZufuC9dvXF6tYqxJfZ7YwzDwEFTxAruDoQ5CMoEVw7YK6Yj+6tnCCb/d51u/Itp4/4vuWdRCrqr/vULp/vS0Q==
X-Gm-Message-State: AOJu0YyMpCKjx0XpGQCSHcwibHEl/0zO+BmnYucF98PJt78g0kuerOM4
	7idCkMWEAQ/zbXK0MvpxSTl3oqZN5d943PbALTIgxLK+6iPvHU4KrESxAwy83DQ=
X-Google-Smtp-Source: AGHT+IG8Y0QuKdCdamw6m12y/zyBhHBAXQlGn8wgQVKcyAjav27SlxD5OClQSLzPK55ylnTNKzC2Ow==
X-Received: by 2002:a05:600c:3d95:b0:41a:c4fe:b0a5 with SMTP id bi21-20020a05600c3d9500b0041ac4feb0a5mr958105wmb.4.1713876232338;
        Tue, 23 Apr 2024 05:43:52 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:71cb:1f75:7053:849c])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b00418a386c059sm19975709wmo.42.2024.04.23.05.43.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 05:43:51 -0700 (PDT)
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
Subject: [PATCH v3 10/11] RISC-V: KVM: Allow Zcmop extension for Guest/VM
Date: Tue, 23 Apr 2024 14:43:24 +0200
Message-ID: <20240423124326.2532796-11-cleger@rivosinc.com>
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

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zcmop extension for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index 57db3fea679f..0366389a0bae 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -172,6 +172,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZCB,
 	KVM_RISCV_ISA_EXT_ZCD,
 	KVM_RISCV_ISA_EXT_ZCF,
+	KVM_RISCV_ISA_EXT_ZCMOP,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index a2747a6dbdb6..77a0d337faeb 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -52,6 +52,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZCB),
 	KVM_ISA_EXT_ARR(ZCD),
 	KVM_ISA_EXT_ARR(ZCF),
+	KVM_ISA_EXT_ARR(ZCMOP),
 	KVM_ISA_EXT_ARR(ZFA),
 	KVM_ISA_EXT_ARR(ZFH),
 	KVM_ISA_EXT_ARR(ZFHMIN),
@@ -136,6 +137,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZCB:
 	case KVM_RISCV_ISA_EXT_ZCD:
 	case KVM_RISCV_ISA_EXT_ZCF:
+	case KVM_RISCV_ISA_EXT_ZCMOP:
 	case KVM_RISCV_ISA_EXT_ZFA:
 	case KVM_RISCV_ISA_EXT_ZFH:
 	case KVM_RISCV_ISA_EXT_ZFHMIN:
-- 
2.43.0


