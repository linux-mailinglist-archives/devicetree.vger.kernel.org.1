Return-Path: <devicetree+bounces-13917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F48C7E15E7
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 19:42:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14CA6B20E35
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 18:42:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F7D223B8;
	Sun,  5 Nov 2023 18:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OIhvOYbo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AC4210B
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 18:42:05 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28737EB
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 10:42:04 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-32fb1c35fe0so1605947f8f.1
        for <devicetree@vger.kernel.org>; Sun, 05 Nov 2023 10:42:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699209722; x=1699814522; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5p4QFuKK4zDjK7JmREfNGLdO3brtt0j7Hb6QAgVUrUA=;
        b=OIhvOYboV1EiTNo823HwkLD07VFpY/fKWC2In1TCyLOts0+BKCKCnlHdYm2sR62XRl
         pxzx46OdYvL/Zel35k6R14gX6j8EAgk+mhhUFm5WW28W5hDlYe/HWeYohaPqosWYxxDa
         iyXzhD/LOT75vbi/7z24LMOsJA5WwdK2i6qj2GAEiU5EweqEqa2NalZrbuP2buf6euYH
         riVUfUUwZL3y3NQ2PIc1aeFeKqBzaPmazBXJl3ApPo2mdtn1PzirY9SSrAXt05jA6yd5
         04x1l6F3hGYJYOpP3I4ZI8OjP2pH4hb8nuGf0KOZnoE4l35ai8UpNy05T3nwCGz8DiE7
         Z6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699209722; x=1699814522;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5p4QFuKK4zDjK7JmREfNGLdO3brtt0j7Hb6QAgVUrUA=;
        b=E4ykenW67epqYBn0K5D5/wUCVy7nNuV/cnD1iFNvVdWSujsZWJNns8Q0UP5phNthTT
         mZuXHY+ilqWR1AsjYXuYNdXnBuffo8SUqbqZSx5Kzh5wTw/ahiszDUnfpViGskgmI1mP
         D/U1sQxYSvb8HEl9HRzCuVqR7U/mge+FKj1c0BId2+25pot680q713UqH6pqZS+mZjYc
         obOSYY6RvpjZxe2Fs/iG/IqdT5sOMILhMp846NuV5a4CAU7NdzyL+cpuIr5ry1MK4xUA
         FdEOldAZy4NoEYmS1NzFFn2+Wd563icN2dnfgcpNOFnQABHgoys9+jPZ9PhEaK6FnjZA
         YveA==
X-Gm-Message-State: AOJu0YxX/fk6Eo+QmJdyMldgO8rI903qPbvhWmNwT6bZDjQDPdh9oUV7
	q1AOQMXMMNbDF/CCe3WUF+uzDA==
X-Google-Smtp-Source: AGHT+IFSpmafwOZq0U7CWe+nXmQRtHQOLcDbi+JWbFPNcxG5YLhYbhIL0Wd8ASmATcTAoMtu5NK/OQ==
X-Received: by 2002:a05:6000:18a9:b0:32f:a5af:99ca with SMTP id b9-20020a05600018a900b0032fa5af99camr11998596wri.69.1699209722530;
        Sun, 05 Nov 2023 10:42:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.126])
        by smtp.gmail.com with ESMTPSA id z17-20020a5d44d1000000b00326b8a0e817sm7370111wrr.84.2023.11.05.10.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 10:42:02 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Julius Werner <jwerner@chromium.org>,
	Evan Benn <evanbenn@chromium.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Maxime Ripard <mripard@kernel.org>,
	Oleksij Rempel <linux@rempel-privat.de>,
	Justin Chen <justinpopo6@gmail.com>,
	=?UTF-8?q?=82ecki?= <rafal@milecki.pl>,
	Baruch Siach <baruch@tkos.co.il>,
	Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Jamie Iles <jamie@jamieiles.com>,
	linux-watchdog@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	asahi@lists.linux.dev
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] dt-bindings: watchdog: intel,keembay: reference common watchdog schema
Date: Sun,  5 Nov 2023 19:41:54 +0100
Message-Id: <20231105184154.43700-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
References: <20231105184154.43700-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reference common watchdog.yaml schema to allow "timeout-sec" property
and enforce proper device node name.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/watchdog/intel,keembay-wdt.yaml      | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/intel,keembay-wdt.yaml b/Documentation/devicetree/bindings/watchdog/intel,keembay-wdt.yaml
index 1437ff8a122f..8231dde2bfa6 100644
--- a/Documentation/devicetree/bindings/watchdog/intel,keembay-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/intel,keembay-wdt.yaml
@@ -9,6 +9,9 @@ title: Intel Keem Bay SoC non-secure Watchdog Timer
 maintainers:
   - Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>
 
+allOf:
+  - $ref: watchdog.yaml#
+
 properties:
   compatible:
     enum:
@@ -37,7 +40,7 @@ required:
   - interrupt-names
   - clocks
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.34.1


