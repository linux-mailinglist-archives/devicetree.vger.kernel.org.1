Return-Path: <devicetree+bounces-224121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E82BC0CB4
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:58:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D4202189B2A7
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:58:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDF0F25743E;
	Tue,  7 Oct 2025 08:58:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9C62D6E59
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:58:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759827504; cv=none; b=ft9H0HD/+0IXwFonuvUV9yd908aKaiI2ASVCY/bozM2sew8DHv4KRUd2fbzf+zqKJA255xyVubhNC9OCtcu+iJaCK4fgaD3vfOyDI5MnTI56YbXCFffVmXL/4uJuwq33ko/MhUdkVgeU2B4wqrdMR1uTnckLfcRvc4ljSw25EHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759827504; c=relaxed/simple;
	bh=s3kbGH2m7tYAq0Ru+MGjztJlEXICfIdT9WzMkCBCWFM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EfEyh6wBd+nw+sctD8Cx0kM5/r1GqP7AS3a2LXTIWAJ3NNNEy3AAMNKd0tsTFIRM5ysFWuErBHQFc3hLlMjbhsi1DTaePc97BuPNzf9daG+RvLtWQxRoQ8ZHbt94Le9PNiy7lgtFATOArQtYcCuN3xdYoEWWKjGAYbGFPeYVVu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1v63WO-0007XY-Km; Tue, 07 Oct 2025 10:58:12 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 07 Oct 2025 10:58:04 +0200
Subject: [PATCH v4 3/3] Documentation: ABI: add lp5860 led matrix
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251007-v6-14-topic-ti-lp5860-v4-3-967758069b60@pengutronix.de>
References: <20251007-v6-14-topic-ti-lp5860-v4-0-967758069b60@pengutronix.de>
In-Reply-To: <20251007-v6-14-topic-ti-lp5860-v4-0-967758069b60@pengutronix.de>
To: Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Steffen Trumtrar <kernel@pengutronix.de>, Pavel Machek <pavel@kernel.org>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

The lp5860 is an LED matrix controller that can be connected to SPI or I2C.
It supports setting the maximum brightness of the three basic
colors (R,G,B) with a global value.

To: Mark Brown <broonie@kernel.org>
Cc: linux-spi@vger.kernel.org
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/ABI/testing/sysfs-class-spi-lp5860 | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-class-spi-lp5860 b/Documentation/ABI/testing/sysfs-class-spi-lp5860
new file mode 100644
index 0000000000000000000000000000000000000000..80b22a9d6642100a25efbf658cfed8604150baa5
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-spi-lp5860
@@ -0,0 +1,23 @@
+What:           /sys/class/spi_master/spi<bus>/spi<bus>.<dev>/b_global_brightness_set
+Date:           July 2025
+KernelVersion:  6.16
+Contact:        Steffen Trumtrar <kernel@pengutronix.de>
+Description:
+	Contains and sets the global brightness for the B color group.
+	Can be adjusted in 128 steps from 0% to 100% of the maximum brightness.
+
+What:           /sys/class/spi_master/spi<bus>/spi<bus>.<dev>/g_global_brightness_set
+Date:           July 2025
+KernelVersion:  6.16
+Contact:        Steffen Trumtrar <kernel@pengutronix.de>
+Description:
+	Contains and sets the global brightness for the G color group.
+	Can be adjusted in 128 steps from 0% to 100% of the maximum brightness.
+
+What:           /sys/class/spi_master/spi<bus>/spi<bus>.<dev>/r_global_brightness_set
+Date:           July 2025
+KernelVersion:  6.16
+Contact:        Steffen Trumtrar <kernel@pengutronix.de>
+Description:
+	Contains and sets the global brightness for the R color group.
+	Can be adjusted in 128 steps from 0% to 100% of the maximum brightness.

-- 
2.49.0


