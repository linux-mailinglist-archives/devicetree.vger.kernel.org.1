Return-Path: <devicetree+bounces-107758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9A598FEBA
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAC6E283373
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:14:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B20BA1482FE;
	Fri,  4 Oct 2024 08:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Nl2v8GlW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3C1474BF
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:13:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029584; cv=none; b=Lh9Z1OKNKJGmnOlamZb2WkQmk1JQGkNlIOz/yvd+yzn/fjeeEYKT/FVOMMQ9r7qVIcruKycf8aLGBRJveG/qTXwFzbdvZMn05TV8QzeRFkwzT+6eUf70R7MpgRTXJVKDurjAbFwx9+PP6zj7j7prHlpkJKFD81EgygU07HKdpF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029584; c=relaxed/simple;
	bh=gvVSDsvyo1TmaScObCUC5qR6lwDSPViFk48MxY3oFVE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DQn75aqJls66N73xhOaXwplHcoXsKmdUVtjoomExfkHVofKFky3oBrrziZbqbWXSJfwwfIEX3gDuFkxTsS2Xb2nkS7hB4JNCynd1MuuSkWo8l2mVm2yHBzqKY7fPUE/+HKRWRnqD7ccanT3YFhD9rSV78DoUCuxXKR2FIy4w7n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Nl2v8GlW; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20b95359440so16238225ad.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029582; x=1728634382; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k//ttICUIKEcy1fghMc4lQEx1N5cieQ1nYBPymANuBw=;
        b=Nl2v8GlWdT39McF3R5zZJknU4pEPh6xwRqLVz2/EwVNw0BUDMtgtE9LXuk2qxhFvbl
         eH5qTig6vcGvDNuBSo2dqSxSLZ2s4PoQzVjPxZmlcVNziRkoLSCEHkGhN6OlL8/MfpqV
         ltI+7VB1FLxdb2dJ4bZ4mThzLSSSiX8jQmeh0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029582; x=1728634382;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k//ttICUIKEcy1fghMc4lQEx1N5cieQ1nYBPymANuBw=;
        b=Oi6gEhBb9QnGHa9Nkg17htrvVLAlxaEzspZgfd6DpddHC7IPrgmuBa4tfQqqn8/8Ib
         0UHZ9o4p+S4bsMxwcrsJUjwwHde4Qyy/mMkJqOpzY0TLK2nx3POJJ2L2Qg46/l3Y2nb5
         JCjQG49xHp8fUYnFc1YE6XCdI4v1vNXm4VwTYeU+4xaE0GUIMvJt+BR+DxBnvXcfXWVj
         366Xbvoi2cT48cstYFBOClGxIGLl+wfe6MX3/AlYVLSDVjxH0TKO5SC0RYNTuL0xv7Na
         0UfBfcJZRN+rIDpomdadr7jA2OQrQLsWPiPTzfFAdF9fEVxvWjEVYUDuXD0n/cnojTjv
         rG2w==
X-Forwarded-Encrypted: i=1; AJvYcCXV7go88l4z4U8FPaVuoAfVZajrqdryScmKU3zCpEXA6iVXbry2F2us4DP3JI8SRc03lGLge5b9fe88@vger.kernel.org
X-Gm-Message-State: AOJu0YxPnh0z9DjIUux5EYtldh7q37xvAkP2DSSo17KwvtWmTvh+zvDo
	JbBo/1XD1AVucfCs87l46YdO03LR5HZz1B06SoO6GHPQTHSMwIAeJRbVxZioaQ==
X-Google-Smtp-Source: AGHT+IFRHqV6FfLFLe0okyQ++IPPIBtfxC3jtLsdN6L+JoOkwSnY0IC0bdlRq6YlFFz//4dbVriVWw==
X-Received: by 2002:a17:903:18a:b0:20b:7d09:8c86 with SMTP id d9443c01a7336-20bfe49666fmr31501485ad.38.1728029582533;
        Fri, 04 Oct 2024 01:13:02 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:13:01 -0700 (PDT)
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
Subject: [PATCH v3 6/9] arm64: dts: mediatek: mt8188: Add display nodes for vdosys0
Date: Fri,  4 Oct 2024 16:11:58 +0800
Message-ID: <20241004081218.55962-7-fshao@chromium.org>
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

Add the vdosys0 display nodes to support the internal display pipeline.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 86 ++++++++++++++++++++++++
 1 file changed, 86 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index a6a5d9cc875b..dae1cda42a14 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -26,6 +26,7 @@ / {
 	aliases {
 		gce0 = &gce0;
 		gce1 = &gce1;
+		mutex0 = &mutex0;
 	};
 
 	cpus {
@@ -2361,6 +2362,71 @@ jpeg_decoder: jpeg-decoder@1a040000 {
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
 		disp_dsi0: dsi@1c008000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c008000 0 0x1000>;
@@ -2391,6 +2457,26 @@ disp_dsi1: dsi@1c012000 {
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
2.47.0.rc0.187.ge670bccf7e-goog


