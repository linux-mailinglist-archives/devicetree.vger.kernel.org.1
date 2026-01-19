Return-Path: <devicetree+bounces-256891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEA9D3AAA2
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 14:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ABA4930A2108
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:44:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EFC136BCE7;
	Mon, 19 Jan 2026 13:44:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EA8F36B075
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768830296; cv=none; b=cAehOs+qdei7xEDH80fiCPJhf2oiCY5uXths3wGUKfp5ie5zOy6jEiFJaRUXjn8e3UfGYMkP9Rget7Mgqla4lpWZYZ4yZx5pr67Y+aj21Sba6Fs/CtHkYlexK7amui44MgZsmpn3X+ZeB7ksPrKEnZrGOUPrqmUrq44SAMMsEzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768830296; c=relaxed/simple;
	bh=dO8D8xlnIocuFL7FCxCFLq32BRstzZBIMEVIDdeHm4c=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=lUAtIUIXlYY/Qvhy6XMYRynPuQ5KvRXGyJwqS0eo63hIFPPixp8dbFuDdgydJQQ+XHKjbgjMVTLLy0ErY21rGtLkA3GMLiNBZ26A3XaLufztmw7vjF89OMP9mi8Aqb8dwhtzPOPT6z2+38UpKYnLbu/We3MEG8u8CroThRcCUvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vhpYk-0006Dl-8g; Mon, 19 Jan 2026 14:44:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v2 0/2] Add EDT ET057023UDBA Panel Support
Date: Mon, 19 Jan 2026 14:44:41 +0100
Message-Id: <20260119-v6-18-topic-panel-simple-et057023udba-v2-0-3c73f0c9d87a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEo1bmkC/5XNQQ6DIBCF4asY1p0GUKzpqvdoXIBMdRKLBJDYG
 O9e6g26/N/ifTuLGAgju1c7C5gp0uJKyEvFhkm7EYFsaSa5bLkQNeQWRAdp8TSA1w5niPT2MwI
 mrm5c1qs1GhQiCm5M3bTIypcP+KLtdJ596YliWsLnZLP4rf8KWQAH1WgrRYeopHl4dOOawuJou
 1pk/XEcXwQT2nffAAAA
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
Changes in v2:
- Link to v1: https://lore.kernel.org/r/20260113-v6-18-topic-panel-simple-et057023udba-v1-0-54ad218ee52b@pengutronix.de
- add r-b (Neil)
- fix order (Krzysztof)

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


