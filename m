Return-Path: <devicetree+bounces-107211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEBE98D275
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:48:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91EA51C217D3
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:48:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7CA8200119;
	Wed,  2 Oct 2024 11:47:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Ct3szNJj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34FDF205E1F
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869626; cv=none; b=RobO44jXI7jQwubqoxSovXk5esjfCUL6XqKYvTY0HDNJe0ok4iWJTNt1r+I3dfmNNUmEo2j+eanZ0MuXox5quSTn7S9dIKbR81/ZN/+xirmdA8lhwuftWlgKfzpb0Y1qMDoRlewFI6bRlvZiXSIvoBMTtZ+S5ytoG+4XMkXUDIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869626; c=relaxed/simple;
	bh=WSE6QS/yF14w1DXPyJmuCALpzlfTz/9bbIuxOivNZXA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=f7z172qASJhuVbctSkTck1Acq7CtMnbnxFHFyWWYjATRv8m72FzMpH8UHtr4Qeal6iSI1ZReArocZvpiqczI72GUzdZldIhTOMkDbYDQnC2S0U6sly5ddQWCavguR2S/RKBDCE0nn4aYpONIVn6CTYQtggXrmCXyhbbp2kmQa2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Ct3szNJj; arc=none smtp.client-ip=209.85.215.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-7d7a9200947so4474985a12.3
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869624; x=1728474424; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ouP/AAURWlpM5gHEUts5ppp9KSn3cI1xAL6qgbhoUpI=;
        b=Ct3szNJjeBO6XAGXUFtBhxjyeEuk7AswZC7Y2viJrI1/ZW8nsXTXkS3CwTTpB0ofsR
         E7I0evUrZzVxV9QwTuqqDQVcoOQh38pSt11WGTheUPkw/8Mtv7+bSVCm3QhjrffdbxXu
         CFOR26/6iOz6JoKaXVfvuJlP4ADZ2USrzLq0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869624; x=1728474424;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ouP/AAURWlpM5gHEUts5ppp9KSn3cI1xAL6qgbhoUpI=;
        b=g7SpKWAH+fwqSTreHbrcEsMig2XohVE+lgEtWtle8eMuOKkHew8wfd9s1OErasxVJG
         KLGmNQZIykF7jW6xHkgQnjfBrRfZmU6r8kj+nG42lj11H/4Tyd46Whu9mGHnsMhQ9C6t
         hOet0J3WFgsHTUL2aRRrwuvoPeJM37UdSgPBQMUDLck4+WfZw1UuxdztAQ7/kDiL3I1Z
         keCj4si+tIT5WWGBMV9k0z63Tg6ALlJfb1IzHt7ZtRc3pg8Tg/7KMWMglkD38SIaySXU
         vFHEQp9hWLkPmNwH+bIYcTZ6mFWLjRL/QcDsvIcm8Ri6KS6EQAJw+LTCZ590hWj0lc9A
         LGjQ==
X-Forwarded-Encrypted: i=1; AJvYcCVQge3OhVLE1otdwquv4t5yvq8BPwTAcx8GJf7gHR/mOeDjrzqnsVanPJdei0L072g4/V0W5dI0zUqj@vger.kernel.org
X-Gm-Message-State: AOJu0YzE8xtGa1PL1Y0m1pO3BpqZ+QQG0tS4nt0aXvRtMxkO+t9Amh6u
	Oo0ft+aUNUQncmkEaWfK2qpV4qu8qvYw4At6rISpxQg0H1/cHqwOxPAQttb/mW86ZdAmmbS6mnk
	Kyw==
X-Google-Smtp-Source: AGHT+IGJRGU9+3577zbkkm9KoRqvEP41NbLevBI2rEZhys3m695gS1GqUnXFCqQID0HvDZFWgO7dLg==
X-Received: by 2002:a05:6a21:1643:b0:1d5:14ff:a15f with SMTP id adf61e73a8af0-1d5db20a5c0mr4937098637.11.1727869624478;
        Wed, 02 Oct 2024 04:47:04 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.47.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:47:04 -0700 (PDT)
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
Subject: [PATCH 6/9] arm64: dts: mediatek: mt8188: Add display nodes for vdosys0
Date: Wed,  2 Oct 2024 19:41:46 +0800
Message-ID: <20241002114614.847553-7-fshao@chromium.org>
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

