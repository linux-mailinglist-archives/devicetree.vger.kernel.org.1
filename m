Return-Path: <devicetree+bounces-126129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D197A9E064C
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:07:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3370CB29CF6
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 14:37:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 359E420C46D;
	Mon,  2 Dec 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="qFllo910"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0638520C00F
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 14:32:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733149943; cv=none; b=SVA/e01SiwC6FLCzvJ3JHTVzto9Wl9sEaCRKz/eC6yxZ2dHfT6WE3GzcwsGu25hBxHJuhC3Oby2UTiqh+zOMXbVXgD4h3poYWicKsVUg+MSL0S/QTw8FrcVk1uN1aGLcavdKO3UJgFdCEocZBa4HfZHo4zBjczTMHSS8xN86+3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733149943; c=relaxed/simple;
	bh=2PwZe615qE2EwcJm/HQBJ/KJWDj8hvYZrNBL6lFE46A=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=kll328Nc8q4F0hs2Bb519lQoWX9+pmxCh67+aSMVHTaPkJa6aPS4jKwXVxbpJ/xJGB0K+Vb5WT9Wf38FFRxtblPoUb1rlPqihAgqg9dax5SiVls3LgZXAHeWebwdBtmenKt6Bci5MNgiO33Z/uS6DMzkczjLO2ZxeJ9RIrzRMWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=qFllo910; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-434a14d6bf4so39141805e9.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 06:32:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1733149939; x=1733754739; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p56iPdWdF4pt0TGa+sJ5O54kl+ln7VnNVSZs+/e+76c=;
        b=qFllo910ZhAY/1s2VjgAwyeGF0XoXv0k6I0Am5icZMORl8AUi7HzVm120p805K8shq
         e6fQC/s3vR/2spiYhxOOsiMBf/qaeV7by3ViGrIxhfHQcnL+iNh7VdKJYzlyerySY5D9
         41nyk/4MQ0RM1dTuWt2um6nhetnVGS74mwFlr6fhVKjYLJFgqAMqAa7MGOJWPAJe3Qnn
         CwV+gjXjcxf7odbtWUH8GTiCAshcZmbkf8YvGOnDQTtOt/9oHO/VT3gNprlRwgJ8eNnt
         Eruc5CXvXvMdk3HZ1eIVkdAjfQl1iSReuiH/1MOOSprVvRnRUAcUYL7L7yW6d3BabcYD
         bRaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733149939; x=1733754739;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p56iPdWdF4pt0TGa+sJ5O54kl+ln7VnNVSZs+/e+76c=;
        b=Xq0fB4a61fbV1jU4Ij79+1agLIWmj8imXYORrtHVUKbINRq3uHVJIfC1aBXLGihaKn
         hzOXceL2KFaiNI7TGVh10Ql1hSjems2m46m4WdmlqWu+Yv5YiesA9KcFSuSFo297n7ud
         EIHNwY3Ykju7+njSyMASEi2jjdT689KlWL8dUKdXQFNp/jJKDaWZBdlbEPYc5Oy7bUcp
         KLlZtLfWtAwOPw3BtA87Qre2kguUqs17Adj3gc8Iz68uXOyQQ1x/7q759ypnIcNjafFV
         UIlMG3eI8dRZwkCekQvxGH7NxBYJgTapo1vDJWdggUYErnXvNK0t9Zwg0/oW41V9N23u
         Si7w==
X-Forwarded-Encrypted: i=1; AJvYcCW7u1BtF4QPC8cjxqK+VztcPQkXFrMfROmYmxcJ5aHuPeL0Nsz7qpgOJsINpvPhk3NSAVvdt3moXSww@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj/Sns6s5JW8Btb59sGWb2RsQZfhvEs9LaIx0m0IMBHU8nkHCx
	ALKwtbl0cXYzANfCFIfsROQsVQ3Lm0QBnOjSmINqxMofH77r9RfGO+Mbm0M0uys=
X-Gm-Gg: ASbGncuo6iEU+waiAfysjoAZ0d4AgnzbLLn2kHHC3sWRwrbPAfNDOnfzXQtJpL189CM
	cmemwoL6CT1UBbLxHBtbIysSVDuDOsDgwbb88xhByiTB3A7oDru40AE/Y/JjAaiArWFsfdssENF
	AYESji2HhGs31iARLreVsZ/ar2YRvR37WJz3iSu6cnRDZWZpskG1FsbNCoLxlTPh5TaA/Nl/hu1
	TKCxmiRGddbtbcclO8d5EeUUBDr0q0F/P2mJHoJgA==
X-Google-Smtp-Source: AGHT+IE4Z97WqPTY6whDYYFojroLMECZvQLJmvdqsAduNjh17iqwixHR8OU1x0n8ZEx4yAwnePdiwQ==
X-Received: by 2002:a05:600c:4e8b:b0:431:93d8:e1a1 with SMTP id 5b1f17b1804b1-434a9df1f34mr200128515e9.27.1733149939226;
        Mon, 02 Dec 2024 06:32:19 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-434aa74f1e6sm188429555e9.9.2024.12.02.06.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 06:32:18 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 02 Dec 2024 14:31:57 +0000
Subject: [PATCH 4/7] arm64: dts: broadcom: Fix device tree warnings for
 BCM2712 display pipeline
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241202-dt-bcm2712-fixes-v1-4-fac67cc2f98a@raspberrypi.com>
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

Fixes up errors on HDMI and interrupt controllers that weren't
noticed before merging.

Fixes: de9bc2dba3db ("arm64: dts: broadcom: Add display pipeline support to BCM2712")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 39305e0869ec..f42fad2d8b37 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -336,7 +336,7 @@ ddc1: i2c@7d508280 {
 			#size-cells = <0>;
 		};
 
-		bsc_irq: intc@7d508380 {
+		bsc_irq: interrupt-controller@7d508380 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d508380 0x10>;
 			interrupts = <GIC_SPI 242 IRQ_TYPE_LEVEL_HIGH>;
@@ -344,7 +344,7 @@ bsc_irq: intc@7d508380 {
 			#interrupt-cells = <1>;
 		};
 
-		main_irq: intc@7d508400 {
+		main_irq: interrupt-controller@7d508400 {
 			compatible = "brcm,bcm7271-l2-intc";
 			reg = <0x7d508400 0x10>;
 			interrupts = <GIC_SPI 244 IRQ_TYPE_LEVEL_HIGH>;
@@ -352,7 +352,7 @@ main_irq: intc@7d508400 {
 			#interrupt-cells = <1>;
 		};
 
-		hdmi0: hdmi@7ef00700 {
+		hdmi0: hdmi@7c701400 {
 			compatible = "brcm,bcm2712-hdmi0";
 			reg = <0x7c701400 0x300>,
 			      <0x7c701000 0x200>,
@@ -381,7 +381,7 @@ hdmi0: hdmi@7ef00700 {
 			ddc = <&ddc0>;
 		};
 
-		hdmi1: hdmi@7ef05700 {
+		hdmi1: hdmi@7c706400 {
 			compatible = "brcm,bcm2712-hdmi1";
 			reg = <0x7c706400 0x300>,
 			      <0x7c706000 0x200>,

-- 
2.34.1


