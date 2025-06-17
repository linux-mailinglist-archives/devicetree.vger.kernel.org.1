Return-Path: <devicetree+bounces-186535-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EC7C6ADC494
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD6B73AB072
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:21:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71D9D296142;
	Tue, 17 Jun 2025 08:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="eixLJDLF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ED5295DB2
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:20:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148423; cv=none; b=hxKrYZTqmHfVogmiERBsUSEdF3GxcgoBVoRw+5nBBNIUYJ/B62Il84zWxvoyOCJSTQ+9lA0wnKVYRbWT7tSasHXmymVQBW+6N+yQPTZWAvAa2YCobBwLzEEmoyjeH1SVu94P9TJG3em08GYoFUHxhYhlrAi6wGltPUGUUR7jP50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148423; c=relaxed/simple;
	bh=qjRr++3nK/S0s+lP3ALUUbzeqRmkxOyEdtHPJW9G1pI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SLPdw6S/zZkqCVb/2VWp8F//ew8b3Aqwfq0xJOz8/aC7uR0eOr0xq5cKs3dTWO+2BLW7RUzO6kzTsdmasUtRJC1LbIO5I6i81I0sbo2n4gxI4kIugS+elD5ymJE0P9JHqm8D7TQ6kgqZM4HYFV+YuwJyqaQWlLeZVFWV5rtSc2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=eixLJDLF; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-235d6de331fso65672445ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:20:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750148421; x=1750753221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J2ul8xxfJRC/IslU3NO7LvIavTukETIYjBPpB2s1Bks=;
        b=eixLJDLFtLfEu6BgIlsNUFus2iT+UGTyHiyLmAiFhXvY9zT2Srpx8VZxW+QaIBD3nc
         LV9/0vyzNhsNgtaXYNFnbd4qpeqHN7+G6Y3bylL+OOvZR0ZYyFdvJHNtgveM8VwLy0xb
         YApCNS0WuCLew21G0jpeCqn5hlylKa5viI5bY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148421; x=1750753221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J2ul8xxfJRC/IslU3NO7LvIavTukETIYjBPpB2s1Bks=;
        b=GYg7IaJybCZDbwzRclWzVU4i+WJofDL/HYquar4bwtlljb7utr0nNLn7U+KLNVKhQq
         68ExEHnNzsxgM0avOcm4So1dbi1iqV4jFdsPrWmwxCAPfRwXh82+lOttoF28NiluEkSS
         59++iJPMLFFBTjl1fwvsUK7F7xV7FZ4dXAk9Q6QGK1c+XAqvQWfuAuJvOmt28ynwo6hS
         l8IyWYRKdGG/gRIyr0kOFi+QDCEX4fc29pzTbD3RMWQgEbifJJnac53fhLfk5oEd/Mbo
         WXIg6vn+OBs/4Pp0pFTrGuUl7HOCRPT5K8bVEKSB8NUglr9Z7E0LnRC1jv4n7blaAdDm
         GjJQ==
X-Forwarded-Encrypted: i=1; AJvYcCVZcYDOeYH1+LzxIJg2PrbdDTpdA4d0BAyqU4WpZ3fFmO/4yAqVxKvrCT7Ec+woqsCjnxm0ON+MCF3j@vger.kernel.org
X-Gm-Message-State: AOJu0YzzLTmar7LTc/3/4qvIjq2BHFNsrp3eWF3Iyel9uYbfpeGCXAHC
	FezLBMkCyuIdGGr9XVkhXSghLOt1VVtQm/O5GiKPGQT99C2uZAGjwEgJCZq1v0wcxA==
X-Gm-Gg: ASbGnctiWwh5Iuvaz/riH57OgM3ty5piQdFFaYwIVzxOmt+4lWkQBWteWtl1EIB/i1A
	PMtuKRW6Zuqc6BF3Qd93Wq4ZXYSSgDpzu0uG67uf8l9gvdSt3dupCVu5XSR8eUx/yIkjcnS0Rsa
	+Z3WjETASWtj6uA1ZfhQe7tJcpLv87CXHS/XbyvWgIBHidEUviASA89hck0T8NNACPNF+UkTOvx
	D0x4ufI/IdaIuDtCMUn15iBHvwy+NUBqikiW/X4j3B0NZDamJfaO8wsP5olhPfQFjpL1NgcOPI8
	7WwZhzmI9PJuoY8wFoLiCsC09l1TlemiHLEtG3TSUuhgzA7n5QTFoc4UGSNcP9Tq59uKnNRO3yE
	fGvAc
X-Google-Smtp-Source: AGHT+IEY70uZwkZ9fnRIDDmKpg9uBUC73hKP0ryT3ds2gfv9hOkjBFwKd6TZX/WRDjwEzvut9oH02w==
X-Received: by 2002:a17:902:da85:b0:235:ec11:f0ee with SMTP id d9443c01a7336-2366affb250mr198366645ad.14.1750148421026;
        Tue, 17 Jun 2025 01:20:21 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:24a1:2596:1651:13d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781f7sm74598885ad.110.2025.06.17.01.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:20:20 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-input@vger.kernel.org
Subject: [PATCH v3 5/6] arm64: dts: mediatek: mt8186: Merge Voltorb device trees
Date: Tue, 17 Jun 2025 16:20:02 +0800
Message-ID: <20250617082004.1653492-6-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.692.g299adb8693-goog
In-Reply-To: <20250617082004.1653492-1-wenst@chromium.org>
References: <20250617082004.1653492-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

There are only two different SKUs of Voltorb, and the only difference
between them is whether a touchscreen is present or not. This can be
detected by a simple I2C transfer to the address, instead of having
separate device trees.

Merge the two device trees together and simplify the compatible string
list. The dtsi is still kept separate since there is an incoming device
that shares the same design, but with slightly difference components.

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile               |  3 +--
 .../mediatek/mt8186-corsola-voltorb-sku589824.dts   | 13 -------------
 ...orb-sku589825.dts => mt8186-corsola-voltorb.dts} |  5 ++---
 3 files changed, 3 insertions(+), 18 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
 rename arch/arm64/boot/dts/mediatek/{mt8186-corsola-voltorb-sku589825.dts => mt8186-corsola-voltorb.dts} (76%)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index f68865d06edd..a8b8796276aa 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -76,8 +76,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacool-sku327681.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacool-sku327683.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacruel-sku262144.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacruel-sku262148.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-voltorb-sku589824.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-voltorb-sku589825.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-voltorb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku0.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
deleted file mode 100644
index d16834eec87a..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
+++ /dev/null
@@ -1,13 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2022 Google LLC
- */
-
-/dts-v1/;
-#include "mt8186-corsola-voltorb.dtsi"
-
-/ {
-	model = "Google Voltorb sku589824 board";
-	compatible = "google,voltorb-sku589824", "google,voltorb",
-		     "mediatek,mt8186";
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589825.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dts
similarity index 76%
rename from arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589825.dts
rename to arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dts
index 45e57f7706cc..cc805408a8b7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589825.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dts
@@ -7,9 +7,8 @@
 #include "mt8186-corsola-voltorb.dtsi"
 
 / {
-	model = "Google Voltorb sku589825 board";
-	compatible = "google,voltorb-sku589825", "google,voltorb",
-		     "mediatek,mt8186";
+	model = "Google Voltorb board";
+	compatible = "google,voltorb", "mediatek,mt8186";
 };
 
 &i2c1 {
-- 
2.50.0.rc2.692.g299adb8693-goog


