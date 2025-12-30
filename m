Return-Path: <devicetree+bounces-250565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84B77CEA09A
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 16:14:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A78ED3058A12
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B8631A044;
	Tue, 30 Dec 2025 15:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROTN94r2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417AD31A041
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767107350; cv=none; b=s9l4GxsliYgnj2Kj1Y8xYkCEvL1iick/o0ja/v1V7lpYSLXDEdn03GUvj2F4jtwOOxgQ2e6ngSvi1cO4S1kPy3DXWcE4okecrypBAJa+sjarTdsLRqwG9PxqTNbEBFGs6zVjM54QEFvGv8Er1oqcdGvyKLVymoNGD0CHxwN/u1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767107350; c=relaxed/simple;
	bh=Afh3am6siKW4cCqJDlIzBWE4lL+ZW45I5RRhdhsEDpo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PBxQy0oJmI3z0I60VQ7tnsScCLMAAFarwLi7vXkXOMCZ94M5US0uOdStHMRwupYOza72o1ivbkqE+V1gArDPUfLZB1gWPSme6b8OhEmfIOOlr0D09Xnlw1CbHltuiqruxSIZwKwEip8kFx9fopeI6voslwz/IV6TU/qA61qPR/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROTN94r2; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-803474aaa8bso3578337b3a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 07:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767107347; x=1767712147; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iQyulCdMEn71nJJi5suWbUyY4Ki6WEPbytXA1NTokyU=;
        b=ROTN94r2HnfEq3USVWfprDdxc6Yr8FoKluzRTepWOaJByaoTQGjVDj7nPZyJzwtVSa
         645XHWoaZSCsLvXmHZN8raQDoBL4soIVq5OzBaArrKd7Obo/HSOuUWJ/Swq+euFiWl52
         BvfheRyGH+pvxlkO8VS0X4G8kp7Mf3VNoKmhdoVD1ohg/TzMaA7pd+fhBPQthwsTjM7D
         B/6eLX0zkuI/acgbbjHWu+cj1Up7zonKmpZ5cCh7Iz1ryOBp6gan9QFc+Egt3/CULIja
         4w0KfM9UVMmArJLArM4XZCvYFRoZowzhGaII71QT8hMh0HJyaf+0s5AWiFCqFDridV/n
         YbtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767107347; x=1767712147;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iQyulCdMEn71nJJi5suWbUyY4Ki6WEPbytXA1NTokyU=;
        b=L8KBSLLouuQRTpFwn3vfL75GJuvsKV1u7hXGCwd5FGcdPj9uKvaWUQ4CLrm72Xq+19
         n08O7Pgd8jFkxvvd48XeG84TDB1DSEOmPiyqUQnQL6z1H5Jl/AECp56TbGqUFHGmMLfI
         dOaKvE8EQK+QkLDngyaEUuyYEZPzlCwMKPRZqUbpqfs2lRw9RYs6cstMDYpY3rjJ51Kv
         bBYaC/hXAHuUgr2gpBgLpN/Us4m3emjzmhuQM8HytVARTrD/9EiWUVPDaQMJh43kl9Ki
         F9wKqLpOEwYlmqUloQUIuzg2IloJqCvRD2BSJ/SehDbEFdP9wv/aX2Fsyvb6dH88bE1A
         /IzQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1gqNKqKQx5gT0Aernn6cGubb7pmhb4p8SFwdQzlRAoE9JpQ5rIx1q/Ayh/WDA1RVqZ4Cw0THhD2jo@vger.kernel.org
X-Gm-Message-State: AOJu0Ywb02O3uQKYtHjmVLIf0GldIgtNMp17N+2g5VrTO+EjwnFOQv/U
	qG1m3sdKmM5ONMvp0pDMulDxxfMiPJ6COxy8z/Eobpuh+DOk67QEHJlH
