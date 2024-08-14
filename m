Return-Path: <devicetree+bounces-93540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8A2951663
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 10:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D74A41F23590
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 08:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B05914B082;
	Wed, 14 Aug 2024 08:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="gB2HF9GO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B4E14A609
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 08:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623296; cv=none; b=aNy+43PDQTiwd1KxRd91d+aXxMjLZSPGkluMwMassqJ6GDzGC9i7DsfLM0jSQa9gu+QpzGYMdOIF0OKMrahh9I0O6Pnd0X1KjA4RzYZmpEpkOcvKzfv3Zjp5Lv6p1kS02Q3T1YUfyxMR4lwA4H/YzAG6XWZBqAx+xSgCOFWfLVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623296; c=relaxed/simple;
	bh=FTANMXx9niaisfK+aQOXv+t1NRHVUzMLkPl/sK5KrN4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=HT2G249kDzNWXiaqKJH554teeoYCKmZ43SW2b3C65gscqbYE7H2Qqa79I9ZC8uwr/x5E2iY2R9LUgoYwJPoYzyPlyGZB73n/ezY+yRfuSlWpiAB0kX7qXNLdNHOpHsQTw1DN+xn2KuVWLon38v/QyEjKjv5FHH0LBqdS5UGQWjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=gB2HF9GO; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-1fd66cddd4dso61183635ad.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 01:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1723623294; x=1724228094; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UVeUN5Mn4knmfhlWREJV6zJkPuiqFserRZxouOs1BJI=;
        b=gB2HF9GOgGm9Kf8m4GDS/H/zbwx+2jPgU7aUQ67UV5k9KEz6jJWj67QUvRUV9Jy9wx
         NWLn7Z1HA6H+FNl8Zp0vVvo7kN6wGvPazrthVAnRMDjlq0ccRsVuWAEpODR76S6eevyE
         G6zL7nWjt7Yn5teTyonFNLgTJ0uSxp1K9hDqvMgna2K4m+ost5MDRVSgKal3AMIXL2Ge
         vdn1S6VRqKcgFYnLKlMJ78xDwzrR3m42JRU2ek1mZCxkaC/lYu9mCKYU8yiy1O1tFxjk
         cemYZVEIP0Z949XTDmyyTo5D/4Ov/bLinMJDEfYXwe3ZuUPts2XtirhmKtsccL8z9/8A
         VHKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723623294; x=1724228094;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UVeUN5Mn4knmfhlWREJV6zJkPuiqFserRZxouOs1BJI=;
        b=Hzakpoev7lJBTA2s6frqxKAdX1dAFfOfOTTRxLIyhArtlTwx9aNVxYhrEyMnGpWZ30
         eXtGmgnXXCluKlO1c+EcEX8cuIGHSLX8Q2++5SbmWsmRSiXA6/VpksYBei1lpW86XH8i
         wmOj6GkO7ZN5zkXZURj9jjp+gtoDEKyVNxrWA4yfwUJ6Cg98djnbpw7IlVUPyo+5guCz
         UlrfoXT5TBvKhiCQADow6oTr1eAty2dAG87mJ4/aPOocSLhTsKgT2ZhiRZ+CYIeprzWS
         +Go6u0uOKl9GH7zA3UwnRFaZUNb3iOjd2Kl5yvMoMHtG889FM6SgaWFrQ/JgmLZ0fQb2
         Fxyg==
X-Gm-Message-State: AOJu0YzAqyvFPtFJAkhub+5dxD38mLaWN/njLdGUIlMhF/OgPN5GGdil
	fCke7qTba67H47//Xb7eGT+dLBaVF23nNTBjr3MsT6hREEwQo3IPaqIihuao+WA=
X-Google-Smtp-Source: AGHT+IHNro3gb81z53doED5Gyylpj3OG2ixdFIltK+ZKy21Y3ei4xESkqvArh3W2F6ZIrtmsUyCvrQ==
X-Received: by 2002:a17:903:22c4:b0:1fc:6c23:8a3b with SMTP id d9443c01a7336-201d63abd21mr31984405ad.17.1723623294220;
        Wed, 14 Aug 2024 01:14:54 -0700 (PDT)
Received: from sw06.internal.sifive.com ([4.53.31.132])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201cd147ec4sm24868335ad.85.2024.08.14.01.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2024 01:14:53 -0700 (PDT)
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
Subject: [PATCH v3 09/10] RISC-V: KVM: Allow Smnpm and Ssnpm extensions for guests
Date: Wed, 14 Aug 2024 01:13:36 -0700
Message-ID: <20240814081437.956855-10-samuel.holland@sifive.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20240814081437.956855-1-samuel.holland@sifive.com>
References: <20240814081437.956855-1-samuel.holland@sifive.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The interface for controlling pointer masking in VS-mode is henvcfg.PMM,
which is part of the Ssnpm extension, even though pointer masking in
HS-mode is provided by the Smnpm extension. As a result, emulating Smnpm
in the guest requires (only) Ssnpm on the host.

Since the guest configures Smnpm through the SBI Firmware Features
interface, the extension can be disabled by failing the SBI call. Ssnpm
cannot be disabled without intercepting writes to the senvcfg CSR.

Signed-off-by: Samuel Holland <samuel.holland@sifive.com>
---

(no changes since v2)

Changes in v2:
 - New patch for v2

 arch/riscv/include/uapi/asm/kvm.h | 2 ++
 arch/riscv/kvm/vcpu_onereg.c      | 3 +++
 2 files changed, 5 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e97db3296456..4f24201376b1 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -175,6 +175,8 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_ZCMOP,
 	KVM_RISCV_ISA_EXT_ZAWRS,
+	KVM_RISCV_ISA_EXT_SMNPM,
+	KVM_RISCV_ISA_EXT_SSNPM,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index b319c4c13c54..6f833ec2344a 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -34,9 +34,11 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	[KVM_RISCV_ISA_EXT_M] = RISCV_ISA_EXT_m,
 	[KVM_RISCV_ISA_EXT_V] = RISCV_ISA_EXT_v,
 	/* Multi letter extensions (alphabetically sorted) */
+	[KVM_RISCV_ISA_EXT_SMNPM] = RISCV_ISA_EXT_SSNPM,
 	KVM_ISA_EXT_ARR(SMSTATEEN),
 	KVM_ISA_EXT_ARR(SSAIA),
 	KVM_ISA_EXT_ARR(SSCOFPMF),
+	KVM_ISA_EXT_ARR(SSNPM),
 	KVM_ISA_EXT_ARR(SSTC),
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
@@ -129,6 +131,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_M:
 	/* There is not architectural config bit to disable sscofpmf completely */
 	case KVM_RISCV_ISA_EXT_SSCOFPMF:
+	case KVM_RISCV_ISA_EXT_SSNPM:
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
-- 
2.45.1


