Return-Path: <devicetree+bounces-33241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7CE6832A74
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 14:27:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 890041F21457
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 13:27:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB5505577D;
	Fri, 19 Jan 2024 13:25:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9977154FB9
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705670746; cv=none; b=Hl8QmlqPCDQ8xU2kpICe5nRgGqnTBVqFEkI7Z5K4MY/qFPjd0yXkFd69LZAtPJiTmMr2zalVCJH67fPLlPyjW/olkFXT7dHFLuV2LmMHXe+XaW3+A7Nt191JLkMqt1cXzGBGXL9WaorqC6uwlFCJgRnfyeX/zEXBNnPmgCdRfPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705670746; c=relaxed/simple;
	bh=FG8+XP94f/Ig6ekDFdWhMR1QY436ISnaJd2Qe3LwG1s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Qmg8eZdF72aQCZuPiwJiRnHwLcSezwkYurPmaVzWgPhKrq7WY9d0abdaH7hDL9E62l6yssl2wN/0blM0nc+6p/M9tBHzKl7kp1cyRgz1t3DGQHyt+Tr+2tbRenvj3bmpDuOFEK1C14kNO9cU8v5U4QGd7RGXZQVtZ6MOvjczCFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos7-00074L-C1; Fri, 19 Jan 2024 14:25:23 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-000viS-AL; Fri, 19 Jan 2024 14:25:22 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-00F98h-0j;
	Fri, 19 Jan 2024 14:25:22 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Sebastian Reichel <sre@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?S=C3=B8ren=20Andersen?= <san@skov.dk>
Subject: [RFC PATCH v1 7/7] thermal: core: set Power State Change Reason before hw_protection_shutdown()
Date: Fri, 19 Jan 2024 14:25:21 +0100
Message-Id: <20240119132521.3609945-8-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119132521.3609945-1-o.rempel@pengutronix.de>
References: <20240119132521.3609945-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Store the state change reason to some black box for later investigation.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/thermal/thermal_core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/thermal/thermal_core.c b/drivers/thermal/thermal_core.c
index 9c17d35ccbbd..5ee3a59d7a0e 100644
--- a/drivers/thermal/thermal_core.c
+++ b/drivers/thermal/thermal_core.c
@@ -16,6 +16,7 @@
 #include <linux/kdev_t.h>
 #include <linux/idr.h>
 #include <linux/thermal.h>
+#include <linux/pscr.h>
 #include <linux/reboot.h>
 #include <linux/string.h>
 #include <linux/of.h>
@@ -325,6 +326,7 @@ void thermal_zone_device_critical(struct thermal_zone_device *tz)
 	dev_emerg(&tz->device, "%s: critical temperature reached, "
 		  "shutting down\n", tz->type);
 
+	set_power_state_change_reason(PSCR_OVERTEMPERATURE);
 	hw_protection_shutdown("Temperature too high", poweroff_delay_ms);
 }
 EXPORT_SYMBOL(thermal_zone_device_critical);
-- 
2.39.2


