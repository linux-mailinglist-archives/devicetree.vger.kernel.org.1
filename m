Return-Path: <devicetree+bounces-319659-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mrTLDz7nRmpRfQsAu9opvQ
	(envelope-from <devicetree+bounces-319659-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:33:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 878A96FD37E
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 00:33:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319659-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319659-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0B64302DB7C
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 22:31:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0073C4B71;
	Thu,  2 Jul 2026 22:30:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 894043B895D
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 22:30:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783031408; cv=none; b=VWTtyPFEGWdBYIOU5iRMHqUYBB2pt1o2omyySh0JssKJLYIwbu6FcU2EstdobHTVeVpw+8aYmH4vCBHMkP36cszOl3H9DNs4GM21ju/GnPv7jLKD0N/Up1trz7HZ53GO49Ip+AqZBlxpVjd+OLp48AxNrcwySoB4QMByg7OCNGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783031408; c=relaxed/simple;
	bh=vY/DrvzQ9jVXqiUEGcg1LQSeY/zjCRXQQ8dW52tLFcE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bqud8y/f4hu9Zd8uw5VbQ2sJLOnoG5DKbIqUAol/xCmiKuuDH1yYn7sZttmzOsrvfkKhUqZIYPmfp+5ZSYhkMOK5SR2B6dAyIfJVZ8bnZrs4LVTTubGB0aQc8Z4BvycNhyOBHpcq8PRjS+D19zCBjpP54zjo1tHnXoLXAqqqvIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1wfPuh-0007oz-H9; Fri, 03 Jul 2026 00:29:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Subject: [PATCH v6 0/4] Input: Add support for TouchNetix aXiom touchscreen
Date: Fri, 03 Jul 2026 00:29:24 +0200
Message-Id: <20260703-v6-10-topic-touchscreen-axiom-v6-0-1aa50ba3bc5a@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAETmRmoC/4XPwWqEQAwG4FdZ5twpyTgTnZ76HqWHccyuc6jK6
 Ipl8d0bhaWFCl4CfwJfkocaOSce1dvloTLPaUx9J4FeLiq2obuxTo1kZcBYKMHqmTSCnvohRan
 32I4xM3c6LKn/kpErCblCQFRiDJmvadn9j0/JbRqnPn/v62bcuruMiP5EnlGDJjTWG1f7Eqv3g
 bvbfcp9l5bXhtXGz+ZJOnDmlDRCBsdNLWcHAjgki1+yMnhGFkJ6CzEyU1OH4pC0T5IAgc5Iu5H
 sa/Kxku/pkHR/SDy90gl59ZYhsCGK9T9yXdcfqtVEThsCAAA=
X-Change-ID: 20240704-v6-10-topic-touchscreen-axiom-105761e81011
To: andrew.thomas@touchnetix.com, Luis Chamberlain <mcgrof@kernel.org>, 
 Russ Weight <russ.weight@linux.dev>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Kamel Bouhara <kamel.bouhara@bootlin.com>, 
 Marco Felsch <kernel@pengutronix.de>, Henrik Rydberg <rydberg@bitmath.org>, 
 Danilo Krummrich <dakr@kernel.org>, Danilo Krummrich <dakr@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-input@vger.kernel.org, kernel@pengutronix.de, 
 Marco Felsch <m.felsch@pengutronix.de>, 
 Mamta Shukla <mamta.shukla@leica-geosystems.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::28
X-SA-Exim-Mail-From: m.felsch@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:andrew.thomas@touchnetix.com,m:mcgrof@kernel.org,m:russ.weight@linux.dev,m:gregkh@linuxfoundation.org,m:rafael@kernel.org,m:akpm@linux-foundation.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:kamel.bouhara@bootlin.com,m:kernel@pengutronix.de,m:rydberg@bitmath.org,m:dakr@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-input@vger.kernel.org,m:m.felsch@pengutronix.de,m:mamta.shukla@leica-geosystems.com,m:krzk@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[touchnetix.com,kernel.org,linux.dev,linuxfoundation.org,linux-foundation.org,gmail.com,bootlin.com,pengutronix.de,bitmath.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-319659-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,pengutronix.de:email,pengutronix.de:mid,pengutronix.de:from_mime,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 878A96FD37E

Hi,

this adds the support for the TouchNetix aXiom touchcontroller family.

The following features are added:
 - I2C communication
 - Input event handling
 - Touchcontroller firmware (AXFW) updates
 - Touchcontroller config (TH2CFGBIN) updates
 - Poll or IRQ support

Many thanks for Dmitry's input on my v5. I included all changes
requested from him.

Regards,
  Marco

Changes in v7:
- Link to v6: https://lore.kernel.org/all/20260303-v6-10-topic-touchscreen-axiom-v6-0-8ac755add12b@pengutronix.de/
- Rebased on top of 7.2-rc1
- Fix U33 rev.6 usage (Mamta)
- Fix bootloader mode handling, required to disable the IRQ (Andrew)
- Fix bug in usage table population which led to a nullptr bug (Andrew)

Changes in v6:
- Link to v5: https://lore.kernel.org/r/20260111-v6-10-topic-touchscreen-axiom-v5-0-f94e0ae266cb@pengutronix.de
- Fix update POLL mode
- Fix max. input values
- Resolve some "TODO" and "Downstream" comments (Andrew)
- Add 0d, xl fw_variant (Andrew)
- Use 2sec timeout for u02 swreset (Andrew)
- Fix IRQ-runmode input-device registration after FW update
- Drop legacy ALC firmware support, since no fw sanity check could be performed
  which is bad for user experience if they provided the wrong file accidentally.
- drop BLP_PRE_MODE
- make AXIOM_U31 rev.1 required
- axiom_usage_supported: drop iter and instead use new usage_table_by_baseaddr
- axiom_axfw_fw_write: drop goto error handling
- adapt comments
- rework axiom_i2c_probe (Dmitry)
- rework axiom_power_*_device and axiom_parse_firmware (Dmitry)
- rework axiom_register_input_dev (Dmitry)
- rework axiom_register_fwl (Dmitry)
- rework axiom_cfg_fw_cancel (Dmitry)
- rework axiom_cfg_fw_write (Dmitry)
- rework axiom_verify_volatile_mem (Dmitry)
- rework axiom_write_cfg_chunk (Dmitry)
- rework axiom_cfg_fw_prepare (Dmitry)
- rework axiom_axfw_fw_* functions (Dmitry)
- rework axiom_blp_reset (Dmitry)
- rework axiom_blp_write_chunk (Dmitry)
- rework axiom_enter_bootloader_mode (Dmitry)
- rework axiom_axfw_fw_prepare (Dmitry)
- rework regmap_read/write (Dmitry)
- rework axiom_u34_rev1_process_report (Dmitry)
- rework axiom_cdu_wait_idle (Dmitry)
- rework axiom_u64_cds_enabled (Dmitry)
- rework axiom_u42_get_touchslots (Dmitry)
- rework axiom_u33_read (s/ret/error/) (Dmitry)
- rework axiom_u31_device_discover (Dmitry)
- simple s/ret/error/ (Dmitry)
- rework u04 handling (Dmitry)
- rework u02 handling (Dmitry)
- align function name accordingly (Dmitry)
- fix indentation (Dmitry)

Changes in v5:
- Link to v4: https://lore.kernel.org/r/20260106-v6-10-topic-touchscreen-axiom-v4-0-9e9b69c84926@pengutronix.de
- fix sysfs documentation description indentation and date

Changes in v4:
- Link to v3: https://lore.kernel.org/r/20250821-v6-10-topic-touchscreen-axiom-v3-0-940ccee6dba3@pengutronix.de
- rebased on top of v6.19-rc1
- collect r-b tags

Changes in v3:
- Link to v2: https://lore.kernel.org/r/20250529-v6-10-topic-touchscreen-axiom-v2-0-a5edb105a600@pengutronix.de
- firmware: fix commit message (Russ)
- dt-bindings: Add ack from Krzysztof
- dt-bindings: make use of GPIO_ACTIVE_LOW (Krzysztof)
- dt-bindings: drop 'panel: true' property (Krzysztof)
- driver: make use of sysfs_emit (Greg)
- driver: s/WARN()/dev_warn()/ to not take down the system (Greg)
- driver: fix build dependency error by adding "depends on DRM || !DRM"
- driver: harmonize usage printing to u%02X

Changes in v2:
- Link to v1: https://lore.kernel.org/r/20241119-v6-10-topic-touchscreen-axiom-v1-0-6124925b9718@pengutronix.de
- Rework the firmware-duplicate handling -> expose the error to the
  userspace
- Drop Krzysztof Kozlowski ACK and RB
- Add panel-follower support
- Add sysfs-driver-input-touchnetix-axiom documentation
- Add support for new firmware 4.8.9
- Add support to handle 2D and 3D firmware

---
Kamel Bouhara (2):
      dt-bindings: vendor-prefixes: Add TouchNetix AS
      dt-bindings: input: Add TouchNetix axiom touchscreen

Marco Felsch (2):
      firmware_loader: expand firmware error codes with up-to-date error
      Input: Add TouchNetix aXiom I2C Touchscreen support

 .../testing/sysfs-driver-input-touchnetix-axiom    |   80 +
 .../input/touchscreen/touchnetix,ax54a.yaml        |   62 +
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 drivers/base/firmware_loader/sysfs_upload.c        |    1 +
 drivers/input/touchscreen/Kconfig                  |   17 +
 drivers/input/touchscreen/Makefile                 |    1 +
 drivers/input/touchscreen/touchnetix_axiom.c       | 3141 ++++++++++++++++++++
 include/linux/firmware.h                           |    2 +
 lib/test_firmware.c                                |    1 +
 9 files changed, 3307 insertions(+)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20240704-v6-10-topic-touchscreen-axiom-105761e81011

Best regards,
-- 
Marco Felsch <m.felsch@pengutronix.de>


