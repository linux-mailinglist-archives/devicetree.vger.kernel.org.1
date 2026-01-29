Return-Path: <devicetree+bounces-261015-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2FH7B021e2neHwIAu9opvQ
	(envelope-from <devicetree+bounces-261015-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7C1B3FB9
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 20:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4FB93012C52
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 19:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC53F326933;
	Thu, 29 Jan 2026 19:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="XoLcACLO"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C19803254A2;
	Thu, 29 Jan 2026 19:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769715017; cv=none; b=NtC1e5vlYEyuQ1xJDEFlC+ezkbhilLd1XY4v6O1yLu2aNMc8xe5rjJ4AHyCR8sqRIAEGMTJNT7A1y8hEPDhfZE01Z+yDHgxSLnJRhIA6UFuH3I50EU/Sa9kOHiGNrHdgILHsMkQ+BXztBlu6EXu6dO89PS0JpGaZnm15961LQFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769715017; c=relaxed/simple;
	bh=2bW/LcWIL77oyV3tbul0G5dCcOD9fN//KsfaqEmHZnc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oYSneRpVHm+JIr+rXGooWIgcbVbN+IfksqEKBozAy01IkGKbyeai7S4g+zHEyCoJP4MQNE9W1RCqdX5hRfe8Lfj86USjYtBlxQ8+Vs7nyf5ElC5mFkK7ZeoDWg6XywrYiwZQfVM3KyATkFX4Zfz9ZWRkOiCXqji96SMXKsKQMXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=XoLcACLO; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id D1D207791017;
	Thu, 29 Jan 2026 13:20:55 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id RB3clnXYs2bY; Thu, 29 Jan 2026 13:20:55 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 491627791B3D;
	Thu, 29 Jan 2026 13:20:55 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 491627791B3D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1769714455; bh=8OYTK3gMxgwViG6YkbETb0F63IgcjKYsXUhEMPNIHPw=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=XoLcACLOa70dEimxuDdSlHtfY1rWqOEe9NmrWhu5qMUGRYQh6ZT42W0RApal9/MEF
	 Cd7XrlsbTajB9VRg9mHSSgF37Vxz6+D+kIgOyEkykaq8vc7uQ0XSUlx9S3vrXb0u7g
	 /2CB6i20THYAVyxaeVQ6gTFPQofSczb08bTDJBCI=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 0UHIfq8rQTmb; Thu, 29 Jan 2026 13:20:55 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id 26550779059F;
	Thu, 29 Jan 2026 13:20:55 -0600 (CST)
From: Raptor Engineering Development Team <support@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v7 0/4] Add drivers for Sony Cronos control CPLD
Date: Thu, 29 Jan 2026 13:20:43 -0600
Message-Id: <20260129192047.562540-1-support@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[raptorengineering.com,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[raptorengineering.com:s=B8E824E6-0BE2-11E6-931D-288C65937AAD];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261015-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[support@raptorengineering.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[raptorengineering.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: EF7C1B3FB9
X-Rspamd-Action: no action

From: Timothy Pearson <tpearson@raptorengineering.com>

Hello all,

This series adds a driver for the multi-function CPLD found on the Sony
Interactive Entertainment Cronos x86 server platform. It provides a
watchdog timer and an LED controller, both of which will depend on the
MFD parent driver implemented in this series. Device tree bindings are
also included.

Changes in v7:

 * Fix DT binding check errors
 * Minor fixups to MFD driver per maintainer request

Thanks,

Shawn Anastasio (1):
  dt-bindings: mfd: Add sony,cronos-smc

Timothy Pearson (3):
  mfd: sony-cronos-smc: Add driver for Sony Cronos SMC
  led: sony-cronos-smc: Add RGB LED driver for Sony Cronos SMC
  watchdog: sony-cronos-smc: Add watchdog driver for Sony Cronos SMC

 .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++
 MAINTAINERS                                   |   7 +
 drivers/leds/Kconfig                          |  19 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-sony-cronos.c               | 376 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   2 +
 drivers/mfd/sony-cronos-smc.c                 | 204 ++++++++++
 drivers/watchdog/Kconfig                      |  17 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/sony-cronos-wdt.c            | 283 +++++++++++++
 include/linux/mfd/sony-cronos.h               |  61 +++
 12 files changed, 1110 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml
 create mode 100644 drivers/leds/leds-sony-cronos.c
 create mode 100644 drivers/mfd/sony-cronos-smc.c
 create mode 100644 drivers/watchdog/sony-cronos-wdt.c
 create mode 100644 include/linux/mfd/sony-cronos.h

--=20
2.39.5


