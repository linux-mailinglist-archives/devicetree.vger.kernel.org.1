Return-Path: <devicetree+bounces-107756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4917998FEB6
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:13:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7460B22F4F
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B1E6145B25;
	Fri,  4 Oct 2024 08:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X8+rmPGr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BEB6145341
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:12:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029578; cv=none; b=TCfX5Se9Xc33PH8YgDYC8+B/zvsXwNslZDjz9AlVnWnHzn6nHWjidPiMH9dU3U8Nti4F1n3+Kbgp85c3WpeKrBl/UlUNCPSgc/q/Q1b/h7RrQeDPmTrOHsk3nKuhpw9QqXvInLZf+MP1N80A+BEtDgkGYMj06cuuD60EyyshEZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029578; c=relaxed/simple;
	bh=oZFTAG6lDI9lg40xZBURgNdD7hUBbVyQ+nrJ2VEi5e4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oAyfFfAl+iqG0TXAwy2IcFNXQsjK2+LpBc47Oe8cF08u0+Kh7NgLZvVLAzE6DJ/agZB3VRs+R42ja989SpC8MXnHdfPOUe+fjiDFVMZF5NkHFU7HZ3k0TPS5ge8q2NzenBbubvLrK3P5h4kkXxzMpLEqE/sb5Xu9Mv0bH9echxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X8+rmPGr; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-20ba6b39a78so13208175ad.3
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029577; x=1728634377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A9Y5BBz/AMy1C39cpZcaU1QFTTwbKgNIYIKdfEI0/z0=;
        b=X8+rmPGrvcm3NE5ydt7l3lkwGMnUd+ute0dGJedtAx9//DlfOEKRHfhQE+bKNLRv4s
         Ya22wYzT7x+komj5KP1ZUPFYpeo9ZYHzRG7TWIY7vlRud9Y9aDfon5Bav/mflfc8Vkof
         x+QlLzBhZ3l9TCxjtoDdWMzH/MNKeIT83LYh4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029577; x=1728634377;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A9Y5BBz/AMy1C39cpZcaU1QFTTwbKgNIYIKdfEI0/z0=;
        b=CjnLpm6l4KLXVd9dSy95K+w7sqWPh2f7xh7e1OT3fxrYSMnwlVZLBPV9pNX/+F9kUT
         AicMjzMw9fOJWgq1JP4Un9X08X+SUJStVSN7dA1T2dg3daw7X+HZO6ZbjU2Al+wxoDsF
         1FNm9dCffQLqIbhsk+7UJf6ju6YFNFbceS9w1ivpLGfLdPTgGL9pi29SkMm5pxNwoROO
         LRrFYpwek+GmNjRS1kaIQ1DvQ9FJx1FCyOWcxVyQIH1CGD2pmrx2Dfjj6cky2dkbE4UM
         rVMPF2cvkdbAb3q5+IVg9GLZBdd9xBxMqVsqF8oRlV9QRvOdS4gqZ/3qKceMfyPv+fH4
         Bjqw==
X-Forwarded-Encrypted: i=1; AJvYcCVqGenGvQ2Wn3RYetGGbnq3dzvG/05rbQ4dv2e82FsmPGvPXBHTX4aSOoGpYMRKxJr9+8cvWA2bZogi@vger.kernel.org
X-Gm-Message-State: AOJu0Yw89U7p+Xihxu/zlJxeLBjyb6bjF45ILpSeT7Z8wu37NRTaEL5y
	GnTP8EpiB6D/0XXX4fa7pWe8Tz4nZZqZnYKTqD5aOlquSFjPJkUQIzOugS2DhA==
X-Google-Smtp-Source: AGHT+IFFL+xgmMgpwjPIMHZbqjcE9gF5N+ymzlSutBv/A9q8eic7+p3jY6kxs1URdAFCMFiCsPOt1g==
X-Received: by 2002:a17:903:2452:b0:205:6552:1099 with SMTP id d9443c01a7336-20bfe022cd9mr20180335ad.8.1728029576897;
        Fri, 04 Oct 2024 01:12:56 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.12.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:12:56 -0700 (PDT)
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
Subject: [PATCH v3 4/9] arm64: dts: mediatek: mt8188: Add video decoder and encoder nodes
Date: Fri,  4 Oct 2024 16:11:56 +0800
Message-ID: <20241004081218.55962-5-fshao@chromium.org>
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

