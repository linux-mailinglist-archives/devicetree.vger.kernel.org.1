Return-Path: <devicetree+bounces-56289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A7E898529
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 12:36:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7590F282A4E
	for <lists+devicetree@lfdr.de>; Thu,  4 Apr 2024 10:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78BE18595C;
	Thu,  4 Apr 2024 10:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="sOedv3if"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A35839F3
	for <devicetree@vger.kernel.org>; Thu,  4 Apr 2024 10:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712226873; cv=none; b=Mn336dza5l3xD3U6oCsESFUIeQg5UTvBUHXvfz9GIKsQwLStqkGoDn5S0r5pdimikFNVSpVgbkc7iD3XXDrfuSfcvSiaf/W7r7zftlDwFBmcoZ+Fr7Bcs98N0kK/j6Fo7VXGEmTYx0bCWHpNP3K+8LYmUqHvY48nJUqjxAqBcQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712226873; c=relaxed/simple;
	bh=3pUouzGKtTo71pYkdkJFB3gRP9khPlS9i6RZ43zvw+g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Um7+ugdUsnZdWfHFSqjFdfjOx/OTF2rQf79XPlgAl7x8AlR5PKGfdegrPq8dhHLDfPMHq01IibCWNUWidS/MbYbTo8X7OrWxKg2rRTp/il2wRYf9tu5Jjn7pCT6O+eludeOepJr1/rZBtZrJzGk1as5DoHimcyUsgSaXjv9KxH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=sOedv3if; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-516ced2f94cso84538e87.1
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 03:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712226868; x=1712831668; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qrSVtGZRwZdqSUCPKBtbbPV0rvcWw4KEF79SGVRT1V0=;
        b=sOedv3if+OSBwFJdc4sgFYFLK3L7Xk05DJirkiErKACVIxH4wHgftYXAioYktMVYaN
         NdAHWZ5Wef3oyA9Jta3lHGTnNUo27gqf/Th19WkNLDuOE+7Dyo6PEFkzIWGua1MjRcig
         +fQHV8OCXE60RzexFc/4ycpyMM3hMfu0I6KWZnmYxpLcy4VyL7/RMKVf+k7M4vWlFdHI
         BDd4PwBM6Hh+z3r2C1wU3QylbgRE7ZLvuA15QPWHaQJEsSe3O7vKBwpqpT5usjhF9A4V
         nYbNfTubxhNOXb7Yi1ZlsWulFau/Z13KajLoVmAz2tQjduJXpIVcQKZDOq1ZIvecOHHE
         YR9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712226868; x=1712831668;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qrSVtGZRwZdqSUCPKBtbbPV0rvcWw4KEF79SGVRT1V0=;
        b=s9RVdUtJKf8uie0M5K/epU/betzQ2xfBC5jaXL5B7MjVzuMKTbz0MVmiG79DcRX4ok
         IZngmTWQDqWLIWak8jurgrY43DsHZtHccpGzsLDtyT9Zq4MZv8aNVmf2dDXX2VML+m7B
         etcMIdxRPGWcJUR/LQa120Dp8MNxThFdW4D2t0i04psL3ygCtjIccKWUJ0QTiEkcpAp6
         7iOiqJNbeguTEYJ6ZZKYiDM/JW9vY5Na12mYybWAd/m8b/qN44cr4rsQHpT739/ZRQRD
         ty3mid0oZA1UJ35mQIC0uXTvuKL7CFdUE5D4hWQP3ayTRJ3chG9gc36qVx1I+e0t3VEA
         Pi0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXO+JG9fGBBjxO5zqJBoH6KyWlfJPp54a0AGVUspcJMScy/Eg/YRsIO5niM6KK7Bpk9Q7DDP4WXK/XeXY03h6HgkObwqmyiQoCPcA==
X-Gm-Message-State: AOJu0Yxln3WDytcLD3BnLLHeqcf+hD3nDF4YMw6kIp5tRuwcypjS+hOD
	UtuKB3dKBNd+XYRdBOl3UCl2ajx52qcIz5k1WaToAB+DgFLaOInwI6sf3kiVLZ0=
X-Google-Smtp-Source: AGHT+IFMam9bMUHsyC4hhqDHYaIA0cA7zDlkrbsJGTyXcu6kj1HRLq2RIgLnRvRONkTw5gP+iloRaA==
X-Received: by 2002:a19:8c0c:0:b0:513:d0dd:95ef with SMTP id o12-20020a198c0c000000b00513d0dd95efmr1384037lfd.5.1712226868674;
        Thu, 04 Apr 2024 03:34:28 -0700 (PDT)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:555b:1d2e:132d:dd32])
        by smtp.gmail.com with ESMTPSA id ju8-20020a05600c56c800b00416253a0dbdsm2171340wmb.36.2024.04.04.03.34.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 03:34:27 -0700 (PDT)
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
Subject: [PATCH 5/5] KVM: riscv: selftests: Add Zimop extension to get-reg-list test
Date: Thu,  4 Apr 2024 12:32:51 +0200
Message-ID: <20240404103254.1752834-6-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240404103254.1752834-1-cleger@rivosinc.com>
References: <20240404103254.1752834-1-cleger@rivosinc.com>
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


