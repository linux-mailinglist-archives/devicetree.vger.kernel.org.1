Return-Path: <devicetree+bounces-61163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D348ABE1A
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 03:07:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C4BB5B20E2C
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 01:07:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC5F2231A;
	Sun, 21 Apr 2024 01:05:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="oH/lYKXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 465111CD04
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 01:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713661512; cv=none; b=SeZkn1i0ZpTIwkPTV3vGwmpcZJnC38xZgi02NUbHQQvhlBbsvgJJobtVudC7ZdR3zClxJY9IHsPwajNKy8OleR/nYGo/aB7418b5E2XCAwf9g0J+OlUfvnFJGuJQ2jd8G3bVAZ1d6oNCtGkFf1UKSAkGl5nd8kphBTnmvtjY3z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713661512; c=relaxed/simple;
	bh=/S5mXvNckx5pf6RsnXH2juTR+JzZCbCosBXwMflqUFg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dm0f8hnJNvnbPlkpftm8YQHjaWJT11vhNCKwxRnWiN7/iM6IMi43Ac/bSh6cZg7o1aXJ1j0bj8w5C11KJXN6hKvOam3V6At4p7jVGPWrcYxEhcuAUTCveWT4hWMtEk+yZOywtgFHYmZ5OrXlhExqsqYQPfR+mAikOLkcJ9TVxs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=oH/lYKXp; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-6ed627829e6so3688849b3a.1
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 18:05:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713661510; x=1714266310; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A7WZZ9B05w7yOdiDdmOf8xUgYc+IvuHvU5nr8Ugv9mw=;
        b=oH/lYKXpgM6cv3VphP4XrY99Q8cFj5o+7jf6i54euI5SJRweqmGLCLHmzqZssc1bAt
         nOJKaGYGiUdh+lAZxYtnFCfjea16iht70Z20u/8lGWDB/utTR0IBNZ8Fy//XMIUJupSd
         9Bm3FR4uzqrwhMnVZsUOenZDiZUPnPdFQxiZU7p9yCnTJgTMBknskA15VFjFHah0cqIK
         s4emPjNa3Pvkqytft5vi0pbg10FzizOnF3QD2wq23Qn+BGCFDi0LP8A2bt1SvHip7kfb
         vDsH9JGmPqENDQTA93Epip2feiR4brRa/lZboYr/FiamGHYe75SyT9gZDN0Cbi7VLsLe
         7GpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713661510; x=1714266310;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A7WZZ9B05w7yOdiDdmOf8xUgYc+IvuHvU5nr8Ugv9mw=;
        b=q5esUHzLgEeO1QTezcCqHj1UTqFcuWMpj/QxLopj0ozjBwuvcVuZSpvCf6jz7Fnime
         3YlslxafFgfrpNHS9w3g6jtEMFBHMmEO7hB480dTV9xXvf8IOTMHRkdClM0T6XKAyVbd
         rveBSbj0265rGq7ym7X1JEUC1t4YbzdgBF2GrGdcDkaOHKqorIFNLkdA4L9zT6Gk0wNI
         aNTJSCKWeStW5Y1ovwTkhpA+jIfn/zmZALENNtlFeKXcYTvR+QNKPcTkBzLrPxSDUY5C
         /wOPgU/RvvLv/WUdLtPZnhAWQWWGQJtxVEcYu6uEnhvTz8N902C5QFu0YzLXJSXxpbS7
         20eg==
X-Forwarded-Encrypted: i=1; AJvYcCUsh8v7adQ4XeDFJoVBGm3iOf5hlld1ey++uFZdn5yuWJhDJENe4byamC9r1enOYELxX5E/rOn3Uw30tOjyhPLRTHAatH2goUj5lg==
X-Gm-Message-State: AOJu0Yxpqs20mlGQH/S0DcLBXpdIAnIlfDHQ6lu9YMeIvRI4m1K7B44O
	6OACWWY178MsmdAZUuq50oeNl75G49gPMBLFC/jnKh2sK0XA5xCbuO7izJhGwlY=
X-Google-Smtp-Source: AGHT+IHKFFwWOUNX34yfbtkNAA2sLpa34va32+rUsK/EqAZ0SRgYOjV+4xyTToafrWWlIRTNeQE9eA==
X-Received: by 2002:a05:6a20:561b:b0:1a9:3e7a:b0fc with SMTP id ir27-20020a056a20561b00b001a93e7ab0fcmr6650092pzc.51.1713661509732;
        Sat, 20 Apr 2024 18:05:09 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d6-20020a63d646000000b005dc8702f0a9sm5249627pgj.1.2024.04.20.18.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Apr 2024 18:05:08 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Sat, 20 Apr 2024 18:04:44 -0700
Subject: [PATCH v3 12/17] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240420-dev-charlie-support_thead_vector_6_9-v3-12-67cff4271d1d@rivosinc.com>
References: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
In-Reply-To: <20240420-dev-charlie-support_thead_vector_6_9-v3-0-67cff4271d1d@rivosinc.com>
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
 Charlie Jenkins <charlie@rivosinc.com>, Heiko Stuebner <heiko@sntech.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1713661481; l=1914;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=/S5mXvNckx5pf6RsnXH2juTR+JzZCbCosBXwMflqUFg=;
 b=1kn8f9MgXWKJKmQlrV30BpZBvgJ52FS2fVV9itSClPiV/9gnAsAa8aFVH+g1I31umjB1dO4bk
 q2h7E0sCJbKDEMlRKHZpHo7aqc4t3bXxPYgHr6Zitugls9OvOjNuxGR
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

xtheadvector uses different encodings than standard vector for
vsetvli and vector loads/stores. Write the instruction formats to be
used in assembly code.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/vendor_extensions/thead.h | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/riscv/include/asm/vendor_extensions/thead.h b/arch/riscv/include/asm/vendor_extensions/thead.h
index 92eec729888d..6e3c85351f82 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -16,4 +16,30 @@
 
 extern const struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_thead;
 
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
2.44.0


