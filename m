Return-Path: <devicetree+bounces-101995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EDFE2975038
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 12:54:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 679D7B22965
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 10:54:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BBBC195FEF;
	Wed, 11 Sep 2024 10:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="SVmWrEJe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76C219343E
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 10:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726051938; cv=none; b=TbapOE1XHKXIhNdzzyXW7nqm0JznzSi+0yFahdy328F706lnmR2CaZVZWUdHeLHyoejJNkYGZlJUtYOcsBQUep2I28WOf/+zI7RUMtawelY8DhBJ0M1Sk28V6g8KCfI4r3+HgrPI6nFadEDhvZQjIlcnHEKgC3eFoI+hAvrFfog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726051938; c=relaxed/simple;
	bh=f4KfmeWWC5m6K3XaA+KPw4nFz2Fxr6BBlgxZPi/I1c0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kC0goUxURlWTOEWxSzCydXo2D/cwjhhM5jshQ4XiYVyTJLxNXk8apcML/pINX9QxWFX3nEdn3PTe53FiW8EGEnuI5trcDnGCTDLuRGHB+8ytrvbjha/kPx9HoPH/zBcrw5WEnGe+6dMjnp3aX2xSw6zxoqwmZ5jwIr9Fx7bZdPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=SVmWrEJe; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1fee6435a34so16300025ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 03:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726051936; x=1726656736; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VjEfjad5gaHh9yR5Z7gt+sOiMhf7ln7vUbnINutcJ9U=;
        b=SVmWrEJelFmk7MK214j1sCBzc+RqAh/wMVWTZtd+1NTYF/CcSL7fkvEMxSmZsMwmUN
         THPtitUaWi7r2PvvRNorComNYHU/ma8dENkEt9z9e/kJmvHGCNk9lVN/qtGmiy1CLAy/
         MTCfFOZTbuWGeLIEH6SSoslKEgFboojo55lSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726051936; x=1726656736;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VjEfjad5gaHh9yR5Z7gt+sOiMhf7ln7vUbnINutcJ9U=;
        b=TxRBRpGYi9t/z+M+QekLOy9DmECSXGkZzPB/fPtaII2redQwpNXSd0WzPzwaOcp/VI
         LL13VjybBL7A9c+qr5zI6R1juikWtYVlISvQ199mzavs+Nt4UoHP9OTbkIUgV0JsQWwW
         OaIz73WNr+9pQM0IwMRKptaYHg/afVqlNRTCp8x06EAzividdNKP792kCQc17ZFMRF+r
         DRKfxV2bVf1i/gcnLZrLKgeJ8mb33Dh422YcNQruI/LO11GSut8g9G+ZZI8HNMwbuc95
         7xNoV+4UIZ+2nOqWRrztoMVcFK/O/sh4loyY//RNhoIxoeCRjBK2JeqjiE0MsKxGRAyJ
         2DIg==
X-Forwarded-Encrypted: i=1; AJvYcCWhSu+1NI4EYtG+cuYcvD+ItFfsrUvUJUOU9JNA1/Bax8U9IPdzvqjrNfHqQWSsJz5+m0BpgGib0eTL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0DtJaEq/ZJWn776cE156vtFFiwSLej5kyU9bCKD5jKayyOtn5
	TqGMtEdamiRUcLkNqo1sTTRwlHruR3u4IBsa5AP/GzqWEY4PjoKT/f7ojFlRpg==
X-Google-Smtp-Source: AGHT+IHlInOKvp4aF9oOmTvOITgeWKC+0zEZ++z77fG527ltX5qYlsAvDX/ku3VjlZ9QpmIaMIkPLQ==
X-Received: by 2002:a17:902:d2d1:b0:205:4531:54d with SMTP id d9443c01a7336-207521bbe0fmr39165075ad.30.1726051936144;
        Wed, 11 Sep 2024 03:52:16 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d8242b3d13sm7147352a12.52.2024.09.11.03.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 03:52:15 -0700 (PDT)
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
Subject: [PATCH v2 5/8] arm64: dts: mediatek: mt8188: Add PWM nodes for display backlight
Date: Wed, 11 Sep 2024 18:51:10 +0800
Message-ID: <20240911105131.4094027-6-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911105131.4094027-1-fshao@chromium.org>
References: <20240911105131.4094027-1-fshao@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add two hardware PWM nodes for display backlight usage on MT8188 SoC,
and mark them as disabled by default.
Boards can enable the necessary PWM node as needed.

Signed-off-by: Fei Shao <fshao@chromium.org>
---

(no changes since v1)

 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
index f746b89c1ec6..61530f8c5599 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
@@ -1418,6 +1418,28 @@ lvts_ap: thermal-sensor@1100b000 {
 			#thermal-sensor-cells = <1>;
 		};
 
+		disp_pwm0: pwm@1100e000 {
+			compatible = "mediatek,mt8188-disp-pwm", "mediatek,mt8183-disp-pwm";
+			reg = <0 0x1100e000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_DISP_PWM0>,
+				 <&infracfg_ao CLK_INFRA_AO_DISP_PWM>;
+			clock-names = "main", "mm";
+			interrupts = <GIC_SPI 203 IRQ_TYPE_LEVEL_HIGH 0>;
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+
+		disp_pwm1: pwm@1100f000 {
+			compatible = "mediatek,mt8188-disp-pwm", "mediatek,mt8183-disp-pwm";
+			reg = <0 0x1100f000 0 0x1000>;
+			clocks = <&topckgen CLK_TOP_DISP_PWM1>,
+				 <&infracfg_ao CLK_INFRA_AO_DISP_PWM1>;
+			clock-names = "main", "mm";
+			interrupts = <GIC_SPI 793 IRQ_TYPE_LEVEL_HIGH 0>;
+			#pwm-cells = <2>;
+			status = "disabled";
+		};
+
 		spi1: spi@11010000 {
 			compatible = "mediatek,mt8188-spi-ipm", "mediatek,spi-ipm";
 			#address-cells = <1>;
-- 
2.46.0.598.g6f2099f65c-goog


