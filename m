Return-Path: <devicetree+bounces-243316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D66C96B4D
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DF193A3A32
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A2213054E8;
	Mon,  1 Dec 2025 10:45:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P9W8luIf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6BCD303A22
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764585951; cv=none; b=pXah/eHjIGZDDk89aSAyVdtgdLHfBEXfwv+pMhv+jLYScCOQNJZSFjK+CB0aLovMdArEnyvahbL3C04Rn5j+QAK+DFkvNy+8nadCglyCqHF3ZDrKQrhXhRaena/ADYL6Tmp/ZSpOjNCbyii3x+URVjELZKw1k/eRbPFpe5ge/fo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764585951; c=relaxed/simple;
	bh=8KaOuw6GZeezjBlK0qtnPyFb+grvQ/ybFVCMd9aLdYY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CvtOYh8pYZI0Y7szFsNA8LDzOFvSSRcFIgQcHH3Vh0o6YKhVBJ6IPJZdeHbia2Q4shAnpbW7uyx34z1EozQHfJIyZLimMJ5BzQO+s9q1lzetKwDA5zMo9fvNt7yydxUX6kQOlht/qVcmGM4FyZtbpcTwYvJaW3o55Dcvj66KYXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P9W8luIf; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2b90ad22so594834f8f.2
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:45:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764585948; x=1765190748; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kaEhz6O2P9o+eF4N4eTnx5zXJUYRgf4JEjtCniVcp2w=;
        b=P9W8luIf/NP9cT7q1rLfn7sY0fOjRHD9J8hCrWg8RR8sCezTFkKX9ta4YnwVE30LZj
         jUoxQ+UzeJE52MZJsaDMN33p2T0qwBtO9QOCW3hOBxJa81Ufiyg4Wuvy10il92Q/FHZN
         oeIemoXakKJTm/6Xo8A+fRPD4y6K8c/tUhH8EUe+xnDFXVErQZfm3ZOlxFLCbSTtJU1f
         gTC6BQO3qxFH8QLLB64RWryuaLsAbHwYcdPqdH7hY1SlUOYSPB22X4kwnHsZvbhqTBg9
         2b9mC674SI1vvGJ0qa62vwlw1caFG+NHU1YR5H5B1BDyqR/1cAGJl+Mew2U7/PYXsxhR
         De6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764585948; x=1765190748;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kaEhz6O2P9o+eF4N4eTnx5zXJUYRgf4JEjtCniVcp2w=;
        b=t28wp1ZkeRsqe3LAyUM3rctTzm6a+bS3Ot94uFcGa2kZG00v7YCP3up0yLhp9xRsE2
         boAJkB2nATUvivUxG9SXnl6BSmqnEvyrepRFsxdrmdFKai/MNprSNNTbLXnzWZesg86V
         TbtfVwBL2GwmAs3U9tqMRRaXdeUyDtyh+iF1MyJc0SrC2MG3nQn9za8uBeDXL8gQv9yD
         OCjxc6eEcTKRrgWM3GRrzZGXm9/qAQSxHwGxY+j+K7FuOZthr8ANO1Wvdsxsz6vn82uj
         A/xVL+hFtRlf3nU+Vi2YdC99jrV+63PFkupfOQyDMLlNW7WkF1Pv1D0mscr0Lzpdx6DK
         cfbQ==
X-Gm-Message-State: AOJu0Yx76gVElphfaTcG/c1w48PLARNu9raEteeOFn4wrRwtaOJ/nMFj
	uvSKFOIo47MXeEKNsyYK3sD8Z25i+znXVTNgk5EHVOUh9WixANeLDEMe
