Return-Path: <devicetree+bounces-111004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65ECF99C872
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 13:15:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 25E0E2866B3
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 11:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AEFA1ABEA9;
	Mon, 14 Oct 2024 11:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JBVWySRy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D3C1AB6EA
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 11:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728904286; cv=none; b=GEf7vhgheiIWBGam1XngXT4Uefqaf8mJe3ppV6eOyoXc5r1LhB0DBBccYI0/krkI3Sg4YBDMNQaOm+i2GrXspeeDAYhtwc8JRjDfGjtrdtrB5Proey2VyyfSutN2grhu2L1bZ+HNu/3caAOL2Ava9vWkt9jkEiUkPygm7KQRF20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728904286; c=relaxed/simple;
	bh=lhQRh9izKbz49QWXvvIBZ7jHyiSYnNJthgmoFsKAKgc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AyXWCmYoZM+OOqtz4xTiLEszzRL2SY93ecxMrDaiOn7LxMxer0RVCwTgR3vadQg5bxjt70JJRWmwIx8s1fUP6FchG6nL84Qlr43W0PSciicZV+PF7nZ50qopjJADun3LZ//H9dq1a6RxLOkq0qumRgDvZS2zAlLrCoAlGNs9C5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JBVWySRy; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20c767a9c50so32385515ad.1
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728904284; x=1729509084; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iL6Ll4Ysc6FTv38HKkhsshD1MEymDLs6UY7fiaBMSNc=;
        b=JBVWySRySK3o9tOyjpUiCN/Eguq5U5xNPm19HaZDIzu3mBNzFAW8d6zPqI01AJERj1
         BLEQ9n3CnNElNtux3kJnt+FVgb0AboyyXKLtXOZLJBqV8+umn5vgQqw1yNNeqJM1HW/A
         NB2BfKD2NcXkwHU3FIN9d4PqOnVbzo1GVEJL0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728904284; x=1729509084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iL6Ll4Ysc6FTv38HKkhsshD1MEymDLs6UY7fiaBMSNc=;
        b=qKVVV1E1Hd+6VNpfhhOBSsVbcCDW0eK2tzhEWZeY0O0CmoH0+mKfoNEnYz/BLLluDI
         eRdDte+0om2ldVInY4zCKPbXKD3j6GvkWBv70AXeiy1+yKETceez3afEtoaGgYGQI6Uo
         Y2FkdYHQjJlljC2mBelQzyd5tOkJxXhnjYzZ51OIj/AOW2rOubTEaYY5q6zhvGCkmSKg
         bmLpqiOwuBvaoiSBYylayu1uY2XNylSifEDxOdSPKGmUKD7uBBFCJ2JsPIY1i80h+I/Q
         i3OLIWBEeZ2hYSEVLL7nReYvltI8tcdnAX3duAdJhglSxmxDcisEdIOPVm3F4nDTn0s6
         nIOg==
X-Forwarded-Encrypted: i=1; AJvYcCU6lmsl6EkEpTmb3pIhrynIQdPbxsIu1x3TmAyD9ptU8s+68LuLhdpl9WsJnvjruOZgfsiWp95MAhAt@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3BnLBu2LnsBgMEG/VQocic4nQAD8lROHEoEWQOi1CtWR6Tw6G
	Ho0LgmDcEIGvHtTMMt+D+3rkcR0o/eCWOHi/XhM8bhW0xcqPj1UcTw0yHV34xQ==
X-Google-Smtp-Source: AGHT+IHvuP7BDvo01xYd1+A51amYcIILe1RYvH/diev/3+bm7d/T4ixY/iLFWN49N5MjxuBJzWd47A==
X-Received: by 2002:a17:902:d4cb:b0:20c:e2ff:4a2e with SMTP id d9443c01a7336-20ce2ff4bcdmr72930005ad.53.1728904284021;
        Mon, 14 Oct 2024 04:11:24 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:4907:d52a:1a1a:58d0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc3e6fcsm63858285ad.118.2024.10.14.04.11.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 04:11:23 -0700 (PDT)
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
Subject: [PATCH v4 4/9] arm64: dts: mediatek: mt8188: Add video decoder and encoder nodes
Date: Mon, 14 Oct 2024 19:09:26 +0800
Message-ID: <20241014111053.2294519-5-fshao@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
In-Reply-To: <20241014111053.2294519-1-fshao@chromium.org>
References: <20241014111053.2294519-1-fshao@chromium.org>
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
index bd36320bc60c..57f283be4402 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2193,6 +2193,64 @@ ccusys: clock-controller@17200000 {
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
@@ -2244,6 +2302,31 @@ larb19: smi@1a010000 {
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
2.47.0.rc1.288.g06298d1525-goog


