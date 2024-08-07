Return-Path: <devicetree+bounces-91551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 183E3949CEB
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 02:33:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6B6E6B25136
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 00:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 751987C6DF;
	Wed,  7 Aug 2024 00:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="kKqcBCQw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D600D79949
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 00:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722990723; cv=none; b=O6kVABwAnDHtLSk6zrfxAsZ07hvox87RrXLjcTnwBecrKfCHJmrclkVTCFTLG6if3lmtrL0yaQzzHo/oIOboDhSI28Z3V1hFsNPcC2x0cJAR56BItf/A9MJYpkKBEGF1dLp6fOUiU9JBeXuWS3fG8MCW9+sqGnut7N9t6R0ngIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722990723; c=relaxed/simple;
	bh=oaYXOwBBOZMhEw+FYJXqumRUoO04QgRL8xTyrFp+Tyo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kISo9G9QD7n7m931SG6vWNcgBVJ5b4oPW2MhQv54/Lxma0uxpebs+HNqFw8sVa3cOocHe9PrmYQ7LkJnANTRTtVkXMmlaotz3j3DF98kInT/RybiwPBJFPrhd0FXGtt10slYCWSO373AmBhnYjDp1izJlI3ijlPyW+2Ho1BR0MA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=kKqcBCQw; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-70eae5896bcso955923b3a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2024 17:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1722990721; x=1723595521; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ddYLMqUvR1v7jAyy15+CCV5KH3Z2YWZvIvlhQOaZJPA=;
        b=kKqcBCQwMb/xAC3Jyuz1IHaT0FAkqX5Pds8MC2lsibeBVGjhZdximsB/S84oae+1la
         ZqLBpGM61LmEZ+Bg5DamAediQaVxuz5mJULExheA36mefzb1HGnoRjC5wMLncc+oumbL
         UC9heENLWOGK/y9nXYFV3kzbQ7CG50rNiYA0EBuWtU9ts9jPX0tPGwxKl8dWN8Jt8IeW
         ZI9ZBB+Ijt6vJfUn+kYrmytytEwdcxwF3uF21duWiXACKy+elRQQk9qajxEVJdjD6Oc4
         81urxufncSq6rdDHt4u5v2G5Xn+4PSIX+4YzymdeByByPP4Ub8RTtVCue5CkdjdfXnz6
         obbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722990721; x=1723595521;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ddYLMqUvR1v7jAyy15+CCV5KH3Z2YWZvIvlhQOaZJPA=;
        b=Goze3WvKk7O3CZ9unaAy/kjmp9kdmw54CGcIJfsWoKJzq2z5aGBrrF/2w0dAzVtCcc
         2PMJmg0VJyT4SMk2BQkN3DRyADmStuaN8arm9WSnQ+2Vg0J8T4ueR4PRTKTepXTLGX2k
         U2nfCTPK5Erb4t8v5yg9i8ddxux1oZbpxJxrPJ6H1HKIaKLtlhuoozZRjStsdaTp5Op3
         vCGbdo3sKUFtNFPUZbwXAfWTVx3Dt2ZVu7UnXl/tav3tfPfAKNfS2Vhzhs0LDRo3P+90
         9/8KEy4jSdGBYUK0o08Dtmv6dHZ0R9z27tTf2KJwUdDoLV4EAaV2KLI5VBSUmCYeT1lk
         CwFg==
X-Forwarded-Encrypted: i=1; AJvYcCVj0Gp4HaYcPj3TLchwPdEWuu5yutD9zZpic4k9Igjqxe9hd3HoCoiyegSg7BShQuoCAxNQLw23R5hHYIqA2bpVPYdR/+qoyOw58A==
X-Gm-Message-State: AOJu0Ywfb9gcGACwIAbNZhUqpvl6c1Bsx1YAVnCwgUJNhMzHvb7eSUIH
	mJWzcaxpQjmpsHPZ4wv+dn5ikwP3xuxi88O261oaXqAQNnYDxGUNLilZ5DD5vA8=
X-Google-Smtp-Source: AGHT+IFcZ/6e+JexEqLaDsXx8so7S9Gq3vPBi+pWGMkHMKIdQzh7eZkY9cBc0KFS263x4pFP+0JyhQ==
X-Received: by 2002:a05:6a21:9cca:b0:1c0:f288:4903 with SMTP id adf61e73a8af0-1c69958057emr19115871637.17.1722990721152;
        Tue, 06 Aug 2024 17:32:01 -0700 (PDT)
Received: from charlie.ba.rivosinc.com ([64.71.180.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7b762e9f5aasm7476174a12.6.2024.08.06.17.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Aug 2024 17:32:00 -0700 (PDT)
From: Charlie Jenkins <charlie@rivosinc.com>
Date: Tue, 06 Aug 2024 17:31:44 -0700
Subject: [PATCH v9 08/13] riscv: Add xtheadvector instruction definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240806-xtheadvector-v9-8-62a56d2da5d0@rivosinc.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1722990701; l=1957;
 i=charlie@rivosinc.com; s=20231120; h=from:subject:message-id;
 bh=oaYXOwBBOZMhEw+FYJXqumRUoO04QgRL8xTyrFp+Tyo=;
 b=1zjZaYW5gRAYdgIYTbluAaWw/nIsdeZkRYKsa2xL1/d4MWG4VnUpHTBDn3uqN26brA/68QRiE
 220j5ajGW9CC+By3FOSeiRuINJN8/W35MrJyWQjh5LzY6J9hzj8fm0W
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
2.45.0


