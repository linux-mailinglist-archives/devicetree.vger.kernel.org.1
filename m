Return-Path: <devicetree+bounces-130349-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E37019EF153
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:37:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 946E41788C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:30:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25ED924038C;
	Thu, 12 Dec 2024 16:19:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="rOIteCG1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C342358B2
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:19:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734020354; cv=none; b=VOIqvEbZPDHnTDhfuMYKQsrfg9KR78kWPIUhRvB9f+AYVpAuYF1Rbtrzlot14iQ+LmYmbl3ztUIA9P8+V4HAgyp6naU1lMzvADu1j7SIFv5FZfwlhmOSFEMi8G051ulys5Dsr73Z2MdYxg1lSND2LUoeGo0uthV7bW0ZJVd+MYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734020354; c=relaxed/simple;
	bh=p0I2HVUBbWRZhBgsdTrryTL6GkY8GKKUGtVy3VSjrfQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=iY3SA21y6lm9JwTMCWG0ru7wxkJ5SV2i3W7aEFa8u5qelqW9wEsdSNRXqscZ6grB3CAV+pdzvXLDfmBOQEOp/g/itPuYPmL4vMTkwQh2YTl5UEfIy7Bm+ct5WE5P1h0tFxmqWOhHZGdfk2gRVEVHBuZY3LIGBF/VHu5V3E0Djk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=rOIteCG1; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-385e1fcb0e1so429068f8f.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:19:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734020351; x=1734625151; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SDsnxHgs8pPYbt5Sxgc7PD1JuNe9FEImA9X5O9hYyxM=;
        b=rOIteCG1k0+2j8jPBiVEFFnF4pxeeEmvolnkKm/pEuLT9RMYvdxPFqGQ4YMvTKRGKu
         YCdJh+Cq0r4PLkv4b1HJqI3fCg4pu0420Ws1tjXzFcAu2Y356hZZSzNdKa264WLK9LHb
         zvDt1FcpNAjnCfcdi//2tF30rOrweyp0qThW/WAPAFOUFYx+E14R1jvklK6TQN0xK9iN
         +Sf3mznxzwYA4UF2+wFN3+tPlFSz7G3sOKDfozcAJud2yArZLh2zdOBjnRTqAiK0uxSD
         5WjQAXAr/A3u6/OGD8EHaM1WYOQi5fU3GAAa6RArRWYNKeaUl2YgBu1N9OIAQ/Z7CUNw
         I/Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734020351; x=1734625151;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDsnxHgs8pPYbt5Sxgc7PD1JuNe9FEImA9X5O9hYyxM=;
        b=DIglRfapWllvMyYdnUZldUj6jRt1pqPgk2fLkbSVFc3YNwIdalDcEN1H8Pv9eCwKez
         A3B/bRZGFWbtOQpXR7MQXfOuW0v2PMqGckTl/Q/hpJVTIMdg4l34FjseIsm8vvFVRy1x
         uVuz6nPsCe43e0hD53DiSqJ3bpq6IdjKJ1EVAqWuTWtw4OIXIPIs8WFAkX2RtapkIHLe
         RXO5nLDtu1lDDgU41ntgjJCrKQrF3WQ9WqxhvLblly/t3e98tuo3wU48IJqZ+z6pFM5g
         4k8CAhflXNt6iFuqEf03EQ6sMxB/FUyvXL6WXNKvFBb5a1dvzix7uXOP9S0aNEWosqpU
         mTSA==
X-Forwarded-Encrypted: i=1; AJvYcCWbK4yfFbquZiSL4AzgES15uhlDZI5yP9pgXp1DpSEKo+ASq6g24M8ttW55Sxn1xMm5Tnz0fzAoOeCz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/+6GysuLiVj457KQgQ8NBKGRgA6tqEeeIKIsj5BCQYqDpucy8
	dvwXJhWDSeSKmijv6mZ3MbvsXh/MEXTQlD+VsjhLUXoZYD0Wt7Fu4fyivmPYycA=
X-Gm-Gg: ASbGncuZsRRLnaD3+VsMMPGCtVQnH//iuzXDcjGwtBhFCdai9zSXAPU573BSZ3uiDZh
	26AlryspggNr3z/PAxdXAM7pVDAaDkxvPi8po35lYW31Osdla493YqXdgYE5vSMjpz26uuAKXWR
	e04u2NiRf+3o8owUlDuQqZKomiABYyELUR3ebEKdM7fGF01dxNVMGg6nkuSZB+GAnOY03uuRK06
	puOfQ1ANB8/3UZ/h48G6ia6af7SBnMKCpfCgQcmXXld8sfG
X-Google-Smtp-Source: AGHT+IHSgOEfwH+piApFqEC2IhYZWJ+1L5bPpX/eXc0mgxxp6hdmD6CIHtNXbZfUGagQsK5T5vfHeQ==
X-Received: by 2002:a05:6000:4026:b0:385:ef39:6cd5 with SMTP id ffacd0b85a97d-3864ce89425mr6133942f8f.1.1734020350544;
        Thu, 12 Dec 2024 08:19:10 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4361e322328sm44336105e9.0.2024.12.12.08.19.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 08:19:09 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 16:18:56 +0000
Subject: [PATCH v2 6/7] arm64: dts: broadcom: Correct hdmi device node
 names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v2-6-35986e04d0f4@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v2-0-35986e04d0f4@raspberrypi.com>
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
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, 
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
 linux-gpio@vger.kernel.org, Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.14.1

The names of the hdmi0 and hdmi1 nodes had addresses that
didn't match the reg properties for the nodes.

Fixes: f66b382affd8 ("arm64: dts: broadcom: Add display pipeline support to BCM2712")
Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index bd78af0211b6..f42fad2d8b37 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -352,7 +352,7 @@ main_irq: interrupt-controller@7d508400 {
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


