Return-Path: <devicetree+bounces-24724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C0962811015
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E9D51F21373
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 11:33:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4FF424204;
	Wed, 13 Dec 2023 11:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="wRW7vS6m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6C29D5
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:15 -0800 (PST)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9ebc04891so16179151fa.0
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 03:33:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1702467194; x=1703071994; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fxiI83AWHviDA1K2goPpANE3T3h3Nt6zkBhZOZxUOr0=;
        b=wRW7vS6mmRB6RaimzdIgDNsK6NJw7bhKdfXHy2vM3cDcXt1YHDdKPFuSOiqzvbEbUt
         ZlnpU2N+qGRwg7UAlOqSx6DuDvJGaZxCNuTFSwK4us5/h/q8WZ7Ip6CRufFvFHaNCB4Q
         RFssjBuUa1STuLPUM1zyhpmEyGUSo3fs2WwINTIzhTPObP5+9pfcdLZzA7A/wNnEV6bq
         I0HzL0TZd0SuXfslCnaB0cGz6DqUxLFOdoZoxlDq9Z66Z3vPKDoJeEtZrzZQdu3p7N7U
         1rhH+6dukhcf1HY4MaUoJcWRjsPA6OKjF2zqhtRfMWe9PTQ5qXp2lvFp2Yv3qkzczodj
         xxCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702467194; x=1703071994;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fxiI83AWHviDA1K2goPpANE3T3h3Nt6zkBhZOZxUOr0=;
        b=oygLsKs3U2xVaMMxdwnce0K4+cQ/8Ij5rZTXM+RVlbYj/TMhOjg2yG/fl1SpQPdyq2
         QitSkvsPq6losCvUDC7bggzq+In55k/zRB+rq0TTvT0gWgOCs/eYLv+GNmuWOH8FtlZ9
         LrEN92/vM8ow4M6pAI9kU4vZ+8YpYlIfSFZ/WmfsR1W6XJox7AaIcKi7xTdb+UgSp5D3
         fetj51HGC21TZ0YLfsVyK50gJokLaLGS9ofmSvL8epDdtzdiMEyS/DQIogLdXnhhOjZb
         afOBQ6dGyDIDoL77XFhL6Pr4smSZ1Dj6eFkqxg4gt693Cbvj9CyOx/UScRZERNE09vYr
         ATlQ==
X-Gm-Message-State: AOJu0Yyvg/2mQbtzDvVgpuwNHckBs4wmfbzG+YAuUvPv8fkKvlusmfvx
	iR6mB+29OvVOJCleWB4r6yfmQg==
X-Google-Smtp-Source: AGHT+IGFQ9eQ0IrP8TYC+dSFSgqEE4ePc+Ww0dv4Sk8Ab3H2/aQW5oT0kIoa/QE1H0U8J0J6zKys2w==
X-Received: by 2002:a2e:bc23:0:b0:2c9:edfa:f7a0 with SMTP id b35-20020a2ebc23000000b002c9edfaf7a0mr8605317ljf.1.1702467194165;
        Wed, 13 Dec 2023 03:33:14 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:c564:f167:d072:5672])
        by smtp.gmail.com with ESMTPSA id m27-20020a05600c3b1b00b0040b38292253sm22433137wms.30.2023.12.13.03.33.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 03:33:13 -0800 (PST)
From: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>
To: linux-doc@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: =?UTF-8?q?Cl=C3=A9ment=20L=C3=A9ger?= <cleger@rivosinc.com>,
	Jonathan Corbet <corbet@lwn.net>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Robbin Ehn <rehn@rivosinc.com>
Subject: [PATCH 2/9] riscv: hwprobe: export Ztso ISA extension
Date: Wed, 13 Dec 2023 12:32:58 +0100
Message-ID: <20231213113308.133176-3-cleger@rivosinc.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231213113308.133176-1-cleger@rivosinc.com>
References: <20231213113308.133176-1-cleger@rivosinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Export the Ztso extension to userspace.

Signed-off-by: Clément Léger <cleger@rivosinc.com>
---
 Documentation/arch/riscv/hwprobe.rst  | 4 ++++
 arch/riscv/include/uapi/asm/hwprobe.h | 1 +
 arch/riscv/kernel/sys_riscv.c         | 1 +
 3 files changed, 6 insertions(+)

diff --git a/Documentation/arch/riscv/hwprobe.rst b/Documentation/arch/riscv/hwprobe.rst
index 41463b932268..10bd7b170118 100644
--- a/Documentation/arch/riscv/hwprobe.rst
+++ b/Documentation/arch/riscv/hwprobe.rst
@@ -161,6 +161,10 @@ The following keys are defined:
        defined in the RISC-V ISA manual starting from commit 056b6ff467c7
        ("Zfa is ratified").
 
+  * :c:macro:`RISCV_HWPROBE_EXT_ZTSO`: The Ztso extension is supported as
+       defined in the RISC-V ISA manual starting from commit 5618fb5a216b
+       ("Ztso is now ratified.")
+
 * :c:macro:`RISCV_HWPROBE_KEY_CPUPERF_0`: A bitmask that contains performance
   information about the selected set of processors.
 
diff --git a/arch/riscv/include/uapi/asm/hwprobe.h b/arch/riscv/include/uapi/asm/hwprobe.h
index 91fbe1a7f2e2..01ac3dc196e5 100644
--- a/arch/riscv/include/uapi/asm/hwprobe.h
+++ b/arch/riscv/include/uapi/asm/hwprobe.h
@@ -56,6 +56,7 @@ struct riscv_hwprobe {
 #define		RISCV_HWPROBE_EXT_ZVFH		(1 << 30)
 #define		RISCV_HWPROBE_EXT_ZVFHMIN	(1 << 31)
 #define		RISCV_HWPROBE_EXT_ZFA		(1ULL << 32)
+#define		RISCV_HWPROBE_EXT_ZTSO		(1ULL << 33)
 #define RISCV_HWPROBE_KEY_CPUPERF_0	5
 #define		RISCV_HWPROBE_MISALIGNED_UNKNOWN	(0 << 0)
 #define		RISCV_HWPROBE_MISALIGNED_EMULATED	(1 << 0)
diff --git a/arch/riscv/kernel/sys_riscv.c b/arch/riscv/kernel/sys_riscv.c
index f0bd7b480b7f..6564fa9e7a7f 100644
--- a/arch/riscv/kernel/sys_riscv.c
+++ b/arch/riscv/kernel/sys_riscv.c
@@ -174,6 +174,7 @@ static void hwprobe_isa_ext0(struct riscv_hwprobe *pair,
 		EXT_KEY(ZKSH);
 		EXT_KEY(ZKT);
 		EXT_KEY(ZIHINTNTL);
+		EXT_KEY(ZTSO);
 
 		if (has_vector()) {
 			EXT_KEY(ZVBB);
-- 
2.43.0


