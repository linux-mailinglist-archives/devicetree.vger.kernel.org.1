Return-Path: <devicetree+bounces-254510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C384D18AAA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:18:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 937F93004E24
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:18:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90CC738F242;
	Tue, 13 Jan 2026 12:18:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CE938F22E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 12:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768306726; cv=none; b=V209TL/sPigNHbHoQD3+yRcYRLNeDIVyQgTStkrsGw/lEzOh825KbFjkoVGOrU5XlNaSXvop3+dgGtJC8nMkXrbgrbwyqSns71A/ChDGINQf6dVdIcPY6aC0UmJCRiobeABB1FUgg50yIp4i01vKsu8dZFyz2xCvymH7NGpcwSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768306726; c=relaxed/simple;
	bh=Osj8/exvgFH3xA7ZgwU+VsdhAl6YJWLAeb5RkUjmNs0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=o15VEVy1Ma9+ENjoE1mA16OYYlWUCbXZXcwLDQpw9Xi0JgFIE8tJ9iXzJN/c/0Tmkl9XAuF7NSoX/VI5RIOvnpd43U56QUkAcT0gX92GnCIFM0KAC70i52BfauFQKzRiCmXNRSTjlV07XBM4I8xNCx+20wf2308A+r0asTQuC+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vfdM8-0000vB-QF; Tue, 13 Jan 2026 13:18:40 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH 0/2] Add EDT ET057023UDBA Panel Support
Date: Tue, 13 Jan 2026 13:18:36 +0100
Message-Id: <20260113-v6-18-topic-panel-simple-et057023udba-v1-0-54ad218ee52b@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABw4ZmkC/x3NQQrCMBBG4auUWTuQSWwUryJdJO2vDtQ0JLUIp
 Xc3uPw27+1UURSVbt1OBZtWXVKDnDoaXyE9wTo1kzXWGxHHm2e58rpkHTmHhJmrvvMMxmr6i7H
 uM8XAPQAxMbqzB7VWLnjo9/+5D8fxA//mMiZ3AAAA
X-Change-ID: 20260113-v6-18-topic-panel-simple-et057023udba-5eee10bb346e
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Hi,

this adds the support for the above mentioned display from EDT.

Regards,
  Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Marco Felsch (2):
      dt-bindings: display: simple: add EDT ET057023UDBA panel
      drm/panel: simple: add EDT ET057023UDBA panel

 .../bindings/display/panel/panel-simple.yaml       |  2 ++
 drivers/gpu/drm/panel/panel-simple.c               | 32 ++++++++++++++++++++++
 2 files changed, 34 insertions(+)
---
base-commit: 7d0a66e4bb9081d75c82ec4957c50034cb0ea449
change-id: 20260113-v6-18-topic-panel-simple-et057023udba-5eee10bb346e

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


