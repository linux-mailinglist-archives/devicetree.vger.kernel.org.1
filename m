Return-Path: <devicetree+bounces-37652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1198E845C68
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 17:02:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E212298BA1
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:02:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED8D415F32E;
	Thu,  1 Feb 2024 15:58:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from andre.telenet-ops.be (andre.telenet-ops.be [195.130.132.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A765A15DBC2
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=195.130.132.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706803130; cv=none; b=OIdg4vs+FyEE/jtCuRRMPAY2z/ZiB7PiHZ22cRJGFH+R/xO6vtCjWg0YlBARTOfM7roys1AP5B6t/AXE3dhc7+gBD83Tq65s62RkTyriKm4HRUOgT9fgLHd/xVzGuI7n9iPCYTmiYPxzC5d+iauMS4DAPyi09h1HfL7Yaz3RHas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706803130; c=relaxed/simple;
	bh=CF2ARHz2cRosX82RdwM2kdN6+Pv0jTsoPu/93EYZ5G8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=OpFX+44qJFaoXyDTnov2CCazfSVDctuigiAcb8KMaQJWjHzNap1r1gYEX/chVzoJ45b+c8QLHCeC1Crjb4GR4FTSku5ucXQhG0Sezs+8XoU+uTAY2nd/aa/KQprpFlkyWyD2se/oNs1f9SQ9I9j6x/sJEi7nz0oHi2TwIpMza+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be; spf=none smtp.mailfrom=linux-m68k.org; arc=none smtp.client-ip=195.130.132.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux-m68k.org
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:4392:e888:3d14:1bdc])
	by andre.telenet-ops.be with bizsmtp
	id hryk2B0072BHJxj01rykWw; Thu, 01 Feb 2024 16:58:45 +0100
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rVZRn-00GvjY-3I;
	Thu, 01 Feb 2024 16:58:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1rVZSe-00Abud-3K;
	Thu, 01 Feb 2024 16:58:44 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>
Cc: devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH 2/2] regulator: gpio: Correct default GPIO state to LOW
Date: Thu,  1 Feb 2024 16:58:42 +0100
Message-Id: <ffb1eb1d747dce00b2c09d7af9357cd43284d1c4.1706802756.git.geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1706802756.git.geert+renesas@glider.be>
References: <cover.1706802756.git.geert+renesas@glider.be>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

According to the GPIO regulator DT bindings[1], the default GPIO state
is LOW.  However, the driver defaults to HIGH.

Before the conversion to descriptors in commit d6cd33ad71029a3f
("regulator: gpio: Convert to use descriptors"), the default state used
by the driver was rather ill-defined, too:
  - If the "gpio-states" property was missing or empty, the default was
    low, matching the bindings.
  - If the "gpio-states" property was present, the default for missing
    entries was the value of the last present entry.

Fix this by making the driver adhere to the DT bindings, i.e. default to
LOW.

[1] Documentation/devicetree/bindings/regulator/gpio-regulator.yaml

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
I have no idea if this has any impact.
I guess most/all DTS files have proper gpios-states properties?
---
 drivers/regulator/gpio-regulator.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/regulator/gpio-regulator.c b/drivers/regulator/gpio-regulator.c
index 65927fa2ef161cda..5dfed8bae0c4cfdc 100644
--- a/drivers/regulator/gpio-regulator.c
+++ b/drivers/regulator/gpio-regulator.c
@@ -176,9 +176,9 @@ of_get_gpio_regulator_config(struct device *dev, struct device_node *np,
 			ret = of_property_read_u32_index(np, "gpios-states", i,
 							 &val);
 
-			/* Default to high per specification */
+			/* Default to low per specification */
 			if (ret)
-				config->gflags[i] = GPIOD_OUT_HIGH;
+				config->gflags[i] = GPIOD_OUT_LOW;
 			else
 				config->gflags[i] =
 					val ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW;
-- 
2.34.1


