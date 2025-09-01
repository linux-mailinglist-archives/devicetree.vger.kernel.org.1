Return-Path: <devicetree+bounces-211250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A46FDB3E195
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:30:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 77EC816FA69
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 11:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3496E258CDF;
	Mon,  1 Sep 2025 11:30:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b="f/uYsMij"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB2FD23958A
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 11:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756726242; cv=none; b=ZWuPcGHLFjgLR4isXIGf6QpitAfxtUlebHmSUH512VRWXPMraZAHrvS96jKrA84HakbjbJvTPb5BlRYRTJj6q/jWZWuEMbBWuZ9JRsG65WzhJLmcaDkgtP12uR8AumbyhlJhBq2nPsGmwxNbBO9aWiT4Z+G79l1T4oqwPLmHR64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756726242; c=relaxed/simple;
	bh=AHBUSWC6NQwt5gipootBG6lu9YU2EyCEcBy5+RZx010=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=aqSuXYOSYr50p+Uryp1yyg36eqvk2uRTRM9A5nj8tZ+nXwdxlVNo+72IHl2Lc5HbS0Qd+cnR90TBGSfUeNQkpvwSd2UXIEQN6/YFlRzJuyaG66eQd86uSVPC1v1ZML8snXKgY+BDoVCrusCtGzNmkmRVe/D8fjUnQ6oshq/38rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com; spf=pass smtp.mailfrom=bytedance.com; dkim=pass (2048-bit key) header.d=bytedance.com header.i=@bytedance.com header.b=f/uYsMij; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=bytedance.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bytedance.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76e4fc419a9so4184925b3a.0
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 04:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bytedance.com; s=google; t=1756726240; x=1757331040; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=f/uYsMij5EpVDv86AJlQ9v6LN1dgUIOAr/DPuoORrlSBlqGePbtYAdG8nS4bufEbl6
         Bq6Bba5AtmwNLGu3VXgqqPFyujrZBgNdiQZVSVVUt6XjYYdwFhWBr1AzMFHZT6+77Vyq
         OI8r7jBUflu/GioYab5l+o3PRDaRpCC5vNTwWjb99Hw22oT95zS6ab6kyhgt1srKmRE+
         PR8EPg8RTginceWV5SCqHWsH8ywiCC7b9w8IZ/vpkKRB9CbsvNegMj4xgTIUNMm7eLO5
         kL4i3u5FYQkpJnL3gacLQ39BHHnCCm8QAar/yylMFtFawJSP+u3ox28Ho0pNuji9tp7f
         w1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756726240; x=1757331040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L4l4TBk/LGXRpjovIOSrhrLfanQNTxjIirl6+Uo+sE8=;
        b=gqgNoMty7XaXj20a5ispxYrM5H9PHHBhNk3AZOtJIJRNWvcNH+XoyWD2Hcj/re+OaM
         Jbbqsbm3Z7/vtK6iQGmVwKJDFH98tZyN8IBUrFVrPoHwlaWzeDp1KVRBNm6fa9VH1un5
         CN2Ew5LtJjs0tiAKbE4ZvMHvBQZlwMrx12jdf5A6uyhPVSYJzWXooEY2CWfMRVwupIkl
         fN89/WgViHR8DYbGrkFp+F3nWalyaaL0i6+rcHPuldYtanAz+ots+CnsXkHS+WC2aePp
         z+sEoz/saW/xbN4yKSPnIBkmQSGZrBMk8w5BJ1lGf2rKaydecNrugXNkot3dK///KS/u
         7lFg==
X-Gm-Message-State: AOJu0YyFIBOBSsw3DXkJtEMHfiK7skbQE5odmjAZtnRKVtbR4MCaDdqj
	Po3DZpxS4eglYvC2l2xu9W/KFomW9Ufw9Co40I1Hc80jNCSLVa6j7T1vrRX8qDrLtJA=
