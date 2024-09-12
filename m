Return-Path: <devicetree+bounces-102243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 57A399760C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 07:57:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16DF128581C
	for <lists+devicetree@lfdr.de>; Thu, 12 Sep 2024 05:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B66B18FC7F;
	Thu, 12 Sep 2024 05:56:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="XQID2+2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D833518F2D1
	for <devicetree@vger.kernel.org>; Thu, 12 Sep 2024 05:56:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726120564; cv=none; b=aMS2TRm2jhdIFwzDbMr/OlMrCJp8lpsoSjb6JrFMOYUFFDWE4NFVigGORwyRlEThTLIvNp0bWpNXpB2YTZCoB1OkRnoFKCB7h7uPmNYeBDwIUBS992ncKfBu+kxHpJKSViZYt4S9cp8THkv10njAgSGm+4+Jl0JhUoAXd1+d9Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726120564; c=relaxed/simple;
	bh=JFu+LGCqiNnapZxee6sXBtAHc3I5ntU7jWhjkky+nXI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uqgktNSz9cS3z9tVbqF/4xHKnJTCf1mTFqvtpT3pCFkMyZHEmB8QBIZboApER1j1GLhKhBfCFvml7dj8Ew28vSGeM2HJ9yrC2W0EwIBGAEU2a9e/B1aSA68/lRSaTyeMdnEsN/3P4gNF4Ezt6eTU/4Up7WyK/7ToyQoL44DzqvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=XQID2+2i; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2053a0bd0a6so6474785ad.3
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 22:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1726120562; x=1726725362; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GSL6WjjHpdqYO1H/eXwGFHcRmPD/KtF7kVjlnnuCHwE=;
        b=XQID2+2iDlpDoWrxUm9TtXaBJZoIRu2TwsndyeKz3M/gJvUfR8NTYXkrhgZmLRj1Xe
         /GqpQl5jD3wiih/86Ij3Yq6A6oPm0IhzmfrjAcizor8R1CyFO8LziG12kXzHBm0VQhTp
         +VslEWtmNlGudHfScT4mUvsGsh68TT3IwWQn5yXA3K6uF/IRJMf9xkSN4SWTRbCQY9pL
         cNyy9qVAl3FjT3bXHLd5NuqsLF/ngQLzKDhFFBYFjU2pw0enpCswDOV1RC1O8oDbAwUs
         tlhFSLG3WskMEU1OcFFLkiNxKkwugDDCmc6avfnlNMTrlAzaCoj+rF2l2hmkqHDi+1bV
         N4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726120562; x=1726725362;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GSL6WjjHpdqYO1H/eXwGFHcRmPD/KtF7kVjlnnuCHwE=;
        b=p7wxieoeRp/dvUtl9JPFoPtZTJ7Vr5B2XUO+H/vyt4Heqr9zStYJnX/FICWTcsA++j
         2onHYeDoX932C8V+H7J3NeC4IY2/L4lQ5bqFIaN5DG3qSku9DFAy918sUemYpBlWcyQ8
         fwcC2/nJIfAvNI4vA4+qznV9P2CkG9l/JMzVAlTvRV2Jhcc6ejYFtgpBtdD6g0HzOhYx
         WrAMa39oD4WC2XWp+RK1MW1wF/k/Bd8aPQaPIVy7IiZUQNu14JtsTCcD9g8y7U0OVbWJ
         fWq5UlPq+uJ5BUGkgqpWeH2/nlCyFAXtGfIq93cHaGPl9AuLscc/d5ohtf1OXfWwhRSs
         iRxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIOlCyYB8VO8zTGkRgDT6Gl7PQYm0W34CJY96CNO9v4Mzk/FGFUxXl/blIxiZ3TNcQw2pyF5ziqrTk@vger.kernel.org
X-Gm-Message-State: AOJu0YzdXqojLU69oAN003FzI//7HVIGuIndUpjtX6kFVcPHCtrsL+RZ
	qCKxIcJxEg1dzKcp132bGx5bgaXUFWOsoKupbO3lXuxVYIwmAIzOoFqkmv2Yiuo=
