Return-Path: <devicetree+bounces-121694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 018BD9C8092
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 03:23:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4D992838E0
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 02:23:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 502CB1F584B;
	Thu, 14 Nov 2024 02:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="RYQkilW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4BC1F5822
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 02:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731550906; cv=none; b=ikPqeFL1YCZYzG1kEgthnSYv50OySqOhC3zQVdp4x9iHFV+XaXV3JCSB8fTNM7vzLrcdotlILwm3K2ZEzK4mjNTpBnWO0qTFua8f+QOL+xPNDBMbFXfWvw3RGfW7IHGW8JDhR4qqMW9NdlrKuR7VlGlXsxth4OuXnr5UV4lweeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731550906; c=relaxed/simple;
	bh=n6bsGNjj+A2RAoocQg/Kf0wqob4BQjMpku28ZyzZUc8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=o6CQTNpx5jn96LrsYusT2tA5X5GRbjOT+i2fVaqagFm9nK83r9zckAUnjqAANKlF5I7fSLZvyTHqc6PL94o1mUcREbxcE83MRB6vN+8ouRuuBs9bwu0wnOhPYzjbdBQ0bc8evdfCmBG4IT3PaJ+W/qpEYlSEiNKgHlmdIh4S86I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=RYQkilW/; arc=none smtp.client-ip=209.85.216.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2e5a0177531so120833a91.2
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 18:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1731550904; x=1732155704; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n6+V3gED1QefX1oKTJPk0u4TQGYvATlv3RdDGUkMS7E=;
        b=RYQkilW/750lf/IW520Tg0zO46DAUjkKU0Y7Uu9v+A3h5OTI0a11hw68/qQQDWo2Dq
         UpuW3q2cw7wyuCE7yHTx1frx0wRY9t73KFeeT8WjE7h/ZCJFIrreczeYFPaVd1xjk4Ij
         0zIfp9ax9g5WJW4LHjn2ZtDcVp+VG+mYcC07OEbRAgodTgKGHsQwRwJjd+sfOafLKNtd
         J9gjgfFdd9zRT4OOwpGIfSpeMHaJ/5uXRiHw239/txDFCT7/JdC+aRVy+dKGvah9M/wQ
         d0wJhjGKlcVn5CqYoWBvjSP1n7v+oHvSXiMCQ59RbsZbAmSEaJ53Ts4xs+EF1dhaLKEX
         8u7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731550904; x=1732155704;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n6+V3gED1QefX1oKTJPk0u4TQGYvATlv3RdDGUkMS7E=;
        b=PbA2Kiv4qL0r+t/ImbwLJC4w8qxucZ47MlwII6W3srF5ZOlVV5iX8Z1f/swWRVauHP
         hiolj3YZyGW2PquC5OfnEsKnMN/+i3xpAPsOH5I8qZhBvk2sSg68NzmY+5wVZQMBB9t/
         y1L4zrkK8Cqx6PQV4RVYCGQujIga62EECZA4Sn/1vw2ZjvDgcvRdWvAD+4cDQbl94P8x
         qp50gzzaNvPB+s9yJ+u6Lew3m/wipGfU7vYwp3RJHEgU2jN4Jw4QSYfhidgYuV1Xa6l1
         VZ4o8Uba8WxRf9QcZAlAcikDV0D95v8eQVTugjHy2LuhKkFL9OXmQHUjbzU76srNhnt5
         AA8A==
X-Forwarded-Encrypted: i=1; AJvYcCW1NM2WS0rWecHP+9qjTAhc9p0t8dtYDUdQSyZfLRrmT3yPRnXPkCn1t2zldXCkRuvHjXFPrnjS9t/R@vger.kernel.org
X-Gm-Message-State: AOJu0YwowiEoa60sf47voDAWKTrv6bXRoFp6o+WaBmV8MIva6X8tDrFi
	8PkWIpTPF7NMVd0r5r7wGqds04XoZRQJ/KTTB5OP9X034FkgNhnlzsRK5lRa5ps=
X-Google-Smtp-Source: AGHT+IFX9tVtH616LR9FBLywJC+ZOCVEFVB28iozSDr0ERYAR2ijQXSxlGW1Nab//EggRloJJbWjfw==
X-Received: by 2002:a17:90b:2e42:b0:2e9:5360:22b2 with SMTP id 98e67ed59e1d1-2e9b17415f4mr29255603a91.20.1731550903857;
        Wed, 13 Nov 2024 18:21:43 -0800 (PST)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211c7c499c9sm406875ad.68.2024.11.13.18.21.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 18:21:42 -0800 (PST)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 13 Nov 2024 18:21:13 -0800
Subject: [PATCH v11 07/14] riscv: csr: Add CSR encodings for
 CSR_VXRM/CSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241113-xtheadvector-v11-7-236c22791ef9@rivosinc.com>
References: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
In-Reply-To: <20241113-xtheadvector-v11-0-236c22791ef9@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Jisheng Zhang <jszhang@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>, 
 Guo Ren <guoren@kernel.org>, Evan Green <evan@rivosinc.com>, 
 Jessica Clarke <jrtc27@jrtc27.com>, Andrew Jones <ajones@ventanamicro.com>, 
 Yangyu Chen <cyy@cyyself.name>, Andy Chiu <andybnac@gmail.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1045; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=n6bsGNjj+A2RAoocQg/Kf0wqob4BQjMpku28ZyzZUc8=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ7pp3IIdm/4UH3h87vjB81Iz7FIMb7B8+3l65eKNYYuMk
 vw3J8se6ChlYRDjYJAVU2ThudbA3HpHv+yoaNkEmDmsTCBDGLg4BWAinamMDOsit5Z9OTNty6+d
 m7IfLxDQ+6jzqZRRtb9MyHbqTuVrHgKMDD18GpbdpwscN7J+31PCryjBkFhyxv/jPKb7nPMa34g
 s4gAA
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index db1d26dfaef9..2155f5afffd6 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -314,9 +314,14 @@
 #define CSR_STIMECMP		0x14D
 #define CSR_STIMECMPH		0x15D
 
-#define VCSR_VXRM_MASK			3
-#define VCSR_VXRM_SHIFT			1
-#define VCSR_VXSAT_MASK			1
+/* xtheadvector symbolic CSR names */
+#define CSR_VXSAT		0x9
+#define CSR_VXRM		0xa
+
+/* xtheadvector CSR masks */
+#define CSR_VXRM_MASK		3
+#define CSR_VXRM_SHIFT		1
+#define CSR_VXSAT_MASK		1
 
 /* Supervisor-Level Window to Indirectly Accessed Registers (AIA) */
 #define CSR_SISELECT		0x150

-- 
2.34.1


