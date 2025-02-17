Return-Path: <devicetree+bounces-147630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EB22EA38D67
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:40:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CA45A7A2C9A
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B28723906A;
	Mon, 17 Feb 2025 20:40:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0CE238D39
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739824836; cv=none; b=e1Kxqlyf16znCreAkfaoTTBqw9sA2Dact/Bi9UgIQwO/CZ+mNtsS7+UxrMaC9M39PNzDu0x1T7g1KVUEexYN2isvqUbYbbfuVc5V4NkN0vqSh8XTkAilRiY2oH5NVq/HCTjPFvHYKA0W22xc9Thvo0l3B6KtWE7twWBd/ivYzmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739824836; c=relaxed/simple;
	bh=a7/wDYror7f9u7E/gxJPevZz0fLQnlju7iQq3E/8RZ8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CAhZdyW6wzliI5Q32Fj0eb6XgBQ0AFeEvKrH8KrvvH5NghqjQB7xzpfmfa3NRq1SN1pJbtkYxW7abbk69u6wyK3VgtibXLRTn/iJMMrOWki8kvuAEW4D+c3YYy12sBpaP8Mp5SN9D2P3NuDsPVTbC29gZtRdLCcV+AMrHH24NUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk7uZ-0007oL-CW; Mon, 17 Feb 2025 21:40:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk7uX-001TG2-36;
	Mon, 17 Feb 2025 21:40:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk7uX-000W9t-2W;
	Mon, 17 Feb 2025 21:40:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 21:39:49 +0100
Subject: [PATCH v3 09/12] platform/chrome: cros_ec_lpc: prepare for
 hw_protection_shutdown removal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-hw_protection-reboot-v3-9-e1c09b090c0c@pengutronix.de>
References: <20250217-hw_protection-reboot-v3-0-e1c09b090c0c@pengutronix.de>
In-Reply-To: <20250217-hw_protection-reboot-v3-0-e1c09b090c0c@pengutronix.de>
To: Andrew Morton <akpm@linux-foundation.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Fabio Estevam <festevam@denx.de>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>, 
 Jonathan Corbet <corbet@lwn.net>, Serge Hallyn <serge@hallyn.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Matti Vaittinen <mazziesaccount@gmail.com>, 
 Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
 Guenter Roeck <groeck@chromium.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-doc@vger.kernel.org, linux-security-module@vger.kernel.org, 
 chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
 kernel@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

In the general case, a driver doesn't know which of system shutdown or
reboot is the better action to take to protect hardware in an emergency
situation. For this reason, hw_protection_shutdown is going to be
removed in favor of hw_protection_trigger, which defaults to shutdown,
but may be configured at kernel runtime to be a reboot instead.

The ChromeOS EC situation is different as we do know that shutdown is
the correct action as the EC is programmed to force reset after the
short period, thus replace hw_protection_shutdown with
__hw_protection_trigger with HWPROT_ACT_SHUTDOWN as argument to
maintain the same behavior.

No functional change.

Acked-by: Tzung-Bi Shih <tzungbi@kernel.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/platform/chrome/cros_ec_lpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/platform/chrome/cros_ec_lpc.c b/drivers/platform/chrome/cros_ec_lpc.c
index 5a2f1d98b3501b3b88adaf50fe5784f990310f9f..0b723c1e435c65600d67ad2d447404dfcdc7cf78 100644
--- a/drivers/platform/chrome/cros_ec_lpc.c
+++ b/drivers/platform/chrome/cros_ec_lpc.c
@@ -454,7 +454,7 @@ static void cros_ec_lpc_acpi_notify(acpi_handle device, u32 value, void *data)
 		blocking_notifier_call_chain(&ec_dev->panic_notifier, 0, ec_dev);
 		kobject_uevent_env(&ec_dev->dev->kobj, KOBJ_CHANGE, (char **)env);
 		/* Begin orderly shutdown. EC will force reset after a short period. */
-		hw_protection_shutdown("CrOS EC Panic", -1);
+		__hw_protection_trigger("CrOS EC Panic", -1, HWPROT_ACT_SHUTDOWN);
 		/* Do not query for other events after a panic is reported */
 		return;
 	}

-- 
2.39.5


