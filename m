Return-Path: <devicetree+bounces-156847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BC5A5DAC1
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 11:46:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 726711748B2
	for <lists+devicetree@lfdr.de>; Wed, 12 Mar 2025 10:45:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1916E24418E;
	Wed, 12 Mar 2025 10:44:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fKcOjMHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ACC424167F
	for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 10:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741776250; cv=none; b=i2C6zbXPLjVL2JqKAsvTJZowGiNqJVnrci5DDbuAz98Xgc1LwA/yO6P0OkYA3izVFMK+sxayTkD6airruCC2fyojUTGuK1jbtJUNB8xnR0AjKv4QMQKwGGGmyDrjp4AoqPmI5Re/LK0HHRoKN0GoVwUxZeNrd0dD9Lokxn98Mo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741776250; c=relaxed/simple;
	bh=DLOFKyixrKjuNk5xbPr6+WZVuEvD4zxgmFK1T42/rQ4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YC/V2pbf36OrFcnsx/SLHyecNUpqCpDpPxfifJ7Pilfz//RRKagXzF4044et/MhrJz+gwdsHXS8nPjJb3paakEaBZnvFcQIBxtvDZ6nlRGoa4owXa8/VAV6Sj4Wz86wWVF5eCoNle3up7jISLDWbFRFV6io6HeV+8gMg689bWP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fKcOjMHz; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2ff64550991so10045493a91.0
        for <devicetree@vger.kernel.org>; Wed, 12 Mar 2025 03:44:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1741776247; x=1742381047; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iBHq9V8lKreFqK9KM1t5HhbZfxxdkE8xQHpVyP8b1xQ=;
        b=fKcOjMHzh5460KSR8xnOFBqDFi+7vSkhBVTb4KRCzG0WLmHDrRy0kxkrp4D0aa3CWY
         u3y17L9/TN9UYnnBlOBq2XoQa2jX1JF+TdrDQtxwR/7cjpID3leroe8InlRCKlSbU6y4
         1RiGAImqn41F7LWjx32+gnZb4lyBdMuOCa4gY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741776247; x=1742381047;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iBHq9V8lKreFqK9KM1t5HhbZfxxdkE8xQHpVyP8b1xQ=;
        b=QoFvo6RSgRNcFwDFBb8IA0EohU9j1hgMfZSz5CVbG1gVbdTzESSfmcn+V8jZLbnvm8
         27se0gDx9X18XXfUejXmCZZNxjl7wYmNFoFQk0sjJroCRtKvOmC4bPrXGGBAmu3iDklt
         1MNJEGDpZCo0g8tDtQFGTvszsR/2IGkM7KAqLGjReq38FoZPQq+8ZccKtzmIEteRvCmE
         ToA0ZKdrDJSwsJ04mVSQZmqdQZUTE5GJEZMe0U+z6APOGjqDPiKoaDfTA5fQwJeT9WfS
         NA1E4t8zYlUCKRYWjYpH2j+ej5c4EEucnzW8nCtFs0s6gAee29uBowPit0q0dCRITTro
         WzhQ==
X-Forwarded-Encrypted: i=1; AJvYcCWeV16nKU46dCMk6EbKG2msFlgBwlRl3/8UmHffezr711e1m+uC3/L2r0xHsFfqGbjd7b3dSJy71n1Y@vger.kernel.org
X-Gm-Message-State: AOJu0YylKVK5CQHZtEo4pXfZ0TLJg3LeRNH53cqfzaLfT8GWaY3QVwya
	1jWveC06c/aP3ApoK4CQ7TTNHu6T+4C+gyTUex3q9XHczoGeIKieUAoyTpp7jw==
X-Gm-Gg: ASbGncs9PucyXic21ymE+bFyyKZbnvYN4hxI4ZX4PcezLwEZxXOQxSk204UCvG0oYyc
	q4HOOxu3wKcCkJXG1FlghHQWA8ruPTGUm+XdvaiGkCvsAR38udCkCc1YBIdwymB46Kd0aVo0Rds
	p+o4tRShJOCI3cOXSsIFs5urQ1EHyfIVdTsgKDLFhRicIY43yItJJ88zKPjEk8bG1GzX2CSl6Ci
	eB3OxmQNIS9wz3tHtaMZZy6iiHksllD2Kp5FkRfywWvumMSQxlujN7l04rJKx/HFSPkhG+LUAro
	bRYblCscbRXyiuOpRjn/QFJiIU7eAG1GPFEaqvYwtBLZjMuUVdzlrk4lxakSnYE=
X-Google-Smtp-Source: AGHT+IHgEKYXDVQ8fG2MojJ+3+NZnnUhzA79ZMbcKKeZymlj+PamoGqt91exqHl5LDqK7OCjTlvNwA==
X-Received: by 2002:a17:90b:350d:b0:2ee:c04a:4276 with SMTP id 98e67ed59e1d1-2ff7ce7276dmr28891107a91.5.1741776247611;
        Wed, 12 Mar 2025 03:44:07 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:b5ed:b71c:fb14:a696])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3011926599csm1405675a91.35.2025.03.12.03.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 03:44:07 -0700 (PDT)
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
Subject: [PATCH 5/8] arm64: dts: mediatek: mt8186: Merge Voltorb device trees
Date: Wed, 12 Mar 2025 18:43:39 +0800
Message-ID: <20250312104344.3084425-6-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.rc0.332.g42c0ae87b1-goog
In-Reply-To: <20250312104344.3084425-1-wenst@chromium.org>
References: <20250312104344.3084425-1-wenst@chromium.org>
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
2.49.0.rc0.332.g42c0ae87b1-goog


