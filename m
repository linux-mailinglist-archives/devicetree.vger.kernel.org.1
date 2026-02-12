Return-Path: <devicetree+bounces-264988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kNYSJ+eljWlh5gAAu9opvQ
	(envelope-from <devicetree+bounces-264988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:05:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2580D12C379
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 11:05:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DCBA93172212
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 10:02:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E79552EFD9C;
	Thu, 12 Feb 2026 10:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="MFS3Zcfz"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 806D829A9F9;
	Thu, 12 Feb 2026 10:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770890536; cv=none; b=YYPXcLsAHUZu6w39rJhdpuULyeCHLkjy7EJ2lhn2yZgLzsq5LZDWuU3XgR6T6deJavwVxmVJRSj+zxTlQLIzcWkEooQfn7GDeoPNmNzNrUBJxSuWTYjre4R9JGFDDNpUG4aNciw589ycq8DTphBhaocLeOFCwgdVVFtYyMQmcBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770890536; c=relaxed/simple;
	bh=+XSdePmIxMkVcvmbkbSmvnwKwABGab5j+b7WmP5kNz4=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=qd4JxbUkMuB+QQzMrVHwEqmZLXKXdDFnWX0DO7vUf8E4TvaQHNLRZIV1r0w45VhUS4SfQm5Xb5Xg7sk1CtfuEjXP3YsiZ/TmzVE0ie/BYTyUnDTkU+plAR7jOe97yEZM7FB06+47vFxseCmeEFzakSrCBN6WhR2kTMI4jFjEJqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=MFS3Zcfz; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770890535; x=1802426535;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=+XSdePmIxMkVcvmbkbSmvnwKwABGab5j+b7WmP5kNz4=;
  b=MFS3Zcfzf2ke4gKxaunwif6Iui8WgF/MxSf+BVFJHJix5hFSeO2OJzSh
   t5kjsxVBSqmWi8LWkIQdoOXQDAocF9KjgR1m52uXbsTPP+9dryQayo862
   bGJeXcuxhVGx/Fz5M8UfCBm2h68kXtNLyA0Lu8IZKolyhIH1p9iFyQs27
   oySi9VrzesLsm2xRC5xiY2fpyF9XCG0C3y1YCgDyaertmRyDRgfL+zGGQ
   OLZTifj1+ZTINy1YquYJnpy06jt/sJxc0Nuac8dYRdmHQ4anFoOTKhE8h
   8lbvj5Y7NF4v/pIkfTqoViz9KEILCkVf/c8NtYFhMo8wKJRXtcqbH7Zho
   A==;
X-CSE-ConnectionGUID: 9SO/Vbq8Qbun3JrOdaYeIg==
X-CSE-MsgGUID: hTJwjBEdSdK+h8m/oRJOZw==
X-IronPort-AV: E=Sophos;i="6.21,286,1763449200"; 
   d="scan'208";a="60606622"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 12 Feb 2026 03:02:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 12 Feb 2026 03:02:07 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Thu, 12 Feb 2026 03:02:04 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
	<nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <varshini.rajendran@microchip.com>,
	<cristian.birsan@microchip.com>, <balamanikandan.gunasundar@microchip.com>,
	<robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<ryan.wanner@microchip.com>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH v2 0/4] Update gmac clocks and devicetree for sam9x7 mpu
Date: Thu, 12 Feb 2026 12:01:43 +0200
Message-ID: <20260212100147.5007-1-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264988-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:mid,microchip.com:dkim]
X-Rspamd-Queue-Id: 2580D12C379
X-Rspamd-Action: no action

This series updates the GMAC clock configuration for the
SAM9X7 family. The current clock definitions contain inconsistencies
around the GMAC peripheral and its associated generic clock IDs, which
lead to incorrect wiring in both the clock driver and the devicetree.

Changelog:

v1 -> v2:
- Add only one patch for devicetree with detailed description

Mihai Sain (4):
  clk: at91: sam9x7: Remove gmac peripheral and generic clock entries with ID 67
  clk: at91: sam9x7: Rename macb0_clk to gmac_clk
  clk: at91: sam9x7: Add gmac generic clock entry with ID 24
  ARM: dts: microchip: sam9x7: fix GMAC clock configuration

 arch/arm/boot/dts/microchip/sam9x7.dtsi |  6 +++---
 drivers/clk/at91/sam9x7.c               | 21 ++++++++++-----------
 2 files changed, 13 insertions(+), 14 deletions(-)


base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
-- 
2.53.0


