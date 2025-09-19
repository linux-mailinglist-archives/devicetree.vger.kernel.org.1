Return-Path: <devicetree+bounces-219164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3283FB88412
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 09:49:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CDF32B62ED4
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 07:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69F481F7580;
	Fri, 19 Sep 2025 07:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="e6xEdJut"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F4D2D2395
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 07:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758267524; cv=none; b=X/fSwmGeMlaTUxg9KT37upGZZr8HEBkoJcTBJuKEwtIMTcm0iXRKHu4TlkKhEorO3Yv3F/H7mKDysuMiTtQRomOGY6tYLVYdmX7kdwlNDGlIa2dtyKq+rVRQEVd3uZU3Cns3BwQa2mqkgZJjpdFtiJIQnhZyCU4Dy0FKULMdqGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758267524; c=relaxed/simple;
	bh=B02ziWQmo5WsV+VWudXschLhIhlEAVaMv4vSaAYkoAo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ugz92K6QLQiDOKxUccl59zxsXJCZOhxV/A6EqVgcKrj7BCSm11XqY9/FllKe4nhH584X/lmHpd7mRq0Sj77yIUAF1cflOzzHl3wuj+/XHsJmvevpmeZWLfBrTKyCigwCJGgvMxL1r67upBnaq9nSOsSlUVV6yg3hpUdzjdCUiLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=e6xEdJut; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-77dedf198d4so1381076b3a.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 00:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1758267522; x=1758872322; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nvb+N79+1rz+7OJYvNB/1WfSxRwqST+oSw7w/swSoZg=;
        b=e6xEdJutovv8vBWj0Z1OT1M/IjgwrYJQZaoDRwF4mExF/p3dQ1m30MsX1DK3o1Fip6
         Xj3d2436SVMVXkMkpsQag16ghFVSs7Y4CAxmi1KDRxEz5g769CJR3qhU09cUhVNOU23O
         cgbjf7E7dTGVIAGFm2EdYD8UMG+XI0CkT18iLrUdX4gH1Oy5cXi17keS1bij4eVUOGYH
         T72oAo0/FseOHnapMIAcJXEnkEQBoUyq2+gLxYvWVQda2rZK6fzoiCbaFDqDZl1hvCPl
         Ei1Qw6jhdxBCvYWtPTY5rSftB+bNWl9OukGZUiEKEBskQH570v/+bTdAAf8W3wn0l/yo
         DwLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758267522; x=1758872322;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nvb+N79+1rz+7OJYvNB/1WfSxRwqST+oSw7w/swSoZg=;
        b=WiWEXaAsx9ZIoNsuHm432Ix1ZjZn2kk927HjVdUOoc6nLr75mwyinOYfoi+s3TrHo4
         8At/okIrEm9YaEb9IMw6pa2/X9VqfXtwIjQbXMnIhaU4HyktRdJdROY8kdPz9PdNPejg
         PiQgYtNMz0RB5DDxN8EukuO7VNEnkzF6ahUwRH/HIEWFJjpyqOnIE/9PkRrDVp760Tpo
         sAxf+j2kLCX950wiU+PdRvVmOZ6DlnWS3Vfi0fNRjKH9eLMNH5OD0A8dhUAc7nWIEvCe
         P9rGs0YVt8xalkmkgLjsJVta2qu3oSfyamymLKUUTKpSXGRue32tcXgNsnODujEl1QtL
         iBIw==
X-Gm-Message-State: AOJu0Ywh6WCK4DyMXhmWiZ8qUdu+Gbfcdr3yR49ldh1pcgGq0iFXUBdx
	WWPA0N/VgDM+AbjmrSw2GVkT4+q9KD+KBlEZMHuhE9hGTfKWH3MgDa4JQWTqCY5tXT8=
