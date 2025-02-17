Return-Path: <devicetree+bounces-147643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 520D0A38DB8
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:56:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 283497A2B91
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:55:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D15223AE83;
	Mon, 17 Feb 2025 20:56:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9182A23956D
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:56:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739825772; cv=none; b=KCc0mAat7W+OEvTi3+28KV8gXKlD3YkQS1M4gPQxQK0H8iTEvXZBrcGBbjwVTKdiXuenUV/aPmb1bi3Lr6MVEWnLXvOY4YKew1CnH/TaX6BbBG2mJW5vrUeHFDqAVKgkU377fKqluTilo+dhMRBoVir4feu0SIIvE9Ij9cJS7Cw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739825772; c=relaxed/simple;
	bh=7xlQqT6SyHmrrrZ7lcI+lzDoY6cGIt6c6FPPGn5CXb4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EJIUfsMBCtmY6O5GCwgf0Kv4XzT0djAWj8owNfrR/48RN+wB2B3u0Ctsqnxtf+VXa9aQ4W9Xxb6OKUMg0goDlBwSFE5XjayZHpbEaM032BFWTgVmkkRzXlcFLZ3BKXTDp6uCinRzrb92PeTUKpu/mQw1DV2v9flptWA30jGEdUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk89U-00028h-TM; Mon, 17 Feb 2025 21:55:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk89S-001THa-1I;
	Mon, 17 Feb 2025 21:55:38 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk7uX-000W9t-2Z;
	Mon, 17 Feb 2025 21:40:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 21:39:52 +0100
Subject: [PATCH v3 12/12] reboot: retire hw_protection_reboot and
 hw_protection_shutdown helpers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250217-hw_protection-reboot-v3-12-e1c09b090c0c@pengutronix.de>
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

The hw_protection_reboot and hw_protection_shutdown functions mix
mechanism with policy: They let the driver requesting an emergency
action for hardware protection also decide how to deal with it.

This is inadequate in the general case as a driver reporting e.g. an
imminent power failure can't know whether a shutdown or a reboot would
be more appropriate for a given hardware platform.

With the addition of the hw_protection parameter, it's now possible to
configure at runtime the default emergency action and drivers are
expected to use hw_protection_trigger to have this parameter dictate
policy.

As no current users of either hw_protection_shutdown or
hw_protection_shutdown helpers remain, remove them, as not to tempt
driver authors to call them.

Existing users now either defer to hw_protection_trigger or call
__hw_protection_trigger with a suitable argument directly when
they have inside knowledge on whether a reboot or shutdown would
be more appropriate.

Reviewed-by: Tzung-Bi Shih <tzungbi@kernel.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/reboot.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/include/linux/reboot.h b/include/linux/reboot.h
index 79e02876f2ba2b5508f6f26567cbcd5cbe97a277..aa08c3bbbf59a9dec65d775d280902b1455427c2 100644
--- a/include/linux/reboot.h
+++ b/include/linux/reboot.h
@@ -211,16 +211,6 @@ static inline void hw_protection_trigger(const char *reason, int ms_until_forced
 	__hw_protection_trigger(reason, ms_until_forced, HWPROT_ACT_DEFAULT);
 }
 
-static inline void hw_protection_reboot(const char *reason, int ms_until_forced)
-{
-	__hw_protection_trigger(reason, ms_until_forced, HWPROT_ACT_REBOOT);
-}
-
-static inline void hw_protection_shutdown(const char *reason, int ms_until_forced)
-{
-	__hw_protection_trigger(reason, ms_until_forced, HWPROT_ACT_SHUTDOWN);
-}
-
 /*
  * Emergency restart, callable from an interrupt handler.
  */

-- 
2.39.5


