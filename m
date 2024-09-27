Return-Path: <devicetree+bounces-105952-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4F3988672
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 15:43:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0E56A282559
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2024 13:43:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6FB1A2622;
	Fri, 27 Sep 2024 13:42:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="RiPPPy3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A83501A256A
	for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 13:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727444525; cv=none; b=rlbyQ8w5vvfPKlD8x7M3EW8IkuCeLPqDbxF+9Z9Tcq80k5brcuosF6eXXz+c/3DRCrMLAjOOGQczjO045Q/GZWqcoZ39ybDmqZ2AEWA1sbr8xoKMrobCt6IT+rJMIcI820e2Smcqm353ipZiVVEFqdwWEkwl4MOqRe3R7E+tvGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727444525; c=relaxed/simple;
	bh=H2dmJr8hpjnnkdgnm3AAwF3pNuKwnFfGeFFtmmrBeZo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oX/v0z6Rd5wCCO2Cx98/3l8zgk0rV6ZD7V6Im/wYo0oXxG/G9VdvNy3h7QpE5DNPVYc0DZGLmVTZ55NzdXvXPQLVM7RbAFraNJPRkOPfgJqUovw0AWvSslxpwjMa2oado5ymC+MOpnkY//lPNoeGeZ45h7bKVDO8kZpHsBtOwfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=RiPPPy3e; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2e0aded661bso1277653a91.1
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2024 06:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1727444523; x=1728049323; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=56knnfie3gn40U1586qIcyfLVXwVK5l1OK1pmMi2fA0=;
        b=RiPPPy3e7er9AG/nnJPyInAtHxWhP1MqaXADw5rNmVSgfXvj8OtvIRatCFr6DmTmT7
         tlUew8XZEaC13aBbTQ3Y92M2NJCGYUJhgrzrZXwLV6Ah9CAmy+BRhJrTCaQLY2He4iMm
         yejZ+XamQ3dEMsIUO0v102xZOiLLcnRvA2IHpJ5kZRPVI+R72BDb6Nuk/P5Lmr9aq3JZ
         HiOEs9vf3sYODWNXQBzSSV+1IJ+oHMETxSNYb5EQhaLEHvSR4+rl4gLEu8ASS9B6VVlz
         XDTzX7+SKuhvLK/tHhYyk1lwG3qQt5ditzAk2G4eihja77EcevjmGIMDg71vc3oOqY4+
         ooPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727444523; x=1728049323;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=56knnfie3gn40U1586qIcyfLVXwVK5l1OK1pmMi2fA0=;
        b=AtT12lS5B1/0JUubHZu14slnrB7zt98ZmDkQer7yUVqgjWHfEMw4iapVAGlEDGS7MK
         8264OIkobxWJbLlF3UAfnwyTR3y/+idMyW88c3IVyUM+YFtcuXoPdy/XKSG6uXqMUu2S
         BIUkDnlNXFIaUFkjFiZEra0Un8I2noySvcDXcpv43G5sdiCkMUXiWeseAFWyLaOfgdEF
         L2JblxC5WCL5Qoy81f/fbMo0Uhce1cVmv7rRy6enzRukL1Vo7/IgcNqjlHm/PFqkg0vU
         zl9UIRiQHLQcioZOzZx/lCMlKDZahR48hWddkCOdwbDIrFYeuFXz7xkyMDDSHvNh0ZZP
         UXrA==
X-Forwarded-Encrypted: i=1; AJvYcCUyv9ZVLQeoFBKTL807p6YQhEZXq+A74CwY8MQrYMm6kpSaYclw77TUl2Mj5nvdyx2ZP3OaSZda1FyO@vger.kernel.org
X-Gm-Message-State: AOJu0YxsW4d3iK/FizpZSFnGIbPqE2vjj4IO4w8IpNx3Ax68zpaU/Fnj
	EmWe/WGX1k4OByKCFG1rAL2gu/amcJ3Cc+/SCKDTf8HbWnmsLXgKGTjeAAvUXsY=
X-Google-Smtp-Source: AGHT+IFAiXTjj4TZ3kp+6fPZNVMd2h0GQFQYj+mo8f4vBV/6UxIuO5XyJQRkw50Ed8t2tppm8wUAmQ==
X-Received: by 2002:a17:90b:108d:b0:2d8:a744:a820 with SMTP id 98e67ed59e1d1-2e0b8ed0deamr3681576a91.36.1727444522814;
        Fri, 27 Sep 2024 06:42:02 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e06e16d6d2sm5671744a91.2.2024.09.27.06.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Sep 2024 06:42:02 -0700 (PDT)