X-Gm-Gg: ASbGncuonw0GqZQC1j744ClOEiRpA+9dyuQWpN9TxpMeEzWXT2HL0Kx5oqlhGs65owi
	NVtzmPjCtOvmMTf2x4TI4227184IQyP9QR3mkmSvgE4lYL7ajZRHAThQz/M1tGpLe1T8DAFP3PE
	2hrKt+3ojtA65RvNW30g3KzTH1eSRLQm6QxG0SOSC2tRwQd/anA0NzPco5osoH4uUQXHHW5pxru
	Wz+WmjkvEZ2r7CpaMZl2dKy23Y5SA9b5cpdyOxr4bozt+6OpFSMidGsjONnzbQ88CYTGICOiY0d
	c7UTzkrDAouWFGO6a2KiwBt+R1dHIGw4OVRN2RWEQR61PJZuTLn4aSGgdyuJTL2RL/XQ1KXCZFi
	GtLolVA3CVVl9tBK0VvD+1jss+0NWRSqWl2vZrdrs1G7M+6ZBnhhTPq2R/EwidsgZOsG1FPcVkf
	sqZ54H7S6xJ5RLxYYjCDhzpi4+C1qx0C5Ax5EhM0fbUA==
X-Google-Smtp-Source: AGHT+IG/JWbqV8e1pPBSIjwkXI4z09a5l0oBx141z64CDaoUW0Ejq4ZhQwv8kxbRs5Suvs4P3rGR7g==
X-Received: by 2002:a05:6a20:549d:b0:250:b053:53c5 with SMTP id adf61e73a8af0-2927405e4c0mr3586688637.51.1758267521877;
        Fri, 19 Sep 2025 00:38:41 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.57])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b550fd7ebc7sm2679096a12.19.2025.09.19.00.38.31
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Fri, 19 Sep 2025 00:38:41 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: corbet@lwn.net,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	will@kernel.org,
	peterz@infradead.org,
	boqun.feng@gmail.com,
	mark.rutland@arm.com,
	parri.andrea@gmail.com,
	ajones@ventanamicro.com,
	brs@rivosinc.com,
	anup@brainfault.org,
	atish.patra@linux.dev,
	pbonzini@redhat.com,
	shuah@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	linux-doc@vger.kernel.org,
	kvm@vger.kernel.org,
	kvm-riscv@lists.infradead.org,
	linux-kselftest@vger.kernel.org,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH v3 7/8] RISC-V: KVM: Allow Zalasr extensions for Guest/VM
Date: Fri, 19 Sep 2025 15:37:13 +0800
Message-ID: <20250919073714.83063-8-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250919073714.83063-1-luxu.kernel@bytedance.com>
References: <20250919073714.83063-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Extend the KVM ISA extension ONE_REG interface to allow KVM user space
to detect and enable Zalasr extensions for Guest/VM.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index ef27d4289da11..4fbc32ef888fa 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -185,6 +185,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZICCRSE,
 	KVM_RISCV_ISA_EXT_ZAAMO,
 	KVM_RISCV_ISA_EXT_ZALRSC,
+	KVM_RISCV_ISA_EXT_ZALASR,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index cce6a38ea54f2..6ae5f9859f25b 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -50,6 +50,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(ZAAMO),
 	KVM_ISA_EXT_ARR(ZABHA),
 	KVM_ISA_EXT_ARR(ZACAS),
+	KVM_ISA_EXT_ARR(ZALASR),
 	KVM_ISA_EXT_ARR(ZALRSC),
 	KVM_ISA_EXT_ARR(ZAWRS),
 	KVM_ISA_EXT_ARR(ZBA),
@@ -184,6 +185,7 @@ static bool kvm_riscv_vcpu_isa_disable_allowed(unsigned long ext)
 	case KVM_RISCV_ISA_EXT_ZAAMO:
 	case KVM_RISCV_ISA_EXT_ZABHA:
 	case KVM_RISCV_ISA_EXT_ZACAS:
+	case KVM_RISCV_ISA_EXT_ZALASR:
 	case KVM_RISCV_ISA_EXT_ZALRSC:
 	case KVM_RISCV_ISA_EXT_ZAWRS:
 	case KVM_RISCV_ISA_EXT_ZBA:
-- 
2.20.1


