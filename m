Return-Path: <devicetree+bounces-71811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E2B8D8048
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 12:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6CF5F28833E
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 10:51:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A558684D0F;
	Mon,  3 Jun 2024 10:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3Bd6PJEb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAF984A24
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 10:51:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717411866; cv=none; b=IKr0y5jwEBkzxkdzE7b1YfBR/WVukTHP/P4btUNzDtNJbD/9lLv7lla615a0gU5qv65v4tXlMjtJsXF1oaVSENFpW869DILCTRTTEoYqNpKHQ3tv7gZH58mpJrYfUyrNzfPdw5VJXtAu/re3ncm/kF+Q+0r/OgnZ3xemXBMtLU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717411866; c=relaxed/simple;
	bh=hIvA39TYPLOif8A8RvknSlSb848U6P/fP6pMmPEKIo8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BzOTlj6cgT2eUkJ4o9v4YO42yo8+hSppXrMkMnDY0dS4VMgGlafMM4vwP32OJ7gkfWdXL30wtH2rgjAlc3Fey+/0PuGHMk+QcN83A46XMYi1B33r4D3LKA7MAcmDkJzVZGIKTFX7Nfd2qol2oGVrbE/ax0aHyBJbqsNjsxO11lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3Bd6PJEb; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-421124a04d6so41038725e9.3
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 03:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717411863; x=1718016663; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3KPQvvAhw/QNVA2rWSAmQjx+yY2X/Ig4NrPz7gPkeZ8=;
        b=3Bd6PJEbcUCzGUL656vISjLoXz1IHIJ1tYUqOrzLww6gwvu9ZaNcmJJl+hs9Le5M2w
         g+p6xqyM0n5AmnLbl+ge82dh+eLtjsHnLyKmNQeYy+AhSpnKPAcED94WXoav/r5i3CtW
         kSdAiYyuc3xsMupQSP/ernbssirs5mPGU5ZQERl4zfPY2iXFCNNlP6Xdl7o3aArWcTE4
         cp5EN3jq9t8I5O/QfcKBVwmu5+L2QNuOgVUC6sW7j+6UgRqpMYpgZLWKJiIn2A30s1XP
         mueJfTcTcjwT9Mc5aQlmGDjnwKA+WWmakHn8iOYe2ErFfCHdyFXmAOzh9rbfjCn7d1QX
         1UMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717411863; x=1718016663;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3KPQvvAhw/QNVA2rWSAmQjx+yY2X/Ig4NrPz7gPkeZ8=;
        b=R7fwA03W/i998VLsQFQf2rWjuLfWD8SjoEkgoDO0MSS3mHe81kMr1Sn2zExtDPSuk0
         J6GI0KwvuZXxd1/2r1OlbgsVT9vmUBeVFwqiO9Ws9oTy96SwSNgqQlHJYS5v3OQUu08L
         0vSlqEUs+uVK5MmHWXGJGVnFJds71NV1WHUDf07DqciwEK4ufjCUMSMeGsMSZQGU1F9b
         ogGwELMScDeAm2jIYf9mRcU8ULNM1yUZ/tRsNbbReUU4KMzjd+Kn7JG0SFQaTWmTadMN
         d6xVZVJt9/wZGcS3vnyxiSX/yh0NVl9jx2YaisLnLud73QOHZShv0bLftIv9LZ0ot1fx
         7vlQ==
X-Gm-Message-State: AOJu0YxKYSU0xI3clgP0uigu0KvaBRxoe4FY5BThAGXONH1dVEGzOPP2
	Jq58AgHO1L5eALOiCBFWAEmfxU26F1yihAySUYJq0NnyUGToiIghlVbcV56WUzI=
X-Google-Smtp-Source: AGHT+IHIpI7ZG1pCJsIFce1Ck3eFPOfrieRcWpk0YEJqOFz8SVhpF8pID2UFEAvp0s2E15RMKaVAHg==
X-Received: by 2002:a05:600c:45cb:b0:41a:c92:d323 with SMTP id 5b1f17b1804b1-4212e04a1famr79830925e9.10.1717411863490;
        Mon, 03 Jun 2024 03:51:03 -0700 (PDT)
Received: from [127.0.1.1] ([84.102.31.231])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42133227f8asm95372535e9.19.2024.06.03.03.51.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Jun 2024 03:51:03 -0700 (PDT)
From: Julien Panis <jpanis@baylibre.com>
Date: Mon, 03 Jun 2024 12:50:50 +0200
Subject: [PATCH v7 3/6] arm64: dts: mediatek: mt8186: add lvts definitions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240603-mtk-thermal-mt818x-dtsi-v7-3-8c8e3c7a3643@baylibre.com>
References: <20240603-mtk-thermal-mt818x-dtsi-v7-0-8c8e3c7a3643@baylibre.com>
In-Reply-To: <20240603-mtk-thermal-mt818x-dtsi-v7-0-8c8e3c7a3643@baylibre.com>
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
 linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Julien Panis <jpanis@baylibre.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1717411855; l=1717;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=ZXPmUPXXFa1JCVfBMk9FrptEjzZlcdWN0z1cSMSnOwA=;
 b=Kt+1V0UhcrpohxTAKZFUE6vVY7Di9DK+ytngdabEc9EgSfLdYOSvG84ZuIRjZE5ntcFnGkiTk
 2NXaGqDdubOAar0nMdkuK90dJZZMBlW7wdgSxz2A3s1DmE7244C82G2
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


