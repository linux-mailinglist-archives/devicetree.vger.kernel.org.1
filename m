Return-Path: <devicetree+bounces-19766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 603807FC6C4
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 22:06:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 923321C2170E
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 21:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C40F142ABA;
	Tue, 28 Nov 2023 21:06:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=raptorengineering.com header.i=@raptorengineering.com header.b="Ih2VG8xV"
X-Original-To: devicetree@vger.kernel.org
Received: from raptorengineering.com (mail.raptorengineering.com [23.155.224.40])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 081691727;
	Tue, 28 Nov 2023 13:06:27 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 17F9682869AA;
	Tue, 28 Nov 2023 15:00:19 -0600 (CST)
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10032)
	with ESMTP id X-QXPIRuNL-D; Tue, 28 Nov 2023 15:00:18 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rptsys.com (Postfix) with ESMTP id 6A71C8286993;
	Tue, 28 Nov 2023 15:00:18 -0600 (CST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.rptsys.com 6A71C8286993
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=raptorengineering.com; s=B8E824E6-0BE2-11E6-931D-288C65937AAD;
	t=1701205218; bh=+wcbMzIvsR3kc26Wq1jK9a1ReYND3oXE+uSD8h/nw0I=;
	h=From:To:Date:Message-Id:MIME-Version;
	b=Ih2VG8xVD8j5kuROzCzBXgX6YshsWDI5Lzh80zLMVb5aT3J8rKjUkQTbdZJQrVBop
	 BU8dY/FXR8hgMS4PvMZW/R7eGxrC2y7zyZ7Y4sKi9xujtGp1aGkLnWpHf/QlmIrrEn
	 q01IHlsjIQsqV3mfoMhbJ99Nq82ooBLrIQUCL/Xo=
X-Virus-Scanned: amavisd-new at rptsys.com
Received: from mail.rptsys.com ([127.0.0.1])
	by localhost (vali.starlink.edu [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id U7mLF7rpVsXY; Tue, 28 Nov 2023 15:00:18 -0600 (CST)
Received: from raptor-ewks-026.2lan (5.edge.rptsys.com [23.155.224.38])
	by mail.rptsys.com (Postfix) with ESMTPSA id 88B258286981;
	Tue, 28 Nov 2023 15:00:17 -0600 (CST)
From: Shawn Anastasio <sanastasio@raptorengineering.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Georgy Yakovlev <Georgy.Yakovlev@sony.com>
Cc: Timothy Pearson <tpearson@raptorengineering.com>,
	Shawn Anastasio <sanastasio@raptorengineering.com>
Subject: [PATCH v2 0/2] Add driver for SIE Cronos control CPLD
Date: Tue, 28 Nov 2023 15:00:07 -0600
Message-Id: <cover.1701203916.git.sanastasio@raptorengineering.com>
X-Mailer: git-send-email 2.30.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hello all,

This series adds a driver for the multi-function CPLD found on the Sony
Interactive Entertainment Cronos x86 server platform. It provides a
watchdog timer and an LED controller, both of which will depend on the
MFD parent driver implemented in this series. Device tree bindings are
also included.

Thanks,

Changes in v2:
  - Change SIE to Sony (SIE's parent company) to be more consistent
  with how other subsidiaries are treated in the kernel.
  - Drop SIE prefix addition patch
  - Address review comments to dt bindings
  - Add new properties to dt bindings
  - Fix driver build failure detected by kernel test robot

Shawn Anastasio (1):
  dt-bindings: mfd: Add sony,cronos-cpld

Timothy Pearson (1):
  mfd: sie-cronos-cpld: Add driver for Sony Cronos CPLD

 .../bindings/mfd/sony,cronos-cpld.yaml        |  92 +++
 MAINTAINERS                                   |   7 +
 drivers/mfd/Kconfig                           |  11 +
 drivers/mfd/Makefile                          |   1 +
 drivers/mfd/sony-cronos-cpld.c                | 591 ++++++++++++++++++
 include/linux/mfd/sony/cronos/core.h          |  17 +
 include/linux/mfd/sony/cronos/registers.h     |  59 ++
 7 files changed, 778 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/sony,cronos-cpld.yaml
 create mode 100644 drivers/mfd/sony-cronos-cpld.c
 create mode 100644 include/linux/mfd/sony/cronos/core.h
 create mode 100644 include/linux/mfd/sony/cronos/registers.h

--
2.30.2


