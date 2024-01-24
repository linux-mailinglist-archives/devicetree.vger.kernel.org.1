Return-Path: <devicetree+bounces-34682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7BD883A99C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 13:24:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89AF41F292B9
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 12:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02FD2657D0;
	Wed, 24 Jan 2024 12:22:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC80B64CDF
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 12:22:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706098951; cv=none; b=oHNcqBo2M8fkZlHvqZctIgF7SsbzBA2Nfj++BtzI0Epl04onV0A2CE7oBshejCgI3ZrlfOqLDvQJOlgxltvoq/aBFFscB+g3Wbg0+m4vVo6BDKB3ni7FLr6mAGEFyDrhR3zcJWw6qyBuWtAzvn5qFNJYQhT9pH2Td3UknOLTwvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706098951; c=relaxed/simple;
	bh=FYcpkMKnrRzDedyJnvEJ1/ALEy2O6Va6jd02INm4+pI=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=q1N+m88dYX2M1NgKZ8rQoo6Ye+gA8x6yTZekNC61N/OEe/nHkPN/91vegXOQoJ7dHFkAb/wZkqm/lozUMV+GnCzDCk8xnuMGv3Ze+rM464+kQEiH+Cc2osK/ikwdAmvVMuldLD2JKIXqDMl0VjT2RTLkrH1FlpcgZ6DjkGFeHig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGd-0007o4-1C; Wed, 24 Jan 2024 13:22:07 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGb-0023Za-UQ; Wed, 24 Jan 2024 13:22:05 +0100
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1rScGb-00340k-2p;
	Wed, 24 Jan 2024 13:22:05 +0100
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
Subject: [RFC PATCH v1 0/8] Introduction of PSCR Framework and Related Components
Date: Wed, 24 Jan 2024 13:21:56 +0100
Message-Id: <20240124122204.730370-1-o.rempel@pengutronix.de>
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

changes v2:
- rename the framework from PSCR to PSCRR (last R is for Recorder)
- extend power on reason header and use it to show detected reason on
  system start and in sysfs.
- remove "unknow" reason
- rebase on top of v6.8-rc1
- yaml fixes
- zero reason state on boot

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

Oleksij Rempel (8):
  power: Extend power_on_reason.h for upcoming PSCRR framework
  dt-bindings: power: reset: add generic PSCRR binding trackers
  power: reset: Introduce PSCR Recording Framework for Non-Volatile
    Storage
  dt-bindings: power: reset: add bindings for NVMEM hardware storing
    PSCR Data
  nvmem: provide consumer access to cell size metrics
  power: reset: add PSCR NVMEM Driver for Recording Power State Change
    Reasons
  regulator: set Power State Change Reason before
    hw_protection_shutdown()
  thermal: core: Record PSCR before hw_protection_shutdown()

 .../bindings/power/reset/pscrr-nvmem.yaml     |  53 +++
 .../bindings/power/reset/pscrr.yaml           |  44 +++
 drivers/nvmem/core.c                          |  25 ++
 drivers/power/reset/Kconfig                   |  30 ++
 drivers/power/reset/Makefile                  |   2 +
 drivers/power/reset/pscrr-nvmem.c             | 121 ++++++
 drivers/power/reset/pscrr.c                   | 353 ++++++++++++++++++
 drivers/regulator/core.c                      |   6 +
 drivers/thermal/thermal_core.c                |   3 +
 include/linux/nvmem-consumer.h                |   7 +
 include/linux/power/power_on_reason.h         |   3 +
 include/linux/pscrr.h                         |  73 ++++
 12 files changed, 720 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscrr-nvmem.yaml
 create mode 100644 Documentation/devicetree/bindings/power/reset/pscrr.yaml
 create mode 100644 drivers/power/reset/pscrr-nvmem.c
 create mode 100644 drivers/power/reset/pscrr.c
 create mode 100644 include/linux/pscrr.h

-- 
2.39.2


