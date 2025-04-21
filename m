Return-Path: <devicetree+bounces-168940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 068F1A94F39
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:13:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C51A1188F9CD
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:13:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC3B261586;
	Mon, 21 Apr 2025 10:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nrNsPetc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FFCB26137F
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230391; cv=none; b=u8JcV+CxhoTpvk9Kpqqwd5BmN/gnmkikE/7U3N6iPwP/KMQ7Ltelgs1Isi9ZSFS9G3kutwSd6c64YYZgIrLkNEqVmh9U2RXoh5VPU+BgDHFzixYnOWeU7gYlMzh0ncX15gUgt+gRAKSIEMWtID9fzh8fx3qT/jw9HTcG8fWZFZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230391; c=relaxed/simple;
	bh=/aJIi6jFMkCKzafBM/nNKdpS5PB1CaOQsX/+a6oYEE8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q/GbCIOO7TSarGiYaTcDa2twltGJNvIl9oPrnACWUx3cGkqxEqNsQpAmeqFDlnDJ/E+dTGBqUKZ6Lj9DOd2e1jmQ4aB9eJGCZEPgrdiYTvzftrnoLyXHzpG1EK215iTHqxMStFiVoUxLzeVCWYxPifmIQkFEWe5BKu1BaIBqjBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nrNsPetc; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-2295d78b433so42969625ad.2
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230389; x=1745835189; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gUKhgL8xbYN2S+4GVogDZp2nilBSVWla8H/MwRjdFI=;
        b=nrNsPetc1P6pjHcKQE6jVWfeBbcIqd2YzbVeDnQeRiGGcXGGyA6hazixZY/aMsSHNr
         U7x1TwQN4c10LhBHIKBE4R4G5JLOMatYkOO8OVxxBjMBqGFWi3s5ephs9/IfU3pZCCAn
         hrzmRlYIlXVK8xFRILuMDhgsBAW7j0FFsagGQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230389; x=1745835189;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5gUKhgL8xbYN2S+4GVogDZp2nilBSVWla8H/MwRjdFI=;
        b=h/52OaY8iabTJgGyvAguiGUUbURCn7pjq1nvIC8rdzpNKRTVwXtedd1PIPW86myQDm
         INl0+J878hUcWtqAtWtJTmKMTnEnJ+BRP85HmZnHD8QQFBdjym1SFirWbV7u5BGsCcB6
         v6nfhz75b6mM0jSD3mOZhjwBG6Omy9DVToA0tXFIim/9fL1SIMQv0kiyP8cArwnheE8N
         CydZnDA5r9I9CNZhdipPkMkAQdnAgH6XDVUPq5vig//luYCSSXfXLojaeEKKf1fZ7YC6
         uPqBScESVw8aw4odIRYaVW0mx4V+mguJ7cc+SiFyM59RzDLOLdDjhwpDLnPrY13GZnn8
         91NA==
X-Forwarded-Encrypted: i=1; AJvYcCU+HSl9iT5xC/tkcyxc8KFu1peeLoKXZ6ZTXmG2rxzG1nCtFtkga6JWhzjOKOchwmGDkm8H7QIWI0X0@vger.kernel.org
X-Gm-Message-State: AOJu0Yws8hcndwbZ5jn6sCp+Hej93YcO59gyyz2/9KvecIgzMhdwPchQ
	hH2vwr/zYrG7gFFY7I0XYiFnXBhM+L+ICUjFOj0Lskma7mQ+ykOyTbRC+zuD2A==
X-Gm-Gg: ASbGncs/FRbmb8CXRGYnY93ZgxGQ1bwoYifWbPkwCcW/k6TzKxZM/ohL6+InzPgkv2S
	FWTuVYEJ+G7Kh9JNZuj9gdaobmEhRtJXis+12Lcx7mVgqNIcjCiGwtIcIRGd9BuBOY6zF6unzmD
	NjiJuGChILaaOxGd01pLxDT8onUF2OoEIvM+ztzyjav2mYzoSRuc+MNqKdj+DahwtZGPex8qI+k
	umRutAu4HKHJoVoVxPCO/YVwfbjBWhaNArgWBpE6hlTcua1XZFepRQ9/Y9TuCaINBBsgB/h+gxn
	0he1d/1miUs2DD9nh8wKZxLb1tw7mvufig9sUXWtyF5rfmvEHVwD0X02K5I=
X-Google-Smtp-Source: AGHT+IEkr0EFkCj5J6CNLSHPTa49yKoitttF/R1BiDswDnBiG+hklRUae4FmkHmy3Ilt86P50nrk5g==
X-Received: by 2002:a17:902:f78c:b0:215:9bc2:42ec with SMTP id d9443c01a7336-22c5361fcedmr148300365ad.47.1745230388644;
        Mon, 21 Apr 2025 03:13:08 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:08 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH v2 1/8] dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
Date: Mon, 21 Apr 2025 18:12:39 +0800
Message-ID: <20250421101248.426929-2-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Elan eKTH8D18 touchscreen controller is an I2C HID device with a
longer boot-up time. Power sequence timing wise it is compatible with
the eKTH6A12NAY, with a power-on delay of at least 5ms, 20ms
out-of-reset for I2C ack response, and 150ms out-of-reset for I2C HID
enumeration, both shorter than what the eKTH6A12NAY requires.
Enumeration and subsequent operation follows the I2C HID standard.

Add a compatible string for it with the ekth6a12nay one as a fallback.
No enum was used as it is rare to actually add new entries. These
chips are commonly completely backward compatible, and unless the
power sequencing delays change, there is no real effort being made to
keep track of new parts, which come out constantly.

Also drop the constraints on the I2C address since it's not really
part of the binding.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Reworded commit message
- Dropped the enum for the new compatible string entry
- Dropped constraint on I2C address completely
---
 .../devicetree/bindings/input/elan,ekth6915.yaml     | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
index cb3e1801b0d3..0840e4ab28b7 100644
--- a/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
+++ b/Documentation/devicetree/bindings/input/elan,ekth6915.yaml
@@ -4,14 +4,14 @@
 $id: http://devicetree.org/schemas/input/elan,ekth6915.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Elan eKTH6915 touchscreen controller
+title: Elan I2C-HID touchscreen controllers
 
 maintainers:
   - Douglas Anderson <dianders@chromium.org>
 
 description:
-  Supports the Elan eKTH6915 touchscreen controller.
-  This touchscreen controller uses the i2c-hid protocol with a reset GPIO.
+  Supports the Elan eKTH6915 and other I2C-HID touchscreen controllers.
+  These touchscreen controller use the i2c-hid protocol with a reset GPIO.
 
 allOf:
   - $ref: /schemas/input/touchscreen/touchscreen.yaml#
@@ -23,12 +23,14 @@ properties:
           - enum:
               - elan,ekth5015m
           - const: elan,ekth6915
+      - items:
+          - const: elan,ekth8d18
+          - const: elan,ekth6a12nay
       - enum:
           - elan,ekth6915
           - elan,ekth6a12nay
 
-  reg:
-    const: 0x10
+  reg: true
 
   interrupts:
     maxItems: 1
-- 
2.49.0.805.g082f7c87e0-goog


