Return-Path: <devicetree+bounces-97553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC12C96295D
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 15:54:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 025131F250F1
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2024 13:54:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22D01898F6;
	Wed, 28 Aug 2024 13:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ks+7/ZNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8E971891C3
	for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 13:54:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724853248; cv=none; b=SXOGoKyyiEjWSdBAT70QhBfyXD6SIXf4gprfXZ/SiAsg5iY4uMG0oo3K5n3OYgoAlmEWGYPX3zb6DCX4hCWbHdLx3sf0fv+LWw+PBfdI3vIuL1rZaCpiByjfNnpxLe1J89j5KDANbnh17S2OUQse0sLKtaAZSIAM6RrytNI2wF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724853248; c=relaxed/simple;
	bh=DC2V6ie++dSE9B7XGGz0P1EfJ8arh8kDiLY6LQPHEV8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eG+xdy7tncCU3fVmSk/MTsQF61BEamw8VW4tmV4GIH90jcCgMeAcaaKYuOTO5pgML0mVckJztsAeV1e3CR5R4/GHK8R2Pmde0sxUQL29HToIpiy36L+dfUUBj4gDnGOAg/vU73Dmouqpl3Yi+gK4+I5+itifvc4cAIIjPws+1Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ks+7/ZNC; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3717de33d58so3695874f8f.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2024 06:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724853244; x=1725458044; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+TaAHkybJOzcaYamAQGgX7gByf/w/Y7jizdw8jMD8IY=;
        b=ks+7/ZNCCWlflUCcx9ouq3PPQRSc3kkRVII99lUZtuzVz9HJMyGFifvE3R9BFLKnhl
         5Cpe5CRWhGsJoS7278yj9HtF+NBNlDe7RY08NK/dCzMBXHq3LZtRyFpPxRoybUt2QmRp
         g+U1fNR3ubrLuUlnP3ccNG+jnBICxTzDTrfhw0D1NsmePy0+LnRxFkDTj6yh4j+yGWC2
         Fj1JjSZvPJzpboZDjVoog1Y/5KYl9UZiwZkpD8fp+JtEMO7eEx09Z3YCemRZvhWYj11+
         Wp+XSWmDfgr7HdG9pvioLRhirX8lGpKtWauG6Uc02sHZpqFq210OskWozTp3dpIeuPuZ
         jQJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724853244; x=1725458044;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+TaAHkybJOzcaYamAQGgX7gByf/w/Y7jizdw8jMD8IY=;
        b=GSXBLtZ6HBcIUFrUVcjAZ+/3V1MLRB7jjvQRrXInhKkyg3tBrjQN0xxGlFBNmTpyza
         xIyHlU5qaPm8G5zGyC446i+DfOSb0XkRAaljh4GWbCGrMfNNtvIyGTiVHvFg+D4Vpk+g
         1WbR4+hbPlnv/Ka8DWOhr5jczWQroyT6l7VXO6gkEefJEg11M4EUUyw1x+l3FjlH50Iy
         YGI9ngLTPjEN9nREOiDk3bCfFDzz3w0KrUeO6SmRa14ezTyDabf+pOa7Bhnin6g5UgV3
         0hd07cHoKq+UcaDFC7CoweXjELGfRm4jRyCBIzuCF9Tfm0qPTSE4WGhcLzAv9muobWA6
         716g==
X-Forwarded-Encrypted: i=1; AJvYcCUIFEHmfbE0eBys+gusb/YOrHDr/cYUHITc7YbGRhgBzSjEvkhBj1rjChW7Rnjc1Y0ZARIwl5m+vn/5@vger.kernel.org
X-Gm-Message-State: AOJu0YyYS5WoCF/I6GRnJn6OZRk+fP3Z7wahfHnGvUqIbH3Bzq8FvgKj
	il5xanVFHs0hNNbZkVs251HzV0wzzrxwZX9hoGJl816yAlLXdk/iK1CO2vbatV0=
X-Google-Smtp-Source: AGHT+IHji8h5INc9mGDTPzcxturVz3IPgtkDcDWoJmB6EfDYxKhyWP6aOgRLsfSf1IE7EJvYPyuWvg==
X-Received: by 2002:adf:ef84:0:b0:367:98e6:2a1b with SMTP id ffacd0b85a97d-3749680ae5emr1616919f8f.4.1724853243556;
        Wed, 28 Aug 2024 06:54:03 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730813c44asm15613395f8f.34.2024.08.28.06.54.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2024 06:54:03 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 28 Aug 2024 15:53:56 +0200