X-Google-Smtp-Source: AGHT+IECLV4z5WDlwOdbMshxCcr9zLYBzDjXvcLIsnzDjItc5dYHcznYBe2fAYb+H9t8yei2s9bchw==
X-Received: by 2002:a17:902:e94d:b0:205:5f36:ffa0 with SMTP id d9443c01a7336-2076e393a75mr23890435ad.35.1726120562132;
        Wed, 11 Sep 2024 22:56:02 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2076afe99b6sm7870465ad.209.2024.09.11.22.56.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 22:56:01 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 11 Sep 2024 22:55:16 -0700
Subject: [PATCH v10 08/14] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240911-xtheadvector-v10-8-8d3930091246@rivosinc.com>
References: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
In-Reply-To: <20240911-xtheadvector-v10-0-8d3930091246@rivosinc.com>
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
 Andy Chiu <andy.chiu@sifive.com>, Jessica Clarke <jrtc27@jrtc27.com>, 
 Andrew Jones <ajones@ventanamicro.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1954; i=charlie@rivosinc.com;
 h=from:subject:message-id; bh=JFu+LGCqiNnapZxee6sXBtAHc3I5ntU7jWhjkky+nXI=;
 b=owGbwMvMwCHWx5hUnlvL8Y3xtFoSQ9qjppjtbE1Gn1/GLT7Y32OjauP5VlT7/OyP+W09k2cLq
 n7awmDcUcrCIMbBICumyMJzrYG59Y5+2VHRsgkwc1iZQIYwcHEKwEQYyhj+Z6bdPced43yXUW6D
 orbittf5dpOX+Kz9zpP0a76w9fHN7Qz/dA4YC3+u/hnRdmNK36wKUf6il72pz5yflxyZyXomrly
 LDwA=
X-Developer-Key: i=charlie@rivosinc.com; a=openpgp;
 fpr=7D834FF11B1D8387E61C776FFB10D1F27D6B1354

xtheadvector uses different encodings than standard vector for
vsetvli and vector loads/stores. Write the instruction formats to be
used in assembly code.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/vendor_extensions/thead.h | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
index 190c91e37e95..118aa0f82c82 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -19,4 +19,30 @@ void disable_xtheadvector(void);
 void disable_xtheadvector(void) { }
 #endif
 
+/* Extension specific helpers */
+
+/*
+ * Vector 0.7.1 as used for example on T-Head Xuantie cores, uses an older
+ * encoding for vsetvli (ta, ma vs. d1), so provide an instruction for
+ * vsetvli	t4, x0, e8, m8, d1
+ */
+#define THEAD_VSETVLI_T4X0E8M8D1	".long	0x00307ed7\n\t"
+#define THEAD_VSETVLI_X0X0E8M8D1	".long	0x00307057\n\t"
+
+/*
+ * While in theory, the vector-0.7.1 vsb.v and vlb.v result in the same
+ * encoding as the standard vse8.v and vle8.v, compilers seem to optimize
+ * the call resulting in a different encoding and then using a value for
+ * the "mop" field that is not part of vector-0.7.1
+ * So encode specific variants for vstate_save and _restore.
+ */
+#define THEAD_VSB_V_V0T0		".long	0x02028027\n\t"
+#define THEAD_VSB_V_V8T0		".long	0x02028427\n\t"
+#define THEAD_VSB_V_V16T0		".long	0x02028827\n\t"
+#define THEAD_VSB_V_V24T0		".long	0x02028c27\n\t"
+#define THEAD_VLB_V_V0T0		".long	0x012028007\n\t"
+#define THEAD_VLB_V_V8T0		".long	0x012028407\n\t"
+#define THEAD_VLB_V_V16T0		".long	0x012028807\n\t"
+#define THEAD_VLB_V_V24T0		".long	0x012028c07\n\t"
+
 #endif

-- 
2.45.0


