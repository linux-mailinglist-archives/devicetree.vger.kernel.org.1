Return-Path: <devicetree+bounces-218541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B968B81655
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 20:57:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08B21466922
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 18:57:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2564301488;
	Wed, 17 Sep 2025 18:57:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="mJ0+g/gb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC2318D656
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 18:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758135425; cv=none; b=m82HvKAliO73oRZD11kXTGVs+gDWFox+DVF9rDQUwDUfuwAw38T50eAo0aQLoIFdfoEYnYwUwe+gQPkA+ZpS1HH247W3MmzKZ45uG/55+m/6mShiRMWsiShAzCiv3PDbHadecma1sHxDwrolPPA+7gquDN9gC9VI16uaqK2K2Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758135425; c=relaxed/simple;
	bh=rGHIg49NqT/vw8VGSZsrsfHcMRmvB0DOxfh5E1K8G3E=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=MvkaILEUR2QWPjVJZcSd9d/XnHjyRyO7JrrsoQxh+56USnc0bfnMvQHy7FizglJRjlg8ShK2zosN0WqCFfMSlCZrzfqDOSoRtFOgHPh7Fkswkb2ulY6Zchz74w9gKUHvYtm/zRPuaTablnwhjFeblWg/IsXCe3s78japEJOngsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=mJ0+g/gb; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:mime-version:content-transfer-encoding; s=k1; bh=YW/nOjUofYiXh8
	O/soaQF4m/L42j3TGPSSIIRZmVY/A=; b=mJ0+g/gbf/0ZIq7utou8o46LYxvPsW
	3kR6OAZunOOke44zZOi7J9vB6BgnqCqMkaolWhLUTVHEO8HmVBQRqRrrTalnskIA
	tpra8bYaopFrFJZbMOeGlG78GYyHB7+i2mx445hib9NsvCJf1MjmEe+UOP0LqQ5r
	1Z/kOrm/iP3rOSXT1i+1+bNWZ1Hm4OhlbX5RSR9ArvurKQIKuhyNPfKutZJnbpxR
	v65iGkkmGGnLtnoq43KWp3MmqlpyR827SIL2gdiPfw2PyrHbWdbiH0sYJPqHbg0P
	YTyk36HcmmFf2BiUleaTnqEvd9eyI1fueqnu5PueP7KQdr6ZWPUStqSg==
Received: (qmail 3238961 invoked from network); 17 Sep 2025 20:56:59 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 17 Sep 2025 20:56:59 +0200
X-UD-Smtp-Session: l3s3148p1@qDAazQM/ZMUujnvK
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Guenter Roeck <linux@roeck-us.net>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-watchdog@vger.kernel.org,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>
Subject: [PATCH 0/2] watchdog: add Renesas Window Watchdog support
Date: Wed, 17 Sep 2025 20:56:47 +0200
Message-ID: <20250917185651.12428-1-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This Window Watchdog is a little peculiar because it can only be setup
once but we cannot find out if this write already happened. So,
configuration is delegated to the firmware/bootloader and the driver
will adapt to whatever is configured. The driver handles all bits
described in the datasheets. This is really all there is.

Tested on a SparrowHawk board (Renesas R-Car V4H).

Looking forward to comments!


Wolfram Sang (2):
  dt-bindings: watchdog: Add Renesas WWDT
  watchdog: renesas_wwdt: add driver

 .../bindings/watchdog/renesas,wwdt.yaml       |  78 +++++++++
 drivers/watchdog/Kconfig                      |   8 +
 drivers/watchdog/Makefile                     |   1 +
 drivers/watchdog/renesas_wwdt.c               | 156 ++++++++++++++++++
 4 files changed, 243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/watchdog/renesas,wwdt.yaml
 create mode 100644 drivers/watchdog/renesas_wwdt.c

-- 
2.47.2


