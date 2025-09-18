Return-Path: <devicetree+bounces-207620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F0EB3010F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 19:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4F6481D00780
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 17:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8D92338F29;
	Thu, 21 Aug 2025 17:27:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60792338F21
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 17:27:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755797223; cv=none; b=WDEad7oIkJVRjmwvwSfQeP+6VFSFbFBX0yFvVXSrUiwL0kGOD9D5rq5jrUGs7D9incWCyycdSLFUJDhBmJcSXtfeE9AS72LpRmnlD6Q/k+2oLGvBQuWhsf6gjMFVaqoGHBqVknl121PVEqWHGTUVZ8v7g3AnaoNFbCnJ9yrIolk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755797223; c=relaxed/simple;
	bh=27PkDugFDXO+RkBfyXFnee1MMhm1ZsvwaLoTK5nHyGs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=BWAh0WdY14GMOHeHIv33Mbaw+CFvUNSKjELOUQUye3n695Rf4RD5XzZW8i68c/g4E/NPViGOhndm1+3zTPpBdknBPC0dzwJHy06Uez+uwPwWiz/H3HzB0JL19ICs0AxQ1l/QY2nKyAarulAYffyoqr+hVkSU4oNKETx5uWaUBMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1up93e-0002Ta-Hh; Thu, 21 Aug 2025 19:26:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v3 0/4] Input: Add support for TouchNetix aXiom touchscreen
Date: Thu, 21 Aug 2025 19:26:35 +0200
Message-Id: <20250821-v6-10-topic-touchscreen-axiom-v3-0-940ccee6dba3@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMtWp2gC/4XOPQ6DMAwF4KtUmZvKTgk/nXqPqgMEFzw0QQlEV
 Ii7NyB16sBi6flJn72IQJ4piNtpEZ4iB3Y2hev5JExf244ktykLBSqDAjIZc4kgRzewSXMyfTC
 eyMp6ZvdOlS5ypBIBUSRj8PTiefcfz5R7DqPzn/1cxG27y4hYHcgRJcgcVVYp3VQFlveBbDeN3
 lmeLy2JjY/qR2rQ6pBUiaw1tU16u84B/sh1Xb8s0RGTIgEAAA==
X-Change-ID: 20240704-v6-10-topic-touchscreen-axiom-105761e81011
To: Luis Chamberlain <mcgrof@kernel.org>, 
 Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Kamel Bouhara <kamel.bouhara@bootlin.com>, 
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
 Danilo Krummrich <dakr@kernel.org>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

this adds the support for the TouchNetix aXiom touchcontroller family.

The following features are added:
 - I2C communication
 - Input event handling
 - Touchcontroller firmware (AXFW or ALC) updates
 - Touchcontroller config (TH2CFGBIN) updates

Regards,
  Marco

Changes in v3:
- Link to v2: https://lore.kernel.org/r/20250529-v6-10-topic-touchscreen-axiom-v2-0-a5edb105a600@pengutronix.de
- firmware: fix commit message (Russ)
- dt-bindings: Add ack from Krzysztof
- dt-bindings: make use of GPIO_ACTIVE_LOW (Krzysztof)
- dt-bindings: drop 'panel: true' property (Krzysztof)
- driver: make use of sysfs_emit (Greg)
- driver: s/WARN()/dev_warn()/ to not take down the system (Greg)
- driver: fix build dependency error by adding "depends on DRM || !DRM"
- driver: harmonize usage printing to u%02X

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de
- Rework the firmware-duplicate handling -> expose the error to the
  userspace
- Drop Krzysztof Kozlowski ACK and RB
- Add panel-follower support
- Add sysfs-driver-input-touchnetix-axiom documentation
- Add support for new firmware 4.8.9
- Add support to handle 2D and 3D firmware

---
Kamel Bouhara (2):
      dt-bindings: vendor-prefixes: Add TouchNetix AS
      dt-bindings: input: Add TouchNetix axiom touchscreen

Marco Felsch (2):
      firmware_loader: expand firmware error codes with up-to-date error
      Input: Add TouchNetix aXiom I2C Touchscreen support

 .../testing/sysfs-driver-input-touchnetix-axiom    |   74 +
 .../input/touchscreen/touchnetix,ax54a.yaml        |   62 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 drivers/base/firmware_loader/sysfs_upload.c        |    1 +
 drivers/input/touchscreen/Kconfig                  |   17 +
 drivers/input/touchscreen/Makefile                 |    1 +
 drivers/input/touchscreen/touchnetix_axiom.c       | 2974 ++++++++++++++++++++
 include/linux/firmware.h                           |    2 +
 lib/test_firmware.c                                |    1 +
 9 files changed, 3134 insertions(+)
---
base-commit: 038d61fd642278bab63ee8ef722c50d10ab01e8f
change-id: 20240704-v6-10-topic-touchscreen-axiom-105761e81011

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


