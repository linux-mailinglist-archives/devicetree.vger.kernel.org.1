Return-Path: <devicetree+bounces-277721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEYeIJndu2lXpQIAu9opvQ
	(envelope-from <devicetree+bounces-277721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:27:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EC0F92CA462
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 12:27:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C47593069609
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 11:25:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC02D3BC678;
	Thu, 19 Mar 2026 11:25:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from inva020.nxp.com (inva020.nxp.com [92.121.34.13])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7AA36EA8F;
	Thu, 19 Mar 2026 11:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=92.121.34.13
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773919501; cv=none; b=Xnu9JAbDeijRirnJO1hgT+UgkXDB9mnk76wpD8gLeV3NjJG5rTfksIpwzCO7yhREDZDQMEsI0u+PxBXS8yE2ODbCadOGBV5ma2VFTtOC/+1UeVEzkh6nDG0vnBmhi3HaEz0J4kUdpTRjFA4fTAhUNO5mm0FAqT0iAS2h/aQ2stI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773919501; c=relaxed/simple;
	bh=Nfq5pK9pyK4G8NPUhxwYS2O5ETYUqVQ0kUIs4h8cftU=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fdJIAIV5mQfs9/oHta8NLjz8gArcp1ADQHXFrcfb1qDnW46AkEGXWgWsIkE/DV5pBuz0HE+i+Ph0/ujlJGPJh3FAdhwtHYujLX1KTJyW+rmeE3+dMcl1wtzXVW4Ga9LIPLF6qjznjGzsHdivMF9uYZJwC0vqE0BGhShQqh8oMrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com; spf=pass smtp.mailfrom=nxp.com; arc=none smtp.client-ip=92.121.34.13
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=nxp.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nxp.com
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 371931A2722;
	Thu, 19 Mar 2026 12:24:53 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 008B71A164A;
	Thu, 19 Mar 2026 12:24:53 +0100 (CET)
Received: from lsv03900.swis.in-blr01.nxp.com (lsv03900.swis.in-blr01.nxp.com [10.12.177.15])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 07C7E18000A4;
	Thu, 19 Mar 2026 19:24:51 +0800 (+08)
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
	lakshay.piplani@nxp.com
Subject: [PATCH v7 0/7] Add support for NXP P3H2x4x I3C hub driver
Date: Thu, 19 Mar 2026 16:54:34 +0530
Message-Id: <20260319112441.3888957-1-lakshay.piplani@nxp.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[nxp.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-277721-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	FREEMAIL_TO(0.00)[vger.kernel.org,lists.infradead.org,bootlin.com,kernel.org,nxp.com,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[lakshay.piplani@nxp.com,devicetree@vger.kernel.org];
	NEURAL_SPAM(0.00)[0.329];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[15];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:mid]
X-Rspamd-Queue-Id: EC0F92CA462
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

 .../devicetree/bindings/i3c/nxp,p3h2840.yaml  | 303 ++++++++++++
 MAINTAINERS                                   |  15 +
 drivers/i3c/Kconfig                           |  16 +
 drivers/i3c/Makefile                          |   2 +
 drivers/i3c/hub.c                             | 460 ++++++++++++++++++
 drivers/i3c/hub/Kconfig                       |  11 +
 drivers/i3c/hub/Makefile                      |   4 +
 drivers/i3c/hub/p3h2840_i3c_hub.h             | 334 +++++++++++++
 drivers/i3c/hub/p3h2840_i3c_hub_common.c      | 349 +++++++++++++
 drivers/i3c/hub/p3h2840_i3c_hub_i3c.c         | 132 +++++
 drivers/i3c/hub/p3h2840_i3c_hub_smbus.c       | 422 ++++++++++++++++
 drivers/i3c/master.c                          | 173 ++++++-
 drivers/mfd/Kconfig                           |  13 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/p3h2840.c                         | 125 +++++
 drivers/regulator/Kconfig                     |  10 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/p3h2840_i3c_hub_regulator.c | 219 +++++++++
 include/linux/i3c/device.h                    |   1 +
 include/linux/i3c/hub.h                       | 107 ++++
 include/linux/i3c/master.h                    |  10 +
 include/linux/mfd/p3h2840.h                   |  27 +
 22 files changed, 2733 insertions(+), 2 deletions(-)
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


