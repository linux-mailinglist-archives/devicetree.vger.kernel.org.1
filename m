Return-Path: <devicetree+bounces-68957-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDBC98CE2E9
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 11:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8F8DF1F21CD4
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 09:05:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 865C012B143;
	Fri, 24 May 2024 09:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="voySdkSS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DC312AACC
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 09:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716541491; cv=none; b=pAU4cJHTkaZB5MJvUC0iPimJhRHUPEVR6IPwvvq4AVZqx1Pu136GSVUBbxDMtr48HOXu2uO2MglPpmXCjm6Sj0bNBGl2N2d5X2xh57irFyEcX843h9HDYnc17QcUp9coVfNSA8kATcLGixWoqbACGuqlGt5SoNQgfGW8eFj8DMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716541491; c=relaxed/simple;
	bh=hIvA39TYPLOif8A8RvknSlSb848U6P/fP6pMmPEKIo8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nI3ECRMa//p2u3rALe3vwA6Ynn7CsEtnWlzmFreu3kOAehDuVI8pi9HEREXb2SvdbeaHoWxI/X1OoXGS7WYsBndXgj4oIhoNgTXClZ7oavS1VElOsh6IvWBaAQopM3oC3LIa7HjPj98jHIBuFsdTUDvoOr/aQnqLjX33n4v4Bzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=voySdkSS; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e78fe9fc2bso47865071fa.3
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 02:04:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716541487; x=1717146287; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3KPQvvAhw/QNVA2rWSAmQjx+yY2X/Ig4NrPz7gPkeZ8=;
        b=voySdkSSjbvvBIOM77jXndEujoM446FnngAJmGb3og33ig1ZUvDSUkeLErbLXsU8oH
         sP9qRy2qsbknMcOD9eZ5hI/hAFTiaO8IorjUqqI0cm7tcTyfRTopaW8LgqGpUMS/s9DZ
         qp5+6XcBoF8X0xap58woLEGuED8WM0MnUxKQs8G7qM4WwsGmnhsW3rboN/snYsIkggTP
         KHq0G9r4we/NyOqEu3hYfrYJe+Qa6AK/7Bq7W+gI/UM3dbnNAm0P0XGGl1lTlnKSEx6u
         by1EmHChpFryDRCkMBioT3giIH/FiWf7Flms88pSRrYdC2z/ODZFXqjJcwxM1EyW4Prh
         acgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716541487; x=1717146287;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3KPQvvAhw/QNVA2rWSAmQjx+yY2X/Ig4NrPz7gPkeZ8=;
        b=VkF5xqBRRvjlxbO9OFMgNlGRmN16hky7WGXTmhFqCAS+/6JycCpJC6+In3J/Z+n5IU
         rFr4yD9pBrqFf3/Pl2F6FRrLwPDoRIINA1haO0Z681t+oq9z+V5Kqp5jL36LWGe1ygq0
         qIHi/DtFx3Xzl4cBFa7xBUXDkqOut2QRo0wi6MpLLJ21ZQ52khHaNTfDyJ3ViBGeuBb2
         ng38OVY8bZLGyI1armqYwlxoPUZuvEp0M8X8/rroypzTJIJ2cljwoH3LJvr1ocyklq3b
         IsnQ5cozBlgF9v556W9EDjSFn1fSsZrsQdxWSOeC9yH2Rtaf57rv37Z9zh+S/HMG3bX3
         rtVQ==
X-Gm-Message-State: AOJu0YzynTT2rCtZ1odZiKEoLmWZfJ+dPpARVMtynsN7jXq/33SLGsLY
	4Q6G5FopE28WzlIILYC0YokBFU0C2I4H05Um7r5Vi8tI9baaVjyqG8nlFMWanAiCaEf6vCKaeV3
	X
X-Google-Smtp-Source: AGHT+IG4ZPvP3zyMcIIsqJRNHq2zKeq8gVeaCSSEPAEcrdFwonBn4Mlo37q4NLlAbVPyD1pqqDJuSw==
X-Received: by 2002:a2e:9c8f:0:b0:2e6:f59e:226f with SMTP id 38308e7fff4ca-2e95b0bce90mr9581401fa.5.1716541487399;
        Fri, 24 May 2024 02:04:47 -0700 (PDT)
Received: from [127.0.1.1] ([84.102.31.250])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42100f163a8sm47273045e9.13.2024.05.24.02.04.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 02:04:46 -0700 (PDT)
From: Julien Panis <jpanis@baylibre.com>
Date: Fri, 24 May 2024 11:04:36 +0200
Subject: [PATCH v5 3/6] arm64: dts: mediatek: mt8186: add lvts definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240524-mtk-thermal-mt818x-dtsi-v5-3-56f8579820e7@baylibre.com>
References: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
In-Reply-To: <20240524-mtk-thermal-mt818x-dtsi-v5-0-56f8579820e7@baylibre.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-pm@vger.kernel.org, Julien Panis <jpanis@baylibre.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1716541478; l=1717;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=ZXPmUPXXFa1JCVfBMk9FrptEjzZlcdWN0z1cSMSnOwA=;
 b=DnxRTjxW9wcR2LDOBi5XDgQoQhBL6Qg8MGh6B91uPvtLP04Jw+un7gLHna5Fd+Gap9ino5nx7
 0fkow0NZ0Q1B2HcwWjk8f3uOiSg6Yj45Xh3lrEEqW62m2BKow3pSlc7
X-Developer-Key: i=jpanis@baylibre.com; a=ed25519;
 pk=8eSM4/xkiHWz2M1Cw1U3m2/YfPbsUdEJPCWY3Mh9ekQ=

From: Nicolas Pitre <npitre@baylibre.com>

Values extracted from vendor source tree.

Signed-off-by: Nicolas Pitre <npitre@baylibre.com>
Link: https://lore.kernel.org/r/20240402032729.2736685-8-nico@fluxnic.net
[Angelo: Fixed validation and quality issues]
Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 4763ed5dc86c..caec83f5eece 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -1361,6 +1361,17 @@ spi0: spi@1100a000 {
 			status = "disabled";
 		};
 
+		lvts: thermal-sensor@1100b000 {
+			compatible = "mediatek,mt8186-lvts";
+			reg = <0 0x1100b000 0 0x1000>;
+			interrupts = <GIC_SPI 99 IRQ_TYPE_LEVEL_HIGH 0>;
+			clocks = <&infracfg_ao CLK_INFRA_AO_THERM>;
+			resets = <&infracfg_ao MT8186_INFRA_THERMAL_CTRL_RST>;
+			nvmem-cells = <&lvts_efuse_data1 &lvts_efuse_data2>;
+			nvmem-cell-names = "lvts-calib-data-1", "lvts-calib-data-2";
+			#thermal-sensor-cells = <1>;
+		};
+
 		pwm0: pwm@1100e000 {
 			compatible = "mediatek,mt8186-disp-pwm", "mediatek,mt8183-disp-pwm";
 			reg = <0 0x1100e000 0 0x1000>;
@@ -1676,6 +1687,14 @@ efuse: efuse@11cb0000 {
 			#address-cells = <1>;
 			#size-cells = <1>;
 
+			lvts_efuse_data1: lvts1-calib@1cc {
+				reg = <0x1cc 0x14>;
+			};
+
+			lvts_efuse_data2: lvts2-calib@2f8 {
+				reg = <0x2f8 0x14>;
+			};
+
 			gpu_speedbin: gpu-speedbin@59c {
 				reg = <0x59c 0x4>;
 				bits = <0 3>;

-- 
2.37.3


