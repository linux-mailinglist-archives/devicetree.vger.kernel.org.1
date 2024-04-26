Return-Path: <devicetree+bounces-62977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BE4C38B34F3
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:08:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF5931C212C8
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:08:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FAD1142E6D;
	Fri, 26 Apr 2024 10:08:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="WSHL8YVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFEC91422B9
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714126109; cv=none; b=cIyrBUPl1b2p7Mhq09V5q0PdUH6ZEg/5zw2ulArd+aGdMxo64p62y7kTT60P0obmNWokmurTJGi78UwD7pI0bBjisIsc7Y5ziLJvND6/dTIa2IUhI/11qGNNgWzqbwKfjHV6N4DewRYJaR4Pxo3flW/whCOt9n+QJbFucUlUijY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714126109; c=relaxed/simple;
	bh=ontq4m39cUfk19pc+PXXxfKI40lpAbS18dYQoPOyuLc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-type; b=rYiwRwMgZJ41VT9GqcuBs7bPzpAaN84ZxCecS/b96Rb+WYkqIKnVaVN+kxG0yFdKVn/Okubb6qnRrzQ+WO3kaSlIwjg85cG6NCcW1jkbdVW1xeE7amoXEIQg4Bk3AJrYJjOY25M52aN+qD7B9T0r+gWEOg2vrUvBpHsHO6UIz9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=WSHL8YVo; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-41ba1ba55e8so1637095e9.1
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:08:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1714126106; x=1714730906; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H50p08qn7uGf4Z9JFkdHi+jkfC6EZzcHo7CUifdDw3E=;
        b=WSHL8YVoLgPsWzkkMiy8qfRrvGW82vJK17sM+Q4pxIwG0CfwhNkHhzbyWFFIMV5nrO
         l1ji7fxRUDgP4rTl/AJIkMQi2Pzx8KtexOT7c6qm4/eu1m4u06ZXtqgR0oSTAztd7cPR
         GYa92oHZysivcX5ihFn4M7ACK2NA4AMe4uuKEJtZpMALEySziY6SO75ozIeERA2WZxPR
         iurfiNtsTUm/BT0vJwz4BGfYteKAVUSSRZDbnZCf7QEmhmm3NN0gZY8i8YGwFr1Wqftu
         5MRCSjlflmrV6kl1n/hNayiEF8Rd5rx4jtD43SY35DkrLtBkFogtpsXNbIBWtUUMctYk
         FxAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714126106; x=1714730906;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H50p08qn7uGf4Z9JFkdHi+jkfC6EZzcHo7CUifdDw3E=;
        b=KNUkfA0tfrBQsGOcuzr21WE/q0s4oCDnXXGwqvZw62R4K2mOhYip/tdLPf6R6UdYH6
         l3Rap1FB1+cGTSJHH9K7tPpKw4MCw3mT1R7nxi3dZrxyylKWsI7IDFy6lMnXEvX9h+Oi
         vTV03ETtxyCz9WAmIN78EQ6WVphrZoeA1zDkFw4hHbrwnUuHB+KjKCnJvxTt/ERk2FFR
         5mSL/vd3S/Qa29rNeHgoTYvawIfenZAtCbYbPKkf9ufyqqgOT+Uyts01hXh77X3tIfIu
         V39RZvwhZmowVaBhwpufPfIN5nAonlQFwQdOfftFelKM3B0zDxgcyR16DMJMGdbmEut1
         vrYw==
X-Forwarded-Encrypted: i=1; AJvYcCWkar5bziSEeaA81NDPSc5Tq5AA/8tZArXcW3b+okZZwaWkuy82R04YKlHT4NWIKdDF5fFRmB1h0I+1Lx59Xz/XqdepRKso4se8cg==
X-Gm-Message-State: AOJu0YyWCzHABavfhEnrQPV3QNPIky5ai9VFGONTB1lQayUryISybgm3
	54wj0ZCrJSeYvHVj1CQ3YGIQAhU2tH4HdQJmDdPK9C1muhlQYXyGb0psY265iF8=
X-Google-Smtp-Source: AGHT+IE5Q3hADYqj2MvVu2H/qxB0sDab34q1JHiQ+l/nY/53ersVI/z5oTpAPArBs5eOKGypLKYc9w==
X-Received: by 2002:a05:600c:a4f:b0:417:ee98:dfac with SMTP id c15-20020a05600c0a4f00b00417ee98dfacmr1506890wmq.34.1714126106377;
        Fri, 26 Apr 2024 03:08:26 -0700 (PDT)
Received: from localhost (2001-1ae9-1c2-4c00-20f-c6b4-1e57-7965.ip6.tmcz.cz. [2001:1ae9:1c2:4c00:20f:c6b4:1e57:7965])
        by smtp.gmail.com with ESMTPSA id s9-20020a05600c384900b0041b0c3879c3sm8384477wmr.26.2024.04.26.03.08.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:08:26 -0700 (PDT)
From: Andrew Jones <ajones@ventanamicro.com>
To: linux-riscv@lists.infradead.org,
	kvm-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	conor.dooley@microchip.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	christoph.muellner@vrull.eu,
	heiko@sntech.de,
	charlie@rivosinc.com,
	David.Laight@ACULAB.COM,
	parri.andrea@gmail.com,
	luxu.kernel@bytedance.com
Subject: [PATCH v3 4/6] riscv: hwprobe: export Zawrs ISA extension
Date: Fri, 26 Apr 2024 12:08:24 +0200
Message-ID: <20240426100820.14762-12-ajones@ventanamicro.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240426100820.14762-8-ajones@ventanamicro.com>
References: <20240426100820.14762-8-ajones@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-type: text/plain
Content-Transfer-Encoding: 8bit

Export Zawrs ISA extension through hwprobe.

Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_hwprobe.c       | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index b2bcc9eed9aa..e072ce8285d8 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -188,6 +188,10 @@ The following keys are defined:
        manual starting from commit 95cf1f9 ("Add changes requested by Ved
        during signoff")
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZAWRS`: The Zawrs extension is supported as
+       ratified in commit 98918c844281 ("Merge pull request #1217 from
+       riscv/zawrs") of riscv-isa-manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 9f2a8e3ff204..a5fca3878a32 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -59,6 +59,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
+#define		RISCV_HWPROBE_EXT_ZAWRS		(1ULL << 36)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 8cae41a502dd..b86e3531a45a 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -111,6 +111,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZTSO);
 		EXT_KEY(ZACAS);
 		EXT_KEY(ZICOND);
+		EXT_KEY(ZAWRS);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.44.0


