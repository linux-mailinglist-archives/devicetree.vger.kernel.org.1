Return-Path: <devicetree+bounces-288649-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKvgABcI5mkjqwEAu9opvQ
	(envelope-from <devicetree+bounces-288649-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:03:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EBA429BE3
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 13:03:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 03596307F9F4
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 11:02:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B7A39C00E;
	Mon, 20 Apr 2026 11:02:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138922D7DDD;
	Mon, 20 Apr 2026 11:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776682924; cv=none; b=ppTPEme/nZjFgXPH2sYtIqr3GONcBAI15BAdt+O6P1UXpGbfLgC9H0I1CoCIBVsbYk2pxEHwE3Zd+sD6EgMhfxVhqocMTBpNIeSEFZxJpHF9KkTLfkJZ3LprQWe9TqTJv4dI/ZSTy1Lao4tR8YBrggDzKLJuH1KuSZtxthtnTkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776682924; c=relaxed/simple;
	bh=XqPpNupQxn6leCs08F8vJiE1V+uAQ22qZJopv5VObNw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=of0ShcCQ7ODdn5+BUM0UDanXYzKscSptrL7JoA7XyrWeGV6J73Mwsh3LcmXOq/5zHRZJY6izCBvNpNQWUYdTvR/fmTa40FLW+rZKpjcOt/UcIYmtlYZ2wR6esL2mdiZDmDvDs9EqY6xUOo1by9exdjMPrskN79UDIQqU/pZI0RQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A5E2E1A0334;
	Mon, 20 Apr 2026 12:52:38 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 6E38B1A0308;
	Mon, 20 Apr 2026 12:52:38 +0200 (CEST)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 1EFFC1800257;
	Mon, 20 Apr 2026 18:52:37 +0800 (+08)
From: Lakshay Piplani <lakshay.piplani@nxp.com>
To: linux-kernel@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	alexandre.belloni@bootlin.com,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	broonie@kernel.org,
	lee@kernel.org,
	Frank.Li@nxp.com,
	lgirdwood@gmail.com
Cc: vikash.bansal@nxp.com,
	priyanka.jain@nxp.com,
	aman.kumarpandey@nxp.com,
	Lakshay Piplani <lakshay.piplani@nxp.com>
Subject: [PATCH v9 0/7] Add support for NXP P3H2x4x I3C hub driver
Date: Mon, 20 Apr 2026 16:22:15 +0530
Message-Id: <20260420105222.1562243-1-lakshay.piplani@nxp.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP
X-Spamd-Result: default: False [1.64 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-288649-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	NEURAL_SPAM(0.00)[0.455];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 85EBA429BE3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds a driver for the NXP P3H2x4x family of multiport I3C hub
devices.
 
This is an MFD driver integrating I3C hub and on-die regulators.
 
The series introduces:
- Core I3C master enhancements required for hub support
- Generic I3C hub framework
- MFD and regulator drivers for P3H2x4x
- P3H2x4x I3C hub driver built on top of the generic layer

Changes in v9:
- Renamed macros to follow consistent uppercase naming conventions
- Made REGMAP selects in the P3H2X4X MFD Kconfig conditional, to avoid I3C/I2C dependency issues
- Referenced i3c.yaml and i2c-controller.yaml for child bus nodes
- Dropped unnecessary #address-cells and #size-cells from child nodes
- Added CONFIG_I2C_SLAVE guards where necessary to avoid build errors when I2C slave support is disabled
- Link to v8: https://lore.kernel.org/linux-i3c/20260323062737.886728-1-lakshay.piplani@nxp.com/T/#u

Changes in v8:
- Add compatible in i3c example
- Link to v7: https://lore.kernel.org/linux-i3c/20260319112441.3888957-1-lakshay.piplani@nxp.com/T/#u

Changes in v7:
- Fix kernel-doc warnings across I3C core and hub code
- Rework DT binding schema and examples to pass dt_binding_check
- Update MFD Kconfig to use I3C_OR_I2C
- Convert CONFIG_I3C_HUB to tristate
- Remove unnecessary CONFIG_I2C_SLAVE guards
- Replace custom helpers with find_closest()
- Use devm_regulator_get_enable_optional()
- Link to v6: https://lore.kernel.org/linux-i3c/64c5070c-aa9e-427a-933e-91e168f0510c@kernel.org/T/#u

Changes in v6:
- Update DT binding with vendor-prefixed properties
- Add generic I3C hub support
- Remove generic code from P3H2x4x driver
- Link to v5: https://lore.kernel.org/linux-i3c/20260206120121.856471-1-aman.kumarpandey@nxp.com/T/#u

Changes in v5:
- Update supply naming and descriptions
- Improve MFD Kconfig/Makefile ordering
- Link to v4: https://lore.kernel.org/linux-i3c/20260113114529.1692213-2-aman.kumarpandey@nxp.com/T/#u

Changes in v4:
- Split driver into MFD, regulator and I3C hub parts
- Update I3C master for hub support
- Fix DT binding issues
- Link to v3: https://lore.kernel.org/linux-i3c/20250811-bittern-of-abstract-prestige-aaeda9@kuoka/T/#u

Changes in v3:
- Add MFD support for hub and regulators
- Add regulator integration
- Link to v2: https://lore.kernel.org/linux-i3c/17145d2f-5d07-4939-8381-74e27cde303c@kernel.org/T/#u

Changes in v2:
- Fix DT binding warnings
- Refine DT parsing logic
- Link to v1: https://lore.kernel.org/linux-i3c/822d6dca-b2c6-4439-ade5-219620ebc435@kernel.org/T/#u

Aman Kumar Pandey (6):
  i3c: master: Expose the APIs to support I3C hub
  i3c: master: Add the APIs to support I3C hub
  dt-bindings: i3c: Add NXP P3H2x4x i3c-hub support
  mfd: p3h2x4x: Add driver for NXP P3H2x4x i3c hub and on-die regulator
  regulator: p3h2x4x: Add driver for on-die regulators in NXP P3H2x4x
    i3c hub
  i3c: hub: p3h2x4x: Add support for NXP P3H2x4x I3C hub functionality

Lakshay Piplani (1):
  i3c: hub: Add support for the I3C interface in the I3C hub

 .../devicetree/bindings/i3c/nxp,p3h2840.yaml  | 291 +++++++++++
 MAINTAINERS                                   |  15 +
 drivers/i3c/Kconfig                           |  16 +
 drivers/i3c/Makefile                          |   2 +
 drivers/i3c/hub.c                             | 460 ++++++++++++++++++
 drivers/i3c/hub/Kconfig                       |  11 +
 drivers/i3c/hub/Makefile                      |   4 +
 drivers/i3c/hub/p3h2840_i3c_hub.h             | 334 +++++++++++++
 drivers/i3c/hub/p3h2840_i3c_hub_common.c      | 352 ++++++++++++++
 drivers/i3c/hub/p3h2840_i3c_hub_i3c.c         | 132 +++++
 drivers/i3c/hub/p3h2840_i3c_hub_smbus.c       | 426 ++++++++++++++++
 drivers/i3c/master.c                          | 173 ++++++-
 drivers/mfd/Kconfig                           |  13 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/p3h2840.c                         | 124 +++++
 drivers/regulator/Kconfig                     |  10 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/p3h2840_i3c_hub_regulator.c | 218 +++++++++
 include/linux/i3c/device.h                    |   1 +
 include/linux/i3c/hub.h                       | 107 ++++
 include/linux/i3c/master.h                    |  10 +
 include/linux/mfd/p3h2840.h                   |  27 +
 22 files changed, 2726 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i3c/nxp,p3h2840.yaml
 create mode 100644 drivers/i3c/hub.c
 create mode 100644 drivers/i3c/hub/Kconfig
 create mode 100644 drivers/i3c/hub/Makefile
 create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub.h
 create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_common.c
 create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_i3c.c
 create mode 100644 drivers/i3c/hub/p3h2840_i3c_hub_smbus.c
 create mode 100644 drivers/mfd/p3h2840.c
 create mode 100644 drivers/regulator/p3h2840_i3c_hub_regulator.c
 create mode 100644 include/linux/i3c/hub.h
 create mode 100644 include/linux/mfd/p3h2840.h

-- 
2.25.1


