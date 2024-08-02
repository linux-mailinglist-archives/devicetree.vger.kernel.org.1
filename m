Return-Path: <devicetree+bounces-90471-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CFC94586D
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 09:10:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D35F41F22B60
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 07:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13D2F15B117;
	Fri,  2 Aug 2024 07:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hSq5Ug0q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3B815ADAF
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 07:09:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722582598; cv=none; b=MJh/vXGxkaG2dytXK/SYNCQoIyA3SrMXUlGI8AE+qJnTovhZezd0hYbWzWiV7TtkFDGL3LZ5XI9BaTY2x6XFWHfMZ/iBS4qhhKgyYLhtOKJjZFsN/dARqnHzc2nF1IQxoNNNs0+lABqFz3/Gcbig4xWjTYoBy1aRx2NKSs7YjM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722582598; c=relaxed/simple;
	bh=qukvKq6BW36VQopCqVeGMajQBRgKUM0bgNiwhrujaXU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pND4UJIPxOi1GPs1k4HZAkf17LPjMtM/sjgvrLo2U2u/iRtwkCoh1YPz3WuBMqRCUj7iOeIxvDHhwF1Xonf3Lbw6waMLsHGYANBIrnfTEP4CBdWcvK2PFQ91X+He/VR9h7yKTuReY2kAE7Y3g0oueAB3n37SGS2UJDUOXRJfjd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=hSq5Ug0q; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1fd90c2fc68so62001585ad.1
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 00:09:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722582596; x=1723187396; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=S7Br9pmxpWGWBK1ASt7BgnymbG5sO0VEPtoGkQEDSjI=;
        b=hSq5Ug0qnvS+NtDGLKeK9Qqm6k2yEWRpCQ3PYvOtsvbomV1LuZxmIjuL1RC4H03Um/
         9pTMPxcSTgUGsuWuYhSjnL4+55Qt6cOOvsnL2oqAOY+gOUpYT5P+keiGTivBM/MO72PE
         sZgzTLVmtzXj/Fyk8f5vuZf/JVrx1OrT5DBNQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722582596; x=1723187396;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S7Br9pmxpWGWBK1ASt7BgnymbG5sO0VEPtoGkQEDSjI=;
        b=nNSa3Uj4sknoAPC1MiNYWMNy5tcpzVcLqIZW1m8eMsXaKV3eET2XMckj7n0elR5rHV
         jVyZGT7ghm7oXrrErBXBb/UnMnPK/IZFGPSwrElVGO/SijbHJYCE7JkDZ4Pkh2rDLpYH
         yDwF0haQGzN/A7EqWsOZ4ora12o+bkJia3RJ3Omz6IB+2uJHY1UCcadGtBq31dX4cO1Y
         EsSSvOMTOkUnxuyOZjxbyYh2Mq2gM0rcFdcrCSl65RHbVmMGaNBShZ3dBu2DOoStHWlI
         0u9wvoWKYxqv3Xcnj+Dmnh9dC2lbmaigoT1F4ADyHZINsIQ+0jpQtgjIn/SYxFucZuYv
         1LvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUtdwM6ZK+6hQ1OSusMeF1Qm4ymHq+4ro2p+SVGTrMux/g07lO+9Z8OokGyoAFWGdLeEbyLPXtUx6LT7Kf7kvn3jW2MyO953dmBSQ==
X-Gm-Message-State: AOJu0YydYb3myFm//c2P23s2GJFWlYdLshL7D8RBXx8TSR3MEdAPHu67
	xbPlNLmWaO/r0oAbqCNoM9RLMWr4zNf7R9MjhZYQYN8c65cEeJ+1lmMdh8OQMg==
X-Google-Smtp-Source: AGHT+IGLq0mErGqzzVN2fu1NHv5FwQg+WZUq33b12gl6nvqOLVq6lohDfRmMscu6BBut3VG69qGzww==
X-Received: by 2002:a17:903:182:b0:1ff:5135:130d with SMTP id d9443c01a7336-1ff57261cc7mr32752225ad.16.1722582595790;
        Fri, 02 Aug 2024 00:09:55 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:f2e4:75b7:52fc:71cc])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff58f19e15sm10228345ad.40.2024.08.02.00.09.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 00:09:55 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8195: Correct clock order for dp_intf*
Date: Fri,  2 Aug 2024 15:09:50 +0800
Message-ID: <20240802070951.1086616-1-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc2.264.g509ed76dc8-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The clocks for dp_intf* device nodes are given in the wrong order,
causing the binding validation to fail.

Fixes: 6c2503b5856a ("arm64: dts: mt8195: Add dp-intf nodes")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 989e8ac545ac..e89ba384c4aa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -3252,10 +3252,10 @@ dp_intf0: dp-intf@1c015000 {
 			compatible = "mediatek,mt8195-dp-intf";
 			reg = <0 0x1c015000 0 0x1000>;
 			interrupts = <GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH 0>;
-			clocks = <&vdosys0  CLK_VDO0_DP_INTF0>,
-				 <&vdosys0 CLK_VDO0_DP_INTF0_DP_INTF>,
+			clocks = <&vdosys0 CLK_VDO0_DP_INTF0_DP_INTF>,
+				 <&vdosys0  CLK_VDO0_DP_INTF0>,
 				 <&apmixedsys CLK_APMIXED_TVDPLL1>;
-			clock-names = "engine", "pixel", "pll";
+			clock-names = "pixel", "engine", "pll";
 			status = "disabled";
 		};
 
@@ -3522,10 +3522,10 @@ dp_intf1: dp-intf@1c113000 {
 			reg = <0 0x1c113000 0 0x1000>;
 			interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
 			power-domains = <&spm MT8195_POWER_DOMAIN_VDOSYS1>;
-			clocks = <&vdosys1 CLK_VDO1_DP_INTF0_MM>,
-				 <&vdosys1 CLK_VDO1_DPINTF>,
+			clocks = <&vdosys1 CLK_VDO1_DPINTF>,
+				 <&vdosys1 CLK_VDO1_DP_INTF0_MM>,
 				 <&apmixedsys CLK_APMIXED_TVDPLL2>;
-			clock-names = "engine", "pixel", "pll";
+			clock-names = "pixel", "engine", "pll";
 			status = "disabled";
 		};
 
-- 
2.46.0.rc2.264.g509ed76dc8-goog


