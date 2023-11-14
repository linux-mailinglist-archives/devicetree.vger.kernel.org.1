Return-Path: <devicetree+bounces-15651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 690877EB1B8
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 99FB41C20ABF
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 14:13:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 808B141202;
	Tue, 14 Nov 2023 14:13:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="AUR4TuLv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A2841216
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:13:38 +0000 (UTC)
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1709D1B5
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:34 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id af79cd13be357-778a25cad6dso14498185a.0
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 06:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699971213; x=1700576013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PrGNrJ4Mz4+id5eBYM8EQz0/YakC3IvStBxc6baL/D0=;
        b=AUR4TuLvfJbZR3Sib1u+kmcEBsxPLwyVRxWQY5i3BKL0Ev0WusNosIBlHEqH68qx0r
         KOfHBCqAxxrc5omTFCBVC7yF7rb5inDRTwn4hmoEBWqO4u0YvZmBT2H0TxJaAMn38y6m
         BzdntVnbsi9wHXILj4WZyXyZH71/23GWoJRuebXX2fztDpstJq49gd7wKnnShEUFDyf4
         Z48KH4j++X0VaWC3E2c1j6Nj+96432bQ5qOAPGGTrYlmVlwZf3C+eizECbT/zuTLWl9w
         wMwAjdnKYDtatFGeGDfSvsdpvmKnRI+dIXQZ6Xm5/nEfL35DaepkwaNhiJXoCu8g2ADy
         aW7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699971213; x=1700576013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PrGNrJ4Mz4+id5eBYM8EQz0/YakC3IvStBxc6baL/D0=;
        b=VCaTHJV73ctOuLVfMwOIYWvmsy4V7Tl5FVj9mQxbTbjhTwMlOHd2+HnWy5oSu/W0R6
         N0MlQdnbXag/cZ2jgy1s8eEn92C5kr1i/SiBzUQWx7er82KVFGkM/8O0xchuD+UKwWso
         4Ac7BZyslg1+pVrJb51Ulsk/SKkjgKRMW2iBwUuSlO5PMJEpqNcIBOAz5Yjts0OFVg/Z
         ebihx+PNWrvTDBcsLC8lOtKwIkL9Cq/jruKJebydlF/YA7GWQRsysM+AxlhAOIDVkM/D
         OF8b1bTLYp396UVcrlvPyWbMXySD1mUbzxDksIcH9piEWOPxGPpHnBEmA8+dpkbwQDyb
         W7mA==
X-Gm-Message-State: AOJu0YwlBVk5sV/EYTnW5F3AgYv3Nk3rjOskRvZ65yS2pW9CQnBzcTbm
	vSZ1zxNTDiur5twO+2YnPFfs/A==
X-Google-Smtp-Source: AGHT+IFZD2b/EdJCKXaxNJw+Q4jC4YD3sm2mqseVgTheJfANyM9xUv2Lh4hYASCwt6RNtJiG1DYtgw==
X-Received: by 2002:a05:620a:28d4:b0:773:a789:cd15 with SMTP id l20-20020a05620a28d400b00773a789cd15mr2089252qkp.6.1699971213032;
        Tue, 14 Nov 2023 06:13:33 -0800 (PST)
Received: from carbon-x1.. ([12.186.190.2])
        by smtp.gmail.com with ESMTPSA id m2-20020a05620a220200b00777611164c5sm2701263qkh.106.2023.11.14.06.13.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 06:13:32 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Palmer Dabbelt <palmer@rivosinc.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Jonathan Corbet <corbet@lwn.net>,
	Andrew Jones <ajones@ventanamicro.com>,
	Evan Green <evan@rivosinc.com>,
	Conor Dooley <conor@kernel.org>,
	Samuel Ortiz <sameo@rivosinc.com>,
	Jerry Shih <jerry.shih@sifive.com>
Subject: [PATCH v4 02/20] riscv: hwprobe: export missing Zbc ISA extension
Date: Tue, 14 Nov 2023 09:12:38 -0500
Message-ID: <20231114141256.126749-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231114141256.126749-1-cleger@rivosinc.com>
References: <20231114141256.126749-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

While Zba and Zbb were exported through hwprobe, Zbc was not. Export it.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 5 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 7b2384de471f..3f71da935a65 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -80,6 +80,9 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZICBOZ`: The Zicboz extension is supported, as
        ratified in commit 3dd606f ("Create cmobase-v1.0.pdf") of riscv-CMOs.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZBC` The Zbc extension is supported, as defined
+       in version 1.0 of the Bit-Manipulation ISA extensions.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index b659ffcfcdb4..aca5abc7ebee 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -30,6 +30,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZBB		(1 << 4)
 #define		RISCV_HWPROBE_EXT_ZBS		(1 << 5)
 #define		RISCV_HWPROBE_EXT_ZICBOZ	(1 << 6)
+#define		RISCV_HWPROBE_EXT_ZBC		(1 << 7)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index c712037dbe10..7a40145e9628 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -162,6 +162,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZBB);
 		EXT_KEY(ZBS);
 		EXT_KEY(ZICBOZ);
+		EXT_KEY(ZBC);
 #undef EXT_KEY
 	}
 
-- 
2.42.0


