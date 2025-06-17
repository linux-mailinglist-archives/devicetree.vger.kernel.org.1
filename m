Return-Path: <devicetree+bounces-186531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 588EEADC481
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:21:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 90A5B18893DE
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BC36290DBB;
	Tue, 17 Jun 2025 08:20:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Z5GrbODi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74608290BC6
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:20:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148414; cv=none; b=YQa4g2jj7akG2bTXksVGv2d1gs/8G+gL16sjFiWaI/RxbZNmBlLEGcWgijKWBsY3YLj1qq1hj0741H8cX9ZkZWIyA073m7K9dqAtDdb+maW2GCubb7hfjI4OOex+Y1FPQTXC3uChF3gNNBG/MLCK/80o0h5H2ofmd93ZfYhaK14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148414; c=relaxed/simple;
	bh=QcClUm1ZLCCbAPKXN4VamHSf/5X+mE7f+yW0QnLfibc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j9ObiPHqf42/AHsWTfxTRpi+25tltR4TYnTg6Z1xBHOnuCSSrit7YB6dMjQP9hJDbacSki7l+d9IRZGar3Pq45yAW2LuRNpRAcRgiHIAHCF+HtshDMt3ZNC7hR79YYkCTw/8oB0Tnod3Wlms0SbygA0jCWi+RpdGEAaMfF/S8Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Z5GrbODi; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-306b6ae4fb2so4680484a91.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:20:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1750148412; x=1750753212; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D8FRIhQ2Woh3xq2iizepqRwoAErGxOnhjCQDU9AZzIY=;
        b=Z5GrbODi1WmDHQ5CqiRF48yObpetmBImXfZromTQZwLuLyVaVCakAJt9VfyS9z7UF5
         P9m+opDF38wUnOlX5HIEJUPmhDgs1OPJiCF88akzNbOl0J2RIJI0SVRiGyarOuRRhZ8P
         etvmclvNRFmJXE5apB+/ayQcnaNY6cF2a2PTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148412; x=1750753212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D8FRIhQ2Woh3xq2iizepqRwoAErGxOnhjCQDU9AZzIY=;
        b=ps+a0dCBKKMjcaa3AR5rmVmWXSqMeBqNY7/ZmhWTF75yUCaxCgYYYQODN6688G3+rN
         FkAEScg6Rgtj8AQDbwcK2MbVtZ0LRkV6MA1GydchwugIajfrHANO1LsHx5VyY8XGzSk0
         afqP2oukQW2fdzIqiLNuFwVNPuUd3t9rHG0G9w1CCDuTRIl17D/qCZNdu2/rKtBmi0Xm
         tDQgyZWFkbAfQgjyWA9jIB0mDf/0QuDpEezUuU859x7lv5DzVY67Xk/18XFv2XijSFBk
         BXacjrVrk3d9WUD7GqOiNa72lJEs52aqicWMXcgIlo+J3KN/lvnExp42LPffUmWj3PNW
         1sWw==
X-Forwarded-Encrypted: i=1; AJvYcCUkbkmEAKmmUJaS4xoC2YmqCYbIzAfPM3U95gF9+EFOja2tRgroE/zytSqNPapB7YsXVfOdwCiSyphh@vger.kernel.org
X-Gm-Message-State: AOJu0Ywony/u5DkGgOuOlk19Zc7tcsjnY//VBB1NGLcy9E3+4jw39E2g
	VwRpl4/wzE6fyf+vVphvPuT1OHPPyr/KJqzpSOSTIMRE9ZL73AyLdkAJ6emb23Xpbw==
X-Gm-Gg: ASbGncsblAAcoNrZ8nKk5nYFZJGh/4tCYAKiIZYgGoTFfY5bSnDee5bXsq9bDgdIWZI
	NAFxBUXiWoXiBEhP+JBgsMFJdZyUCKzKT5ZybOvL+PrhtvwCis8LNtSz+8kDE9TCmTwh7kmL5W/
	BV/CKtBCkLXnc0OIVAkPPS2r1FtTyNX1ybr8h7ESPKu2zFLY9+Pebg9uCu3rbhwURCPJ3HxkfqQ
	o6MyPMvLwsT6LWDKCE5YUSbAL6Wp5lqX555kCx3t8oswfEOp8zoZ0lA0QQyN6egbgbop+Kimno4
	vvLy7jX3IyXt2C48YLbZQKF/fhVLsADt26j9F5nbqHwE+IsdDwRWORH3RYubsbt7z7DZ499DaUd
	kivu1
X-Google-Smtp-Source: AGHT+IG3KNV6ixPiJvUtBGaYxn8qmkk4lCQcaXYtEk6THCxE8V+YIcx+EzSCVTlQvmABQC9D1Nc91Q==
X-Received: by 2002:a17:90b:4e84:b0:313:dcf4:37bc with SMTP id 98e67ed59e1d1-313f1dd74acmr15712251a91.34.1750148411484;
        Tue, 17 Jun 2025 01:20:11 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:24a1:2596:1651:13d8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365de781f7sm74598885ad.110.2025.06.17.01.20.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:20:11 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	"Rob Herring (Arm)" <robh@kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: HID: i2c-hid: elan: Introduce Elan eKTH8D18
Date: Tue, 17 Jun 2025 16:19:58 +0800
Message-ID: <20250617082004.1653492-2-wenst@chromium.org>
X-Mailer: git-send-email 2.50.0.rc2.692.g299adb8693-goog
In-Reply-To: <20250617082004.1653492-1-wenst@chromium.org>
References: <20250617082004.1653492-1-wenst@chromium.org>
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

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
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
2.50.0.rc2.692.g299adb8693-goog


