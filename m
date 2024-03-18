Return-Path: <devicetree+bounces-51216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5A087E784
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 11:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 42ABF1F22C80
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 10:41:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 496AC2E85A;
	Mon, 18 Mar 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="jCYnzivw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9581537707
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 10:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710758423; cv=none; b=VLssaLp4VZMGLc1xFOy4zHBdSBRLYHiEBXw+ufJlP6amaYcZqmf9PG/ARvnxDkRfy3P7rKHLDUy1V15qJFxvHffzEFbH9SiJxlYqBXVRvzjLRng4g+alXHlx9b3MjDOKv2LrAg++rWvb2cnjSY0AM/C6sHunM0um/Hjn1yLfM58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710758423; c=relaxed/simple;
	bh=uubmLa91yNB8dZEdaOLb52luySkhGjATl5lAE4q/Ev4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p14LNajHX3JQf9keXSzHdNStYaSZk5dBZjIyPfnJHMpXyQ955ewAbDZcO44cH3AX7AzvmAjIJGQNUmW00ZBGznSf+DtLlOlGdZbg9H1DPPsq3agtkVQlqKKeQP0DVHYx5AX/TIwHcA7BFvPy7DEi5SMQHQkc1bkEuH0ytosJHVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=jCYnzivw; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-6e6b6e000a4so2972838b3a.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 03:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710758421; x=1711363221; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pHRXW9BfVlGJGTuBqz21x9jZhOCb5ENaxkoeEzRsV8g=;
        b=jCYnzivwTIVsESyhJokuxIhy0ZGrpE1xC3jZ52wpRNqB+c/fkajv0EZVA8IoB3GXD7
         iCGqWPPopWif+42c6UaSd/ReUzRoMouHGDyZ9lW7pBV5ZRiPtHeLPSQwPzGJEWALdnjg
         4/xrIWLVPdSLyxyzRa/MJ1pQAwl7yhKP9+GnmQA/bf/oZohb5c4JKuFT8Cp6qsjj5K3X
         1neQow0MfiW7hCOOgQK+hynlJEQRCRdjI39tVXnC9QsSGt7hul9+dxGz8WTRePipBgdj
         MBwbVQ1j7WpeY8H9vjsfQwUPqLZZORGHKaYSNtt9XJpAS4gn6WsocyF6VD8pSn9/nK47
         1NyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710758421; x=1711363221;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pHRXW9BfVlGJGTuBqz21x9jZhOCb5ENaxkoeEzRsV8g=;
        b=flVMYvnQveHp9BV22bxJga/4jPqModnIkOWyQjr6I1OWNxb6Sah5B5Lg3jaI8Gf5aj
         FCFXauctb0YtREifmg7nuo5+rRD6A1H6N+dkZ2ACNZ0A76MDrm20VZXHDwrC/gTpLQ3a
         44z9uItTzwA/RDfc0ela3LiE8yr+2lWHMjNkHEkOgW8QW0gTqUovCd8NQW+PjZfNs5m+
         y0854Pju1VDz1ZmAVOoU1/lZwCdhBbjjiRhucfHZmheI6KcNj7ZQr4VihLvQ6Iqf8WQV
         gAobnv3/cQeUnxI6Z/YfLRY9OHYpYlZM+Bsvp3BSMkNxytx/zcEqwO8a2M/9klFp5+5Y
         UUeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPjiA2mCbfrJHYAeHk/xE0azdVZbNzhUjt312p6zOGS7gvmH1tllGShSD9hOHGkQmLH75jtKKPjC74rWB3wakGHLenyHKJt4n4qg==
X-Gm-Message-State: AOJu0YyUTj7RJ+TM3BmBCAPzcQ7WsFne+N10Jnn5vzbJxaswHzG3Z1Mv
	gN2MqeBamCBnP6w47danN8k8wnc11zSAEPunKbkEYSHpa7iCb0NdUgCmwMAYmQs=
X-Google-Smtp-Source: AGHT+IG9HD964lIVN8dn6HAV4SJOQzPvmgY/XIApnnZHHKJ2o1e4fnnwwXWsSW7pnppyra0VzXddow==
X-Received: by 2002:a05:6a00:17a6:b0:6e6:9dfb:7e71 with SMTP id s38-20020a056a0017a600b006e69dfb7e71mr22547429pfg.2.1710758420941;
        Mon, 18 Mar 2024 03:40:20 -0700 (PDT)
