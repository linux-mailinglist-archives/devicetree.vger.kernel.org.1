Return-Path: <devicetree+bounces-107755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0620598FEB2
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:13:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C8B72838D6
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:13:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2DBB11448DF;
	Fri,  4 Oct 2024 08:12:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BHsG2S9v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CF0F142E77
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029576; cv=none; b=vDmoCCeBzBiE5x85wIo5swyGJOXVpsCf5Kd8wzM/OlB0j18c1Z8YIlWAwOmvXWx5xExkHZbvOaqy5NjLVJdg6sa6QD2X+pUHtoIRbz9lwIK41QuIwcYrWBbdY6fQw6WSDmTIZEeUmeAAvQ0H7aooMxCO4nqMgAHPkwgLvk21VXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029576; c=relaxed/simple;
	bh=ktyNSJEmZrFqLacRbYRrGLXVnOKksih9fHzTLW7sVes=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lNPTpBa3dJnNzONIplU0lTlbnEtXoRxLS5Q3GBePTc8qt5C01lHYpqlFJIX2UNmPTY8ols8tQ8NK+ryFHqhesWRubnyifjyMVWhER5nH0QWjgyf6+c8rTepyizIY6IQ8hvCA2Y7q0+3Vka6hEyOqLLFBGI3Cr4LQvrcYaBqbOmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BHsG2S9v; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20b78ee6298so11453365ad.2
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029574; x=1728634374; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eVWeCDa6r/g+qpS30FWGjNuOpH4g9qcvSdYTe3L1GXw=;
        b=BHsG2S9vF6hw2bDuJLHFtrC9218ocGU4HTrigEv0xkP9PnbLJojpjcPdSk4dxJRuMu
         Nnx+NE2HallZNbYKN7MY/c8+01Bn3PbHGdOC8F2rNaZaDPyrig9mSdOPZk3+X/vHqsWA
         fo31cQQfilfuVtnPijj+UcQkfNIQuEtBY33uA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029574; x=1728634374;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eVWeCDa6r/g+qpS30FWGjNuOpH4g9qcvSdYTe3L1GXw=;
        b=iTpf9+dQgw+jmFevoMMOZwZkVz1NdkbaNXTMdif5662x2fzoFGy5TGj4pyDpm5/+lI
         wKgKzGyNNen6K45f81RLRREgcbRz850RiUGyVv1u2bzN5HWy3x9aai/zcfTKqO4u57mq
         XU9MONUMm7cMr6hLn6hNZf4MXZ8kqGo7uZMQ/17z/2xyMUHnsrq4IfVYHijGdgymvAsk
         VT3M+rk9ljQKvSzRi28AIroRMEtIkNdIAaz7TGreoeNac+rIWHjXJ0iR4peRE+c09HPO
         SFY7sSrJmcQ2UOLofIfluTt8wy2aHImLqLlHDQMVei30D/+KGLBU0fiuV7XNr6705YL3
         klNg==
X-Forwarded-Encrypted: i=1; AJvYcCU0tN5OM5z0++g1/9RXk8p183fgteWEt5Ug8fvdXwsUCuGew1HNI0uoCP6KZvx7aaVQC7b/DgK+owyl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5mJ252ZR92ghRsceg5a8vGmmqUwyRwqrtJTqhvKPlJLhrLI9R
	iVifSfB1X6QuKinpESFCtagXzSAlThb0fPh8sIMVIWbmR8JbcbPQLQvv3xkrLTHwFE+PlJ4Y9g+
	UYQ==
X-Google-Smtp-Source: AGHT+IGP0jvF/5pSOypEO+vc/qNSUNVQ+HbJ9vh7v4FjbPL7yc7D1XiNikXcjrWfP5UtVy01MXm7SA==
X-Received: by 2002:a17:902:ecc9:b0:20b:4f95:9325 with SMTP id d9443c01a7336-20bfdfb4cdbmr30094245ad.17.1728029573988;
        Fri, 04 Oct 2024 01:12:53 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.12.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:12:53 -0700 (PDT)
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
Subject: [PATCH v3 3/9] arm64: dts: mediatek: mt8188: Add MIPI DSI nodes
Date: Fri,  4 Oct 2024 16:11:55 +0800
Message-ID: <20241004081218.55962-4-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc0.187.ge670bccf7e-goog
In-Reply-To: <20241004081218.55962-1-fshao@chromium.org>
References: <20241004081218.55962-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two MIPI DSI nodes and the associated PHY nodes to support DSI
panels.
Individual board device tree should enable the nodes as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

Changes in v3:
- add the secondary MIPI DSI

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 3cc00a898cc9..d39940ed6f5c 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1844,6 +1844,26 @@ pcieport: pcie-phy@0 {
 			};
 		};
 
+		mipi_tx_config0: dsi-phy@11c80000 {
+			compatible = "mediatek,mt8188-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c80000 0 0x1000>;
+			clocks = <&clk26m>;
+			clock-output-names = "mipi_tx0_pll";
+			#clock-cells = <0>;
+			#phy-cells = <0>;
+			status = "disabled";
+		};
+
+		mipi_tx_config1: dsi-phy@11c90000 {
+			compatible = "mediatek,mt8188-mipi-tx", "mediatek,mt8183-mipi-tx";
+			reg = <0 0x11c90000 0 0x1000>;
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
@@ -2229,10 +2249,41 @@ larb19: smi@1a010000 {
 			mediatek,smi = <&vdo_smi_common>;
 		};
 
+		disp_dsi0: dsi@1c008000 {
+			compatible = "mediatek,mt8188-dsi";
+			reg = <0 0x1c008000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DSI0>,
+				 <&vdosys0 CLK_VDO0_DSI0_DSI>,
+				 <&mipi_tx_config0>;
+			clock-names = "engine", "digital", "hs";
+			interrupts = <GIC_SPI 644 IRQ_TYPE_LEVEL_HIGH 0>;
+			phys = <&mipi_tx_config0>;
+			phy-names = "dphy";
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			resets = <&vdosys0 MT8188_VDO0_RST_DSI0>;
+			status = "disabled";
+		};
+
+		disp_dsi1: dsi@1c012000 {
+			compatible = "mediatek,mt8188-dsi";
+			reg = <0 0x1c012000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DSI1>,
+				 <&vdosys0 CLK_VDO0_DSI1_DSI>,
+				 <&mipi_tx_config1>;
+			clock-names = "engine", "digital", "hs";
+			interrupts = <GIC_SPI 654 IRQ_TYPE_LEVEL_HIGH 0>;
+			phys = <&mipi_tx_config1>;
+			phy-names = "dphy";
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			resets = <&vdosys0 MT8188_VDO0_RST_DSI1>;
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
2.47.0.rc0.187.ge670bccf7e-goog