Subject: [PATCH v2 3/3] arm64: dts: amlogic: add clock and clock-names to
 sound cards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-3-58159abf0779@linaro.org>
References: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
In-Reply-To: <20240828-topic-amlogic-upstream-bindings-fixes-audio-snd-card-v2-0-58159abf0779@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: alsa-devel@alsa-project.org, linux-sound@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=34574;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=DC2V6ie++dSE9B7XGGz0P1EfJ8arh8kDiLY6LQPHEV8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmzyv3TVdW7hqj2ZKVOeVsdJqCjsng8n0Fp2PO5j8a
 +fkG7KyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZs8r9wAKCRB33NvayMhJ0fQYD/
 wINZ1hmw6kDZXeXLIbVKlSrK5x3XCwlFQJ2oRi+4NK4qATDzislVj+AxwjfSwMahJiCLC4BrxndYrR
 ER+YYBYHMDzZCL+EfcabyGNWDlT1yNtI9ZFSYYqbQ/AXu7RlLj61UJRWzFud+HatYZu4znS1uQ7Ga4
 dPkOpmDZi2N8RwOXUJRxR3JcTdeK7ALhlEWXJvP1hf/qvkuAr2t0XRtknh1QB86Qt/zOvL2jCx9+2e
 jmMGy0PEimuRzlnIRuCzQ5Zo4eva6j1X/JRYNEL0y2Hx54pTlPT/kHz98ECbq6QlLAH0BAtphFOfEv
 s7O3gBKqpjqFoZ2QdsMIXPz+p9GpwX4NRMsmD2V0LNov4CmjLCah3CJnxP0zuSCiqcxusVQURc8Dfm
 jDPqApLyKiI+f24tMeZndfgwwmM9a1vvm1fTQcXAwpqP79HHT9dPph7jFUZPXsm7z5gvjb35JMmisn
 IIpaP4EQ+8ZjnpKz+5Pl12xgWaXwST5HQoBnpoHhNStTxTg+j9C6XAGI4yg+AV4JYEFBVmsF2KeEaw
 T0jPUt8sSwJuDWgvPtjOs/nA1DKQhkrMj5KU7o4l1ZteBFYlsRV7Pbe+kuBunxr7uIl+ADhiVH5I2s
 e4LqoY5KgYFVr+qTC0j/KrGAl14Je2zOcN9pDY2XgB1OZ/ymzCn/P9U5N5ew==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the missing clocks in the sound card nodes according to the
AXG and GX sound card bindings changes.

It solves the following errors:
sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
    from schema $id: http://devicetree.org/schemas/sound/amlogic,axg-sound-card.yaml#
sound: Unevaluated properties are not allowed ('assigned-clock-parents', 'assigned-clock-rates', 'assigned-clocks' were unexpected)
    from schema $id: http://devicetree.org/schemas/sound/amlogic,gx-sound-card.yaml#
sound: 'anyOf' conditional failed, one must be fixed:
    'clocks' is a required property
    '#clock-cells' is a required property
    from schema $id: http://devicetree.org/schemas/clock/clock.yaml#

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-axg-s400.dts                      | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts                     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts                  | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts       | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi                | 6 ++++++
 arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts                 | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts          | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts              | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi              | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi                 | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts                  | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts              | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts                 | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts                     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts                     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts              | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts        | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts          | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts     | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts        | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts              | 5 +++++
 arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts                 | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts                  | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi                  | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi         | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts           | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts                | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts           | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts               | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi                   | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts                    | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts              | 4 ++++
 arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts                   | 4 ++++
 50 files changed, 203 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
