Return-Path: <devicetree+bounces-18055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DE77F4F65
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 19:24:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 763471F20F0B
	for <lists+devicetree@lfdr.de>; Wed, 22 Nov 2023 18:24:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 633745D4A7;
	Wed, 22 Nov 2023 18:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OoU9CU73"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2514DA4;
	Wed, 22 Nov 2023 10:24:29 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-280109daaaaso84811a91.3;
        Wed, 22 Nov 2023 10:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700677468; x=1701282268; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+t8tXe6ccmmDxngyTtST79lozTn11v8rTEVF91HUREg=;
        b=OoU9CU73x5gtbHjAjtnaLA8Nw3NOWKjoDTkewGBvnj4+yz59NBJBlo0XpEXwV2Azy/
         My2AysBgqmkmG7lsXJHhLUvJfj43znaOpxKufL2DLfstc4cMbopaJSqQoehlmrL33yTD
         yjovi0RfG3aGmw8KbXsLGdD8g6shQV8fn7+pLK17ZKgzsNULk6VJcY0uv/pC/GNe7B6V
         yI5r6SqIyBgdMfffFxB5+bnmfORwFySxA0RUMC/yNs9dQKFyy654F1QyYRRFhkNeAfAH
         be7bjfRwGMZKVhPMVgX8JixzuU7J5yS3/7D48FctJ43TLp1hcb+3lQce6OAF5sMgK8gx
         PR5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700677468; x=1701282268;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+t8tXe6ccmmDxngyTtST79lozTn11v8rTEVF91HUREg=;
        b=fgTLNHIbia+IWsKrtLFWHmXi4/PTFPTMq9TNxIYBx6IWFUJuDFPwrRBte+yMLTmM0A
         4qZkJ/fpNAWSk7VezDqVzG3EI3RUPI61N7SxN7Vvnr9MaqbkYFdimCfOdGMx4uMVzxzi
         Z7T2hGGm9uMXFmZ2BL69j3CKDr5gIPGMTr5vXDfXeZvWHaDQHvtjSGbTzBn+LPKYhDAM
         wZNNTDNZlo7OyVLRe7rr4/+0dhQDwv5VjM5CD7q0YxLg7YyQOhYL28BRv8V/c9MsDzE3
         dgrYDjNCXlZLSz9WCZdv6Aaflf549GQ2wvDk8AVdZpNcdOafFFIMeo6yC8MbwLT4IMW2
         Rw4g==
X-Gm-Message-State: AOJu0Yy+RU9eN5eFVxPwmXpUHxVVwmnNeN5LgmBLI5/HRFxAYt0+v9XO
	3exx6KLmAWbk72RkWgk3imsMP6RoUY/bCw==
X-Google-Smtp-Source: AGHT+IGS5KHFHXp/nc7YRlM8IKWltPPLo1UGYoMF2bslfzaQEcSItYt8gU4/7NQrm6qWPl4N2oI9Jg==
X-Received: by 2002:a17:90b:4d0e:b0:27f:f7e9:cad9 with SMTP id mw14-20020a17090b4d0e00b0027ff7e9cad9mr3347137pjb.36.1700677468567;
        Wed, 22 Nov 2023 10:24:28 -0800 (PST)
Received: from localhost.localdomain ([49.205.245.83])
        by smtp.gmail.com with ESMTPSA id x17-20020a170902ea9100b001cf6783fd41sm4897980plb.17.2023.11.22.10.24.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 10:24:28 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] arm64: dts: amlogic: Used onboard usb hub reset on odroid n2
Date: Wed, 22 Nov 2023 23:53:47 +0530
Message-ID: <20231122182351.63214-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231122182351.63214-1-linux.amoon@gmail.com>
References: <20231122182351.63214-1-linux.amoon@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On Odroid n2/n2+ previously use gpio-hog to reset the usb hub,
switch to used on-board usb hub reset to enable the usb hub
and enable power to hub.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 .../dts/amlogic/meson-g12b-odroid-n2.dtsi     | 36 ++++++++++++-------
 1 file changed, 24 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 91c9769fda20..9e671444eca6 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -31,6 +31,30 @@ hub_5v: regulator-hub_5v {
 		enable-active-high;
 	};
 
+	/* USB hub supports both USB 2.0 and USB 3.0 root hub */
+	usb-hub {
+		dr_mode = "host";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		/* 2.0 hub on port 1 */
+		hub_2_0: hub@1 {
+			compatible = "usb5e3,610";
+			reg = <1>;
+			peer-hub = <&hub_3_0>;
+			vdd-supply = <&usb_pwr_en>;
+		};
+
+		/* 3.0 hub on port 4 */
+		hub_3_0: hub@2 {
+			compatible = "usb5e3,620";
+			reg = <2>;
+			peer-hub = <&hub_2_0>;
+			reset-gpios = <&gpio GPIOH_4 GPIO_ACTIVE_LOW>;
+			vdd-supply = <&vcc_5v>;
+		};
+	};
+
 	sound {
 		compatible = "amlogic,axg-sound-card";
 		model = "ODROID-N2";
@@ -234,18 +258,6 @@ &gpio {
 		"PIN_3",  /* GPIOX_17 */
 		"PIN_5",  /* GPIOX_18 */
 		"PIN_36"; /* GPIOX_19 */
-	/*
-	 * WARNING: The USB Hub on the Odroid-N2 needs a reset signal
-	 * to be turned high in order to be detected by the USB Controller
-	 * This signal should be handled by a USB specific power sequence
-	 * in order to reset the Hub when USB bus is powered down.
-	 */
-	usb-hub-hog {
-		gpio-hog;
-		gpios = <GPIOH_4 GPIO_ACTIVE_HIGH>;
-		output-high;
-		line-name = "usb-hub-reset";
-	};
 };
 
 &i2c3 {
-- 
2.42.0


