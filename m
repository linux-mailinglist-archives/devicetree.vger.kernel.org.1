Return-Path: <devicetree+bounces-107401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E50BF98E9FC
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 09:02:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 210911C2114F
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 07:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C488412C7FB;
	Thu,  3 Oct 2024 07:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Zn8mNYI+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5809112BF25
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 07:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727938916; cv=none; b=iA9LhBcDpsBqPFAeLdAA66v3JMmcrjcvODRV6cLf09keR5yl4bx9KYhmCT/qGMHIrHlOpYQUL3q1ngNmlZ4wL+nZKTdGDbi7OsP5pL3WcCCuZpcGNo3WKbF1y4Wg6lO2LNE9Vypaa/hjMUWYM4vA/3uHC56/BNGq2i57H0qEHKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727938916; c=relaxed/simple;
	bh=VESsjXVlk43UNjCparYvaPuSRFaK5WDMd0meG9wkXUE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CqQjY2h120FzoBdLow3qJKH+vyq2/Bz1Ezn0dFPVC6xqv10tf5VUgHolzaqd/5+LWycPdH5NLWaTZX0/yhGADTOf5vPrtKLu6iTGNQ1mJwwLj9sNJn/ld/S4xc6YiH0ZQBD5kF+fS3RxfKoPb3YoSgbkIF9oRLrGCGcDFxyXgPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Zn8mNYI+; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71788bfe60eso518526b3a.1
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 00:01:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727938914; x=1728543714; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HEQbIZ1kOEPpCwOKFUVGo0GWUflsfubNyX6zy8z13EU=;
        b=Zn8mNYI+lCo260BjaP9z77icojAmY7ZVdNMR7zeJMaWK8SOgIFy9CLXca7ya+C0zvY
         Zz9kxTKZKQ4pz9rmoMn7E1MJJ4B1Z9gg2TrddnbliwpC3EOLQFfQd5p29hlcaPCSVo/c
         l8txAFot3DUF7ioPk03W+Itrhe7wtzbCGG3kM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727938914; x=1728543714;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HEQbIZ1kOEPpCwOKFUVGo0GWUflsfubNyX6zy8z13EU=;
        b=K/IDB4ffIhV2biAfhnmLOwbqvKOAxynyKycUtFwqd20CBUnsd9qLEUYh1ukhViQWv8
         pmpImtL9SWNQWhHwv0YuFVIwoIjL+OJ5lHLy/AS1DU6T8BfAed3UHtnlrOlF9ayLzBLY
         186d6qqbknI4expskZ4Osn9jEcmOd5Az4MCdrbBDLfLxqBtsw29zRY4PdRLNMOdmY3Cm
         ufuuimVgx9p5ZZUhL8nhYa3yuJyMPJHl54GaJB83mmSmee3FfEWfg6kVEMloRDRXqiTv
         HqgHOZAPafGDJ826v29GsRLY+02TgLXZ1noavxSQADvM1RRmj4ABoaJe6BEr65pGP7Xv
         g1KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXliliSwF02L+1aCZQz3qHwIMLiTX1a4h66qnFbwc6TbsTKR7GDkvyK/zjRQJjuRD7W9yZnu19nVtMo@vger.kernel.org
X-Gm-Message-State: AOJu0YyTsbbKGvzn3ZdxEcyN+LYW7ENxwOGQhI1HcnfN77FfTMbd79/I
	nrCYjNsmKGhZihVWo8f4I2MmbjjcFvQoPsZG2CLq816lJEnNlKVL4hr6D91NEg==
X-Google-Smtp-Source: AGHT+IHOgHjrlMxD2zoM2IlOxDAItRRWCVLa9fyphfermgyfQ3vL8yGSyzT4jH4vijnNVzmVtvYQDQ==
X-Received: by 2002:a05:6a00:178c:b0:70d:2fb5:f996 with SMTP id d2e1a72fcca58-71dc5c67164mr8309063b3a.11.1727938914540;
        Thu, 03 Oct 2024 00:01:54 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71dd9d8e473sm633782b3a.81.2024.10.03.00.01.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 00:01:54 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 3/9] arm64: dts: mediatek: mt8188: Add MIPI DSI nodes
Date: Thu,  3 Oct 2024 14:59:57 +0800
Message-ID: <20241003070139.1461472-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241003070139.1461472-1-fshao@chromium.org>
References: <20241003070139.1461472-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add MIPI DSI and the associated PHY node to support DSI panels.
Individual board device tree should enable the nodes as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 23101d316c4e..719d2409a7db 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1839,6 +1839,16 @@ pcieport: pcie-phy@0 {
 			};
 		};
 
+		mipi_tx_phy: dsi-phy@11c80000 {
+			compatible = "mediatek,mt8188-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c80000 0 0x1000>;
+			clocks = <&clk26m>;
+			clock-output-names = "mipi_tx0_pll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
 		i2c1: i2c@11e00000 {
 			compatible = "mediatek,mt8188-i2c";
 			reg = <0 0x11e00000 0 0x1000>,
@@ -2224,10 +2234,26 @@ larb19: smi@1a010000 {
 			mediatek,smi = <&vdo_smi_common>;
 		};
 
+		disp_dsi: dsi@1c008000 {
+			compatible = "mediatek,mt8188-dsi";
+			reg = <0 0x1c008000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DSI0>,
+				 <&vdosys0 CLK_VDO0_DSI0_DSI>,
+				 <&mipi_tx_phy>;
+			clock-names = "engine", "digital", "hs";
+			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
+			phys = <&mipi_tx_phy>;
+			phy-names = "dphy";
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			resets = <&vdosys0 MT8188_VDO0_RST_DSI0>;
+			status = "disabled";
+		};
+
 		vdosys0: syscon@1c01d000 {
 			compatible = "mediatek,mt8188-vdosys0", "syscon";
 			reg = <0 0x1c01d000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 			mboxes = <&gce0 0 CMDQ_THR_PRIO_4>;
 			mediatek,gce-client-reg = <&gce0 SUBSYS_1c01XXXX 0xd000 0x1000>;
 		};
-- 
2.46.1.824.gd892dcdcdd-goog


