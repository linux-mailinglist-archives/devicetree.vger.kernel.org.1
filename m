Return-Path: <devicetree+bounces-270423-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cHRRJF25pmk7TAAAu9opvQ
	(envelope-from <devicetree+bounces-270423-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:35:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1751ECB5C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:35:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8073C301F5E4
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:34:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B88AD39023C;
	Tue,  3 Mar 2026 10:34:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5212F39D6FA
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:34:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772534090; cv=none; b=lybw2VzHKwrmSfS99i3V/8/OKwtnAw5qFXAyKyFpe1YoA4+XCXgD1lLccNkyYUmvcPg2Tzv7H5An6pX4MXR++xuzHZ2TtK7+FHa8tArKMxlkMWUkDo0HkBtDZsfWNUFxcQIUr43qe1pOI4gOGZowFhP1fV2fl9MSrabRU1u5DRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772534090; c=relaxed/simple;
	bh=TSjmqeKznKj6mXcFj0YDuiA/IayMs1fvqyKSlXq2Ml4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oVEx7bfqi7lZ0VqmTBL+PSoXMCMFYnZq4R/W+j0CiWVeQuPnZD7fFjQSGsZdGlNzOjmjJpgJf68+5zWnN7qxZUeyCByGdY4mZGkoOLj3KxIFlx6rK9WiE33FNgNpacX/EM7d+1SUZBdpDnI9yNTeNa2cZ05gsJ3CADQapv1QDgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vxN5C-0004MP-NF; Tue, 03 Mar 2026 11:34:30 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v11 0/3] Add i.MX91/93 parallel display support
Date: Tue, 03 Mar 2026 11:34:25 +0100
Message-Id: <20260303-v6-18-topic-imx93-parallel-display-v11-0-1b03733c8461@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADG5pmkC/5XQTWrDMBAF4KsEraui0a+dVe9RupDH40Tg2kJyj
 UPw3asYSgP1wl3OY/jeMHeWKQXK7Hy6s0RzyGEcygDwcmJ49cOFeGhLwKSQBqQAPlsOFZ/GGJC
 Hz6VWPPrk+5563oYce3/jtelqqXTTWURWoJioC8vW8v5R5mvI05huW+lsH+m/+LIiuGuEsQRkG
 qC3SMPla0rjEJbXltijY3bPrjzkuuJKRFLQWm1FtetWP64VAOqQWxVX+waxRe2UN7tu/eyaQ26
 93WuEAdINaL3rgviF1cFHgCiyVboj6VyFzv+R13X9BhQiPkA8AgAA
X-Change-ID: 20251201-v6-18-topic-imx93-parallel-display-95f9234bf6cc
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
 Liu Ying <victor.liu@nxp.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 luca.ceresoli@bootlin.com, Frank Li <Frank.Li@nxp.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: 9B1751ECB5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,bootlin.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270423-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.837];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,pengutronix.de:mid,pengutronix.de:email]
X-Rspamd-Action: no action

Hi,

this patchset adds the driver, dt-bindings and dt integration required
to drive a parallel display on the i.MX93.

Since the i.MX91 register layout equals the one from the i.MX93, I added
the support for both but tested only the i.MX93 case.

This patchset depends on:
 - https://lore.kernel.org/all/20251201-v6-18-topic-imx93-blkctrl-v1-0-b57a72e60105@pengutronix.de/

@Conor Dooley
I dropped your r-b tag since I added the 'bus-width' property.

Regards,
  Marco

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changes in v11:
- Link to v10: https://lore.kernel.org/r/20260302-v6-18-topic-imx93-parallel-display-v10-0-634fe2778c7a@pengutronix.de
- Fix double space (Liu)
- Drop 'const' (Liu)
- Drop GFP_KERNEL from kmalloc_obj() (Liu)
- Add r-b (Luca)

Changes in v10:
- Link to v9: https://lore.kernel.org/r/20260115-v6-18-topic-imx93-parallel-display-v9-0-2c5051e4b144@pengutronix.de
- Add MEDIA_BUS_FMT_FIXED (Liu)
- Drop next_bridge from driver struct and use bridge.next_bridge (Liu)
- Drop linux/of_address.h include (Liu)
- imx93-pdfc: drop bridge.driver_private usage++ (Liu)
- Make use of kmalloc_obj() (Liu)

Changes in v9:
- Link to v8: https://lore.kernel.org/r/20260113-v6-18-topic-imx93-parallel-display-v8-0-4abccdc473a5@pengutronix.de
- dt-bindings: drop unncessary changes (Frank)
- imx93-pdfc: drop bridge.driver_private usage (Luca)
- Kconfig: Adapt Kconfig symbol and prompt (Luca)

Changes in v8:
- Link to v7: https://lore.kernel.org/r/20251202-v6-18-topic-imx93-parallel-display-v7-0-2cce31d64608@pengutronix.de
- dt-bindings: add nxp,imx91-pdfc compatible (Liu)
- dt-bindings: use video-interfaces.yaml# (Liu)
- dt-bindings: s/data lanes/data lines/ (Liu)
- dt-bindings: drop 'reg' poperty
- dt-bindings: drop #address-cells, #size-cells
- imx93-pdfc: drop drm/drm_print.h include (Liu)
- imx93-pdfc: s/exist/exists/ (Liu)
- imx93-pdfc: drop MEDIA_BUS_FMT_FIXED from imx93_pdfc_bus_output_fmts
- imx93-pdfc: imx93_pdfc_bus_output_fmt_supported: make fmt const
- imx93-pdfc: Rework input-fmt selection to always fallback to a sane
              default.
- imx93-pdfc: imx93_pdfc_bridge_atomic_check: make use of
	      imx93_pdfc_bus_output_fmt_supported() 
- imx93-pdfc: drop 'reg' dt-property usage
- imx93-pdfc: imx93_pdfc_bridge_probe: pass -1 for endpoint reg value (Liu)

Changes in v7:
- Link to v6: https://lore.kernel.org/r/20251201-v6-18-topic-imx93-parallel-display-v6-0-7b056e1e5b1e@pengutronix.de
- Add missing bits.h and bitfield.h headers (lkp)

Changes in v6:
- Link to v5: https://lore.kernel.org/all/20250304082434.834031-1-victor.liu@nxp.com/
- Add bus-width support
- rebase onto v6.18-rc1
- add review feedback (Alexander)
- driver license "GPL v2" -> "GPL" (checkpatch)
- make use of reg of-property
- fix to short Kconfig description (checkpath)
- add OF integration

---
Liu Ying (2):
      dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC subnode to schema and example
      drm/bridge: imx: Add i.MX93 parallel display format configuration support

Marco Felsch (1):
      arm64: dts: imx93: Add parallel display output nodes

 .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml |  78 +++++++
 arch/arm64/boot/dts/freescale/imx91_93_common.dtsi |  54 +++++
 arch/arm64/boot/dts/freescale/imx93.dtsi           |  12 ++
 drivers/gpu/drm/bridge/imx/Kconfig                 |  11 +
 drivers/gpu/drm/bridge/imx/Makefile                |   1 +
 drivers/gpu/drm/bridge/imx/imx93-pdfc.c            | 225 +++++++++++++++++++++
 6 files changed, 381 insertions(+)
---
base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
change-id: 20251201-v6-18-topic-imx93-parallel-display-95f9234bf6cc

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


