Return-Path: <devicetree+bounces-107210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2271798D273
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:48:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 548711C211B7
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DC5D205E0A;
	Wed,  2 Oct 2024 11:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gf9wblcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1363205E01
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869623; cv=none; b=ITpaiwNUOXCiECc8Hm7TyZLEgnwOJeWSUfuS6tCEM2NGoLBKuHKHHnQ0xeK20JeykdY7vsvt46qmwvaQ/AVVu9Ilt5nxGven7Sk9j86Cq+GKp5+v/N6mUgkXI4YFgKVIutDBArjKkknqTRb6/FyaCtXoix52JVNHfAwnaIqHZvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869623; c=relaxed/simple;
	bh=yTCk2U7CgZftBRXEy1dJZTvb/880I8dY15oVa2MtGNI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n5fSIe0si1vzRqfvf7nZu/5N7J/EHDbrV25GYXo77fb/Q2sKL30gYunGxGfzxsN8+40SF+RdavhYKiJXe/ijTdZPAgoc23Bx/TcwKh4O+Hm3cTgE1VJgFY/2bQUvI6fkzqt01PWN69wKX4omLy0kSjQRKfcXSgxIN54gjkgTlSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gf9wblcu; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71dbdb7afe7so1272087b3a.0
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869622; x=1728474422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M1kvp0VcH49Dd7pUdjrxa7BKtPwxncHiMFzmQPvOHBw=;
        b=gf9wblcumQ8N4NSei0DXb+jeHQk6lOv9H/iecSH3f2RjIsmXkVH5clf0gZc45t9zk7
         NIbQWaikXc24db5yZKPWLCGpvv7ONBI1/jn1QC1IRix0iykv05au9lkRfdOP1EJBf57g
         sq6nKa82exQckYyhLrDtEkT3RxaX/dAWYYgf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869622; x=1728474422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M1kvp0VcH49Dd7pUdjrxa7BKtPwxncHiMFzmQPvOHBw=;
        b=QgbKHp8H1CE1zyZS8Rd8rv0z2XF1F+N0as5Ib0OhP6VaYN9NAuRkyOtyzMIh5qxVvz
         1XbgNH9hv1utxGB++KLPxmxEMtuCsbhW8qMEltoREtVtvwQNZsPtigF9nULCs+w6GYRZ
         pxQFDxsLMvifAbB90hf8vFKSLuOZL4cbjfYw30IugT6EiIpulVZ7TSqSeRbazTIj+J2l
         On0YHx/mDCeug9Ns31S2hZBOlNJxoyfmzsRgPziRXduKa4+TWjiHqmycVBUTkq3hw//q
         +BhgcKbnSyeN/oOU5cpRN95lJzc57+gKV9/LLRMptZ7dKKlkDSRPMLE0uJSj6CK3XIte
         wM3w==
X-Forwarded-Encrypted: i=1; AJvYcCXfvsysb40EjmYh/23HEqmzlcaKgSE5QcWYNfwDdY8bpyoiO2sWrcf//NjYVJSsRYjR4X2AEUreO7O7@vger.kernel.org
X-Gm-Message-State: AOJu0YwfpBWOMzr5s2DmJZYs/1ZgTMofX01FqDnbnAQknAuVJBgkrOj7
	RWPDKQUb6bYSwuoYSyipTEf7BsmGTAMxZSJRLX4F0vjGlviLKJg8PpcxWMVo2J+0MeUftT0ezl8
	jYA==
X-Google-Smtp-Source: AGHT+IF6Sqgx1tY88G1e9K/KXewRN0uZSr4m6+KJokFU2mORUavDZPLIjw+Q/puV3XntoKVReVaLgg==
X-Received: by 2002:a05:6a00:2d88:b0:714:186a:ae0b with SMTP id d2e1a72fcca58-71dc5d6e144mr4961081b3a.24.1727869621952;
        Wed, 02 Oct 2024 04:47:01 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:47:01 -0700 (PDT)
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
Subject: [PATCH 5/9] arm64: dts: mediatek: mt8188: Add JPEG decoder and encoder nodes
Date: Wed,  2 Oct 2024 19:41:45 +0800
Message-ID: <20241002114614.847553-6-fshao@chromium.org>
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

Add JPEG encoder and decoder nodes for hardware-accelerated JPEG
decoding and encoding support.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index dbea562ee8ba..c1b057166aa3 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2315,6 +2315,35 @@ video_encoder: video-encoder@1a020000 {
 			mediatek,scp = <&scp>;
 		};
 
+		jpeg_encoder: jpeg-encoder@1a030000 {
+			compatible = "mediatek,mt8188-jpgenc", "mediatek,mtk-jpgenc";
+			reg = <0 0x1a030000 0 0x10000>;
+			clocks = <&vencsys CLK_VENC1_JPGENC>;
+			clock-names = "jpgenc";
+			interrupts = <GIC_SPI 354 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L19_JPGENC_Y_RDMA>,
+				 <&vdo_iommu M4U_PORT_L19_JPGENC_C_RDMA>,
+				 <&vdo_iommu M4U_PORT_L19_JPGENC_Q_TABLE>,
+				 <&vdo_iommu M4U_PORT_L19_JPGENC_BSDMA>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VENC>;
+		};
+
+		jpeg_decoder: jpeg-decoder@1a040000 {
+			compatible = "mediatek,mt8188-jpgdec", "mediatek,mt2701-jpgdec";
+			reg = <0 0x1a040000 0 0x10000>;
+			clocks = <&vencsys CLK_VENC1_LARB>,
+				 <&vencsys CLK_VENC1_JPGDEC>;
+			clock-names = "jpgdec-smi", "jpgdec";
+			interrupts = <GIC_SPI 355 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L19_JPGDEC_WDMA_0>,
+				 <&vdo_iommu M4U_PORT_L19_JPGDEC_BSDMA_0>,
+				 <&vdo_iommu M4U_PORT_L19_JPGDEC_WDMA_1>,
+				 <&vdo_iommu M4U_PORT_L19_JPGDEC_BSDMA_1>,
+				 <&vdo_iommu M4U_PORT_L19_JPGDEC_HUFF_OFFSET_1>,
+				 <&vdo_iommu M4U_PORT_L19_JPGDEC_HUFF_OFFSET_0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDEC0>;
+		};
+
 		disp_dsi: dsi@1c008000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c008000 0 0x1000>;
-- 
2.46.1.824.gd892dcdcdd-goog


