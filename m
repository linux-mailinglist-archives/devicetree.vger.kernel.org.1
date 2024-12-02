Return-Path: <devicetree+bounces-126131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C77FA9E053B
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 15:38:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8EDFA283BEB
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 638E920D513;
	Mon,  2 Dec 2024 14:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="FU3oBlUp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AFC20CCF1
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149947; cv=none; b=NMzy4QJ//PUwteOXHYldtarR2m+JsL73eVrYZnZXrJqa7qWcSGUaqJmfMdDjfFnf5vQJ9l7daCF3c4Gag/6MCv//dLgirwEYdOWYI7rFq5KgbQTj/6eSk7KTTZwFkMnewTwrT7B0Y4sqRkpTG+lmqLOCw7TtcMuYx+jOr2oyscU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149947; c=relaxed/simple;
	bh=0oZ971I0wmrs4nr2rUYR0k2yCq01uDEq0P6ftRI3PNE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JFstE1JEJnYghzxyDOdxI6lvCgjKVhBkXgX//lc2xZWaKo3xZ3pnEfvenZXF0NZbRy7V6w2niuXwO8SDzeRf8Zw6DOBTX4CtLwTbmc6agOBHrNSlSPwgsFT6rOGBBFmdPmGUjtto/FqzpobPVMahJbWBEJ5eARFsClEn7HhQUWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=FU3oBlUp; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-434a45f05feso54620595e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149944; x=1733754744; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pli6SsFvDcPYaCKSCtuylkfG7oHLkLI1T7gsEQivs80=;
        b=FU3oBlUpxVravc1Nj/VlpDsUlZiMM80dWlzXJq465hCTejwJHscMBaJCIea7BBKeRN
         yopyw+OTOjWrtx3gxBtiWz0/wkDv4RWEy25DDFHc68ZaDpV/ut1FIBoO1HTFVTiZIB6a
         uTfPe1kVaw88NedHiXXsSFlaFz7uSHlC163RRgLb98hKnKtkDxi1QeAXwAZ9dPCC30+y
         ION1qa1AqrmuHslsdmSNID41P/qqG/7LoGginMQD4AUFLPO7AT8uidC9puuXcoSFDBjH
         H+WGcIM9UR13Mx794JCyMTdRdks52MSv4IRPqpRtlu4n2pQtdDh4UNPnDFta3wEJq49G
         jdlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149944; x=1733754744;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pli6SsFvDcPYaCKSCtuylkfG7oHLkLI1T7gsEQivs80=;
        b=r73XbdxAgn1NauVMZ5fdttPWb3WOdpioYbMt0OEJbTASMjqlPF+cfMc5t99WK4ofTL
         zJy83uwC0k9oJnH2HF+eEjv7zcIvUeSIZFtJ5JGBDbTasNbKL9xELdOC9UQoqcKPqH/V
         IpIbd5yRbA68nGJY3pqP5mtvAWuVHyZHecv+as2rcEs0iICoOqFvowH3MlJYoepK1fEm
         ZGJA7jPTiH4bpC/mB8LP7+gu/8k7NL0pUTpu7FhWKkIKqaiDP44Z9f1xi1Bx6JR6jfhw
         XQfidd0mr4uZ8aTJMlqOWExI3ZjnUVRFud0c9kJSHjKNOpg1jsutmDpUY8RSn8bXXIAB
         eS+A==
X-Forwarded-Encrypted: i=1; AJvYcCXRHSKOH1Xnw/Fs6YjHJ5qB6i+xrsklKoYYmjOpJrWQYHwhwaQOucTJ+lKZ9S+yDan7rbuLGny9Hn6W@vger.kernel.org
X-Gm-Message-State: AOJu0Yztewhp4D1xxtLsKvsfbTaA1CDqSjiHuM22sGr98Fx/sPFec5t4
	xZ7VGpOX13UHwn35Blnwf0pljitzfGZnRY8oAe6QfYSFgFOAEK4Iio8V06ykRh4=
X-Gm-Gg: ASbGnctZHfeR79hC7GG50gp4hUkbjyV+WjnbvgUrHx1WQsLp81CeIWrYdwqmTT4KBy6
	7VWYusapZTEUvTO8Uh0aP/Y+uc7tmphJCq/8Lzp2S1Hv5vVxJyCxV3y7pGLnLhbB+qEWAhBDWL3
	vgSRqJ5SkkBGqqSgegHGwMtnCMl9X5fRPNOhxMbOcayHGZlzGZoGbJiRpz0Lz7bWKaktsHqoy/8
	hN7wA36mVsxqT+iU5g6965N9gtuz4xo1YcLb4ky8g==
X-Google-Smtp-Source: AGHT+IFok6tkFCPxh9TckNxxVOqWD00WXYrj3eZIwv/5rIdvTJ6mEyRfzTjnuA5/i326onD32S2G0w==
X-Received: by 2002:a05:600c:4686:b0:434:a986:11cf with SMTP id 5b1f17b1804b1-434a9dc3030mr246706275e9.8.1733149943483;
        Mon, 02 Dec 2024 06:32:23 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:23 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 02 Dec 2024 14:32:00 +0000
Subject: [PATCH 7/7] arm64: dts: broadcom: Fix device tree errors on
 BCM2712.
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-dt-bcm2712-fixes-v1-7-fac67cc2f98a@raspberrypi.com>
References: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
In-Reply-To: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, 
 Eric Anholt <eric@anholt.net>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

Resolves the issues on clocks and power nodes

Fixes: 4254a647b6c9 ("arm64: dts: broadcom: Add firmware clocks and power nodes to Pi5 DT")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index fbc56309660f..26e05601416f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -66,11 +66,7 @@ &sdio1 {
 &soc {
 	firmware: firmware {
 		compatible = "raspberrypi,bcm2835-firmware", "simple-mfd";
-		#address-cells = <1>;
-		#size-cells = <1>;
-
 		mboxes = <&mailbox>;
-		dma-ranges;
 
 		firmware_clocks: clocks {
 			compatible = "raspberrypi,firmware-clocks";
@@ -85,6 +81,11 @@ reset: reset {
 
 	power: power {
 		compatible = "raspberrypi,bcm2835-power";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+		dma-ranges;
+
 		firmware = <&firmware>;
 		#power-domain-cells = <1>;
 	};

-- 
2.34.1