X-Gm-Gg: AY/fxX5dzfG+DT32lacGX/VYK4Q8L5aI8ApRTyO08gtamu7M7bko14xR404p8DjdBk+
	UN8E2cmqTxChR8dvYRKX22jDk3tB1DmXlLhxXb30wC4k2etfkW+7Zoxl+k2SNuB3Z+FZ092UC77
	SU7Z/qJjkl4qPWMLYdbZhZu/zT3AcKRdgq+ywD865QKuiLKMXIpkM0+4B3rHCE4dav5SfHOpu/D
	fcwduOy8ygO8SepVYT6PQo8hqgEB0ID39cP1HlsOiTRZBuE2jcCFTv95guOCeWIUnnWdfX72fK6
	q9R2F/nfYUNep7HNSlQL/chr4kZGOc3I2Lj3jNLLhw5+rEowBTpcbxu7trztQqu6iW7ZjYJkqlR
	DWZD1H/pN6WRYiezppqzDGqml0KXxbaA4U4reU0G0QcIcy97ym2fMCpIm5zYsPfc2VoEPVMnG0d
	R8BnLv
X-Google-Smtp-Source: AGHT+IF60EB1pg13UduiDmMbSYai3+Ff4fdDR7O5w/Nphtaxj7bPzVcEc8NOzQFNo0ngkbP5FlHkEw==
X-Received: by 2002:a05:6a00:3404:b0:7f6:faf4:d7e5 with SMTP id d2e1a72fcca58-7ff54beaa48mr30331057b3a.23.1767107346590;
        Tue, 30 Dec 2025 07:09:06 -0800 (PST)
Received: from localhost ([211.94.234.112])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e48f3d7sm32981085b3a.51.2025.12.30.07.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 07:09:06 -0800 (PST)
From: Encrow Thorne <jyc0019@gmail.com>
To: jyc0019@gmail.com
Cc: alex@ghiti.fr,
	andi.shyti@kernel.org,
	aou@eecs.berkeley.edu,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dlan@gentoo.org,
	guodong@riscstar.com,
	krzk+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	p.zabel@pengutronix.de,
	palmer@dabbelt.com,
	pjw@kernel.org,
	robh@kernel.org,
	spacemit@lists.linux.dev,
	troy.mitchell@linux.spacemit.com,
	troymitchell988@gmail.com
Subject: [PATCH 3/3] riscv: dts: spacemit: add reset property
Date: Tue, 30 Dec 2025 23:06:53 +0800
Message-Id: <20251230150653.42097-3-jyc0019@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251230150653.42097-1-jyc0019@gmail.com>
References: <20251230-i2c-reset-v3-0-7500eb93b06e@gmail.com>
 <20251230150653.42097-1-jyc0019@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add resets property to K1 I2C node.
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 7818ca4979b6..085987643638 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -367,6 +367,7 @@ i2c0: i2c@d4010800 {
 				 <&syscon_apbc CLK_TWSI0_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI0>;
 			interrupts = <36>;
 			status = "disabled";
 		};
@@ -380,6 +381,7 @@ i2c1: i2c@d4011000 {
 				 <&syscon_apbc CLK_TWSI1_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI1>;
 			interrupts = <37>;
 			status = "disabled";
 		};
@@ -393,6 +395,7 @@ i2c2: i2c@d4012000 {
 				 <&syscon_apbc CLK_TWSI2_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI2>;
 			interrupts = <38>;
 			status = "disabled";
 		};
@@ -406,6 +409,7 @@ i2c4: i2c@d4012800 {
 				 <&syscon_apbc CLK_TWSI4_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI4>;
 			interrupts = <40>;
 			status = "disabled";
 		};
@@ -419,6 +423,7 @@ i2c5: i2c@d4013800 {
 				 <&syscon_apbc CLK_TWSI5_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI5>;
 			interrupts = <41>;
 			status = "disabled";
 		};
@@ -443,6 +448,7 @@ i2c6: i2c@d4018800 {
 				 <&syscon_apbc CLK_TWSI6_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI6>;
 			interrupts = <70>;
 			status = "disabled";
 		};
@@ -546,6 +552,7 @@ i2c7: i2c@d401d000 {
 				 <&syscon_apbc CLK_TWSI7_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI7>;
 			interrupts = <18>;
 			status = "disabled";
 		};
@@ -559,6 +566,7 @@ i2c8: i2c@d401d800 {
 				 <&syscon_apbc CLK_TWSI8_BUS>;
 			clock-names = "func", "bus";
 			clock-frequency = <400000>;
+			resets = <&syscon_apbc RESET_TWSI8>;
 			interrupts = <19>;
 			status = "disabled";
 		};
-- 
2.25.1


