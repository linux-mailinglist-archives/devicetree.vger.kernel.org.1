Return-Path: <devicetree+bounces-87975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F56D93BB93
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 06:18:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 953F81F226C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 04:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E9801369B1;
	Thu, 25 Jul 2024 04:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="F2FxPcdA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3AD6770F5
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 04:16:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721881014; cv=none; b=E8JsBk/bNsAKWKMfoOBIwbCYLPfOe3O5ekwYjAiTaFGeZp/8MiLwIRCYqIsxBBDCGnQ2x2sBqO/g1BvWkZ7hXp1fGxb2q28BFiXAkndOKE+nQH/Gcb0FWnZCdmU25Mc7iMclQSadgtPrX2hxzlzvfNz2nJKnSxoXFz+IEPg0hek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721881014; c=relaxed/simple;
	bh=L3aaRS2j1B7ly0GhgM86XDS3MRCOslmFg/ArzwGxzO0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qyU/HkZ2dBJoDpcbmprnFShmP7QPwDE2/x0Sx5VPZb9aYWFFM8BQnDkfJnSj8cp5u9Bvg2Km6/AQnu8DU8X5+kHrMAdb/HVgyHWrxpTRjTLjKYrxC8gvVQdrBXUUtxx9gtoW8ZOIgyVO+X83IrZpKkX6uYd7p5eGA81HXbsX9yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=F2FxPcdA; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1fc65329979so3813105ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2024 21:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1721881012; x=1722485812; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UhITSSlteAMwmsPUv9TpJ8KEJQbK1ok0BXYvmwnIXKY=;
        b=F2FxPcdA1gM7QjayDrL9hcQ2DG5cGep2Bf4FbKi51hjLWAH9MKhqKn0T3iWOMztzW+
         kxx/bhubNS4E9RSJ1Mer7Jsx84+pwsIhVsGwyrPAa8pWJodGvCscVzXgKYyteA/X0abc
         r1/2yYzWMkM06/+pz0ovKvMAhMBX8RVyk57qrjiBcRaHEbEDQd5435mqpyltT9gKyvBb
         1urGQ69jnSM5v1T8az1cEmkthmp4HSeRLVpQVQMGnxcxk6o0/NeF/6KZDvd19HtNkAvO
         rc39FmVVfWvNqgOg8/H4b6d7zRG9vQkrtUzS5+En8DL2YgrPgkf5dV73bQjFTBsGcP/Z
         EVOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721881012; x=1722485812;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UhITSSlteAMwmsPUv9TpJ8KEJQbK1ok0BXYvmwnIXKY=;
        b=DjnoyXSYqThK8CON7oER6MzfASwAL/uBFFJqkRdcz88dQDvbzj0sGYruNZSypn46Ch
         veDE69lceySMYbYBXWCaNDc1CwIMpc52YL134V+VRGBcnurS5rWFRDLywDPsUrlciaP7
         y4yLE5qQY2NucNfp83Su8k1pTgxFr92XNd7sXBniKmJJImsHsULcpRhlQxWR29ee789D
         kkmlaYYurFP5py0/8jjlgykctqWU+0TYwD78rTN5/90iXMrcLOj0SXKT98s9sjlHmIIm
         lEWcVtyrrlm12afq6LKzAAJYYcdV9A4wChzUEN5yn0cDQyu9a59bwsyIsumU/cSoIoUy
         e3lQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0pisPNLUp4uoQyYDXwGpEpRSilSL/fOgHnUZuoH6iW/w+cURrPN4Rju3lC9H9p1TNcM/IZXGJz1MaLDe/UB+VbEIp1HsYtS+eNA==
X-Gm-Message-State: AOJu0YyMeygl180IXeiL8idvbOe0W2LWoKYt7TNphAsFxsvA6PqoncBE
	DFoWazHR8uQzqCNlnGBEs8stGgSDIo82U/ZotpqryGHW2MbtK/uRbCKWLGwlyv4=
X-Google-Smtp-Source: AGHT+IGj26mQhFBBxRuze7M5j21MWHUmj/ANBGUwLqcIOXRBKaz5XsFYjTYWSdee3PR4vzaTi58yPQ==
X-Received: by 2002:a17:902:d50d:b0:1fd:a1d2:c03b with SMTP id d9443c01a7336-1fed9393fadmr9160195ad.59.1721881012117;
        Wed, 24 Jul 2024 21:16:52 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fed7f2b80bsm3781825ad.205.2024.07.24.21.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jul 2024 21:16:51 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Wed, 24 Jul 2024 21:16:25 -0700
Subject: [PATCH v8 08/13] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240724-xtheadvector-v8-8-cf043168e137@rivosinc.com>
References: <20240724-xtheadvector-v8-0-cf043168e137@rivosinc.com>
In-Reply-To: <20240724-xtheadvector-v8-0-cf043168e137@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1721880993; l=1957;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=L3aaRS2j1B7ly0GhgM86XDS3MRCOslmFg/ArzwGxzO0=;
 b=3w6Inm8iO4KPjHOv2h75OUPqUg1bl42bk+JmZA/zIjwc+Fx4JtS0VETElIWTpMgzY/aotZkuA
 2a4U6i8P91QA4OL53j6fTgQRlEi+6udHKjZne8b0V0IgG7i5ceAPSUo
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

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
index 48421d1553ad..27a253a20ab8 100644
--- a/arch/riscv/include/asm/vendor_extensions/thead.h
+++ b/arch/riscv/include/asm/vendor_extensions/thead.h
@@ -13,4 +13,30 @@
 
 extern struct riscv_isa_vendor_ext_data_list riscv_isa_vendor_ext_list_thead;
 
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