Add video decoder and encoder nodes for hardware-accelerated video
decoding and encoding support.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 83 ++++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index d39940ed6f5c..bb07d2629e08 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2198,6 +2198,64 @@ ccusys: clock-controller@17200000 {
 			#clock-cells = <1>;
 		};
 
+		video_decoder: video-decoder@18000000 {
+			compatible = "mediatek,mt8188-vcodec-dec";
+			reg = <0 0x18000000 0 0x1000>, <0 0x18004000 0 0x1000>;
+			ranges = <0 0 0 0x18000000 0 0x26000>;
+			iommus = <&vpp_iommu M4U_PORT_L23_HW_VDEC_UFO_ENC_EXT>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			mediatek,scp = <&scp>;
+
+			video-codec@10000 {
+				compatible = "mediatek,mtk-vcodec-lat";
+				reg = <0 0x10000 0 0x800>;
+				assigned-clocks = <&topckgen CLK_TOP_VDEC>;
+				assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D6>;
+				clocks = <&topckgen CLK_TOP_VDEC>,
+					 <&vdecsys_soc CLK_VDEC1_SOC_VDEC>,
+					 <&vdecsys_soc CLK_VDEC1_SOC_LAT>,
+					 <&topckgen CLK_TOP_UNIVPLL_D6>;
+				clock-names = "sel", "vdec", "lat", "top";
+				interrupts = <GIC_SPI 708 IRQ_TYPE_LEVEL_HIGH 0>;
+				iommus = <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_VLD_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_VLD2_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_AVC_MV_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_PRED_RD_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_TILE_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_LAT0_WDMA_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_UFO_ENC_EXT>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_UFO_ENC_EXT_C>,
+					 <&vpp_iommu M4U_PORT_L23_HW_VDEC_MC_EXT_C>;
+				power-domains = <&spm MT8188_POWER_DOMAIN_VDEC0>;
+			};
+
+			video-codec@25000 {
+				compatible = "mediatek,mtk-vcodec-core";
+				reg = <0 0x25000 0 0x1000>;
+				assigned-clocks = <&topckgen CLK_TOP_VDEC>;
+				assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D6>;
+				clocks = <&topckgen CLK_TOP_VDEC>,
+					 <&vdecsys CLK_VDEC2_VDEC>,
+					 <&vdecsys CLK_VDEC2_LAT>,
+					 <&topckgen CLK_TOP_UNIVPLL_D6>;
+				clock-names = "sel", "vdec", "lat", "top";
+				interrupts = <GIC_SPI 707 IRQ_TYPE_LEVEL_HIGH 0>;
+				iommus = <&vdo_iommu M4U_PORT_L21_HW_VDEC_MC_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_UFO_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_PP_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_PRED_RD_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_PRED_WR_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_PPWRAP_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_TILE_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_VLD_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_VLD2_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_AVC_MV_EXT>,
+					 <&vdo_iommu M4U_PORT_L21_HW_VDEC_UFO_EXT_C>;
+				power-domains = <&spm MT8188_POWER_DOMAIN_VDEC1>;
+			};
+		};
+
 		larb23: smi@1800d000 {
 			compatible = "mediatek,mt8188-smi-larb";
 			reg = <0 0x1800d000 0 0x1000>;
@@ -2249,6 +2307,31 @@ larb19: smi@1a010000 {
 			mediatek,smi = <&vdo_smi_common>;
 		};
 
+		video_encoder: video-encoder@1a020000 {
+			compatible = "mediatek,mt8188-vcodec-enc";
+			reg = <0 0x1a020000 0 0x10000>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			assigned-clocks = <&topckgen CLK_TOP_VENC>;
+			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D4>;
+			clocks = <&vencsys CLK_VENC1_VENC>;
+			clock-names = "venc_sel";
+			interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH 0>;
+			iommus = <&vdo_iommu M4U_PORT_L19_VENC_RCPU>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_REC>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_BSDMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_SV_COMV>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_RD_COMV>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_CUR_LUMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_CUR_CHROMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_REF_LUMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_REF_CHROMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_SUB_W_LUMA>,
+				 <&vdo_iommu M4U_PORT_L19_VENC_SUB_R_LUMA>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VENC>;
+			mediatek,scp = <&scp>;
+		};
+
 		disp_dsi0: dsi@1c008000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c008000 0 0x1000>;
-- 
2.47.0.rc0.187.ge670bccf7e-goog


