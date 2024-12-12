Return-Path: <devicetree+bounces-130422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC589EFB31
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB95028973B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:37:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08F08226555;
	Thu, 12 Dec 2024 18:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="cAgBQ7jP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4409A228380
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:36:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028610; cv=none; b=HtX+tPsbjh69SRbO/zSvFeUpDBy8ykNJZbc3w/OHjt8ERsHlS6TfHDpKWf9vx8L1opmmbFipQGArzg0oosyE6D8CPOpwfEomZ/PzS6ep9QC+RC+NJAodGbwvHon37DOwpRzngE6DBDFLvt2c5rE1YG9RbZHVPEpSXCvf+jLEd1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028610; c=relaxed/simple;
	bh=p0I2HVUBbWRZhBgsdTrryTL6GkY8GKKUGtVy3VSjrfQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YUwkMkLEMNn21AffMCDuLuOyzQRl4wT5z0svC5Y3W+GFPE96FxbvKFwOZQBmsBcZd5ESDYH/WLNs+c10RnaumG5pW3cIcPbCTBfK8v7V4BsmyMEVwXZTmSno/UPLEaQBFYJAwJ3tgoBJAW7xuyFlnPwliWFfkXi0AERC/ZheX4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=cAgBQ7jP; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436249df846so6998325e9.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734028607; x=1734633407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SDsnxHgs8pPYbt5Sxgc7PD1JuNe9FEImA9X5O9hYyxM=;
        b=cAgBQ7jPLZW9c/hx2yATjDQqoWuJnK65lVnqng/WuEspcgF2LDmHTLqC/fkUSzsrJn
         ZGqllXgxGS432jdTbTFPhJr9zEQd5a3tIulgvaL7gkDB0cOC7SKB3H8lBnVpgjWOFSss
         aruyt9ds2vl/tvk58dd2we8Wrhejc4MuObsKbRQs/y953YFAwHMbiGC7+icX3K5JBd49
         2fXGol8wnh9YyoGRf8UMaOyHghhdjgfjYeAYv5Ur2BIR6ZJA8ww1BfJ5iKsXWom5E0fq
         bVVJkT6oM+UltVScpXHge1SjRmJPsIEwnMhQLpMgVuo0n4n2j7RyRJbNvAzAh+phd/7u
         Z4BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028607; x=1734633407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SDsnxHgs8pPYbt5Sxgc7PD1JuNe9FEImA9X5O9hYyxM=;
        b=b1YREb8dCNiFbnU0aYgsXVoJnVY4n2GQ/RraZHBtjBAH3clF5QGxS3RGLStqD6BWJy
         bCzIl9iai8SVftm1WNNJbQQZxrxXkfYY3o6f4S7rXkGKxEMlEHt3yypRI1mk+WTJ3www
         ErV6Az4VIEKb+lGWNH7yovsLljriweBk2erBxoDGY7PU4LHwxtukniud86co7bWNCCXF
         8AK3pRh7WNYBu9tx907ZQvemrGakFLUFKYPvH+ALWYKVslIejqxzWnxPqQTZzAH9yAdX
         i2WR0JRzgG2hliq4brPe4wp9StqlS6DcGsgXpcUuI179N10k2xa08iooAenqyZolAklV
         /InQ==
X-Forwarded-Encrypted: i=1; AJvYcCXly/U3XQz5uDfKsEHOozQppapvNjy6UxHYr9atMG+L2XfnauG+6Ccew+CshLXqgWm47lfp7c+hov5I@vger.kernel.org
X-Gm-Message-State: AOJu0Yx639PIhkaoqJJbmkczdL60esSEr0MCObk2oI+XqNJ9AoSRW2X8
	wYMn3hYdIfPKIWIxhd6hIdaLKXSADUjmSUwghQPrxL7ldcVDZ94DbUf8vrISaXs=
X-Gm-Gg: ASbGncskhdYKtzjH+yd+g3ssF7enAvkVMukPTEL4Ir+eI2aAq9ZDuHNXsXioSFnn1lX
	8PcJy4lqKU0isIIr5/jNMEzlDv6KuYAlFRpcotUm1iInVFKkJkztDTSAELlTuUbcpSvDBJtDvlA
	SnM2djtY/zVYKWt2T0TttmiUDyaZMujUMdRhoH8HurbjxPD98cuvUAGXCprtuZCnKYOL2z6PO2W
	4akFphMzn7cYEqGP2l0TQ9EFgZD57m4daP1u6Xp7Mwj5bnd
X-Google-Smtp-Source: AGHT+IEu2xL/+FXU63UNRhzK1AOzvmFc4RtXIaDc5vdsewo82JD1gWWmf7YI8MTxRmnxwh6YKbXzGQ==
X-Received: by 2002:a05:600c:19cd:b0:434:a07d:b709 with SMTP id 5b1f17b1804b1-4361c441bcdmr59652015e9.29.1734028607573;
        Thu, 12 Dec 2024 10:36:47 -0800 (PST)
Received: from [127.0.1.1] ([2a00:1098:3142:e::8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-436257178e3sm24651995e9.41.2024.12.12.10.36.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 10:36:47 -0800 (PST)
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Thu, 12 Dec 2024 18:36:33 +0000
Subject: [PATCH v3 6/7] arm64: dts: broadcom: Correct hdmi device node
 names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241212-dt-bcm2712-fixes-v3-6-44a7f3390331@raspberrypi.com>
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
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


