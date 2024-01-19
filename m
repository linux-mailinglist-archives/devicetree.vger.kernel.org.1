Return-Path: <devicetree+bounces-33244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D82CF832A78
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 14:28:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16FE71C23210
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 13:28:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24E7955C05;
	Fri, 19 Jan 2024 13:25:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB11155794
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 13:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705670749; cv=none; b=WRk7cmfI99cHviEl3P8Li3O0K3AiLPaC+oNJAxWplI1qqGq6q00R/wPNL99MARr434v3uQ6Y9A6CS3q1+RV+KOGAtxaC/gTwemC5p7XOI/tn/lkx7MNwYYX61tT+Rhxuo3CWn/nuXbQbM6crJcU4MKxoIMAZLWzYJkcl9FkMPf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705670749; c=relaxed/simple;
	bh=SnlmRY4YzKLUEZW36LRtIOn/V1xJIwJfrgcpZ0DRfw0=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=qZMNWlNFwcBVVxL589JueQI//m+DYUPsemB/bqSUv8D86X0C6u/cH5fF+Y++4W2NIRwckBeZul3PRr6UMGNRpkaxYED/oSa27vAwZRo4XjSeqOzxXr0/4ZUthL1CxXobXaXLJynzi51a77m3ZFzxuKlE8sjmbS2+G8m0uJsmmvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos7-00074E-C1; Fri, 19 Jan 2024 14:25:23 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-000viF-4D; Fri, 19 Jan 2024 14:25:22 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rQos6-00F97X-0B;
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
Subject: [RFC PATCH v1 0/7] Introduction of PSCR Framework and Related Components
Date: Fri, 19 Jan 2024 14:25:14 +0100
Message-Id: <20240119132521.3609945-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
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

Hello all,

This patch series introduces the Power State Change Reasons (PSCR)
tracking framework and its related components into the kernel. The PSCR
framework is designed for systems where traditional methods of storing
power state change reasons, like PMICs or watchdogs, are inadequate. It
provides a structured way to store reasons for system shutdowns and
reboots, such as under-voltage or software-triggered events, in
non-volatile hardware storage.

These changes are critical for systems requiring detailed postmortem
analysis and where immediate power-down scenarios limit traditional
storage options. The framework also assists bootloaders and early-stage
system components in making informed recovery decisions.

Oleksij Rempel (7):
  dt-bindings: power: reset: add generic PSCR binding trackers
  power: reset: Introduce PSCR Tracking Framework for Non-Volatile
    Storage
  dt-bindings: power: reset: add bindings for NVMEM hardware storing
    PSCR Data
  nvmem: provide consumer access to cell size metrics
  power: reset: add PSCR NVMEM Driver for Storing Power State Change
    Reasons
  regulator: set Power State Change Reason before
    hw_protection_shutdown()
  thermal: core: set Power State Change Reason before
    hw_protection_shutdown()

 .../bindings/power/reset/pscr-nvmem.yaml      |  54 ++++
 .../devicetree/bindings/power/reset/pscr.yaml |  51 ++++
 drivers/nvmem/core.c                          |  25 ++
 drivers/power/reset/Kconfig                   |  30 ++
 drivers/power/reset/Makefile                  |   2 +
 drivers/power/reset/pscr-nvmem.c              | 100 +++++++
 drivers/power/reset/pscr.c                    | 259 ++++++++++++++++++
 drivers/regulator/core.c                      |   6 +
 drivers/thermal/thermal_core.c                |   2 +
 include/linux/nvmem-consumer.h                |   7 +
 include/linux/pscr.h                          |  40 +++
 11 files changed, 576 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscr-nvmem.yaml
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscr.yaml
 create mode 100644 drivers/power/reset/pscr-nvmem.c
 create mode 100644 drivers/power/reset/pscr.c
 create mode 100644 include/linux/pscr.h

-- 
2.39.2


