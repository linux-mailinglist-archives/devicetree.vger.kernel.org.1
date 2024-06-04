Return-Path: <devicetree+bounces-72076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC0D8FAC81
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 09:50:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3C3E11C20F45
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 07:50:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EAC3140E22;
	Tue,  4 Jun 2024 07:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AUW8BQMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F5613FD9B
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 07:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717487399; cv=none; b=fRs9ID1QkuHtJNWiROfukeJtGKV3W+jGYxF6vD3a91HiszX6CoCMaB/2N8gBitrDSaQp4bn+8MWhuXVAvbJYyeHcr0JZ64Jz4UIFyNOhuJwGJHdu82NfsSPRB73PC2aXDLsAF+aDoLgmUt7z2jSXiH601FLIJqiOxo+P4QFT0Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717487399; c=relaxed/simple;
	bh=E25EU30vS1+GOir6cE+gCBMMMSJwRvhyZA+cw/Eb1tA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=PzbkHdpIm+rwYi2THV+e5WnlLRKwEIXNMJotHlKS119VSeRBCY2LfASaeXyGAF+qZe767vsfPp3um6Lxl3Rs2J9XGy9G3jSClCr8bE/Mu/bvodQ+sgszUIgYbIqIKymisJXzHmmlSflw6mDrDLPVIlA2lwV6hMSEIrqPD3Xdxpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AUW8BQMs; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a6265d3ba8fso66741566b.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 00:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717487396; x=1718092196; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DHA3KEk2g/apjGrou/c+y75Q4vt0/85gH4m1Mkq0938=;
        b=AUW8BQMszoljziPInp2N4+xoEOl0KJYBwI4ATwWbWsBWlgyFgBcn+UVbDHkmQ4G2al
         7sZOzgy/hTfYAeqsyCZaZt8etPRTJSiOqsEOJD0k+Qa0S7iUTIuQIs33vsMzcxCiY8jf
         KQ/CCbt4ZHX1v+d4NeLyQP5uhqBpXfUIbEuDhQ+CG8g+9SVv0KD6DJS8m+VGT1g6CwzC
         5aXWkgwj5Pfa1OZdjWDNYFiIUQ2xAsFP33xWq+i1mLcnrXdMITM6A0ommn85KusKl9kZ
         49DEM+5B6jTECR4s8bp3XtH+Uj0PkPit0JgCg0NrjWuweKE0oH1m4+KeWVd/gjMK9tYY
         xHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717487396; x=1718092196;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DHA3KEk2g/apjGrou/c+y75Q4vt0/85gH4m1Mkq0938=;
        b=PfnOn4FIlETMJC15YIPxq6Nu6CvA4QSLB1J+UonkpU65xmd/kfWu/HUcmoWOUjqVpU
         JV+oHxHnXUzNm1Hdi1tNkx1gA+7U4Ot588KH/agvUgg3jz0hRL4ZAVbmuXAZ16EKzKUs
         +EE7/995YmszwN1k1FQZLr9fb9B5+x42oR3a3n2QEns6MLvaMVLqTUKWdmToZiz8JP3Y
         qum3FGPXq6FO/bOZVgUj54lHsB4E7RhW34b0HQrLHYGPSOLz2AtJLf/C0E9790MUYAme
         w4KuKHH/2n3p8q5uGEsB0dklYBFHqaBS07lgDD7xF91dlNuuijJPUoCKjFLhoKuXP+d3
         LkWA==
X-Forwarded-Encrypted: i=1; AJvYcCVRtcNfJ5gqMSm99pMy35kdo2wA0mifdoMfIguQdYbuvLEwCNw1kSOHHiUyIY0UqRfipFO7MnrUR3aeULsPAthuaBDvq/roWLpQ/g==
X-Gm-Message-State: AOJu0YwYTzkrupKl8R4AMEd4pshviQKLgiG3ohLdgHMVlDx7eHUSHzAX
	rQMfImh8whhlzcrFcMQRG7VJ36eNwEBELKU1SPRx4LwK/47VhVIk
X-Google-Smtp-Source: AGHT+IGsGK+GtqJilJahllHxxOVjumHcBrpj7rXJs3GGVqVNJKitgz8G29Il/To/F6Kuupk+XVyWzQ==
X-Received: by 2002:a17:906:1dcc:b0:a66:fb17:3567 with SMTP id a640c23a62f3a-a681fc5c632mr806547066b.2.1717487395926;
        Tue, 04 Jun 2024 00:49:55 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68a4071470sm480188066b.205.2024.06.04.00.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 00:49:54 -0700 (PDT)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Ryder Lee <ryder.lee@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH RESEND] arm64: dts: mediatek: mt7622: fix "emmc" pinctrl mux
Date: Tue,  4 Jun 2024 09:49:16 +0200
Message-Id: <20240604074916.7929-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

Value "emmc_rst" is a group name and should be part of the "groups"
property.

This fixes:
arch/arm64/boot/dts/mediatek/mt7622-rfb1.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
        from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#
arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dtb: pinctrl@10211000: emmc-pins-default:mux:function: ['emmc', 'emmc_rst'] is too long
        from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt7622-pinctrl.yaml#

Fixes: 3725ba3f5574 ("arm64: dts: mt7622: add pinctrl related device nodes")
Fixes: 0b6286dd96c0 ("arm64: dts: mt7622: add bananapi BPI-R64 board")
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
RESEND: Last time Rob's bot complained because we didn't have:
[PATCH RESEND 1/2] dt-bindings: pinctrl: mediatek: mt7622: fix array properties
accepted. Now that it's in linux-pinctrl.git let's give in another try.

 arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts | 4 ++--
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts             | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
index 224bb289660c..2791de5b28f6 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-bananapi-bpi-r64.dts
@@ -329,8 +329,8 @@ asm_sel {
 	/* eMMC is shared pin with parallel NAND */
 	emmc_pins_default: emmc-pins-default {
 		mux {
-			function = "emmc", "emmc_rst";
-			groups = "emmc";
+			function = "emmc";
+			groups = "emmc", "emmc_rst";
 		};
 
 		/* "NDL0","NDL1","NDL2","NDL3","NDL4","NDL5","NDL6","NDL7",
diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index 41629769bdc8..8c3e2e2578bc 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -268,8 +268,8 @@ &pio {
 	/* eMMC is shared pin with parallel NAND */
 	emmc_pins_default: emmc-pins-default {
 		mux {
-			function = "emmc", "emmc_rst";
-			groups = "emmc";
+			function = "emmc";
+			groups = "emmc", "emmc_rst";
 		};
 
 		/* "NDL0","NDL1","NDL2","NDL3","NDL4","NDL5","NDL6","NDL7",
-- 
2.35.3


