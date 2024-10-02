Return-Path: <devicetree+bounces-107213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 127BC98D279
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 13:48:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D155F2845EA
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 11:48:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AA4720695C;
	Wed,  2 Oct 2024 11:47:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Xig75mOd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0D5E206951
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:47:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727869632; cv=none; b=UT0IrC0bBAKTJxVL6dn29PY5zIWiDmOeBRtpj6mvgt1RUIIZtIFNCRuOZRA5PcNrc4DgzcqCMHNzqPudOx34hHIWUqF51xFdbjF4pGMhhDGv/v7oJeujLV2F31fvVBSUaaajXnXFrGRtAKSStK8zWKZFi0GjJtWujUKhc+TpORc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727869632; c=relaxed/simple;
	bh=mUqkqHEcCxtpRTfeg/binSxH16mf5p09ySmI/fIlzZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W6XQTlu9JlP+fxrQXjZKm2wN9xAgtUEKzRYbM1VYjy7O/er3dMbZGiAhtXR76hHZ8dSRJAnPd880j04QWF3XRPhCEOV8MSUzucVlpx1cGEa0L42aFdadRCLeBKJdnaKey2MSz/KSsxUAxEyOlLqEk8y7tsHs3dYzNyYhtILfDV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Xig75mOd; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-718e2855479so4658129b3a.1
        for <devicetree@vger.kernel.org>; Wed, 02 Oct 2024 04:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1727869630; x=1728474430; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2J6IAMekTb4vqO9a374pLD/X7ddMa658jNggvdKpP9o=;
        b=Xig75mOdPBlOjHVZZL4lljOvSfzgpkO78y/aD9ktKpHJq0b1t4rve4SXsJBiCQbbuR
         F8UbWrOSOvppS/toyW6pg8Mx4NDfhh/ksQ+mYVCnq9PnQLPtuMuGw+nZLkWzC6MJB7dB
         XQB4b2VgHvAv3KI9KWqd/2Tbk25G+/iGNBd/w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727869630; x=1728474430;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2J6IAMekTb4vqO9a374pLD/X7ddMa658jNggvdKpP9o=;
        b=rhtUutvvNDmrnjy6GIo27WVHzjHixhi9xmtzIej942AHoFf8XkJnHlzcsOXfv6OMwd
         hdA4jN7A78DjaP4Nx29RvZY29GBHCrRNVcqxwB4xKzaDrM+MQXUeihXazVNctdnuLwwM
         4dummWSLBDwzlq6H2eMrFfXVZgSjsbG89Uq8feZqodx0XA2frYR5prtsXGcXXip65uCN
         +KkplhplWc3mr68i2RWegCFRJ/twOWFe38FKmzn8Z/RXjOMS6Xk5yfxj0vQekeMykxIc
         CCMK/3cBz6YnEppdPEb3jC5E16JPGuD2Z06gntCKxsq3bVcAfSkBG2bFjWAFuUEKVHGU
         b2fg==
X-Forwarded-Encrypted: i=1; AJvYcCVPwAzj468JA1SYgmlw5LijIZ4R5USCNpAGUA92n76AGEGOs99QVNxy0gApETlHlH1NIFwZGG4++5zk@vger.kernel.org
X-Gm-Message-State: AOJu0YzD2r/LuN6cVw6/nFj+eW0HBIvAsr+6TcZVtJns9kOV9OcxC2QA
	lxczzb2cXJg442RhM23pXGci+I0P6qcq2RnnTzsk56++SxqiTaY+aiayj3q+jw==
X-Google-Smtp-Source: AGHT+IHxoSxlQF4L8vnk+9d+dcrFTwh2sgZBeoesnLzs4EQ03w9gCUtKP/Slm2w+wQYV4T7a2uPNvA==
X-Received: by 2002:a05:6a00:4615:b0:719:1df6:c0fe with SMTP id d2e1a72fcca58-71dc5d5443cmr4531512b3a.21.1727869630106;
        Wed, 02 Oct 2024 04:47:10 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:3bd0:d371:4a25:3576])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b2652baefsm9639627b3a.180.2024.10.02.04.47.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Oct 2024 04:47:09 -0700 (PDT)
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
Subject: [PATCH 8/9] arm64: dts: mediatek: mt8188: Add DP-INTF nodes
Date: Wed,  2 Oct 2024 19:41:48 +0800
Message-ID: <20241002114614.847553-9-fshao@chromium.org>
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

Add the primary and secondary dp-intf nodes.
These DP-INTF hardware IPs are the sink of the vdosys0 and vdosys1
display pipelines for the internal and external displays, respectively.

Individual board device tree should enable the nodes and connect input
and output ports as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index 5410469e5fd8..943333d2567f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -24,6 +24,8 @@ / {
 	#size-cells = <2>;
 
 	aliases {
+		dp-intf0 = &dp_intf0;
+		dp-intf1 = &dp_intf1;
 		ethdr0 = &ethdr0;
 		gce0 = &gce0;
 		gce1 = &gce1;
@@ -2448,6 +2450,18 @@ disp_dsi: dsi@1c008000 {
 			status = "disabled";
 		};
 
+		dp_intf0: dp-intf@1c015000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c015000 0 0x1000>;
+			clocks = <&vdosys0 CLK_VDO0_DP_INTF0_DP_INTF>,
+				 <&vdosys0 CLK_VDO0_DP_INTF0>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL1>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 657 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS0>;
+			status = "disabled";
+		};
+
 		mutex0: mutex@1c016000 {
 			compatible = "mediatek,mt8188-disp-mutex";
 			reg = <0 0x1c016000 0 0x1000>;
@@ -2713,6 +2727,18 @@ merge4: merge@1c110000 {
 			mediatek,merge-fifo-en;
 		};
 
+		dp_intf1: dp-intf@1c113000 {
+			compatible = "mediatek,mt8188-dp-intf";
+			reg = <0 0x1c113000 0 0x1000>;
+			clocks = <&vdosys1 CLK_VDO1_DPINTF>,
+				 <&vdosys1 CLK_VDO1_DP_INTF0_MMCK>,
+				 <&apmixedsys CLK_APMIXED_TVDPLL2>;
+			clock-names = "pixel", "engine", "pll";
+			interrupts = <GIC_SPI 513 IRQ_TYPE_LEVEL_HIGH 0>;
+			power-domains = <&spm MT8188_POWER_DOMAIN_VDOSYS1>;
+			status = "disabled";
+		};
+
 		ethdr0: ethdr@1c114000 {
 			compatible = "mediatek,mt8188-disp-ethdr", "mediatek,mt8195-disp-ethdr";
 			reg = <0 0x1c114000 0 0x1000>,
-- 
2.46.1.824.gd892dcdcdd-goog