X-Gm-Gg: ASbGnctT0g8tXLXg2w4ZayOx26zBWNtYeFVi/CqCBdsmOw0cNz2WKXHDP4lx4FKM6Rh
	HNKqJ5VFV1TmYsqe5fjIT3OFu9ahda3NFG2s1xdq7nWs5BsbGRUK2c4dFGlytAw75vOLK/E0oC7
	vlFA3v1OZu9hnBWpxgs25GN8srZjdUAHvm5NSM1b16LJ5leIYbVSSP9NzrKcmB5DCyF8wse7tqH
	Bnh9ZZZFynReKX4pqv3eZ7Ae9cwn+akRHEYysTdrMm5FRtBJ1bRY5x23jKJKQ5hxzzhsC5OZYrn
	HYSmOyhm06eKR5yIfscVAkZltSR6ZDZw6Rh+QgQrRVEE1egePXFG7qtblVPShNl0D7MX6CeN1uG
	gKriaUsu1iRBSiru18/p/XgaofSxdQRIqaGsEMEaFGh30wqp1hHyclhiXCmxeFesFQOhEhdP2Nv
	GR75NnvdIC/6OMzKUWoKzIg5y4mA==
X-Google-Smtp-Source: AGHT+IE8G4qn9MtqoJRt6EwzOs1Re3GYjg7OEjxSvjTqoKuOR37PmgQUIwGfViG46KaNtOidrvSCPA==
X-Received: by 2002:a05:6000:24c4:b0:42b:3268:bfc0 with SMTP id ffacd0b85a97d-42cc1d51edcmr41874577f8f.49.1764585947940;
        Mon, 01 Dec 2025 02:45:47 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5d6049sm26264262f8f.10.2025.12.01.02.45.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:45:47 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:45:20 +0100
Subject: [PATCH v3 4/4] arm64: dts: mediatek: add device tree for Tungsten
 700 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v3-4-07f9af7341fd@gmail.com>
References: <20251201-review-v3-0-07f9af7341fd@gmail.com>
In-Reply-To: <20251201-review-v3-0-07f9af7341fd@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764585944; l=2265;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=8KaOuw6GZeezjBlK0qtnPyFb+grvQ/ybFVCMd9aLdYY=;
 b=AsDpy0c1UumnO9hVt5+7BO2Zwo3WS5S4yoCjwC+QAKb4mUapitLgW4BNxeVRPZtkvoZYv0U42
 VGYhnErXsBMDbl0zUmg07sf3hmHrpdCz8hWwbLDmMhvu6p9+/FJQB1U
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree to support Ezurio Tungsten 700 (MT8390) SMARC SOM [1] +
Universal SMARC carrier board [2].
It includes support for the MIPI-DSI BD070LIC3 display which uses the
Tianma TM070JDHG30 panel + TI SN65DSI84 MIPI-DSI to LVDS bridge [3].

[1] https://www.ezurio.com/product/tungsten700-smarc
[2] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
[3] https://www.ezurio.com/product/bd070lic3-7-touchscreen-display

Signed-off-by: Gary Bisson <bisson.gary@gmail.com>

---
Changes in v2:
- None
Changed in v3:
- None
---
 arch/arm64/boot/dts/mediatek/Makefile              |  1 +
 .../boot/dts/mediatek/mt8390-tungsten-smarc.dts    | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 30d169a31b10..85f338344dd3 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -102,6 +102,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-genio-510-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8370-tungsten-smarc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-genio-1200-evk.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-genio-700-evk.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8390-tungsten-smarc.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-kontron-3-5-sbc-i1200.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8395-radxa-nio-12l-8-hd-panel.dtbo
diff --git a/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
new file mode 100644
index 000000000000..f1cf2821107f
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8390-tungsten-smarc.dts
@@ -0,0 +1,22 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright (C) 2025 Ezurio LLC
+ * Author: Gary Bisson <bisson.gary@gmail.com>
+ */
+/dts-v1/;
+#include "mt8188.dtsi"
+#include "mt83x0-tungsten-smarc.dtsi"
+
+/ {
+	model = "Ezurio Tungsten700 SMARC (MT8390)";
+	compatible = "ezurio,mt8390-tungsten-smarc", "mediatek,mt8390",
+		     "mediatek,mt8188";
+};
+
+&cpu4 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};
+
+&cpu5 {
+	cpu-supply = <&mt6359_vcore_buck_reg>;
+};

-- 
2.43.0


