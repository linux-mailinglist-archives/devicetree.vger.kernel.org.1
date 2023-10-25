Return-Path: <devicetree+bounces-11688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 546297D6596
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:46:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7B0AC1C20DE1
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C5C1D6AC;
	Wed, 25 Oct 2023 08:46:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB9171CFBF
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:46:29 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6755F116
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:46:28 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWq-0002C9-9l; Wed, 25 Oct 2023 10:46:16 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-0048WY-9N; Wed, 25 Oct 2023 10:46:15 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qvZWp-00CySG-0k;
	Wed, 25 Oct 2023 10:46:15 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/7] regulator: add under-voltage support
Date: Wed, 25 Oct 2023 10:46:07 +0200
Message-Id: <20231025084614.3092295-1-o.rempel@pengutronix.de>
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

This series add under-voltage and emergency shutdown for system critical
regulators

changes v3:
- add system-critical-regulator property
- add regulator-uv-survival-time-ms property
- implement default policy for system critical uv events

changes v2:
- drop event forwarding support
- use emergency shutdown directly instead of generating under-voltage
  error event.
- fix devicetree patch
- drop interrupt-names support


Oleksij Rempel (7):
  regulator: dt-bindings: Add system-critical-regulator property
  regulator: Handle system-critical under-voltage events
  regulator: dt-bindings: fixed-regulator: Add under-voltage interrupt
    support
  regulator: dt-bindings: whitelist system-critical-regulator property
    for fixed-regulator
  regulator: fixed: add support for under-voltage IRQ
  regulator: dt-bindings: Add regulator-uv-survival-time-ms property
  regulator: Implement uv_survival_time for handling under-voltage
    events

 .../bindings/regulator/fixed-regulator.yaml   |  7 +++
 .../bindings/regulator/regulator.yaml         | 12 +++++
 drivers/regulator/core.c                      |  6 +++
 drivers/regulator/fixed.c                     | 50 +++++++++++++++++++
 drivers/regulator/of_regulator.c              |  8 +++
 include/linux/regulator/machine.h             | 12 +++++
 6 files changed, 95 insertions(+)

-- 
2.39.2


