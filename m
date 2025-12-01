Return-Path: <devicetree+bounces-243310-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id B1B55C96A0F
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 11:24:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 766CF3429A5
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 10:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02937304BB5;
	Mon,  1 Dec 2025 10:23:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KRC/jCf4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BECC5303A00
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 10:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764584619; cv=none; b=DXPSA5PstdKVgzYF8/YhfYBAIGXo08d7/wbKbCDBPEH4YQiGh1HYqXpJQDDVPdSFo6ISZdEmqyUphXrzxZSXYYVazGh21WJhmXcRaqH4IAMR1sZrBxR/S3/j8GSWT8kvz2xmjbFRqa5RJ1xngtxd1uW0q7vbG8A+hFhGgvDGOIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764584619; c=relaxed/simple;
	bh=gXUZR/EGzQDpkyZGOXdSnQda5XyD12I8pKMHU6W6Yfs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bK3KSXqmGXkzpBdf6jHSTnsHISX29/5neltlsHU04nrleGycxNG/NyOQeyqZhvjDbldo8EBfCK4S8wlytCTRHQv4uwMZMxkfsgQlagX36iVobkkQ7eZdH8hxjeOUwxaIsxrsbED4ZuBl12sHzXi4RmYF1K4QG0G0PEKHicttqz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KRC/jCf4; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42e2e52cc04so415339f8f.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 02:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764584616; x=1765189416; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v8CAVIC9PpVXkhs180LWF9wfGHiFo2jxUgFjb1PoE2k=;
        b=KRC/jCf4dpva4eeXpU4pxYc/HtQF3d9v7VhCcfqRdA3wfj5WICpEaxHgU+NXnARGow
         GKWN7b9jF2TqeWJJDDU/Pd9M3fTffdz5C+LmgRAPuj8E+16yUq9uGNTF5DsMyzqNgqR4
         CuM/dcauiZhtZ9tYYuoPQamHTVE82PSvZCH1g7F41GiIIzD789kI40/keZd526TXBRre
         uARyuq0VEatCFUyarQ7McSO9uoDHHDKb4FQoOQSF3naa/QrJ0y7iV8aYy/kxqdk7GamK
         TD9hkru5bxG/mQc6js4qqAFRidNGfqGHId0kgWffPJp42vGp/4WL63CyZFbegz/dlmRj
         osTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764584616; x=1765189416;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=v8CAVIC9PpVXkhs180LWF9wfGHiFo2jxUgFjb1PoE2k=;
        b=fTSaEqSp3LKp7kFf83BZ7fM9FF75VBScoTyeGb3ZKoQi1fkl4fwyUBKYL/2yOQCfYm
         bCXwmUU56NI64oCRnG2FMAkZUWUo1chejGwLwLbT8BctdzDkqUYTyMbog+8Qw5DETbD5
         o1xooSxG75tNRZDBvsJC4v5x/kmR/YPcgWTTPlYOtDg/yNodEK4L6YKUPQGHabqxPvkM
         PdoEOYRQGm/re7OkmlVYehtw9ytcd4jUEf4mDzXj6ycBj+6C3yXBXQIxOsbJzRHHlVIm
         hxywffPTNGImCJCVZ5Sm8Qf4Oyau2xrqhEmfr8Kp4v0XRES3i5u4BtckrT46gkCXRleQ
         LMZQ==
X-Gm-Message-State: AOJu0YxVWhl8PixitPk13JTtm+Lsf9IQOep1hpPdk5ofUMjTfP4AU320
	LDAe5UNZTi/9Dw1UkjDWPIS9dr0GMS+ELx+MItGb/gu07Hhdy5wQ0tTB
X-Gm-Gg: ASbGncs5s6NNKeSRUV/3u3Z2MsATQ09UaoMFvmyT/9M4MykBs1k1ZjwvxnoP25XVkYJ
	4+PdA0RYmw11VVPRYsSAS1wL+2wIpe/VW1ZkL9SubEPjkxNc+x9msFoAwHO5oN2ZDoEOrGPcSAI
	xLei3zfojnNXDr1r3/CI2wkK1xLfxDURld7L0MvpeC3jLscebQazkZVPdAK5mJBIpWUGhfQy1Q1
	5RFU3jfOg7idr7+Hq4mpi8m0h95+lLi6qc6sqNQhuLVot3nJokw7UYoV+0Szzfq6sODsUyugFTY
	Vq96jN+5mwccV0qzpRpXCH6NvcE6g089wCiTjbxbpty19gSE9QFxcOPgq0Y6RRh0BmdHbf2APV3
	1Ys2bu6alh0GjlBoF7bdK4RHlF3zn/nhxWPl8BDL/uA7mwEwhIxWg/ka0UnWB16eE01V0Qkgdtm
	MdMTsWx1LCnXZb3e89wDyY69370w==
X-Google-Smtp-Source: AGHT+IHbpL16Twpni2j6apBZiSSNStuPrewEU95uI80ZbYU8Yegb2CYXK6zD/vMhSPSNv/oBCtUVCw==
X-Received: by 2002:a05:6000:1841:b0:42b:3b4c:f411 with SMTP id ffacd0b85a97d-42e0f344618mr25927721f8f.36.1764584615902;
        Mon, 01 Dec 2025 02:23:35 -0800 (PST)
Received: from [127.0.1.1] ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c8csm29466439f8f.2.2025.12.01.02.23.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 02:23:35 -0800 (PST)
From: Gary Bisson <bisson.gary@gmail.com>
Date: Mon, 01 Dec 2025 11:23:18 +0100
Subject: [PATCH v2 4/4] arm64: dts: mediatek: add device tree for Tungsten
 700 board
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251201-review-v2-4-dc2df44eec7e@gmail.com>
References: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
In-Reply-To: <20251201-review-v2-0-dc2df44eec7e@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Gary Bisson <bisson.gary@gmail.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764584612; l=2210;
 i=bisson.gary@gmail.com; s=20251201; h=from:subject:message-id;
 bh=gXUZR/EGzQDpkyZGOXdSnQda5XyD12I8pKMHU6W6Yfs=;
 b=Xu4taPQtU3Ale0zTeSo5uEpHkgogI0xDEl0D9NiuorsPinPyzqiEGjfYhpOoNRHnmAK37aKhn
 Klt+HeIFOc1DD5VkgV4cizNIw5J5C6RmQv3vMQd4qit+fPQKWQUxFMJ
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


