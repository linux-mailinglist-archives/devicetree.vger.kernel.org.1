Return-Path: <devicetree+bounces-240355-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED52C70301
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 17:45:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 98648388ED9
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 16:29:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F290F261B9A;
	Wed, 19 Nov 2025 16:26:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7690B341056
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 16:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763569565; cv=none; b=EsY3RyZzergnJSX9mV7zd0vKjLkAGLxv6lb6NABs4NpBGHEWeVzVIUbOFp5T7qG+nsGjiw5iizRaNe8hjT8p3bp4Ikyzc5i+u6qYwRORwlOXfQrI/j3s07qUL9MPMZ8g19AW8pgfOyGgv9VcFKopx37QDrYsRWp+u/f7AjlpF/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763569565; c=relaxed/simple;
	bh=bDLakZJbNpmsQ/KMi5TAH8fXyFj4xdHUXOD13Ia8x7k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WKtmJo9HVqowDiiwiOjKwZuibEJk4jeSANDTeOQHqYncX631ywY1fvGPAbJI+pFe41o1lmRkCixfQQqpAeYNZeH8XSpXR2kmn+Gz4ytRnb3WF+CuhETbnBT5WwXVPi6/dkYuCblifZGNoqOQ8YaYOKCvqiGVrFeMCCDOaWk3i6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vLl0L-0000aE-Ah; Wed, 19 Nov 2025 17:26:01 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 19 Nov 2025 17:25:54 +0100
Subject: [PATCH v2 4/4] media: adv7180: fix frame interval in progressive
 mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251119-b4-adv7180-vpp-sub-device-v2-4-86a7790b63ab@pengutronix.de>
References: <20251119-b4-adv7180-vpp-sub-device-v2-0-86a7790b63ab@pengutronix.de>
In-Reply-To: <20251119-b4-adv7180-vpp-sub-device-v2-0-86a7790b63ab@pengutronix.de>
To: Lars-Peter Clausen <lars@metafoo.de>, 
 =?utf-8?q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Michael Tretter <m.tretter@pengutronix.de>, 
 Thorsten Schmelzer <tschmelzer@topcon.com>
X-Mailer: b4 0.14.3
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

From: Thorsten Schmelzer <tschmelzer@topcon.com>

The ADV7280-M may internally convert interlaced video input to
progressive video. If this mode is enabled, the ADV7280-M delivers
progressive video frames at the field rate of 50 fields per second (PAL)
or 60 fields per second (NTSC).

Fix the reported frame interval if progressive video is enabled.

Signed-off-by: Thorsten Schmelzer <tschmelzer@topcon.com>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- Simplify and document calculation of frame interval
---
 drivers/media/i2c/adv7180.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/media/i2c/adv7180.c b/drivers/media/i2c/adv7180.c
index d289cbc2eefd..669b0b3165b1 100644
--- a/drivers/media/i2c/adv7180.c
+++ b/drivers/media/i2c/adv7180.c
@@ -507,6 +507,13 @@ static int adv7180_get_frame_interval(struct v4l2_subdev *sd,
 		fi->interval.denominator = 25;
 	}
 
+	/*
+	 * If the de-interlacer is active, the chip produces full video frames
+	 * at the field rate.
+	 */
+	if (state->field == V4L2_FIELD_NONE)
+		fi->interval.denominator *= 2;
+
 	return 0;
 }
 

-- 
2.47.3


