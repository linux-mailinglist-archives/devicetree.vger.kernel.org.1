Return-Path: <devicetree+bounces-107208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2126498D26F
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DC9A728285F
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01F4E201259;
	Wed,  2 Oct 2024 11:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="C7HRou3u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78BC520124C
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869618; cv=none; b=bBlPc/YWqKPo4HICQr8IsOgAfH+/uoK23AMusuY4HMpeNcCk0NhYetqh0GMO/Mvb3W4zFbAB7B/nEzmKLfGu9Y8M9+SjjJCnlCN2C7VFJ9SSruKAjOPkhyI6fiB3DIoJGjpMdSd3iw00PuwREPlo4MJ/qmagxma3chuoYDAqUtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869618; c=relaxed/simple;
	bh=EpEEYqGxFg6YRpO55MRh7lUrelO8sjK7yrAfrkcKXeg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=F3txCe4yTMK3Wgm+0mkrcOKCxSegrK+dob3bgndbT1XAXyLVVTUueJTtexlUxQbEcOVsKWwNA8v/n+z1Xy22E0H0E0WbLxkbrh5tgpTLwa+LkBNFPv1sbnMyivgE2nRI0bYu7XMT/sgykKvMlDqVQnc9vCHEGt+5QGYWpXX0Vco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=C7HRou3u; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-71b070ff24dso5867105b3a.2
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:46:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869617; x=1728474417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lLxnIBg1s/2Zk6Wq5rMoMKrQWoBI+Wl7X5KlhfrQsNI=;
        b=C7HRou3uTGQCkziFs1zhu1C7h1WMCxw8Dr55PjjR/zD2Bkp7hrEr8IPJ8lwJ5VPRLD
         qdVxt71wPW+BZ7Cq1+aDn3bz4XXu1mDnzXVExwpkURcGjM89tF7lhlgR7VJqodL+XNoF
         0gMH0dJthgIF8pkTo3r5vcP7qQd0K6tyNL1FQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869617; x=1728474417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lLxnIBg1s/2Zk6Wq5rMoMKrQWoBI+Wl7X5KlhfrQsNI=;
        b=eun4mfgj8m1CU+5TBjbHMmAzePZpYpCuD6CAqtEU8V1ER36Rfvp8EYB+Us3nP+xoqE
         0Y235Y90CPGk5sUDlDT+LPSxDUtDm0UULnYncTIqRFx/ZzlntGgaXWkSYnC7qyR/GXgi
         GaOgNIBv71/h68a/jbeFqatU9ozaDx43O+OdqNGotjO3SSu61PH/HIyuLaVsMWsJZsxd
         LlKb03tYZ+U3DPcRSzBVAvtrCNh/NdxzsGIogKSVGLk4+3RfOjgIpJ0UTkMPuV0L591a
         +F4ttFakNIWw8vZOdvKPRLaczMH3SWumI+FEhpp3j9h2b50+ld2Ppf7DC4SNydZtKX/M
         POGQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIpjUsP3jHoRLX50woYKTguRFxNw/3TrCvw1e6My0Wv0l22+LtjteZrGoTL9Evwash0ufXFZgU8HxN@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7UDyeO1l1xixCvfCb9glFoPPwbnLzEliF2u8eVDV37FqNKBu3
	1onHN44cFmXnGLVkvo+JIL/A93x3nZpfCfsgdi6zj/KeserfX8pLmRkQGibcqA==
X-Google-Smtp-Source: AGHT+IF6JPGrnrw2s+oul2cFZeq8gjPoe0hpHOYv+WskSpMyeJxxVC8NL1KQVuNJIk0Wtb2UocnhVQ==
X-Received: by 2002:a05:6a00:1254:b0:714:2533:1b82 with SMTP id d2e1a72fcca58-71dc5d6f693mr4955317b3a.23.1727869616721;
        Wed, 02 Oct 2024 04:46:56 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.46.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:46:56 -0700 (PDT)
From: Fei Shao <fshao@chromium.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Fei Shao <fshao@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH 3/9] arm64: dts: mediatek: mt8188: Add MIPI DSI nodes
Date: Wed,  2 Oct 2024 19:41:43 +0800
Message-ID: <20241002114614.847553-4-fshao@chromium.org>
X-Mailer: git-send-email 2.46.1.824.gd892dcdcdd-goog
In-Reply-To: <20241002114614.847553-1-fshao@chromium.org>
References: <20241002114614.847553-1-fshao@chromium.org>
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

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 9431f3c5c228..ff639418bebe 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1837,6 +1837,16 @@ pcieport: pcie-phy@0 {
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
@@ -2222,10 +2232,26 @@ larb19: smi@1a010000 {
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


