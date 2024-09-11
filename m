Return-Path: <devicetree+bounces-102065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 725249755A3
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 16:36:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CAAC1F23DB6
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 14:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D741A3030;
	Wed, 11 Sep 2024 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="m2uiY/we"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f43.google.com (mail-oa1-f43.google.com [209.85.160.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299C51A7AF1
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726065324; cv=none; b=Pf9lfVdMlvVofSTAqlxnGuGAtejs9c9ZyrcEW5Y2+4hI2xlD730JLRGxAAELSg/6EgapFLhubzkPWTiR/MqpOSbMAYjadstKNwBDRgNOY4nCYWnHOFqppWcWqAsTfOuoW6oKSFwAi7SgyDdkX3M9n9WZ7rTIpcfl05jhRzZWVU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726065324; c=relaxed/simple;
	bh=mAs/mfkaY9YLmO0UTj7/fb0KstDo6E6P+uaBJ+XjPSE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hpfkXoRID724BKXpkViQibL3du4n64QVo1RCoIHU+ANMal/AlqmxQZ1wtdWgG2KQB1p9KraWOvUlCJM8qBJrxyBDwwptBvRy7GvKYegxbyFkMXKMwPqOCqavYv/5paIWbprGW+cYuhDZH8dc9OHUNb2ItGR3UpHwv2kR9SvxObM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=m2uiY/we; arc=none smtp.client-ip=209.85.160.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f43.google.com with SMTP id 586e51a60fabf-27b88b8a24aso2593686fac.1
        for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 07:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1726065322; x=1726670122; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zcMX/bqTdupL750gbpR+dTL3DKvin6dl5vwknoD/GKo=;
        b=m2uiY/weOJe/Q6OAu3Im9LgKnhi9luFI6tRrllrUS7OxIZy9PGktEweu6KH5uLLUbk
         xcjW8ytVvhckPBdTHXVVObJUnJtR8HZpnwp0U4BZ8AzarxpPM7MnynQR0Z2cP8Mp+TB3
         rbaWJ+bZT8KsjzEfbijAiX9hRZEsGvZFViA7g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726065322; x=1726670122;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zcMX/bqTdupL750gbpR+dTL3DKvin6dl5vwknoD/GKo=;
        b=viqX5PSQjFcDRhfLTXVn5fkNehDMA2i/zJmI83YVjwuBhYl+7jpgiZFAl3TKTfpi9P
         qFwc9E0DluJRhBMXxZAzOafW95jVqIqlpiFAlKiXDP7bvz11LlUAYKR5G0eUhwGCoi3g
         EiU/oEy69z+pXZDL/I7NJ2JYbIWEfNbAMuRvylwa+PW46xrlETI4yPPQC1uNl8LOUNzw
         Do62vOAaXS+kZb5m4uzDKBSfJiZM910HOxDJwHjgqRPobTr65u35h8eFjDR+fXWORep/
         4BCk8jXpQoV3UBSEixhk/hWN8SBaJ2QSCpDvBpQSW0D64Lele5uuDpm0dkm5Fn3PKYf8
         fvCg==
X-Forwarded-Encrypted: i=1; AJvYcCWQjWY7a5/1ppn+jNCTrqjQQd/lb3DmE/PqFRgPvUmRLtYJV+6DWYa2E0OQTdeA27avjE30WI4vvIbl@vger.kernel.org
X-Gm-Message-State: AOJu0YzDPCBt4wolxx5JzR94Q3EN+HIfbijmTYDIbRfZLYniHTeL4ZYM
	qBzPbHeJEK/0Z/dTixiU4mdt4S63cAHx5Z4IqR6jw5QHnBvZDlFo9m/VxNf90A==
X-Google-Smtp-Source: AGHT+IHDFd+1Qao0x/djh7BnAl9fxiCea616EBUFpEIvtWPidor0dGilr+S0MNN3z9ITAlHbdxzKew==
X-Received: by 2002:a05:6870:b28c:b0:278:1c68:9c0b with SMTP id 586e51a60fabf-27b9db07830mr10994291fac.22.1726065321905;
        Wed, 11 Sep 2024 07:35:21 -0700 (PDT)
Received: from fshao-p620.tpe.corp.google.com ([2401:fa00:1:10:102f:d738:6069:fd4b])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7db1fbb5901sm46620a12.24.2024.09.11.07.35.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 07:35:21 -0700 (PDT)
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
Subject: [PATCH v3 5/8] arm64: dts: mediatek: mt8188: Add PWM nodes for display backlight
Date: Wed, 11 Sep 2024 22:33:58 +0800
Message-ID: <20240911143429.850071-6-fshao@chromium.org>
X-Mailer: git-send-email 2.46.0.598.g6f2099f65c-goog
In-Reply-To: <20240911143429.850071-1-fshao@chromium.org>
References: <20240911143429.850071-1-fshao@chromium.org>
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

Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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