X-Gm-Gg: ASbGncvFYJcQ6sCplfSJACexApUnBcBPLn/QdlZ1ryqgvWDlqI8bx/YsqjL/J7r9g/e
	h+pob0b5Ivsrpy7TOBXgG5kKO+YsvyHUXWyrXlVF8M12iIHaWGvAlHWOv4kTy9wM3BoU41ck08C
	NK5mqWJh+kcCqp0MD5u/cYfR9TxOVigZlUUAYW8W/D/U34/dyXXWSI3ZFktay89vBYCykmfAGtv
	4/UiTapWr9qNrRVpfLPYukChBAsaJAN6uLecADbE2EK0AvInBzjpRjFWKXtlO0YX8EpigNYkfWd
	VZlP1PnUynQpFkQ4fQMAqcMk+9chXJGO9SnhxavyTK3d/2XpAWGFU6C2I1ofXRkICkBbNiqOsAf
	wNa6Z7ABdgQuu6h1TUUKBjGOmGbyqMloeWaBhK7O4ansJGu/MYzw4O5zkNAWgOdUIHiKMrs9R62
	rvj27DnWOPFjPyrOOkXaUuid/pXp94JR7aZFNVW2goIYvW78D30JexvQ==
X-Google-Smtp-Source: AGHT+IGxbGNHyf7cdKlPSirFuPWtekxBxUWcXRyssxTcMUJqB8qIwHPWBXuB4taHEDMzJ7h/+f/ZSA==
X-Received: by 2002:a05:6a20:9148:b0:243:a290:3293 with SMTP id adf61e73a8af0-243d6f37dabmr10788824637.42.1756726239715;
        Mon, 01 Sep 2025 04:30:39 -0700 (PDT)
Received: from J9GPGXL7NT.bytedance.net ([61.213.176.55])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7725ad1e9afsm2911441b3a.11.2025.09.01.04.30.34
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 01 Sep 2025 04:30:39 -0700 (PDT)
From: Xu Lu <luxu.kernel@bytedance.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	ajones@ventanamicro.com,
	brs@rivosinc.com
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	apw@canonical.com,
	joe@perches.com,
	Xu Lu <luxu.kernel@bytedance.com>
Subject: [PATCH 1/4] riscv: add ISA extension parsing for Zalasr
Date: Mon,  1 Sep 2025 19:30:19 +0800
Message-Id: <20250901113022.3812-2-luxu.kernel@bytedance.com>
X-Mailer: git-send-email 2.39.5 (Apple Git-154)
In-Reply-To: <20250901113022.3812-1-luxu.kernel@bytedance.com>
References: <20250901113022.3812-1-luxu.kernel@bytedance.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add parsing for Zalasr ISA extension.

Signed-off-by: Xu Lu <luxu.kernel@bytedance.com>
---
 arch/riscv/include/asm/hwcap.h | 1 +
 arch/riscv/kernel/cpufeature.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index affd63e11b0a3..ae3852c4f2ca2 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -106,6 +106,7 @@
 #define RISCV_ISA_EXT_ZAAMO		97
 #define RISCV_ISA_EXT_ZALRSC		98
 #define RISCV_ISA_EXT_ZICBOP		99
+#define RISCV_ISA_EXT_ZALASR		100
 
 #define RISCV_ISA_EXT_XLINUXENVCFG	127
 
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index 743d53415572e..bf9d3d92bf372 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -472,6 +472,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zaamo, RISCV_ISA_EXT_ZAAMO),
 	__RISCV_ISA_EXT_DATA(zabha, RISCV_ISA_EXT_ZABHA),
 	__RISCV_ISA_EXT_DATA(zacas, RISCV_ISA_EXT_ZACAS),
+	__RISCV_ISA_EXT_DATA(zalasr, RISCV_ISA_EXT_ZALASR),
 	__RISCV_ISA_EXT_DATA(zalrsc, RISCV_ISA_EXT_ZALRSC),
 	__RISCV_ISA_EXT_DATA(zawrs, RISCV_ISA_EXT_ZAWRS),
 	__RISCV_ISA_EXT_DATA(zfa, RISCV_ISA_EXT_ZFA),
-- 
2.20.1


