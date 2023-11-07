Return-Path: <devicetree+bounces-14328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 290157E3A64
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B2611C20C2D
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E244F2C878;
	Tue,  7 Nov 2023 10:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="mslxwdHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2FC2C85C
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:10 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1CF712C
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:04 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40a279663a2so3105625e9.1
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354563; x=1699959363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UA6TaO+YV3P6uG5ehiL6SbNfsZ4OUqVSTDbxUXfxm5E=;
        b=mslxwdHQuWaxcrulAW+VEopaf9tk0MPHPvLPkbFz93m2isk4gU8wKtuq33s71LZeXy
         iLQBVSbA68L00sFT70I10E8nKpr6Ym4+xXu8cT6mag8ZIGzFadGA6Ox27b9SKQOSEyXX
         XKBxsssx+VTa4F5ZtojQcOEgbuxp9C8fFVli46UxfNtyBbhylGlKH7EWUZUX0YJFQ044
         ZF4k5iAhcFfkSDZFIxaIovcTBOQOE2hO02iXlipf99Qq7ZmZ+/DGKCPnSa/z8xyUEfQh
         +D1DAnpHe8BrBblLxxOCnDAhjt9FeaCzeqWgz0EKJlULfZjply/xm9N9Y4N0qNsaeY+Q
         S6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354563; x=1699959363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UA6TaO+YV3P6uG5ehiL6SbNfsZ4OUqVSTDbxUXfxm5E=;
        b=jbZtvFdZjRjj/QXP9ocgzAsXu2HkUWW2rtiPgwJGkEmGjUzZUKHSHzn707rGvEDZBD
         AgPjc7/QBW9LpXeOkAw/8npMdh9KkerSasJWIU0TwcAMUFcDMsjFd5TTQZFZsBbkshuR
         zPiaD1qXNbbHM+1Go8W+JpxxEH4B4CJuh6LaQ2dsP0NsePUX0ncJs9KTwenfzP0+DJAr
         CJryeB2/hHQ8q2F180pDersQxV9X7nYLxPFKk9ZUCRFC/CnGD6bT45SQGhnBIHK2mI03
         df+oWWDGBefhAQEnRWwWnLXiusPSaqUt1W2dxiCRT85cd/x7EpSzxajtRplceibMtrxw
         VHiA==
X-Gm-Message-State: AOJu0YzNXC71CvblV1uDK60S31cLUkIzB6UHQQvJJor/h3E0QI1gpBRc
	eSDKFkMak22aja34jq54lmbV7A==
X-Google-Smtp-Source: AGHT+IEDB5qlOk6FgrKsa3qj9SE6v/Kfu6peNUysoGxbasqez5sPqF/BIOxq9sfcbgB58kS3oj4koA==
X-Received: by 2002:a05:600c:3b93:b0:405:3cc1:e115 with SMTP id n19-20020a05600c3b9300b004053cc1e115mr25948840wms.3.1699354562728;
        Tue, 07 Nov 2023 02:56:02 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:01 -0800 (PST)
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
	Samuel Ortiz <sameo@rivosinc.com>
Subject: [PATCH v3 02/20] riscv: hwprobe: export missing Zbc ISA extension
Date: Tue,  7 Nov 2023 11:55:38 +0100
Message-ID: <20231107105556.517187-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107105556.517187-1-cleger@rivosinc.com>
References: <20231107105556.517187-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

While ISA string parsing has been added, Zbc was not export through
hwprobe interface. Export and document this extension.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 3 +++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 5 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index a52996b22f75..ecc0307c107e 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -77,6 +77,9 @@ The following keys are defined:
   * :c:macro:`RISCV_HWPROBE_EXT_ZBS`: The Zbs extension is supported, as defined
        in version 1.0 of the Bit-Manipulation ISA extensions.
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZBC` The Zbc extension is supported, as defined
+       in version 1.0 of the Bit-Manipulation ISA extensions.
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index d43e306ce2f9..dcef5c33c009 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -29,6 +29,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZBA		(1 << 3)
 #define		RISCV_HWPROBE_EXT_ZBB		(1 << 4)
 #define		RISCV_HWPROBE_EXT_ZBS		(1 << 5)
+#define		RISCV_HWPROBE_EXT_ZBC		(1 << 6)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index 49aa4e82797c..382cd71129c6 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -162,6 +162,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		CHECK_ISA_EXT(ZBA);
 		CHECK_ISA_EXT(ZBB);
 		CHECK_ISA_EXT(ZBS);
+		CHECK_ISA_EXT(ZBC);
 #undef CHECK_ISA_EXT
 	}
 
-- 
2.42.0


