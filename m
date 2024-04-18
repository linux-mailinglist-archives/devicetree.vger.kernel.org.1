Return-Path: <devicetree+bounces-60553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DE88D8A9A3F
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 14:47:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BE66284106
	for <lists+devicetree@lfdr.de>; Thu, 18 Apr 2024 12:47:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 433FD16C6AF;
	Thu, 18 Apr 2024 12:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RnhoPpNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8155716C434
	for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 12:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713444251; cv=none; b=EtYcxM6XsaN/ZzK/P8mFdCRJOg3BTw7XT790JSfiw6mx274cKn0QvnJZsjKWVwOwxIifvMDRPDfFDfhkl8IDRyrRQyMVZvyI4eGYZXjU9u8iyoXOetH7eYaM9mqd2py3xdFAID1K3my5y6e8XX1geSfwKteoo/hAKmdB7Ajya88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713444251; c=relaxed/simple;
	bh=HQo5r2yUgakVhWXfDWTWm3kBkPmXvDIfNJUSNTdYREQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ifO5ghdySKnn1Wl82TcIWl8VYK0u2qP7//PuuwKgVNbN3GsmEqHjL8BUt24e8AiAWNNGqUd3A7zZXGYB5iUZGtWDJNIPj3Hxjh03ne8fITc9ZSHipBNMNKA7G0AcA0MIlrWTSK1GAPinSOTpoodyFyiTji0vG4kqm0rJQKTEO6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RnhoPpNU; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-346407b8c9aso222981f8f.0
        for <devicetree@vger.kernel.org>; Thu, 18 Apr 2024 05:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713444248; x=1714049048; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FohdVePPG5jzF3AfSRVe1tr20y+8LhH20P3MwlhF1eo=;
        b=RnhoPpNUqhBHSR8Pqozu9LKSydw7+EgkdOPjEmElmd28nd1AlcMnr85Nh5gCwBi89h
         ClOviyZQw+YeFsEz+0rA7BluS8rVY3lgZxNxUeenP1KBlLyqYW9NiqPknbFgfDnbXWhJ
         lJsnOolTeFRIjr5G8qMoNoh7vA//6LI5g0o17bO7IgZBZYmZrDvYe1N8hzE1HiwL8mon
         t5YJ04UWMFZdsSuAN3v5BdVb2bOtFd5HzKa3NkqTBOoGq1szqMlx8UdwBw5Tof41CKau
         UK5Ny5Tu+F1cnjv7YeSaXXkStNo6W0K2FABkV4cbLtds7g1p7USBxEADYHYsLg8t6Vqj
         q0Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713444248; x=1714049048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FohdVePPG5jzF3AfSRVe1tr20y+8LhH20P3MwlhF1eo=;
        b=hxHIXh9vv45V5MFYsEC/Kg8SubK44uo62HwqtmHHOcn3kO9bLX+av3ewui3TT2BeqR
         uvu3zi6IE/DjKJ/Iic1pgJ2Vw0/ibMzkPtKjmbhovt/ItWfMWLuDfazDc+zV7xOJveEo
         yqTpAT7pR+nEpgoUqZN+ZGVtzBVZAWSxJjxoc6T0qz8BiDxs5b3tacIyjZdecmPmWjBy
         d/iUKnDJTO2GwCvO3zFykGEavfmUQj2uZHxjBdSpez3lApRZZDX7i/wWgBAOIaTZQeGI
         OHBKWCttEGqatOlu4HHWf/m458Vapc3qLjqqI6GHzMJbBj466i0/v7c3oXpYctxZ5WIN
         sWmg==
X-Forwarded-Encrypted: i=1; AJvYcCUrINS1yxFzFdi8/8nUo5vNWUEnuU1FGI/+rvgZhqTDpYifIg3ptx3cNWgRTA2udkfTcOeY4lDHXylDM+vRpZgQdFnDYnvbqMBuYA==
X-Gm-Message-State: AOJu0YxXbTWcSbxN5TBkVCMpI/hScLchmU3zphsGuoLwgBq8+E9msO37
	1g9vadxh/PI/VB0Hgbk27x9LpF1ga7yAQPB5CEQSnquNReBkCSh0TlBJtaRvlCs=
X-Google-Smtp-Source: AGHT+IF2De8slGmiEH7R+Sd8JWMFq3iRx3g2xhyGy7kAAvUUYk8LgiIFDjRM+gQKByYDrF2dau+9Wg==
X-Received: by 2002:adf:f984:0:b0:343:f2e0:449c with SMTP id f4-20020adff984000000b00343f2e0449cmr1668881wrr.0.1713444248202;
        Thu, 18 Apr 2024 05:44:08 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7b64:4d1d:16d8:e38b])
        by smtp.gmail.com with ESMTPSA id bi18-20020a05600c3d9200b00418d5b16fa2sm3373412wmb.30.2024.04.18.05.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Apr 2024 05:44:07 -0700 (PDT)
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
Subject: [PATCH v2 11/12] RISC-V: KVM: Allow Zcmop extension for Guest/VM
Date: Thu, 18 Apr 2024 14:42:34 +0200
Message-ID: <20240418124300.1387978-12-cleger@rivosinc.com>
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

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zcmop extension for Guest/VM.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
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


