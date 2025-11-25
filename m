Return-Path: <devicetree+bounces-242022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D9040C856D2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 15:30:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D1FE23A801E
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:30:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BDEB325728;
	Tue, 25 Nov 2025 14:30:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA6FF324B2F
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 14:30:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764081027; cv=none; b=RznVKr6MA1KF+TufIRoIoVnHkng6KP9Lx+nno+WRqzQHrdh4EmSkeB2II8Pc+ZrcAGa2EtIGQd2J6oWNyRS5hQ/QflHm46kFDSDqkFvI1wYZy25J2n4Kp9ZAx3raO6QOcCJAsAM5zLRM7owq6MpvyP8kD0FLOSQ4Ja71d5chHlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764081027; c=relaxed/simple;
	bh=1qGQFbbMeaIni41xx48zBr6B25dsC9ybySqmBwi6TJs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AfiM6G8eQOmt8gg8TC/DDyopwbGMHn9XbL2ijx91LTs5HEUDk/piTT2Vbc5mwnamzcPU8HpNdkHC+kCHqvjnAL5zWvFcSoImq7YQAMLFoaMcYXdpRr0Bi9hDdter0MWQrvFHDeJwG4tV46grzgYEU7H4b9Qrb/Hr2fv2GBoJfQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1vNu3d-0003eq-Pd; Tue, 25 Nov 2025 15:30:17 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 25 Nov 2025 15:29:56 +0100
Subject: [PATCH v4 3/4] media: adv7180: implement g_register and s_register
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251125-b4-adv7180-vpp-sub-device-v4-3-c772b9a80916@pengutronix.de>
References: <20251125-b4-adv7180-vpp-sub-device-v4-0-c772b9a80916@pengutronix.de>
In-Reply-To: <20251125-b4-adv7180-vpp-sub-device-v4-0-c772b9a80916@pengutronix.de>
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

The g_register and s_register callbacks are useful for debugging the
adv7180.

Implement the callbacks to expose the register debugging to userspace.

Signed-off-by: Thorsten Schmelzer <tschmelzer@topcon.com>
Reviewed-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v4:
- None
Changes in v3:
- None
Changes in v2:
- None
---
 drivers/media/i2c/adv7180.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/media/i2c/adv7180.c b/drivers/media/i2c/adv7180.c
index 4152f2049a6d..d289cbc2eefd 100644
--- a/drivers/media/i2c/adv7180.c
+++ b/drivers/media/i2c/adv7180.c
@@ -969,6 +969,32 @@ static int adv7180_subscribe_event(struct v4l2_subdev *sd,
 	}
 }
 
+#ifdef CONFIG_VIDEO_ADV_DEBUG
+static int adv7180_g_register(struct v4l2_subdev *sd,
+			      struct v4l2_dbg_register *reg)
+{
+	struct adv7180_state *state = to_state(sd);
+	int ret;
+
+	ret = adv7180_read(state, reg->reg);
+	if (ret < 0)
+		return ret;
+
+	reg->val = ret;
+	reg->size = 1;
+
+	return 0;
+}
+
+static int adv7180_s_register(struct v4l2_subdev *sd,
+			      const struct v4l2_dbg_register *reg)
+{
+	struct adv7180_state *state = to_state(sd);
+
+	return adv7180_write(state, reg->reg, reg->val);
+}
+#endif
+
 static const struct v4l2_subdev_video_ops adv7180_video_ops = {
 	.s_std = adv7180_s_std,
 	.g_std = adv7180_g_std,
@@ -982,6 +1008,10 @@ static const struct v4l2_subdev_video_ops adv7180_video_ops = {
 static const struct v4l2_subdev_core_ops adv7180_core_ops = {
 	.subscribe_event = adv7180_subscribe_event,
 	.unsubscribe_event = v4l2_event_subdev_unsubscribe,
+#ifdef CONFIG_VIDEO_ADV_DEBUG
+	.g_register = adv7180_g_register,
+	.s_register = adv7180_s_register,
+#endif
 };
 
 static const struct v4l2_subdev_pad_ops adv7180_pad_ops = {

-- 
2.47.3


