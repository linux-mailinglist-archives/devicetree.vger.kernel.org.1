Return-Path: <devicetree+bounces-14341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C90A67E3A88
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 11:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 056B31C20C4B
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 10:56:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA9CB2D039;
	Tue,  7 Nov 2023 10:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="WknoiwOd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E452D033
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 10:56:25 +0000 (UTC)
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADD18135
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 02:56:22 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2c5bacef31aso11257761fa.0
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 02:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1699354580; x=1699959380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VpHOk3VsdqfpPenBw33m97LFdLmT8/1+lQVgF+3Qq2k=;
        b=WknoiwOdL03mnzofkGnOWECirg656GaXTK2JzbrQynYWpVDUl99fv0TqUpkPBeay69
         9NwMy8QQYjXrEyx4N5dU4bk6zeRYLzZzjk1Y8QjLC5chbDTVTjySLqhzdmli/HFD0JhL
         DN7NnWhrVJQ8+wyyVZ1iJX1urTSoNMJ2OhH/ngoPui3Ys1/pNN1G8spsyvcdLYbx5z3P
         HzhyCmIW/FHAdNmeIE6uEdSpQznhRWX0V4LWv8p5fm7XWPfDNz4Sd5EZhzwmBRlMg32B
         bmIzX7Is0h3yBASnqbNdKBfnJ2Q2UaG7xlz14qdlbukrAMWBoVVL7THHc9K3+Styk5KW
         Bt0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699354580; x=1699959380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VpHOk3VsdqfpPenBw33m97LFdLmT8/1+lQVgF+3Qq2k=;
        b=YuSG/WxDb5daVa9QmYeoASMH9JbkCRuCfjAQylhHC78cgUgxl8gYX7NhjttoLrsc1Q
         GoN4u/2mlvbnp4Zvjt0I7ElbfGtE7kp47F5N9tUJKBpxOjhBBpfm4KjsGBzKddFOYu01
         1V5ZbB9ZrPkp70NgdcttuNWcIIYp2DqgbUhNdslRYS1p9kWzaYjh64uatsVEm49IS+ZT
         vVEsZeDrb8zcmQMae58M1IeT28talu5Q3IKwFckaKgyqQebE8S3TutEvWA+E8VfgbHnb
         OWPEt6Kv8RykyggrCcGjuBgf44LaGEDanG8DskobMiX7VDGLhO6jT3iExIUnoYSCupO2
         7Png==
X-Gm-Message-State: AOJu0YzMkf/VJ5+1qVGMeI33Yo7o3+jSIUBlJifZ7+QCVJ1pRzff5ndr
	SzS1ScxS28v6Z7WqUy0LZ9IrYA==
X-Google-Smtp-Source: AGHT+IE+q2UlEWc6Qe9yztVIb0UfK9b3Z8SW8kIF2An9w1ZlDSwjmA5V2PrJhbGY+LL9yCEavwTs1A==
X-Received: by 2002:a2e:980e:0:b0:2bc:d505:2bf3 with SMTP id a14-20020a2e980e000000b002bcd5052bf3mr22410080ljj.1.1699354579680;
        Tue, 07 Nov 2023 02:56:19 -0800 (PST)
Received: from carbon-x1.. ([2a01:e0a:999:a3a0:7db3:bdd9:4cab:2ee3])
        by smtp.gmail.com with ESMTPSA id n30-20020a05600c501e00b00405442edc69sm15396853wmr.14.2023.11.07.02.56.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Nov 2023 02:56:18 -0800 (PST)
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
Subject: [PATCH v3 15/20] riscv: add ISA extension parsing for Zvfh[min]
Date: Tue,  7 Nov 2023 11:55:51 +0100
Message-ID: <20231107105556.517187-16-cleger@rivosinc.com>
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

Add parsing for Zvfh[min] ISA extension[1] which were ratified in
june 2023 around commit e2ccd0548d6c ("Remove draft warnings from
Zvfh[min]") in riscv-v-spec[2].

Link: https://drive.google.com/file/d/1_Yt60HGAf1r1hx7JnsIptw0sqkBd9BQ8/view [1]
Link: https://github.com/riscv/riscv-v-spec/commits/e2ccd0548d6c [2]
Signed-off-by: Clément Léger <cleger@rivosinc.com>
Reviewed-by: Evan Green <evan@rivosinc.com>
---
 arch/riscv/include/asm/hwcap.h | 2 ++
 arch/riscv/kernel/cpufeature.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/riscv/include/asm/hwcap.h b/arch/riscv/include/asm/hwcap.h
index 5b57b24db60c..752be910e7c3 100644
--- a/arch/riscv/include/asm/hwcap.h
+++ b/arch/riscv/include/asm/hwcap.h
@@ -84,6 +84,8 @@
 #define RISCV_ISA_EXT_ZFH		66
 #define RISCV_ISA_EXT_ZFHMIN		67
 #define RISCV_ISA_EXT_ZIHINTNTL		68
+#define RISCV_ISA_EXT_ZVFH		69
+#define RISCV_ISA_EXT_ZVFHMIN		70
 
 #define RISCV_ISA_EXT_MAX		128
 #define RISCV_ISA_EXT_INVALID		U32_MAX
diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeature.c
index baa8edfb0e6a..0b9d16ea71f1 100644
--- a/arch/riscv/kernel/cpufeature.c
+++ b/arch/riscv/kernel/cpufeature.c
@@ -282,6 +282,8 @@ const struct riscv_isa_ext_data riscv_isa_ext[] = {
 	__RISCV_ISA_EXT_DATA(zksh, RISCV_ISA_EXT_ZKSH),
 	__RISCV_ISA_EXT_SUPERSET(zvbb, RISCV_ISA_EXT_ZVBB, riscv_zvbb_exts),
 	__RISCV_ISA_EXT_DATA(zvbc, RISCV_ISA_EXT_ZVBC),
+	__RISCV_ISA_EXT_DATA(zvfh, RISCV_ISA_EXT_ZVFH),
+	__RISCV_ISA_EXT_DATA(zvfhmin, RISCV_ISA_EXT_ZVFHMIN),
 	__RISCV_ISA_EXT_DATA(zvkb, RISCV_ISA_EXT_ZVKB),
 	__RISCV_ISA_EXT_DATA(zvkg, RISCV_ISA_EXT_ZVKG),
 	__RISCV_ISA_EXT_BUNDLE(zvkn, riscv_zvkn_bundled_exts),
-- 
2.42.0


