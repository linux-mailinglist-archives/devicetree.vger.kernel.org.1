Return-Path: <devicetree+bounces-252126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7849DCFB788
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 01:29:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C6B6130049D3
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 00:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 350421C8626;
	Wed,  7 Jan 2026 00:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="Weg/NfjT"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BCDE1D9663;
	Wed,  7 Jan 2026 00:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.155.224.40
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767745790; cv=none; b=qizXddnrJswkSqODrTnFOd8m0W34qErcIPLjSxO2L3t+wxY0RA1Xk8RBZF89kGpby/v2e9yoZDM+Tp3FNsy2lNH5YdJzNPWLgGTwbznNz++ncP3n3csFVCJZQ9bJrOPsMOO4VS1dBWoLqbwQTMFj+sIh8+a8xDjr5CQGIAOP5Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767745790; c=relaxed/simple;
	bh=8oWQ5UGhxZzNKgA9kBrUocJuWudq6zx4CQY781l5Q+s=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=B5G3J5eACGn3UaAOwa4bVCRyP+iuiSEr8fo+XsZhfmBoKocE64HG73O7GTHECYX80fJbz2U136D10JoRMFxUHP1jsNyZlVE+5OluSuGsyVCBJG1nx+l9zbRCCqs8C3zCiroJ+Ri0AVf8uClRRj48h+3+v7s6+1jrLd3wi3pHUDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com; spf=pass smtp.mailfrom=raptorengineering.com; dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b=Weg/NfjT; arc=none smtp.client-ip=23.155.224.40
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raptorengineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raptorengineering.com
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 6D00C7790B0F;
	Tue,  6 Jan 2026 18:21:45 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id OMIe-64Y1a8Z; Tue,  6 Jan 2026 18:21:45 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id E43627790ECB;
	Tue,  6 Jan 2026 18:21:44 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com E43627790ECB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1767745304; bh=DlWa7+SKbXz1KLSH8Ng0NusjXaUcTnB6M0JD7Dh4K4M=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=Weg/NfjTHq1ixq7GWsoaYdXz53345UPXQv/h0X9Phj1/c1DMwhVEuAbcCvqaqHuch
	 QaViRZQP/dccdrvSEsi9wXvmRDLx4iqicd5SGBweABbmGl6ENaA3TzVGRdBVKMzvIP
	 D/59/0tGrh3K0q74P4tHpJRE3ZcGz4Ax8kkMy+1o=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id 3ld1kksg0a1e; Tue,  6 Jan 2026 18:21:44 -0600 (CST)
Received: from rcs-ewks-005.starlink.edu (unknown [192.168.20.42])
	by mail.rptsys.com (Postfix) with ESMTPSA id A783C7790B0F;
	Tue,  6 Jan 2026 18:21:44 -0600 (CST)
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
Subject: [PATCH v6 0/4] Add drivers for Sony Cronos control CPLD
Date: Tue,  6 Jan 2026 18:21:32 -0600
Message-Id: <20260107002136.3121607-1-tpearson@raptorengineering.com>
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

 .../bindings/mfd/sony,cronos-smc.yaml         | 128 ++++++
 MAINTAINERS                                   |   7 +
 drivers/leds/Kconfig                          |  19 +
 drivers/leds/Makefile                         |   1 +
 drivers/leds/leds-sony-cronos.c               | 376 ++++++++++++++++++
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   2 +
 drivers/mfd/sony-cronos-smc.c                 | 212 ++++++++++
 drivers/watchdog/Kconfig                      |  17 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/sony-cronos-wdt.c            | 283 +++++++++++++
 include/linux/mfd/sony-cronos.h               |  61 +++
 12 files changed, 1118 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-smc=
.yaml
 create mode 100644 drivers/leds/leds-sony-cronos.c
 create mode 100644 drivers/mfd/sony-cronos-smc.c
 create mode 100644 drivers/watchdog/sony-cronos-wdt.c
 create mode 100644 include/linux/mfd/sony-cronos.h

--=20
2.39.5


