Return-Path: <devicetree+bounces-244145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A438CA1A96
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 22:21:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 22CCC3002498
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 21:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C4DB2C159C;
	Wed,  3 Dec 2025 21:21:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AdMvkmh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B18A2D6603
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 21:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764796883; cv=none; b=fz1N6N7ybDe9FSpTLzuuePPpSTu95BJZ4NzzkLjX8qXODGUsH4dJuvbl0C03FV+t2KbDCfuQwFqfDaYK74+pu6v5u3KrGuHyngk/QbTxOutHyWXWA+JuF3PiSN2osr+j8i+WMCPRDTJH2t4zrKhr9VtajtaAI2g8A1I0wjG7kCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764796883; c=relaxed/simple;
	bh=1kcy4covU8RAPnEUqKANcyZxULd507eUO8g6XjGH2V4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zh9kIBrk+ZRiRVbUOWp50mw6kX9uMtrhei6Frj72TMkvrfH0Yd5gKzyzUa+Sjm+7gVNPHCDOgdtJ1x9XJzLpP2KORn+4H2tHhj5A9fy43bGpzwEjfSc7ejFvWt3U1Deu2PpJDEPWYPmd4ihBncebHrTiHD6bWjtl18KJ4Ngm6JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AdMvkmh4; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-42e2b78d45bso153029f8f.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 13:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764796879; x=1765401679; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QQYJPvwvgRgQ+uacXhfRNgoaW5IOSiziugCJWe/WiO0=;
        b=AdMvkmh4F7EwY8dgW3Uc96T69ZC2x/oA4ACZ7S8s7FVbI7nB3PpZ5+y4aosWNVhMos
         MElYM32FmaxeLHLTIDnBmnnuZdNKZWvfNDV8N73ztpPqB3jRedTGwNZi2p3TN1Kemg7f
         ey6WVj7DbKM8K25PeKHafSLH2SAQJgUrllDirrU6WuH3hwQh6qbJD1GsoInbNs6Pilou
         0Ws76hH5XCD6bIE6eaxHUi53AcjEFHivjt+E8+dV+nuVaNp2Iof2OoXWfWd77zqz+mxz
         WnqxIiQYfiHpXju2OnYP0WoMpbx4pZMxthBcrAB9Er/oTtRlNkpydPuAKGSzlfNHocMN
         rkGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764796879; x=1765401679;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=QQYJPvwvgRgQ+uacXhfRNgoaW5IOSiziugCJWe/WiO0=;
        b=EqPzNQZhwRiguY/+X/hHCWWR8UGUZpWVJqMNlraBsIwelEj0ZcEgUK18G/bnle3t8s
         bIP7COY3mKA+NJ5GwXeLTg12By92IQ4HweFMbo+9kguLFbkMo0mdjkIRtKWSxnOacxSH
         hxDtswYjonppvuDSE0VGf1nnd1J6f8DhdG4nIvGLAHh+9naVWV2YfocdU+qa9CmwfuKe
         rrJvLQi+IKLcFOxVG4xD8XsJP41gvmCIkfs7t9sHDc4OWs6ZmIiIhv4Vid7yLbfD56s1
         UczkVcw9dArVe8FYnBISBZKMDphpw1/wI2GL2dr+Kkxec1uftnJeCAstmm0sORrskpOR
         77Wg==
X-Gm-Message-State: AOJu0Yw8PKk57/YZT31cG69vvCl12oHY76UqIAnWQAxQyLI/8xBEb2IB
	qhvUsLrzUiLhltYb4SdaZAs/JZbJuwULNmPHm0my/qrRLAGVq6dLnH3V
X-Gm-Gg: ASbGncu6ORqshBolENi1SZ16nk9kEvG1ECuc7DEUtuDdJIZ4Gw+jsO8Z7YF/DmrR6g5
	IbPg/65tVNzhfJyfVV0LKsRTWjcZTp3BSmt+yXTMIzwyDF/yt1chSas+yH+xch6MwV1Tf6/oaf7
	aX4XLMv9l+xhg2V6hZpxWK3Dw1Yafkh6IJbwOlFH+05R9f/710PKrOwyMcCLQ7uw/DoOU+44rIH
	Fm1fPXL0/iYai8Ml0UiB8+lgXDOdPKaC+2sKG4n4JP8zW6VHwZe9IB5JjdSjSlRNiGJWSwOb5AP
	DNvYBLo79zOpQbiZLeuA+kPmZ0yBbhBU71g5afLq8NEqIrl3nJEFKRs6nVn6wZpks9EJDgvChvR
	8iAodPyot7+KS+2viiwJIbiHA6LN1eDXMLjKB81NlUgnelJoRBdLOesFny39IewvkvW8qhJhjte
	QeSnu9C8tlznBmB5IYb9eqFtfiww==
X-Google-Smtp-Source: AGHT+IE7S1JA9mBaFmTuoYgRyXZzK5/6ZUPVSz3qyQ9WBh4nTi0eMribDRvh3NSIjTNQKMCIakZKfw==
X-Received: by 2002:a05:6000:2013:b0:426:eef2:fa86 with SMTP id ffacd0b85a97d-42f73173ff9mr3865087f8f.11.1764796879215;
        Wed, 03 Dec 2025 13:21:19 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:2034:6883:1f40:e708])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm41648667f8f.3.2025.12.03.13.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 13:21:18 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Wed, 03 Dec 2025 22:20:41 +0100
Subject: [PATCH v5 5/5] arm64: dts: mediatek: add device tree for Tungsten
 700 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-review-v5-5-b26d5512c6af@gmail.com>
References: <20251203-review-v5-0-b26d5512c6af@gmail.com>
In-Reply-To: <20251203-review-v5-0-b26d5512c6af@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764796869; l=2426;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=1kcy4covU8RAPnEUqKANcyZxULd507eUO8g6XjGH2V4=;
 b=x6qWatvga+4olc5mMNH0ZKHSQe2NkVNuVbPQLbPiuTQp2oQU82LdSiLe5bnZTMnhxoE9PXKvV
 1C3xuN9dI/KD9v3v/tJI4UKY/rU6rLavJ7RB4Vdot1scC/N1MBj0J+v
X-Developer-Key: i=bisson.gary@gmail.com; a=ed25519;
 pk=eaOrLwovHUZBMoLbrx+L1ppj+AH+TfgxkVhIEyrhkeE=

Add device tree to support Ezurio Tungsten 700 (MT8390) SMARC SOM [1] +
Universal SMARC carrier board [2].
It includes support for the MIPI-DSI BD070LIC3 display which uses the
Tianma TM070JDHG30 panel + TI SN65DSI84 MIPI-DSI to LVDS bridge [3].

[1] https://www.ezurio.com/product/tungsten700-smarc
[2] https://www.ezurio.com/system-on-module/accessories/universal-smarc-carrier
[3] https://www.ezurio.com/product/bd070lic3-7-touchscreen-display

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
---
Changes in v2:
- None
Changed in v3:
- None
Changed in v4:
- None
Changed in v5:
- Updated dtsi name to remove wildcard
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
index 000000000000..7580f9e2f20d
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
+#include "mt8390-tungsten-smarc.dtsi"
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


