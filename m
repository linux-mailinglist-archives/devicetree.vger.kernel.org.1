Return-Path: <devicetree+bounces-29072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3A88214F7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 19:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 336C31F215A7
	for <lists+devicetree@lfdr.de>; Mon,  1 Jan 2024 18:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3CAD512;
	Mon,  1 Jan 2024 18:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wn+0x9Uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1C4D50F
	for <devicetree@vger.kernel.org>; Mon,  1 Jan 2024 18:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-556275957ccso1102087a12.0
        for <devicetree@vger.kernel.org>; Mon, 01 Jan 2024 10:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1704133260; x=1704738060; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DPm4c5DYT5Zmo2gaDoGeMn3Bu+iK5tjKX0Cq3z61PYE=;
        b=Wn+0x9UkSj6dYnPVRXN5wHGY+DS5LhT2/PtstPtNknxesItxLW8SFrIh7WLpbpaZr1
         +WVchUsdbSDUgDYvsCMtMPTO+dLE4FNXyQgovTdRbxasSLK0lsMUQ3qqXqEpYUGmbCKZ
         QyppHcVuHtmY2oI/LqEnHtHXzctVy5PTha8qvC5Cj5irNAzLj3rfWsnphAPRStLFbZyz
         woRsNuVhj4sy8zlE05jMxb08W/cfLmQr4sRUJuHlXxwfKOHgj3Ul8IclCM4Wrjb2KD35
         XWBHhNPDH3xXg80/l0vUffL6NwKRrEpdkd5onAbEgNPJGrybwXqOjbKWXEpJMAUBQKF/
         3How==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704133260; x=1704738060;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DPm4c5DYT5Zmo2gaDoGeMn3Bu+iK5tjKX0Cq3z61PYE=;
        b=ML7L7+4c0//+qk9lXMbwCDmRTEaA6W7m/+eUoUXGq4fRe1Am135yasOu9OD2sTU9Cs
         W5cpSRjG973LPvjqg+MXW686TgVaoZQcQ4cR+7qhqcVD7IyjvxtK+w0u9Hfr8lbet79U
         uLGWg5W7lMj+Pwyh9g93sJ0/tl0beC/drnuy6R/AgWYH/HOT7E2bbZQ8+6I0gpkqtAur
         XZj8I/mCjIxcBeRt8ovR/rkqY0Nwq3UxPrHO0hbpz/XGQmcc5C0W1YFdyZJFtIfS6OwJ
         j9xqVr9Qedexq6iFUNPYpbpY14nZ5NXlGvGjKrl7Q0QmRMy38wYR+yrkpFNjZis8a4+O
         7/7A==
X-Gm-Message-State: AOJu0Yw0cghJBcsFmOUHlF+59vbb6vWLt9Cvtv8FAGm3LWgfPudqEO3+
	0lMpWBDDLU0kjSl47YASJuY=
X-Google-Smtp-Source: AGHT+IGyY9jxT5FqCqbXgI3vZSMoZINZcxNXlDUZJjQ6ZuEBYYskwIOImbwBCZqWCEK5QOXNZy/OfQ==
X-Received: by 2002:a50:d552:0:b0:554:94f1:bb03 with SMTP id f18-20020a50d552000000b0055494f1bb03mr6481550edj.154.1704133260175;
        Mon, 01 Jan 2024 10:21:00 -0800 (PST)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id fp21-20020a1709069e1500b00a26ade46619sm10297441ejc.121.2024.01.01.10.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jan 2024 10:20:59 -0800 (PST)
From: =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	Daniel Golle <daniel@makrotopia.org>,
	Sam Shih <sam.shih@mediatek.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] arm64: dts: mediatek: mt7986: drop "#clock-cells" from PWM
Date: Mon,  1 Jan 2024 19:20:39 +0100
Message-Id: <20240101182040.28538-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Rafał Miłecki <rafal@milecki.pl>

PWM is not a clock provider and its binding doesn't specify
"#clock-cells" property.

This fixes:
arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm@10048000: '#clock-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/pwm/mediatek,mt2712-pwm.yaml#

Fixes: eabb04df46c6 ("arm64: dts: mt7986: add PWM")
Cc: Daniel Golle <daniel@makrotopia.org>
Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/mediatek/mt7986a.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
index 6caac6ebede4..8a64d1027c46 100644
--- a/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt7986a.dtsi
@@ -196,7 +196,6 @@ pio: pinctrl@1001f000 {
 		pwm: pwm@10048000 {
 			compatible = "mediatek,mt7986-pwm";
 			reg = <0 0x10048000 0 0x1000>;
-			#clock-cells = <1>;
 			#pwm-cells = <2>;
 			interrupts = <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&topckgen CLK_TOP_PWM_SEL>,
-- 
2.35.3


