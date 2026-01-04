Return-Path: <devicetree+bounces-251305-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1816BCF12A8
	for <lists+devicetree@lfdr.de>; Sun, 04 Jan 2026 18:33:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CA52F300C291
	for <lists+devicetree@lfdr.de>; Sun,  4 Jan 2026 17:33:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 133D32690F9;
	Sun,  4 Jan 2026 17:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="tuDeHt7n"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AFD15853B;
	Sun,  4 Jan 2026 17:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767548003; cv=none; b=sQMdNTcHb5OdtAggIXc4jLsICt6SriZNBqI6MFqhLMHqdvqH33x2aCT92vWW+CqMzut9mONjMCNQxm16ZhNY8VXpP2hIx936FZg6cdgDbOpUzgayJ3vuVqYjEu379atWjfgaYjcDA8mOJNcm8qTYOa5fYs4TVOCGhiforcEo/Wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767548003; c=relaxed/simple;
	bh=0zwJ8VQ8Azs9CIEQPiuf26DId0EcKiUl9ywyQK4Lon0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mXDhtoRqtjEuThKOEVcypWHAkKOcf53+wYXmELUl7zbgKVdBDhT2ZKNh8HWDJSUOVrBwAHExiLrdPWF1usSZnbqptsiNUeoFhtdqYjXN/flRw4nUqYhgv3HPJhy6dXuP813ZIAqWYKcDxBk2Z2wrz1CWx4ovrQf7pS2ljQZaR+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=tuDeHt7n; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=9pONht70LoYnpO26WvNMohRzTdq6TfBZRpdKHzi+NGo=; b=tuDeHt7noGcZOaycXvLYb+0HjG
	d3Z36yCLMFwvOkEs/n9JGpqf1R4BtrKMrjKX/9PU4EJIDOKcEENy5HZXQeDgtaj5pCEcbfOv7tmX0
	LoDAi1INh5JkKe0gVCmKrKducp+sCuV44OD7CdlsZkjcV3nuofXcz8NmVccnUs5OALNznVAUZleUD
	lHDGwC/sIRSDaP4NoRYOUa5dW9BPoX6a8VpPEiMI4/mE6yIybEhQVdGNaFp/T8WYpLGNGqkAkWZsG
	okRoqhI/8QHnAacCFT/O9NnRqcX1StQfSMUyexK/rf/ovSxi11n660tGMzbgTqHWgUUIhSB58ufzG
	a6Wt8cAw==;
Received: from i53875ac4.versanet.de ([83.135.90.196] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vcRyb-00123u-3b; Sun, 04 Jan 2026 18:33:13 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: lee@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mfd: qnap-mcu: Add driver data for TS133 variant
Date: Sun,  4 Jan 2026 18:33:10 +0100
Message-ID: <20260104173310.2685852-3-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260104173310.2685852-1-heiko@sntech.de>
References: <20260104173310.2685852-1-heiko@sntech.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the TS133 compatible and affiliated driver data to qnap-mcu.
The TS133 is mostly similar to the TS233/TS433, except only having
one drive and no USB-LED.

The fan pwm-limits from the vendor-configuration also are the same
as for the TS233/TS433 variants.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/mfd/qnap-mcu.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/mfd/qnap-mcu.c b/drivers/mfd/qnap-mcu.c
index 08e55ff24012..556bc5bb43d9 100644
--- a/drivers/mfd/qnap-mcu.c
+++ b/drivers/mfd/qnap-mcu.c
@@ -444,6 +444,14 @@ static int qnap_mcu_power_off(struct sys_off_data *data)
 	return NOTIFY_DONE;
 }
 
+static const struct qnap_mcu_variant qnap_ts133_mcu = {
+	.baud_rate = 115200,
+	.num_drives = 1,
+	.fan_pwm_min = 51,  /* Specified in original model.conf */
+	.fan_pwm_max = 255,
+	.usb_led = false,
+};
+
 static const struct qnap_mcu_variant qnap_ts233_mcu = {
 	.baud_rate = 115200,
 	.num_drives = 2,
@@ -529,6 +537,7 @@ static int qnap_mcu_probe(struct serdev_device *serdev)
 }
 
 static const struct of_device_id qnap_mcu_dt_ids[] = {
+	{ .compatible = "qnap,ts133-mcu", .data = &qnap_ts133_mcu },
 	{ .compatible = "qnap,ts233-mcu", .data = &qnap_ts233_mcu },
 	{ .compatible = "qnap,ts433-mcu", .data = &qnap_ts433_mcu },
 	{ /* sentinel */ }
-- 
2.47.2