index 7ed526f45175..9611775b81ee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-axg-s400.dts
@@ -268,6 +268,10 @@ sound {
 				"Speaker1 Right", "SPK1 OUT_D",
 				"Linein AINL", "Linein",
 				"Linein AINR", "Linein";
+		clocks = <&clkc CLKID_HIFI_PLL>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_HIFI_PLL>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
index af211d8f3952..a457b3f4397b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am.dts
@@ -176,6 +176,10 @@ sound {
 				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
 				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
index 15b9bc280706..c779a5da7d1e 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-radxa-zero.dts
@@ -138,6 +138,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 61cb8135a392..ea51341f031b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -201,6 +201,10 @@ sound {
 				"TODDR_B IN 1", "TDMIN_B OUT",
 				"TODDR_C IN 1", "TDMIN_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 0e239939ade6..f70a46967e2b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -238,6 +238,10 @@ sound {
 				"Lineout", "10U2 OUTL",
 				"Lineout", "10U2 OUTR";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 05c7a1e3f1b7..32f98a192494 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -158,6 +158,10 @@ sound {
 				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
 				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
index 13d478f9c891..2d74456e685d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-cm4io.dts
@@ -70,6 +70,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
index 003efed529ba..0f48c32bec97 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts
@@ -79,6 +79,10 @@ sound {
 				"LINPUT1", "Mic Jack",
 				"Mic Jack", "MICB";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 					<&clkc CLKID_MPLL0>,
 					<&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
index 6a346cb86a53..d4e1990b5f26 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi.dtsi
@@ -194,6 +194,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
index 3a24c2411552..de35fa2d7a6d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-dreambox.dtsi
@@ -38,6 +38,12 @@ sound {
 				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
 				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
 				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
+
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
index bb73e10b5e74..369c5cf889b6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gsking-x.dts
@@ -48,6 +48,10 @@ sound {
 				"TDMOUT_A IN 2", "FRDDR_C OUT 1",
 				"TDM_A Playback", "TDMOUT_A OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
index 6eeedd54ab91..654449afd3a4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking-pro.dts
@@ -49,6 +49,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
index 0da386cabe1a..e20311386745 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
@@ -37,6 +37,10 @@ sound {
 				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
 				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
index eed2a23047ca..e21831dfceee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-go-ultra.dts
@@ -234,6 +234,10 @@ sound {
 				"Internal Speakers", "Speaker Amplifier OUTL",
 				"Internal Speakers", "Speaker Amplifier OUTR";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 86eb81112232..3bca8023638d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -95,6 +95,10 @@ sound {
 				"Lineout", "U19 OUTL",
 				"Lineout", "U19 OUTR";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
index e26f3e3258e1..1b9097a30251 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2l.dts
@@ -39,6 +39,10 @@ sound {
 				"TODDR_B IN 6", "TDMIN_LB OUT",
 				"TODDR_C IN 6", "TDMIN_LB OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
index 8445701100d0..39feba7f2d08 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-radxa-zero2.dts
@@ -176,6 +176,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 6396f190d703..4c1a75b926ee 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -32,6 +32,10 @@ sound {
 				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
 				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
index efd662a452e8..d38c3a224fbe 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-libretech-pc.dtsi
@@ -194,6 +194,10 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"7J4-14 LEFT", "AU2 OUTL",
 				"7J4-11 RIGHT", "AU2 OUTR";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
index 08d6b69ba469..45ccddd1aaf0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx-p23x-q20x.dtsi
@@ -129,6 +129,10 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"Lineout", "AU2 OUTL",
 				"Lineout", "AU2 OUTR";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
index f28452b9f00f..073b47ce8c3c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-kii-pro.dts
@@ -45,6 +45,10 @@ button-reset {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "KII-PRO";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
index 1fd2e56e6b08..cf2e2ef81680 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nanopi-k2.dts
@@ -135,6 +135,10 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "NANOPI-K2";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
index cca129ce2c58..7d7dde93fff3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-nexbox-a95x.dts
@@ -142,6 +142,10 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "NEXBOX-A95X";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
index c37cc6b036cd..959bd8d77a82 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts
@@ -177,6 +177,10 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "ODROID-C2";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
index 7f94716876d3..bfac00e76ba3 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p200.dts
@@ -68,6 +68,10 @@ button-menu {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "P200";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
index 6f81eed83bec..c10f66031ecd 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-p201.dts
@@ -17,6 +17,10 @@ / {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "P201";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
index 255e93a0b36d..3807a184810b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-vega-s95.dtsi
@@ -108,6 +108,10 @@ sdio_pwrseq: sdio-pwrseq {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "VEGA-S95";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
index af9ea32a2876..ec281a9e9e77 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-hub.dts
@@ -16,6 +16,10 @@ / {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "WETEK-HUB";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
index 376760d86766..924414861b72 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb-wetek-play2.dts
@@ -48,6 +48,10 @@ button {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "WETEK-PLAY2";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
index 90ef9c17d80b..c6132fb71dfc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-libretech-ac.dts
@@ -123,6 +123,10 @@ sound {
 				"Speaker", "9J5-2 RIGHT";
 		audio-routing = "9J5-3 LEFT", "ACODEC LOLN",
 				"9J5-2 RIGHT", "ACODEC LORN";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
index 08a4718219b1..c5e2306ad7a4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s805x-p241.dts
@@ -128,6 +128,10 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"Lineout", "AU2 OUTL",
 				"Lineout", "AU2 OUTR";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
index fea65f20523a..a80f0ea2773b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-khadas-vim.dts
@@ -67,6 +67,10 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "KHADAS-VIM";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
index 63b20860067c..6cbdfde00e12 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc-v2.dts
@@ -160,6 +160,10 @@ vcc_1v8: regulator-vcc-1v8 {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "LIBRETECH-CC-V2";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
index 8b26c9661be1..401064b0428d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-libretech-cc.dts
@@ -142,6 +142,10 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"Lineout", "AU2 OUTL",
 				"Lineout", "AU2 OUTR";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
index 9b4ea6a49398..8b41e340f919 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-p212.dts
@@ -50,6 +50,10 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"Lineout", "AU2 OUTL",
 				"Lineout", "AU2 OUTR";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
index de996e930b82..a9c5881c9783 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905x-vero4k.dts
@@ -90,6 +90,11 @@ sound {
 				"AU2 INR", "ACODEC LORN",
 				"Lineout", "AU2 OUTL",
 				"Lineout", "AU2 OUTR";
+
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
index 07e7c3bedea0..96a3dd2d8a99 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-khadas-vim2.dts
@@ -150,6 +150,10 @@ wifi32k: wifi32k {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "KHADAS-VIM2";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
index ad2dd4ad0a31..773107cc47dd 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-nexbox-a1.dts
@@ -86,6 +86,10 @@ hdmi_connector_in: endpoint {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "NEXBOX-A1";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
index d05dde8da5c5..7356d3b628b1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-gxm-rbox-pro.dts
@@ -101,6 +101,10 @@ sdio_pwrseq: sdio-pwrseq {
 	sound {
 		compatible = "amlogic,gx-sound-card";
 		model = "RBOX-PRO";
+		clocks = <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>,
+			 <&clkc CLKID_MPLL2>;
+
 		assigned-clocks = <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>,
 				  <&clkc CLKID_MPLL2>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
index e78cc9b577a0..7daa9b122d5c 100644
--- a/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-khadas-vim3.dtsi
@@ -182,6 +182,10 @@ sound {
 				"TODDR_B IN 0", "TDMIN_A OUT",
 				"TODDR_C IN 0", "TDMIN_A OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
index 082b72703cdf..929e4720ae76 100644
--- a/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-libretech-cottonwood.dtsi
@@ -200,6 +200,10 @@ sound {
 				 <&tdmin_a>, <&tdmin_b>, <&tdmin_c>,
 				 <&dioo2133>;
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
index 9b2eb6e42651..3c43d3490e14 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air-gbit.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
index 6e34fd80ed71..445c1671ede7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-a95xf3-air.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
index 586034316ec3..eeaff22edade 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m2-pro.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
index f045bf851638..697855fec476 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-bananapi-m5.dts
@@ -57,6 +57,10 @@ sound {
 				"Lineout", "ACODEC LOLP",
 				"Lineout", "ACODEC LORP";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
index e6e9410d40cb..7b3a014d4cde 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-h96-max.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
index 951eb8e3f0c0..7b0e9817a615 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-odroid.dtsi
@@ -174,6 +174,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 3581e14cbf18..2e3397e55da2 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -239,6 +239,10 @@ sound {
 				"TODDR_B IN 1", "TDMIN_B OUT",
 				"TODDR_C IN 1", "TDMIN_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
index fc9b961133cd..e4a3a2a8ad06 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air-gbit.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;
diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
index 9ea969255b4f..fff92e0d6dd5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-x96-air.dts
@@ -22,6 +22,10 @@ sound {
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT";
 
+		clocks = <&clkc CLKID_MPLL2>,
+			 <&clkc CLKID_MPLL0>,
+			 <&clkc CLKID_MPLL1>;
+
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
 				  <&clkc CLKID_MPLL1>;

-- 
2.34.1


