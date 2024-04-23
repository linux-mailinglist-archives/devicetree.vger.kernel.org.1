Return-Path: <devicetree+bounces-61863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF7D8AE6C0
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:47:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2D431F21C44
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 12:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 907B613BAEC;
	Tue, 23 Apr 2024 12:43:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="c0HJG/46"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9681213AD3C
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 12:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713876237; cv=none; b=SKcW1E8rQQZZ6ph/pHGgqP8UNUILPkUGXdOhbrIeJo4b963dneQKazyrC2mYfwuioSUQcm+xhN1LDEqt1JqrELsLSyPJiEfHrZbVQWit6dy6ylB+7UI821pb5turZMdhnPSUYzT9LfFZYaUUIEXg6njiqDyANv/vMzdEgR5unaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713876237; c=relaxed/simple;
	bh=x/hf7mR8S0PaebbZDXn5tmxtag3p7rdZEs+HYwpAhAM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XL+YkpoRJ5M771R5ePLCykeOEOXzGAymewO/eHwXreJH2Sq66FA+dUnRnlUdHwBTL2CcR8EwsxTXZhY9KJruKKkChLCUXNCAZ4J5uSRLoWbTQuuP8tRh9f6brcfEgHkPiTr50zOoBUJSYeTr6GlhNaOy/iQOqs6s0hM9hfr818M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=c0HJG/46; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-346a5dea2f4so1223510f8f.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 05:43:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713876234; x=1714481034; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OClMR/8Jm3sCmLbe455uZIaBUTeeLegIVNx5rAADYDc=;
        b=c0HJG/46UEBYR5Z0n65OufLseuB50Uz2AZvU3SEDbWCQGScxpvbo5Vmnas64iByAr5
         RBydDyNgdl2o1oUbrEKCRSmfIryW8X3h1DvjJwcIlJ01+CMxl/i/tVk2U63pVjq8LAAx
         8viQNdeECkLLHJGUr2F8GIDCyEL0Mf11BWYx/ObTBe5/ukE0o9SrhQjQpSvgPkKm+CuC
         ijTeTPLpb1r/RVP26LNIGlW3Eo1h5Lbk73T7o5m5h3e+Z5kMBRl0GRmjFePSnhssOXEu
         HQoE49DXfuROY24ftH5Vv4zsRl8mUibu+BLoua2RZijgo3q3+jIoarDvlnM0ihqfpzgQ
         U19g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713876234; x=1714481034;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OClMR/8Jm3sCmLbe455uZIaBUTeeLegIVNx5rAADYDc=;
        b=YgeN1mVq0eTJCnxZY/FJuwn/5wnMg/6N/MQNLGZl9srts92CuJQytyVrTRO+rNY7l2
         drJJ/7saVLVBSP3HhTnYK7D2pf35DCAWBb8Ko2Ub8fyNo9jl7dZScbERJkVzGxGOiJ6Y
         x7xI1w+emPIjkK2KOhbS903b3SVjgx8+8Lwegw35A9pMzv+yJ9SOqKki+6W0YqNzCaE8
         PRswPmhNZJ3qEIroKrAsEEKCk6TOrgmsHLIHgl60PCcu32l39QQfgrlBg0LnKjYk9ycn
         d35U3lyAcxHm5g1k4LjXdQlBZHqXKq9MfH2/dhXgg3LcQL2a7K/d1PbpOsvblqe4fcYR
         eOow==
X-Forwarded-Encrypted: i=1; AJvYcCUpPrubBqfPJU5gN2uIrPij3xvZSVLzUZ+48SZ9FU7NLmwUuAS+bGw34wUstR+XpTVnND0onKZkEIpLgki6MdiPYF6ciA6vVOtZhg==
X-Gm-Message-State: AOJu0YyuDa9C7/hRbalVmAB4EvdkHMq8vBwr7jz+eIONky1bipwWg7kR
	Lcd+OTwYsb40zDeaZ26k3ToVspBNTjZse3HlZ9208M0nJ8trpNU7CykN3CU7abY=
X-Google-Smtp-Source: AGHT+IGgrmGvVTGX++7wyp505WvQlZhf5R5sMKMBgP2fuHjYmGDsg8m8hdOu/tW6hNp+KAz9yWPf8g==
X-Received: by 2002:a05:600c:1c27:b0:41a:c4fe:b0a6 with SMTP id j39-20020a05600c1c2700b0041ac4feb0a6mr1112594wms.4.1713876233977;
        Tue, 23 Apr 2024 05:43:53 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:71cb:1f75:7053:849c])
        by smtp.gmail.com with ESMTPSA id v10-20020a05600c470a00b00418a386c059sm19975709wmo.42.2024.04.23.05.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 05:43:52 -0700 (PDT)
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
Subject: [PATCH v3 11/11] KVM: riscv: selftests: Add Zcmop extension to get-reg-list test
Date: Tue, 23 Apr 2024 14:43:25 +0200
Message-ID: <20240423124326.2532796-12-cleger@rivosinc.com>
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

The KVM RISC-V allows Zcmop extension for Guest/VM so add this
extension to get-reg-list test.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
Acked-by: Anup Patel <anup@brainfault.org>
---
 tools/testing/selftests/kvm/riscv/get-reg-list.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/tools/testing/selftests/kvm/riscv/get-reg-list.c b/tools/testing/selftests/kvm/riscv/get-reg-list.c
index 61cad4514197..9604c8ece787 100644
--- a/tools/testing/selftests/kvm/riscv/get-reg-list.c
+++ b/tools/testing/selftests/kvm/riscv/get-reg-list.c
@@ -59,6 +59,7 @@ bool filter_reg(__u64 reg)
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCB:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCD:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCF:
+	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZCMOP:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFA:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFH:
 	case KVM_REG_RISCV_ISA_EXT | KVM_REG_RISCV_ISA_SINGLE | KVM_RISCV_ISA_EXT_ZFHMIN:
@@ -429,6 +430,7 @@ static const char *isa_ext_single_id_to_str(__u64 reg_off)
 		KVM_ISA_EXT_ARR(ZCB),
 		KVM_ISA_EXT_ARR(ZCD),
 		KVM_ISA_EXT_ARR(ZCF),
+		KVM_ISA_EXT_ARR(ZCMOP),
 		KVM_ISA_EXT_ARR(ZFA),
 		KVM_ISA_EXT_ARR(ZFH),
 		KVM_ISA_EXT_ARR(ZFHMIN),
@@ -957,6 +959,7 @@ KVM_ISA_EXT_SIMPLE_CONFIG(zca, ZCA),
 KVM_ISA_EXT_SIMPLE_CONFIG(zcb, ZCB),
 KVM_ISA_EXT_SIMPLE_CONFIG(zcd, ZCD),
 KVM_ISA_EXT_SIMPLE_CONFIG(zcf, ZCF),
+KVM_ISA_EXT_SIMPLE_CONFIG(zcmop, ZCMOP);
 KVM_ISA_EXT_SIMPLE_CONFIG(zfa, ZFA);
 KVM_ISA_EXT_SIMPLE_CONFIG(zfh, ZFH);
 KVM_ISA_EXT_SIMPLE_CONFIG(zfhmin, ZFHMIN);
@@ -1017,6 +1020,7 @@ struct vcpu_reg_list *vcpu_configs[] = {
 	&config_zcb,
 	&config_zcd,
 	&config_zcf,
+	&config_zcmop,
 	&config_zfa,
 	&config_zfh,
 	&config_zfhmin,
-- 
2.43.0


