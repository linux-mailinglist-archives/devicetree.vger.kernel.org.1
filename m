Return-Path: <devicetree+bounces-77551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9993790F28C
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 17:44:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 26847280E05
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 15:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34AD159911;
	Wed, 19 Jun 2024 15:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="ITXwbOxC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F0D158D8E
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 15:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718811678; cv=none; b=tzYujhU/jvAi0Ywie2uY9U8AUQx0VULBxjLcwDY0xLKiHAVJDCqJgFUCb1dFDIRSviFf/QAeFGATu9fPDTnIypHoou6vkus1jatYNsO0iK1Cn0k36+J1SyBaX2fJ0Wj/LjHZRkmCGqKwVl1WmMzGhVyNp6bSCSu1MoRtmXsUPxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718811678; c=relaxed/simple;
	bh=PUHPKWr8I/6+131J+8evnCxuO40u+RR6EnTMsNxyuZM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rJBZpGmF7VES/mZDqn8EXjJanC6JbiKGKQ/BpdnY19nhw4GTxVePRAIU9eI9wJLgkl23YLi2xCcBP0Ul5/Ur0cjRe74BkYxY3ug01dB+E8D1qUcQI7PsKAiGfzijvtQASnl2L8E3/pE2Wp7e9cOJl70zFr7tQ8Yb4vXHPi+uav8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=ITXwbOxC; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42111cf1ca1so4896435e9.3
        for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 08:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1718811675; x=1719416475; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6obIhMCgJtCMV7DNAB1Eq7WrI+7/yuJDuJixMHQfyjs=;
        b=ITXwbOxC+NnuK/p5lBEBaSn/UosRKsEm3+R2jXM9GJ1bJ4AqGns/m45DaqUSNXWA7n
         vbe34os2CKzyPgUGr6iD1t60wgygSVaZEZZKGFbUhLSu1j6lVdBp9SY2u+3xkh8n0fKe
         FIMl5Y8+KK4bBpseWKXTD9b1+QvJAZ4XWpWsl7coDtFbBdl541ttJY5Gsrpce9yfGQee
         boLIbeUOsPqQfeBdfgt/1CkW3Cp4O1um4uB1pPRgzSPhJbutQLp7Hem203R/Ks4trG7Z
         sa4cZ7LHro2Z5yvUpZIsXOnwjHZvyZIRVXSHVKp6q7HTucXh70mCoKgK59T/0DJ9DrtM
         aYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718811675; x=1719416475;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6obIhMCgJtCMV7DNAB1Eq7WrI+7/yuJDuJixMHQfyjs=;
        b=j013deu1B3AlWlI0C8jHlNBrX4VkW9DixhR4jqRm20k5OdJSLQqnoQdqaNzrr5pPJU
         zQNjD7b8O+BqJxi1y0rEWKZWA8yReKX74s4AiGR7oNfYULdQjezn9oKlHX0Hq2CwvhlZ
         MjuyYD9G8UzxmjrKolBr1lNYMSVCt3Rp3ZWZMabC7ovmZU4pCGm6ovR1qdNwai5V6yzV
         Nma4VMCwDI+vsNsAUCydACa3xDhXGgJpx4ussKemlFzLbYd7UnzcbYJvSM/kgufbtWFL
         16T1teEeLNx7RVBOCc6/ApFox4KeBGRr/XxW6w+6Xj2VWaHLz9wxerNnyi1Erfwm7Irv
         G4/A==
X-Forwarded-Encrypted: i=1; AJvYcCW3BkLlZ0LjAwtmfyXkfOXeqXzAnQNVHq1bnhOjCYQxc/THvGG3IEDXcuZv6wkOYklDaZdHYOgRVyrHL2G09IJYJJyujLGBlHDJaA==
X-Gm-Message-State: AOJu0Yzb16Vlv92bnBsGN/nvQMm6keiQDsYvPgjdsNn/CvYIJ7QPBYHw
	i4r6XDVtSPY8QttvDtrFe6RepwmZ4Xdtxkzilq8tkUvfXl0Jm3rP1DeS+J8Noqk=
X-Google-Smtp-Source: AGHT+IEsiGCR06DYSznwuNGZ/RtWasKc+Sn+mfD0wbhYFJwAh2e2fAjrUA7ukaEqVJFeFkb/5sRZzQ==
X-Received: by 2002:a05:6000:18a2:b0:360:872b:7e03 with SMTP id ffacd0b85a97d-36313fd733dmr2801721f8f.0.1718811674851;
        Wed, 19 Jun 2024 08:41:14 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:819d:b9d2:9c2:3b7a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3607509c785sm17392292f8f.34.2024.06.19.08.41.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Jun 2024 08:41:14 -0700 (PDT)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Anup Patel <anup@brainfault.org>,
	Shuah Khan <shuah@kernel.org>,
	Atish Patra <atishp@atishpatra.org>
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org
Subject: [PATCH 4/5] RISC-V: KVM: Allow Zaamo/Zalrsc extensions for Guest/VM
Date: Wed, 19 Jun 2024 17:39:11 +0200
Message-ID: <20240619153913.867263-5-cleger@rivosinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240619153913.867263-1-cleger@rivosinc.com>
References: <20240619153913.867263-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zaamo/Zalrsc extensions for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 2 ++
 arch/riscv/kvm/vcpu_onereg.c      | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index a6215634df7c..f10c6e133d4d 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -174,6 +174,8 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZCD,
 	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_ZCMOP,
+	KVM_RISCV_ISA_EXT_ZAAMO,
+	KVM_RISCV_ISA_EXT_ZALRSC,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index fa5ee544bc69..0972a997beca 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -41,7 +41,9 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
 	KVM_ISA_EXT_ARR(SVPBMT),
+	KVM_ISA_EXT_ARR(ZAAMO),
 	KVM_ISA_EXT_ARR(ZACAS),
+	KVM_ISA_EXT_ARR(ZALRSC),
 	KVM_ISA_EXT_ARR(ZBA),
 	KVM_ISA_EXT_ARR(ZBB),
 	KVM_ISA_EXT_ARR(ZBC),
@@ -131,7 +133,9 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_SSTC:
 	case KVM_RISCV_ISA_EXT_SVINVAL:
 	case KVM_RISCV_ISA_EXT_SVNAPOT:
+	case KVM_RISCV_ISA_EXT_ZAAMO:
 	case KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_RISCV_ISA_EXT_ZALRSC:
 	case KVM_RISCV_ISA_EXT_ZBA:
 	case KVM_RISCV_ISA_EXT_ZBB:
 	case KVM_RISCV_ISA_EXT_ZBC:
-- 
2.45.2