From: Max Hsu <max.hsu@sifive.com>
Date: Fri, 27 Sep 2024 21:41:45 +0800
Subject: [PATCH RFC v2 3/3] riscv: KVM: Add Svukte extension support for
 Guest/VM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240927-dev-maxh-svukte-rebase-2-v2-3-9afe57c33aee@sifive.com>
References: <20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com>
In-Reply-To: <20240927-dev-maxh-svukte-rebase-2-v2-0-9afe57c33aee@sifive.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>
Cc: Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kvm@vger.kernel.org, kvm-riscv@lists.infradead.org, 
 Max Hsu <max.hsu@sifive.com>, Samuel Holland <samuel.holland@sifive.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1319; i=max.hsu@sifive.com;
 h=from:subject:message-id; bh=H2dmJr8hpjnnkdgnm3AAwF3pNuKwnFfGeFFtmmrBeZo=;
 b=owEB7QES/pANAwAKAdID/Z0HeUC9AcsmYgBm9rYes4sJwaW1iTmWxKG3SLRJr5Z3fDOKp/nPP
 r1gPAYhIkqJAbMEAAEKAB0WIQTqXmcbOhS2KZE9X2jSA/2dB3lAvQUCZva2HgAKCRDSA/2dB3lA
 vZKLDACjqALjcui0yixfAk8cbQoV1qFAyPq+nTRdcdPTXxLhILdaqfUlPv9CLYgqa7eAaH552UC
 NiUQhYWFy8tMiCIXlrWxyd0Iqb6MA0pWfK4theLS387K53ksc+zOqyi6CTn577rOnPSQwj8fyQp
 R7ZHBbhrmhVX/5utgfHYq5/fBZidQZ1TQ3IpZAHhnvZnPyIU+UK6VmYWvX6nV07vWdrKav38cdE
 KhFePJCjH8+PlBFcZ0MiT+aNLuuDXR/XThWVMmKYFWbHsNid8CpsT3RiLQ0L2xts5+CNcCj5RYR
 ghY8YIOYAo0G1DnOFuHzScYZJR3o8kDOyjN8IC1MoC8Ij1Jr3lssqox+LO6DpcW1AntxX6MBxdv
 eRYh5zaGEUxNPyM/02zDRaeWP7ALiEW/0AQDcE8nftpjJW9HHTTxYrlqa4r8ZanX1BDbf+tRdvc
 X1j6INMFoYcTVCW0n07gCVQbEQsERGTori81rVtD3yyrzMZwJypmrcXisQIa2KzG/NN+I=
X-Developer-Key: i=max.hsu@sifive.com; a=openpgp;
 fpr=EA5E671B3A14B629913D5F68D203FD9D077940BD

Add KVM ISA extension ONE_REG interface to allow VMM tools to
detect and enable Svukte extension for Guest/VM.

Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
Signed-off-by: Max Hsu <max.hsu@sifive.com>
---
 arch/riscv/include/uapi/asm/kvm.h | 1 +
 arch/riscv/kvm/vcpu_onereg.c      | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/uapi/asm/kvm.h b/arch/riscv/include/uapi/asm/kvm.h
index e97db3296456e19f79ca02e4c4f70ae1b4abb48b..41b466b7ffaec421e8389d3f5b178580091a2c98 100644
--- a/arch/riscv/include/uapi/asm/kvm.h
+++ b/arch/riscv/include/uapi/asm/kvm.h
@@ -175,6 +175,7 @@ enum KVM_RISCV_ISA_EXT_ID {
 	KVM_RISCV_ISA_EXT_ZCF,
 	KVM_RISCV_ISA_EXT_ZCMOP,
 	KVM_RISCV_ISA_EXT_ZAWRS,
+	KVM_RISCV_ISA_EXT_SVUKTE,
 	KVM_RISCV_ISA_EXT_MAX,
 };
 
diff --git a/arch/riscv/kvm/vcpu_onereg.c b/arch/riscv/kvm/vcpu_onereg.c
index b319c4c13c54ce22d2a7552f4c9f256a0c50780e..67237d6e53882a9fcd2cf265aa1704f25cc4a701 100644
--- a/arch/riscv/kvm/vcpu_onereg.c
+++ b/arch/riscv/kvm/vcpu_onereg.c
@@ -41,6 +41,7 @@ static const unsigned long kvm_isa_ext_arr[] = {
 	KVM_ISA_EXT_ARR(SVINVAL),
 	KVM_ISA_EXT_ARR(SVNAPOT),
 	KVM_ISA_EXT_ARR(SVPBMT),
+	KVM_ISA_EXT_ARR(SVUKTE),
 	KVM_ISA_EXT_ARR(ZACAS),
 	KVM_ISA_EXT_ARR(ZAWRS),
 	KVM_ISA_EXT_ARR(ZBA),

-- 
2.43.2