Received: from [127.0.1.1] (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id c11-20020a056a00008b00b006e647716b6esm7838969pfj.149.2024.03.18.03.40.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Mar 2024 03:40:20 -0700 (PDT)
From: Andy Chiu <andy.chiu@sifive.com>
Date: Mon, 18 Mar 2024 18:39:59 +0800
Subject: [PATCH v3 6/7] riscv: hwprobe: add zve Vector subextensions into
 hwprobe interface
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240318-zve-detection-v3-6-e12d42107fa8@sifive.com>
References: <20240318-zve-detection-v3-0-e12d42107fa8@sifive.com>
In-Reply-To: <20240318-zve-detection-v3-0-e12d42107fa8@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Andy Chiu <andy.chiu@sifive.com>, Vincent Chen <vincent.chen@sifive.com>, 
 Heiko Stuebner <heiko@sntech.de>, Conor Dooley <conor.dooley@microchip.com>, 
 Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Jonathan Corbet <corbet@lwn.net>
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Palmer Dabbelt <palmer@rivosinc.com>, 
 Greentime Hu <greentime.hu@sifive.com>, Guo Ren <guoren@kernel.org>, 
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org, 
 =?utf-8?q?Cl=C3=A9ment_L=C3=A9ger?= <cleger@rivosinc.com>
X-Mailer: b4 0.13-dev-a684c

The following Vector subextensions for "embedded" platforms are added
into RISCV_HWPROBE_KEY_IMA_EXT_0:
 - ZVE32X
 - ZVE32F
 - ZVE64X
 - ZVE64F
 - ZVE64D

Extensions ending with an X indicates that the platform doesn't have a
vector FPU.
Extensions ending with F/D mean that whether single (F) or double (D)
precision vector operation is supported.
The number 32 or 64 follows from ZVE tells the maximum element length.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Clément Léger <cleger@rivosinc.com>
---
Changelog v2:
 - zve* extensions in hwprobe depends on whether kernel supports v, so
   include them after has_vector(). Fix a typo. (Clément)
---
 Documentation/arch/riscv/hwprobe.rst  | 15 +++++++++++++++
 arch/riscv/include/uapi/asm/hwprobe.h |  5 +++++
 arch/riscv/kernel/sys_hwprobe.c       |  5 +++++
 3 files changed, 25 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index b2bcc9eed9aa..d0b02e012e5d 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -188,6 +188,21 @@ The following keys are defined:
        manual starting from commit 95cf1f9 ("Add changes requested by Ved
        during signoff")
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVE32X`: The Vector sub-extension Zve32x is
+    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVE32F`: The Vector sub-extension Zve32f is
+    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64X`: The Vector sub-extension Zve64x is
+    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64F`: The Vector sub-extension Zve64f is
+    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
+
+  * :c:macro:`RISCV_HWPROBE_EXT_ZVE64D`: The Vector sub-extension Zve64d is
+    supported, as defined by version 1.0 of the RISC-V Vector extension manual.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 9f2a8e3ff204..b9a0876e969f 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -59,6 +59,11 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define		RISCV_HWPROBE_EXT_ZACAS		(1ULL << 34)
 #define		RISCV_HWPROBE_EXT_ZICOND	(1ULL << 35)
+#define		RISCV_HWPROBE_EXT_ZVE32X	(1ULL << 36)
+#define		RISCV_HWPROBE_EXT_ZVE32F	(1ULL << 37)
+#define		RISCV_HWPROBE_EXT_ZVE64X	(1ULL << 38)
+#define		RISCV_HWPROBE_EXT_ZVE64F	(1ULL << 39)
+#define		RISCV_HWPROBE_EXT_ZVE64D	(1ULL << 40)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwprobe.c
index 8cae41a502dd..c8219b82fbfc 100644
--- a/arch/riscv/kernel/sys_hwprobe.c
+++ b/arch/riscv/kernel/sys_hwprobe.c
@@ -113,6 +113,11 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZICOND);
 
 		if (has_vector()) {
+			EXT_KEY(ZVE32X);
+			EXT_KEY(ZVE32F);
+			EXT_KEY(ZVE64X);
+			EXT_KEY(ZVE64F);
+			EXT_KEY(ZVE64D);
 			EXT_KEY(ZVBB);
 			EXT_KEY(ZVBC);
 			EXT_KEY(ZVKB);

-- 
2.44.0.rc2