Add the vdosys0 display nodes to support the internal display pipeline.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 86 ++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index c1b057166aa3..79e007b619b7 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -26,6 +26,7 @@ / {
 	aliases {
 		gce0 = &gce0;
 		gce1 = &gce1;
+		mutex0 = &mutex0;
 	};
 
 	cpus {
@@ -2344,6 +2345,71 @@ jpeg_decoder: jpeg-decoder@1a040000 {
 			power-domains = <&spm MT8188_POWER_DOMAIN_VDEC0>;
 		};
 
+		ovl0: ovl@1c000000 {
+			compatible = "mediatek,mt8188-disp-ovl", "mediatek,mt8183-disp-ovl";
+			reg = <0 0x1c000000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_OVL0>;
+			interrupts = <GIC_SPI 636 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L0_DISP_OVL0_RDMA0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x0000 0x1000>;
+		};
+
+		rdma0: rdma@1c002000 {
+			compatible = "mediatek,mt8188-disp-rdma", "mediatek,mt8195-disp-rdma";
+			reg = <0 0x1c002000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_RDMA0>;
+			interrupts = <GIC_SPI 638 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L1_DISP_RDMA0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x2000 0x1000>;
+		};
+
+		color0: color@1c003000 {
+			compatible = "mediatek,mt8188-disp-color", "mediatek,mt8173-disp-color";
+			reg = <0 0x1c003000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_COLOR0>;
+			interrupts = <GIC_SPI 639 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x3000 0x1000>;
+		};
+
+		ccorr0: ccorr@1c004000 {
+			compatible = "mediatek,mt8188-disp-ccorr", "mediatek,mt8192-disp-ccorr";
+			reg = <0 0x1c004000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_CCORR0>;
+			interrupts = <GIC_SPI 640 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x4000 0x1000>;
+		};
+
+		aal0: aal@1c005000 {
+			compatible = "mediatek,mt8188-disp-aal", "mediatek,mt8183-disp-aal";
+			reg = <0 0x1c005000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_AAL0>;
+			interrupts = <GIC_SPI 641 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x5000 0x1000>;
+		};
+
+		gamma0: gamma@1c006000 {
+			compatible = "mediatek,mt8188-disp-gamma", "mediatek,mt8195-disp-gamma";
+			reg = <0 0x1c006000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_GAMMA0>;
+			interrupts = <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x6000 0x1000>;
+		};
+
+		dither0: dither@1c007000 {
+			compatible = "mediatek,mt8188-disp-dither", "mediatek,mt8183-disp-dither";
+			reg = <0 0x1c007000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_DITHER0>;
+			interrupts = <GIC_SPI 643 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c00XXXX 0x7000 0x1000>;
+		};
+
 		disp_dsi: dsi@1c008000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c008000 0 0x1000>;
@@ -2359,6 +2425,26 @@ disp_dsi: dsi@1c008000 {
 			status = "disabled";
 		};
 
+		mutex0: mutex@1c016000 {
+			compatible = "mediatek,mt8188-disp-mutex";
+			reg = <0 0x1c016000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_MUTEX0>;
+			interrupts = <GIC_SPI 658 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c01XXXX 0x6000 0x1000>;
+			mediatek,gce-events = <CMDQ_EVENT_VDO0_DISP_STREAM_DONE_0>;
+		};
+
+		postmask0: postmask@1c01a000 {
+			compatible = "mediatek,mt8188-disp-postmask",
+				     "mediatek,mt8192-disp-postmask";
+			reg = <0 0x1c01a000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DISP_POSTMASK0>;
+			interrupts = <GIC_SPI 661 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			mediatek,gce-client-reg = <&gce0 SUBSYS_1c01XXXX 0xa000 0x1000>;
+		};
+
 		vdosys0: syscon@1c01d000 {
 			compatible = "mediatek,mt8188-vdosys0", "syscon";
 			reg = <0 0x1c01d000 0 0x1000>;
-- 
2.46.1.824.gd892dcdcdd-goog


