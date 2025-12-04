Return-Path: <devicetree+bounces-244449-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E27F3CA505E
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 19:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0D13300AB09
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 18:59:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 715E733B6F7;
	Thu,  4 Dec 2025 18:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="QfLQ1MSo"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931282FFF83;
	Thu,  4 Dec 2025 18:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764874744; cv=none; b=mpVUz995C12ZNt1EsOCHP/DBNmcfa6We35/WuzSrzZ/3jxo0005NjSXCcYFAKlRG68G17nICdDUKB2pS1W7z/21dLRnf89EDzV2d4K2T8ukXRVL1+qVYWPuHEAKV+aTt8v6FeSZxAniUykHKhAfe0qQAQLUvoAJVSjP/pwHjecw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764874744; c=relaxed/simple;
	bh=C7tUXu0hNnYcag36Ogd9Xdr4RgfrfP6kJABMTIKVKzo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=QWULBOk8WQWJ39wB6zBWDAZD+T2NYsFrNuc2nYllmF1lTQPvv+QvbO7DmWlUfO36RZEJYRSQPNQMcOJId3BleBpW7Z6dX0GdBMEG+2In6A/755ZQ2SH+auLBe5vDvfFAFDdPpe9XNMAK62fFU7xOqT8KApr/Jsa/P2rjgPfeNg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=QfLQ1MSo; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 54B4E77909C5;
	Thu,  4 Dec 2025 12:50:23 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id PgxffmbFbi85; Thu,  4 Dec 2025 12:50:21 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id BF2E77790E4C;
	Thu,  4 Dec 2025 12:50:21 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com BF2E77790E4C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1764874221; bh=xy4YOMXO5j7uNMeJQ40zO7hZ5dU3UvXezBHJH+ivtmA=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=QfLQ1MSoWzxVhc/IoGgIHMxHLbP+dl4Z5tIl3bezAu3h5FDqRzzWxzSQvzVPP3IAl
	 XgDb14XxuYKYXYFET9TyKS89yx9AXJnDSf/BlYfk///dMd/1zsMPu3RELyOxkSvyZc
	 koD0SmsjIfq3+f4khgu3g+FqvwTaMq/TUdp5HuAQ=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id LahFtrNxEFYQ; Thu,  4 Dec 2025 12:50:21 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id 8DCB777909C5;
	Thu,  4 Dec 2025 12:50:21 -0600 (CST)
From: Timothy Pearson <tpearson@raptorengineering.com>
To: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	lee@kernel.org,
	Georgy.Yakovlev@sony.com,
	sanastasio@raptorengineering.com,
	Timothy Pearson <tpearson@raptorengineering.com>
Subject: [PATCH v5 0/4] Add drivers for Sony Cronos control CPLD
Date: Thu,  4 Dec 2025 12:50:11 -0600
Message-Id: <20251204185015.1364439-1-tpearson@raptorengineering.com>
X-Mailer: git-send-email 2.39.5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Hello all,

This series adds a driver for the multi-function CPLD found on the Sony
Interactive Entertainment Cronos x86 server platform. It provides a
watchdog timer and an LED controller, both of which will depend on the
MFD parent driver implemented in this series. Device tree bindings are
also included.

Thanks,

Shawn Anastasio (1):
  dt-bindings: mfd: Add sony,cronos-smc

Timothy Pearson (3):
  mfd: sony-cronos-smc: Add driver for Sony Cronos SMC
  led: sony-cronos-smc: Add RGB LED driver for Sony Cronos SMC
  watchdog: sony-cronos-smc: Add watchdog driver for Sony Cronos SMC

 .../bindings/mfd/sony,cronos-smc.yaml         | 115 ++++++
 MAINTAINERS                                   |   7 +
 drivers/leds/Kconfig                          |  19 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-sony-cronos.c               | 378 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   2 +
 drivers/mfd/sony-cronos-smc.c                 | 212 ++++++++++
 drivers/watchdog/Kconfig                      |  17 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/sony-cronos-wdt.c            | 283 +++++++++++++
 include/linux/mfd/sony-cronos.h               |  61 +++
 12 files changed, 1107 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml
 create mode 100644 drivers/leds/leds-sony-cronos.c
 create mode 100644 drivers/mfd/sony-cronos-smc.c
 create mode 100644 drivers/watchdog/sony-cronos-wdt.c
 create mode 100644 include/linux/mfd/sony-cronos.h

--=20
2.39.5


