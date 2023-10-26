Return-Path: <devicetree+bounces-12207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B67967D8521
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 16:48:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6FB51C20F12
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 14:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80E672EB0B;
	Thu, 26 Oct 2023 14:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF048829
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 14:48:43 +0000 (UTC)
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46F341B8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 07:48:42 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1es-0005Zo-2A; Thu, 26 Oct 2023 16:48:26 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-004Qq2-HJ; Thu, 26 Oct 2023 16:48:25 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qw1er-00H3XP-1X;
	Thu, 26 Oct 2023 16:48:25 +0200
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
Subject: [PATCH v4 0/5] regulator: add under-voltage support (part 2)
Date: Thu, 26 Oct 2023 16:48:19 +0200
Message-Id: <20231026144824.4065145-1-o.rempel@pengutronix.de>
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

changes v4:
- rebase against latest regulator/for-next
- drop mainlined patches
- rename regulator-uv-survival-time-ms to regulator-uv-less-critical-window-ms
  to fit it to actual use case
- avoid some of words in commit messages
- us switch case to parse critical events

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

Oleksij Rempel (5):
  regulator: dt-bindings: Add system-critical-regulator property
  regulator: Introduce handling for system-critical under-voltage events
  regulator: dt-bindings: Allow system-critical marking for
    fixed-regulator
  regulator: dt-bindings: Add 'regulator-uv-less-critical-window-ms'
    property
  regulator: Implement uv_survival_time for handling under-voltage
    events

 .../bindings/regulator/fixed-regulator.yaml   |  2 +
 .../bindings/regulator/regulator.yaml         | 13 +++++++
 drivers/regulator/core.c                      | 38 +++++++++++++++++++
 drivers/regulator/of_regulator.c              |  9 +++++
 include/linux/regulator/machine.h             | 18 +++++++++
 5 files changed, 80 insertions(+)

-- 
2.39.2


