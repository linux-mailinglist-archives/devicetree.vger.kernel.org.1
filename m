Return-Path: <devicetree+bounces-58504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B5A18A24E6
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 06:14:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF3611C220B6
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 04:14:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F3DAF4EB31;
	Fri, 12 Apr 2024 04:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WF0oA/9/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FEB94D5BF
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 04:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712895116; cv=none; b=OqZxmruNHHpuQNAEwj1nF1s8FvszKbgbCkW73fMr86jlz7CpuTh2eTQuHJ1u0dMCzecymkiS6bUU5ap2MOVr1M5CW8gbOB3gxN961/385AIommdZmYBpY8f5KFIVOAYeEbtRpIY6hHMVJS/rZjEKpwLxFomKK5TFX3JKc8ZpVnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712895116; c=relaxed/simple;
	bh=b+24lxxAnvlUN0+328A+gcU/U3wnp/aT5n2aF7/kAXA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JDco1RTBmQc0EVQ/wofiYal41pETUa+WRPWeSziVVwmBqfWDrSzKJeHPfZ7Y/r8FstVhPf51Z20Ya/MbB468kQkEfwA6VI5KkUEFKa46m7l8igQE6+NzxXHFV6/y6f2vWqwXNIKv3KtwboB9vMo7QztdF8gbNIGGGFeKFGrjdmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=WF0oA/9/; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-6ea26393116so439461a34.0
        for <devicetree@vger.kernel.org>; Thu, 11 Apr 2024 21:11:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1712895114; x=1713499914; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wwc/PeNyJDl6GgnW4cuopcphm/oVDetOGOo/hxv7XcM=;
        b=WF0oA/9/FZF7RSPDX86GrpLZAYhgPIwWbSjg3tdjxvmCVkRsoh2yCPteemq46wr4Ia
         ZNWjs7Ts9v1MyRtd7DHB6VTItYsJVaN0aOXo6MTnp6SAkDIazjq4qqSH0xS/9gfQTUbk
         zXHxNjEd1+AJ9nyclGT4OJiXFhsnrnrfD5Yp2RSMMTA+0zOTQ+uA4csaVcRX8F0jeiER
         DnJtpyLFSQfKmjptDgTNR8vrF8axw+RpU8U6nr9tPdUD7M1/qkex1ettVr5yMv7AFqHs
         zOeXpJ4DolcNqJPq1XXC+pLWMITOxRlj/zpiW+PEzddWgUsQktxXTlIJMjc2MzoIX+q2
         eH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712895114; x=1713499914;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wwc/PeNyJDl6GgnW4cuopcphm/oVDetOGOo/hxv7XcM=;
        b=A5Xz1w4eLoByo7FeILSQVl7qgrvX2GbgBuJjEXT1aQ4QBPEmZ72RXW50g9PVK9uevZ
         FeO49+pc2C9NSs5CWNvBgfepsvoX2zJtH2mNEQVt5iYZeQbrH/A1oY6Huo7TDciSpICb
         XCFYA2wQ6eq4h4w4S01Mt0iDIJl2VYWq7eN/9BRjOo28G8MyD0X/XlT/ft51rQdYbfeq
         iotyGSNnxq8qveWzOqWf+Al3eBAy4XVj1IPWQW5ElG9Iu7Lktnc1MyrtXrCeypP1H38Y
         TOGqciwuO7p8pQNuRx/y1ne/i7mLeNEs/pFaFI865ZKGgMto9NNXydb6/errbq/A7p7C
         S1WQ==
X-Forwarded-Encrypted: i=1; AJvYcCXfYqUo1COn64FDnq1Bbk0GgA37CJrKLANWd0Hh4+nmHjJ8BaqdOKCj/pHdlB3StI0iR2u38ApkdPFhQNPQspn7uYDzBab/sRcMDg==
X-Gm-Message-State: AOJu0Yw9tCThw0ZDgOgWWlCd7N1SuFWvt9SZkgvsgerz8/c3TuDYDrHC
	Dqcbsi3gc+sVkWL9Qubc+MTUUBn8zgK5qaBFGyxMQgq+Sg568kI0UkJ71ISzgGQ=
X-Google-Smtp-Source: AGHT+IFOYsbLF0F+gkJeOyJgzaCsQeEF3L5USkF2a5gefrMyQNupps7ab0ysCKPYkK28Wn8+LqBa1w==
X-Received: by 2002:a05:6808:1b12:b0:3c5:f8b7:caca with SMTP id bx18-20020a0568081b1200b003c5f8b7cacamr1951974oib.0.1712895114722;
        Thu, 11 Apr 2024 21:11:54 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id ka13-20020a056a00938d00b006e57247f4e5sm1949712pfb.8.2024.04.11.21.11.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Apr 2024 21:11:53 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Thu, 11 Apr 2024 21:11:18 -0700
Subject: [PATCH 12/19] riscv: Create xtheadvector file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240411-dev-charlie-support_thead_vector_6_9-v1-12-4af9815ec746@rivosinc.com>
References: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
In-Reply-To: <20240411-dev-charlie-support_thead_vector_6_9-v1-0-4af9815ec746@rivosinc.com>
To: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Conor Dooley <conor.dooley@microchip.com>, Evan Green <evan@rivosinc.com>, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <shuah@kernel.org>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Palmer Dabbelt <palmer@rivosinc.com>, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 Charlie Jenkins <charlie@rivosinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712895091; l=1663;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=b+24lxxAnvlUN0+328A+gcU/U3wnp/aT5n2aF7/kAXA=;
 b=tBUd1KU9cHUGPbHmulFHg/OgKEnR6bzENCIMFD8J4yhd09ZA941LBjBGdCqnbgqxhCqWkN+bL
 8o8eZ4Dh6iFALQU1B4pRcjyHGJQ2j6rg94+Lgm/1CBT+77zQ+CdfjUP
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

These definitions didn't fit anywhere nicely, so create a new file to
house various xtheadvector instruction encodings.

Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/xtheadvector.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/riscv/include/asm/xtheadvector.h b/arch/riscv/include/asm/xtheadvector.h
new file mode 100644
index 000000000000..348263ea164c
--- /dev/null
+++ b/arch/riscv/include/asm/xtheadvector.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
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

-- 
2.44.0


