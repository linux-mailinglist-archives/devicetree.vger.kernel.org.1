Return-Path: <devicetree+bounces-107757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A18598FEB8
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 10:13:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 253CB283A82
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 08:13:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9D90146A6C;
	Fri,  4 Oct 2024 08:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gB2wdCEC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64EE21465AC
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 08:13:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728029581; cv=none; b=cK17uzEzt/a63zrWVa8xpwR7Egvz8UYSFFiwtGlhcoTkUzYbxhZl9iBAc6RazggtPSsiA6PB6VwAZOvXTJN44M0iP4RfArlb+vOBRDtzgdXm4LaOZT6kVTHOfhoFaOjdMpXG3JRoEoPcCNzNFiWez8W0mzisoQuwSqoA4+eM5so=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728029581; c=relaxed/simple;
	bh=hd5Srt28l3TLt9oVH9HGicSBLdSBZuEY/6ZQ2mt/jqo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JJpLLj7cdw9fKuaXcB5pxDSpBzubBJNEFGrSnkJNnc2f5mpjdsv8bAened3DeAyKYeWQEd7XXOtJNbIjiacWA+uSkNDMF4d7e1Iz2mvzZyFP6nzbUoYrwFOPsJf6umlCw2yJ+r7uBTRP2UgoRf1l6QWH4TJBiwQckXVB75IoHGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=gB2wdCEC; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20b93887decso15344105ad.3
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2024 01:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728029580; x=1728634380; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9DhL+yqm4JWemXjqVREhHsRQssA7CSfL5kIS59CVyeA=;
        b=gB2wdCECJZvG01a31pPw0q8CtsAh6w9Q31JCqSpTT5osrblZbhJ8bTumyoNckpoccQ
         xW+ywVx/JbNiRKwPxRuAx+gaBDF5t4CR6RZD+drqXukooBRXtsiFjlxWXIzbFiPatovj
         k3WbOyHSqX0jEKgWISiW735szCkLHCcSk3D+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728029580; x=1728634380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9DhL+yqm4JWemXjqVREhHsRQssA7CSfL5kIS59CVyeA=;
        b=Di3RHS5GoICFN28SoDLJ797PqZantE3oHyuuNt5S8py7NBxE1bs+cmqcPLfOZlFTiH
         xM4A9gghp5T0pluqMu6lG/XhBfWq8hCJ//bSfY9klFS1kUzsKdLyzNBDr0FQL1xTPRVs
         b97ckjWCpcFdS8UOWFgesbGdvva4S8/mnkco06UhzD09N4rRLrcD0NRDL56U7C2HM1bx
         P2aJekSveeoenwflxE42TPGO79FhlpfJtnLlIhzere+6WPAdJUZ97FKxHo0wy2Yi+tsR
         Dap92Bmaeb0nTJJvWvVCEQYY07C9QWMA1t1TrddaccR/3Hw8xsbnSlW6WwTMtDlLVENa
         WqoA==
X-Forwarded-Encrypted: i=1; AJvYcCUHXcX6jPsECiXvoJQ/9fL78fRn1VnTLGoGwsnWJZ5IKOfGy5UvoWU4g9Jhqty8lMfR50BtTOtGT8aE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo5gIcnyjYrPKQl4tpnIit1H9kikpkmXGMGrgt3KUTvJ8rTgX/
	UH1bHGOibSJJxhin1FDpUztZulgIPWflXS16sAE8uUvjoBqdL8rddHlk1Lrppg==
X-Google-Smtp-Source: AGHT+IH60gDoSksZRxBPYz8lE7yUsHBmH9SByFQjxJjyREMpraheTARQnyuSg3kqldf9evYR6R5/Lw==
X-Received: by 2002:a17:903:32cd:b0:20b:af36:ead with SMTP id d9443c01a7336-20bff194fd0mr27908675ad.44.1728029579648;
        Fri, 04 Oct 2024 01:12:59 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:73bb:cecf:e651:2ce6])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20beefad264sm19401305ad.205.2024.10.04.01.12.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Oct 2024 01:12:59 -0700 (PDT)
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
Subject: [PATCH v3 5/9] arm64: dts: mediatek: mt8188: Add JPEG decoder and encoder nodes
Date: Fri,  4 Oct 2024 16:11:57 +0800
Message-ID: <20241004081218.55962-6-fshao@chromium.org>
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

Add JPEG encoder and decoder nodes for hardware-accelerated JPEG
decoding and encoding support.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index bb07d2629e08..a6a5d9cc875b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -2332,6 +2332,35 @@ video_encoder: video-encoder@1a020000 {
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
 		disp_dsi0: dsi@1c008000 {
 			compatible = "mediatek,mt8188-dsi";
 			reg = <0 0x1c008000 0 0x1000>;
-- 
2.47.0.rc0.187.ge670bccf7e-goog


