Return-Path: <devicetree+bounces-295662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QJReNvsFAmpZnQEAu9opvQ
	(envelope-from <devicetree+bounces-295662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:38:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8B2512586
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 18:38:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BA2C4300F29F
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 15:58:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 844144218AE;
	Mon, 11 May 2026 15:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="jYe5/IyV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75603D34A8;
	Mon, 11 May 2026 15:58:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778515109; cv=none; b=A6ulPZxUn4ctpkuuSSgO6ioVA7GZaQ/Ia4sUBob1jjFmnN1q8+u9HGROOROQVWGUOW8QJsgxOI2UvIaygKJ4L+8UtDEmyD5lFkGayi+DY35yQHRJDmj8Hp4PZFPY9lVe6YBofSXycvhAMcLUunKElWDmaatEaA1Jprj8XYG6QyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778515109; c=relaxed/simple;
	bh=faV48x66qT9Y451ucIdOMrXgpUrUv733nxGN+U0gWIA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=jkmU8aPdPVhZZkVGBDqwgPLaCc8Q8Hqwr3FpXlpH5T1FZuefK8tHgF7J0AkGxdRamXULE613VOIYEz60f2PKaJvAR/g8NSS1ea1rbnBoqz18SnK8FHbusc9vE+d/3whyFk47cIKMtXMuA5kiBWdqrGdrkSHJEp/ZQnhHaTDKuEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=jYe5/IyV; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 6649E1A1DD5;
	Mon, 11 May 2026 15:58:24 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3184760646;
	Mon, 11 May 2026 15:58:24 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 0FFCD11AF9F17;
	Mon, 11 May 2026 17:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1778515102; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=6PvZiJbdFgg6CfVXI3ZnA/W5wMYdblVvpzZVyQN69HA=;
	b=jYe5/IyV4+QQoPJhoH7kASCQK5hWPxqcsQRvqBqCShiZy80aw0NHrK/bRUrBiV5WbDCiry
	/8JLDvNB6TNUw2z1KYOuG43u+dnPBL+j6KyU20SWwuuGIoIL5/ZMss7RWIzfc5fEfQogdg
	91P65zTkGl/3A8bCLa9FlGNWKPYfQa/+wZyNiB1SHEXeKDXurNSCCJMEgXABD+4FfSoyfH
	s0DXPDs0iJXUUlljvxnUT2JX0EVBicPQHfIgDilYiACGtiqQkfba7QGiIL/DJViqR86wdY
	ZPlO2RSX+fQp9jT8ff+AbeAyzZPKUEqiD2ypxBO1MjuQe4+VmR9cAexa5Vtf8Q==
From: Herve Codina <herve.codina@bootlin.com>
To: Andrew Lunn <andrew@lunn.ch>,
	Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Kalle Niemi <kaleposti@gmail.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Danilo Krummrich <dakr@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Mark Brown <broonie@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Daniel Scally <djrscally@gmail.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Len Brown <lenb@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>
Cc: Wolfram Sang <wsa@kernel.org>,
	driver-core@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-acpi@vger.kernel.org,
	Allan Nielsen <allan.nielsen@microchip.com>,
	Horatiu Vultur <horatiu.vultur@microchip.com>,
	Daniel Machon <daniel.machon@microchip.com>,
	Steen Hegelund <steen.hegelund@microchip.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Herve Codina <herve.codina@bootlin.com>
Subject: [PATCH v7 0/3] lan966x pci device: Add support for SFPs, core part
Date: Mon, 11 May 2026 17:57:47 +0200
Message-ID: <20260511155755.34428-1-herve.codina@bootlin.com>
X-Mailer: git-send-email 2.54.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3
X-Rspamd-Queue-Id: DB8B2512586
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295662-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lunn.ch,kernel.org,glider.be,gmail.com,linuxfoundation.org,nxp.com,pengutronix.de,sang-engineering.com,linux.intel.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[herve.codina@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:mid,bootlin.com:dkim]
X-Rspamd-Action: no action

Hi,

Previously, I sent a big picture series adding support for SFP ports
available on the LAN966x PCI device [0].

In this series patches touch several parts and sub-system in the kernel.
Reviews have be done and it makes sense to split the series and send
parts separately.

This current series is the extraction of patches related to driver core
subsystem. It fixes devlink issues when a device-tree overlay is applied
and avoid a warning when a device is removed.

It has to be seen as a continuation of the big picture series but
related to this specific core part.

Patches 1 and 2 fixes fw_devlink when it is used with overlay. Those
patches were previously sent by Saravana [1].

I rebased them on top of v7.1-rc1 and I added a call to
driver_deferred_probe_trigger() in Saravana's patch (patch 2) to ensure
that probes are retried after the modification performed on the dangling
consumers. This allows to fix issues reported by Matti and Geert [2]
with the previous iteration patches.

Patch 3 avoids a warning on device removal.

Those 3 patches seem ready to land and so having them extracted in this
current series will help having them applied.

[0] https://lore.kernel.org/all/20260325143555.451852-1-herve.codina@bootlin.com/
[1] https://lore.kernel.org/lkml/20240411235623.1260061-1-saravanak@google.com/
[2] https://lore.kernel.org/all/072dde7c-a53c-4525-83ac-57ea38edc0b5@gmail.com/

Best regards,
Hervé

Changes:

v6 -> v7

  Rebase on top v7.1-rc1

  - Patch 1
    Fix conflict due to commit f72e77c33e4b ("device property: Make
    modifications of fwnode "flags" thread safe")
    Add 'Acked-by: Rob Herring'

  - Patch 2
    Use fwnode_test_flag() to test fwnode flags value
    Add 'Acked-by: Rob Herring'

  - Patche 3
    No changes

Older iterations:
  Patches 1 to 3 in the big picture series
  https://lore.kernel.org/all/20260325143555.451852-1-herve.codina@bootlin.com/

Herve Codina (1):
  driver core: Avoid warning when removing a device while its supplier
    is unbinding

Saravana Kannan (2):
  Revert "treewide: Fix probing of devices in DT overlays"
  of: dynamic: Fix overlayed devices not probing because of fw_devlink

 drivers/base/core.c       | 86 ++++++++++++++++++++++++++++++++++-----
 drivers/bus/imx-weim.c    |  6 ---
 drivers/i2c/i2c-core-of.c |  5 ---
 drivers/of/dynamic.c      |  1 -
 drivers/of/overlay.c      | 15 +++++++
 drivers/of/platform.c     |  5 ---
 drivers/spi/spi.c         |  5 ---
 include/linux/fwnode.h    |  1 +
 8 files changed, 92 insertions(+), 32 deletions(-)

-- 
2.54.0


