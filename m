Return-Path: <devicetree+bounces-14775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 028BE7E6757
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 11:07:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E13731C20C03
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:07:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3139214A83;
	Thu,  9 Nov 2023 10:06:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nF9TanRc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846B214285
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 10:06:55 +0000 (UTC)
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A448111
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 02:06:55 -0800 (PST)
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1cc9784dbc1so5852355ad.2
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 02:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1699524414; x=1700129214; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WEwbem2dUlV4PdFvgxehEwFjO+wcgltSG0KbchvjnmI=;
        b=nF9TanRcchKTlQLg3f7JsPamKJ7EkQPrapPlnbCKQkXFHSN3WYwRpCCnknAI8uuxRO
         q6i2jnQlhVbNeisCkbxNRTINXdewdqNd9QRzTTH6EtjKqCTLYjr/ue5GUf+QtIx6YIBx
         VztaGn50hHTYZIE+jwaOQ+s15Ri5eTOeRw8v8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699524414; x=1700129214;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WEwbem2dUlV4PdFvgxehEwFjO+wcgltSG0KbchvjnmI=;
        b=Vc+EOOVe+xAzhHYSsXZR2IGOopGXBUQf9CKAejaY0PCQ2AHou9VUYhfF05BVBPKUcF
         u1sZ3Yw+M4GtplcaiYDU+C+mN7Q7mqjU/HVz/sVz1Nyd5nETvY7anPEnT2RkMgTCaTSv
         ZswZEPvSqn2PFMCPFJIAII3rgOyPotqGkEUJMwqDQ8rHdb6e6Rt1a9WfCieGyASErSZ6
         9pxW2XcAGPG86doyxIbTcquLHkW0hUkaOIhVCTMJOtD5KGiKPU1AU0ILcHVy+zNnAww5
         iwmIO/mkDtupcvBjGotFLSIz6aS4cFBHLsbGIwOBXS9ifwO8+CSZuO4es5yYewHXHb/q
         p7CQ==
X-Gm-Message-State: AOJu0YyG+ZjUpKbzg+2AbhCKwoAdoy6E5Qwoh56AQFrrK9SLDoVTQElh
	zqKwTLeAtV38RnaURv2ILJolMA==
X-Google-Smtp-Source: AGHT+IEqvxAt34/tbw9mX55Y4YBlm7iDQwp+MvYnRdV6qPSukdlOlKZvyMezlSiJe3j/GHyYqBRycw==
X-Received: by 2002:a17:902:8603:b0:1c9:e229:f5e2 with SMTP id f3-20020a170902860300b001c9e229f5e2mr4402418plo.34.1699524414545;
        Thu, 09 Nov 2023 02:06:54 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f57:d4c:468c:5daf])
        by smtp.gmail.com with ESMTPSA id c13-20020a170902d48d00b001c60ba709b7sm3127511plg.125.2023.11.09.02.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 02:06:54 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Yi Wang <hsinyi@chromium.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	andriy.shevchenko@linux.intel.com,
	Jiri Kosina <jikos@kernel.org>,
	linus.walleij@linaro.org,
	broonie@kernel.org,
	gregkh@linuxfoundation.org,
	hdegoede@redhat.com,
	james.clark@arm.com,
	james@equiv.tech,
	keescook@chromium.org,
	petr.tesarik.ext@huawei.com,
	rafael@kernel.org,
	tglx@linutronix.de,
	Jeff LaBundy <jeff@labundy.com>,
	linux-input@vger.kernel.org,
	Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>
Subject: [RFC PATCH v2 3/7] arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads as fail
Date: Thu,  9 Nov 2023 18:06:00 +0800
Message-ID: <20231109100606.1245545-4-wenst@chromium.org>
X-Mailer: git-send-email 2.42.0.869.gea05f2083d-goog
In-Reply-To: <20231109100606.1245545-1-wenst@chromium.org>
References: <20231109100606.1245545-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of having them all available, mark them all as "fail-needs-probe-*"
and have the implementation try to probe which one is present.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index bdcd35cecad9..052109b0fa3b 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -15,6 +15,7 @@ touchscreen2: touchscreen@34 {
 		reg = <0x34>;
 		interrupt-parent = <&pio>;
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe-touchscreen";
 	};
 
 	/*
@@ -28,6 +29,7 @@ touchscreen3: touchscreen@20 {
 		hid-descr-addr = <0x0020>;
 		interrupt-parent = <&pio>;
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe-touchscreen";
 	};
 };
 
@@ -44,6 +46,7 @@ trackpad2: trackpad@2c {
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
 		wakeup-source;
+		status = "fail-needs-probe-trackpad";
 	};
 };
 
@@ -68,3 +71,11 @@ pins_wp {
 		};
 	};
 };
+
+&touchscreen {
+	status = "fail-needs-probe-touchscreen";
+};
+
+&trackpad {
+	status = "fail-needs-probe-trackpad";
+};
-- 
2.42.0.869.gea05f2083d-goog


