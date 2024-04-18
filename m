Return-Path: <devicetree+bounces-60549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C49CA8A9A2E
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A01421F21556
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:46:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB742168AF7;
	Thu, 18 Apr 2024 12:44:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="yDPVXlo+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FE4161933
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444247; cv=none; b=DBVhMKsVyIMR5waInni23WwF2xc2Eqcgof4HS4ufY7UwBUNvwOHNIhawDFyKVPnTLqDdDYspaybK4UhdUkdXKUavJ2b27eR5qii3e6xcofjfxzi+tp14uBgtZmEGjf+FhTygnSDmstjP2uYOuTZikAu3S/Dmmb2YbN6B12lGNJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444247; c=relaxed/simple;
	bh=bL0yXhZgH/0/PkNBvTy00J8zOdW+K5v1x8a4cTFvpqY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NgdW8arugvYgjwRzZ+m24FpT/Yky4Vwof7Aw0rsCZmUGBIZWopIeY4YWewVDQtKFcfXpa67oafpuR45KZeYZAU0ANjGKVLfUSm1kvMcnvUMfj7pSGO6Le8lMjrOiT9krRXFQiWdSmm7qHT4vO0nPVIGJ6iaCfrwfPJUOeXFLJaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=yDPVXlo+; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5191b84d6d7so175366e87.3
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444242; x=1714049042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3Bj6qFEBTQkW22oNb4zguAXGn3Gn0KYF9aSmL0IcZwU=;
        b=yDPVXlo+IlZr9x0GnNrj3vFUht45Vt286kbispw10Y2LgqWe0fz3wnelALFu85g5jU
         8SM+vkzsv3qOzvV5MjBrW9PrVlXzaZ1sDLw3GkzGcrm6Gi6D5QlAM88S5CeV+VjPwf3H
         VlY8Hv4z5itp3FWM2pIgKdEy/D0FVoz2hfH7gy80KM19A9+MYh26/Qknt18RXzdYQ6v7
         XRWNs8dzDjlzqKvPNjCGt5b5bN25tlxSYjAmuwO4TDiIDI4zu5rSAf2Yn8tItz0r6Jy4
         s8IvysSehJEBuzlWCn1kMIcmnP4d4BoUroE3kJoOPZx28AAiL43qc9ddeBUvQkI59wiI
         wWow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444242; x=1714049042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Bj6qFEBTQkW22oNb4zguAXGn3Gn0KYF9aSmL0IcZwU=;
        b=JqaAx5kuweNthkjW5Hags41tYf7EHjZeVEI4YutNfF35+lyJLX/L0r/dYhU9b5mdHl
         FUTJehZaC2iosiPM7fXfTRJrJlpXeNoQ/k8NsiPOFxH0qvMBsncGP+vx5CNgb1LJ9z6y
         5dxY58zUJBM6b7sc4mXM6DCqhqTFrx/isnaWd/cSajeMA0Mb0TfzFrAqQNMlLCd4hjSZ
         uGeCBxm00JkLNQBnQzBB/bmXLg3vGNXEUaE2x9/lv21rpfsTv77H15YrD2JfacqhvZ/2
         2+/2q6RRrpUOYlC2RxCs5ib247fAzVLs+kaO0L0Olr7JKe67dQFVQVroXV88PzKZYr6n
         6adg==
X-Forwarded-Encrypted: i=1; AJvYcCWAjT78lqLKPp3TBaU5VT5f0OX/VIFE5Or/RhP362J4w5HsKuWye0ibqXRudLMKepRDGMFiyZr6F2WIJ+5tLgYqDDkueMXGUH0XgA==
X-Gm-Message-State: AOJu0YxGHLtRbgAPLuW1oz7jOtKdxyXtKqiOdLs1KCoazXnhu/uktH86
	v5an6l36nRIOZZiw+2v5QIZBQ0gDHjv7Y4kEQGb8fWmS0pZQtherRtOk2ao1zTM=
X-Google-Smtp-Source: AGHT+IGuPTx5xyQ5D84Wxe16Njbe8/Zc2rt6PLP6jz46BTrSDooOvgKGDoT7RA33/hfmMjVJRZ9Clg==
X-Received: by 2002:a2e:7314:0:b0:2da:590:db77 with SMTP id o20-20020a2e7314000000b002da0590db77mr1413729ljc.0.1713444242557;
        Thu, 18 Apr 2024 05:44:02 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.44.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:44:01 -0700 (PDT)
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
Subject: [PATCH v2 07/12] KVM: riscv: selftests: Add some Zc* extensions to get-reg-list test
Date: Thu, 18 Apr 2024 14:42:30 +0200
Message-ID: <20240418124300.1387978-8-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240418124300.1387978-1-cleger@rivosinc.com>
References: <20240418124300.1387978-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The KVM RISC-V allows Zca, Zcf, Zcd and Zcb extensions for Guest/VM so
add these extensions to get-reg-list test.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 40107bb61975..61cad4514197 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -55,6 +55,10 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBKC:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBKX:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZBS:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCA:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCB:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCD:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCF:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFH:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFHMIN:
@@ -421,6 +425,10 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(ZBKC),
 		KVM_ISA_EXT_ARR(ZBKX),
 		KVM_ISA_EXT_ARR(ZBS),
+		KVM_ISA_EXT_ARR(ZCA),
+		KVM_ISA_EXT_ARR(ZCB),
+		KVM_ISA_EXT_ARR(ZCD),
+		KVM_ISA_EXT_ARR(ZCF),
 		KVM_ISA_EXT_ARR(ZFA),
 		KVM_ISA_EXT_ARR(ZFH),
 		KVM_ISA_EXT_ARR(ZFHMIN),
@@ -945,6 +953,10 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zbkb, ZBKB);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbkc, ZBKC);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbkx, ZBKX);
 KVM_ISA_EXT_SIMPLE_CONFIG(zbs, ZBS);
+KVM_ISA_EXT_SIMPLE_CONFIG(zca, ZCA),
+KVM_ISA_EXT_SIMPLE_CONFIG(zcb, ZCB),
+KVM_ISA_EXT_SIMPLE_CONFIG(zcd, ZCD),
+KVM_ISA_EXT_SIMPLE_CONFIG(zcf, ZCF),
 KVM_ISA_EXT_SIMPLE_CONFIG(zfa, ZFA);
 KVM_ISA_EXT_SIMPLE_CONFIG(zfh, ZFH);
 KVM_ISA_EXT_SIMPLE_CONFIG(zfhmin, ZFHMIN);
@@ -1001,6 +1013,10 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_zbkc,
 	&config_zbkx,
 	&config_zbs,
+	&config_zca,
+	&config_zcb,
+	&config_zcd,
+	&config_zcf,
 	&config_zfa,
 	&config_zfh,
 	&config_zfhmin,
-- 
2.43.0


