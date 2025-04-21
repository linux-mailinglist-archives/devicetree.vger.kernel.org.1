Return-Path: <devicetree+bounces-168944-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D298A94F45
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:14:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 081EA1892AAB
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BB43263C91;
	Mon, 21 Apr 2025 10:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PvMscab+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10D826156F
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230404; cv=none; b=Sg5l2ZZ3ev+amGN5arYT8GRu40AoF+2XWKtLYPxxOnoroN9JvxlCLqdquSGvqBbY20yW9YP24tYwctzs7M4xbOCOPpd4PkRb+L0QMwU0wDBae2QHATOjCcP/keWtZqrOfuzczwQ1m2PHadGdEInc+d6jSGdUt9AqYUFlOu5Chgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230404; c=relaxed/simple;
	bh=sy8ThRyRgU7oedwZh2khgThNY5WH15EZl03oVLUYUIA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rQO4+Sg7FIWAQW0aFUSoi5W79dUCu9ZDYZu089dS6kteUmr+mq2ItPCRRx4fw0vnh/myQMcQXRgKLuQe8l/zm4QxtcHMLpWhABUeT/qwqtqYbdTnn2inSuM++8nb+JS6k53pye2peWxb3HojZhYLDTtqM+BNrsUE6aJDVmPhVOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PvMscab+; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-af9925bbeb7so2505338a12.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230401; x=1745835201; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rok2Mg43bnfRB9cqUAfce4PsDdZdAouW+RpiAparFCo=;
        b=PvMscab+f/DdGlLJV6Ty2Gp1BVUtvDMJSxM1BFQkpaZRq2K7gf56rj2xE7+yhd4c0E
         3ITfuRNmnQeU1fVEHm/27tz7lyqLXmrI7hg78TdtVX8vhdkwGIODD5nIB0DxFFIOebLY
         WJiNvj7Uh609dX1cwfg9Xl7GE7BzPARmry/SI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230401; x=1745835201;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rok2Mg43bnfRB9cqUAfce4PsDdZdAouW+RpiAparFCo=;
        b=RhrGAxLA8pHIEJgiFxGfhQx1Musb4p0FqiSdK7oSETET7P82EogQ1yqZJWNpIe16xo
         qwmFRUGnGow6SDAmqr0zOGI0ANuL/JbWerg0Rq08GECxk1HArFxwSlP/Umt5LWWG4YrQ
         PERA1NciPpV01rc4mRx+J1u/vIlOo0rHKXfeEYXSESt4uA5HbO3COtGLRw5hxxe+6ZKj
         NSoKgrhT8JOOXPy369DBJUzaOdE5DQLZM6HE1X0TUPdia40/c0ahGkryFEH3ZqbenC7b
         Kr/oOC23MIQUTAcdAQ12Vtpp8n2JhH3sUCwjZQpNIxb9eyd6cLU6q0OmhGKC33wmb25G
         HpLw==
X-Forwarded-Encrypted: i=1; AJvYcCU1yxGyQBbNRB8+ey0x2YKxHvQQTuWDt/NGVKeeIvNGNKWcfgMeaGM1nSfVdDET3By2/niGEpboUOoe@vger.kernel.org
X-Gm-Message-State: AOJu0YwLgNKetsmI1JMx5UJdDxrhHmkQklT2HUI7nzT21eUW+Y52Xi9v
	2+xMeuXjDc7dkalUZMrNAdULIcvplHVZW/PVcxLFaKCmzZw7GRITuNEfV5uaZg==
X-Gm-Gg: ASbGncuq3r2CbMzy5SwWmmx0BegaHKUlrX1lNModqhOXtb1jywMMX1/Ocjkw0tvnoho
	o+Z+jIpoVAht2LGpCxDtffZf8IUkFDehXfHjpv2O5q6xMSYNNSUs5OH1rXYE4a12kd7Jw9Lzibr
	ob7ZBTTW1AqY6jqsREA2Xw4u7I7N1cwqXGQkhIoNEJrM0RuYR/HT9sFegP4PNi9Z4Rca22iv1Gh
	XVleUfF88nlf5YZhfjdrZYt7cT0lGWGYAmVM2UNnlIwIGRdLYlRc1w1108rCkmNI6IiS7p1/RBy
	YuDT7oc1lU3XEnuqqNL/lFAv2GOjuho3tSIS3lzfFaovl7/p4NdJj25i1eg=
X-Google-Smtp-Source: AGHT+IHzGqLnsYoPPrUzas9aFIuhG2tfwpqW1sujdJRkCyGS/gKycIu8sZyY4IdNUXVMBMKhKzW5aQ==
X-Received: by 2002:a17:90b:4ad0:b0:2fe:a742:51b0 with SMTP id 98e67ed59e1d1-3087bcc8fcbmr14175251a91.31.1745230401151;
        Mon, 21 Apr 2025 03:13:21 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:20 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 5/8] arm64: dts: mediatek: mt8186: Merge Voltorb device trees
Date: Mon, 21 Apr 2025 18:12:43 +0800
Message-ID: <20250421101248.426929-6-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
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

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile               |  3 +--
 .../mediatek/mt8186-corsola-voltorb-sku589824.dts   | 13 -------------
 ...orb-sku589825.dts => mt8186-corsola-voltorb.dts} |  5 ++---
 3 files changed, 3 insertions(+), 18 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb-sku589824.dts
 rename arch/arm64/boot/dts/mediatek/{mt8186-corsola-voltorb-sku589825.dts => mt8186-corsola-voltorb.dts} (76%)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 58484e830063..ff67931e7821 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -73,8 +73,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-tentacool-sku327681.dtb
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
2.49.0.805.g082f7c87e0-goog


