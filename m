Return-Path: <devicetree+bounces-141479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CD7A20E64
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 17:20:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 656D0165475
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 16:20:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 009131D515B;
	Tue, 28 Jan 2025 16:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="HFQgSLQi"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDA51A9B29;
	Tue, 28 Jan 2025 16:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738081230; cv=none; b=vE6QmU+FPzZtqR38IDy4Z+GXH2I3CR6S9nq+/WIUN4VMXWPOFr6JWoPdpB/sKPJf1Esw5EffZR103nAV/80EgweiMRQGym/UGbbliWGD6cd6gMGL2VCYeUsnSha86xT+WxVfHnjKzXxj0ff43G4tAm1p1SYSZ0hgtaSVO2wGX4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738081230; c=relaxed/simple;
	bh=ERBHXKcK/ZgBB0KVQYHeIPLn64zY0LS2hMLJrIodcLI=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=PpQqKpYguJ1Lr3EmdJI/RxnByKHi6+MQSt3MVEc31E6vAmpyu+D5G5nXNHAnnp0FD9vnrwOe4giJd9oPGtwsYFQMJ0t+Kf2n1ctswN7Az7BUn6+YeTNTbYoD1MefByE3GaaWPneC1MCrM54/ZUID9yG+N5K0HuMbaT4EcTDXbww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=HFQgSLQi; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1738081230; x=1769617230;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=ERBHXKcK/ZgBB0KVQYHeIPLn64zY0LS2hMLJrIodcLI=;
  b=HFQgSLQiDj3IZe7qzEhVNfjWqusEZoePZL4omofe9kYunnMOuhGTW5w5
   Vuu67pTd1avrQi8JhdFcJhQTPbW6Af1FaTgT69K1zoD3cdyYLO8U1y7K8
   17aAVmj13IU6u7V/vjxBoO5DYxQVBd+u5FxKnNi8w3HiqeYkMKt02J5XP
   VSGMcGe3G83agAc5xVREcwT5rReDHLJW4B0Zcl3iiAJ6kkRw5bZ0kC7sJ
   4Ds1bpZsXCH658QPdPqSCERcUHjTddMaT1abGwM2QrnTzJPd4bBo39U7v
   +McUWKUK6+d3XES065S6CjbAgr5mYT4X0YDWJWguxA5vgAJCwbKaIFGkM
   g==;
X-CSE-ConnectionGUID: gZUkyJ0GT6+5er0WEIFfZw==
X-CSE-MsgGUID: MNAfTJv/RVekaf216foQ/A==
X-IronPort-AV: E=Sophos;i="6.13,241,1732604400"; 
   d="scan'208";a="37017195"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 28 Jan 2025 09:19:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 28 Jan 2025 09:19:01 -0700
Received: from ROB-ULT-M76677.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.35 via Frontend Transport; Tue, 28 Jan 2025 09:18:58 -0700
From: Andrei Simion <andrei.simion@microchip.com>
To: <claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <broonie@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Andrei Simion <andrei.simion@microchip.com>
Subject: [PATCH 0/2] Convert atmel-ssc.txt to YAML
Date: Tue, 28 Jan 2025 18:18:41 +0200
Message-ID: <20250128161842.44541-1-andrei.simion@microchip.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This patch set converts atmel-ssc.txt into atmel,at91-ssc.yaml and
update the documentation file supported for MICROCHIP SSC DRIVER

Andrei Simion (2):
  dt-bindings: misc: atmel,at91-ssc: Convert to YAML format
  MAINTAINERS: Update the documentation file supported for MICROCHIP SSC
    DRIVER

 .../bindings/misc/atmel,at91-ssc.yaml         | 111 ++++++++++++++++++
 .../devicetree/bindings/misc/atmel-ssc.txt    |  50 --------
 MAINTAINERS                                   |   2 +-
 3 files changed, 112 insertions(+), 51 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/atmel,at91-ssc.yaml
 delete mode 100644 Documentation/devicetree/bindings/misc/atmel-ssc.txt


base-commit: 9a87ce288fe30f268b3a598422fe76af9bb2c2d2
-- 
2.34.1


