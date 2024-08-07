Return-Path: <devicetree+bounces-91550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46211949CE6
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 02:33:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C6C7BB20E52
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 00:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F03278C99;
	Wed,  7 Aug 2024 00:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mXBjKBf8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D96C678286
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 00:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722990721; cv=none; b=ou+0r1OInmmSywgsYSxBGc5RhCeKD+5QMR3rWnpoIRe8Lc4q53BEY2wgDuJt1dZ4QgwJtAGR7LFUiT1UFvbBT1bdxNGBiXdZPbF3r/zUEU4adcSrg0kwqI4zEbbq2jhKIY/KmHWhm7pkp4FTE1m7QRy5qs2fCkjXGUPhoIMJEPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722990721; c=relaxed/simple;
	bh=M4fQyJxhZ7NtPnQCPQfoncg1fbWtYe6qmsOGHrd6z/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pmTRPUH2S/snoSw/CdY/vp+I/QUZn/o8gluIWBZ9EYCiljOSfHqnCLr1IumTifPeq5EscAokA4nIldm7rGmdJgC/67syOfX/UCseti32lct5Euv1DJsrrYryzIF3DEwSGFAtGWMjQNgucjph5xDtajD8rPzqb47duoJXRG/sLsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=mXBjKBf8; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-268eec6c7c1so786257fac.3
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 17:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722990719; x=1723595519; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I6vSC44jl4CdBSHHJd2q6Sf8U8Y24j++yUJmo2Jtjkw=;
        b=mXBjKBf8GNlHfWdybmspycOeGD46gACYeUltrNUYDfyoZiHEkXN6dNfWDJUJAecoKa
         DxcJwTwoHJHSUFtJu7Dsom/Btf+e4WIWmfStFutHz20GYCjCjrt7qBAibcMRDR9st+oh
         HuLU0Ro84EJ8VCIddVCcd0p8wXZIVCKwTokThipVcMVFSeFhWJFG5e+n5/73aMbMpHov
         G15f7V6AIQO22H2PdCZOOQFcvG9m7ugnXsSc5XSB84j6SGUFgYHHouIg68oAxIZtaBmF
         Vke7CfycQlcJUmMWS+UpBg3gA4WvtBFfIY01+uKa4NYvhZP/8t2Ss0D2mNdfr+sHR9kO
         /puQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722990719; x=1723595519;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=I6vSC44jl4CdBSHHJd2q6Sf8U8Y24j++yUJmo2Jtjkw=;
        b=nzVA+d0+hZ1MYxu0MYWSrBIe7KmOJBFOQuWufYo38N5ehche/KkS14F+1GIHi+Q9NS
         29XsBEdxoWzG0UYmBZYh/sk+BLbUPU5HCO1NBZVuWqr/D+4jR/4XqAEhDMlqx0hrtAfj
         3pjwNuXurvBJkmCsaJsXOMNgs5ommWiTNh41MNHjkWRf5TU+iZKc0HvJ5JMtj1UQZMHP
         Z30rSVRlbG65MuUCbKXKKPJBeq1rVLZGl6ZGkEGOeqA2vAzLzaOVkFXz79n11GFBO6ii
         UveQVajX7dXi7ATC8E7i7REPX21sVCnKkW4EkpZRoVFn2OfQds60pCJJwFM7l8FBEgF+
         mSkg==
X-Forwarded-Encrypted: i=1; AJvYcCWZJix8cOpOCkvbuvTZKiJaZhsyHKmT5k2BRqeaxLDWmLYbGqLbmrvgJRt4NwsgE6mOJk7J/K3gmcyhdtNCtQZzWz5TLnKiVwhyZw==
X-Gm-Message-State: AOJu0YyGkykL4IrP6YCTwV6cG1cumBfb5x9Z4A++BWgFMZoPObtnWcDx
	vSl1qe58D4sx8k2HreKd7fBfCvj518MtDowlFsF3AJY4omWhckoMoP4NfJo6/Iw=
X-Google-Smtp-Source: AGHT+IFnj3kIuRll1qVruAYZ27yJp57qLFZHBjlVTk6x/guLrFPnuVwAodBd5IFbDfmkbBhevIxCJQ==
X-Received: by 2002:a05:6871:5b2a:b0:254:8666:cded with SMTP id 586e51a60fabf-26891d3b2acmr19881342fac.11.1722990719025;
        Tue, 06 Aug 2024 17:31:59 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7b762e9f5aasm7476174a12.6.2024.08.06.17.31.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 17:31:58 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 06 Aug 2024 17:31:43 -0700
Subject: [PATCH v9 07/13] riscv: csr: Add CSR encodings for
 CSR_VXRM/CSR_VXSAT
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-xtheadvector-v9-7-62a56d2da5d0@rivosinc.com>
References: <20240806-xtheadvector-v9-0-62a56d2da5d0@rivosinc.com>
In-Reply-To: <20240806-xtheadvector-v9-0-62a56d2da5d0@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722990701; l=1045;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=M4fQyJxhZ7NtPnQCPQfoncg1fbWtYe6qmsOGHrd6z/g=;
 b=iKtL+WyQGLyitjyGHlYu61BfGzlSRVUxwmNxH+dUMij5Yc/9iOxYeYmj/uiQ8K8XXvkTGyPSs
 /HJjj73aZMBArTPioQCOvQvyG6MSxbyqfoWVpmBWkjzkt1irCHP5J83
X-Developer-Key: i=charlie@rivosinc.com; a=ed25519;
 pk=t4RSWpMV1q5lf/NWIeR9z58bcje60/dbtxxmoSfBEcs=

The VXRM vector csr for xtheadvector has an encoding of 0xa and VXSAT
has an encoding of 0x9.

Co-developed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Charlie Jenkins <charlie@rivosinc.com>
---
 arch/riscv/include/asm/csr.h | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/include/asm/csr.h b/arch/riscv/include/asm/csr.h
index 3eeb07d73065..c0a60c4ed911 100644
--- a/arch/riscv/include/asm/csr.h
+++ b/arch/riscv/include/asm/csr.h
@@ -300,9 +300,14 @@
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
2.45.0


