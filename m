Return-Path: <devicetree+bounces-276930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEf2EuQ9umlqTQIAu9opvQ
	(envelope-from <devicetree+bounces-276930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:53:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4902B606D
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 06:53:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5B0EC3017C3B
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 05:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B883235DA52;
	Wed, 18 Mar 2026 05:53:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="OKAP5Byh"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A416346797;
	Wed, 18 Mar 2026 05:53:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773813208; cv=none; b=Mv1Iq3mmBKk3Pgk3kSowi6oX3i6Lr16ih34/8mp7YLEBJWyzmumeVggGQ1/d6LC20RmYwOk37nnXzhyhyr7ujrhrRgaMJjNRvYtTu/tFlrEx2KiVoRpZIx3+T+atItDkvcqzuRhLIl/nmEGpnGXBK9puFldDAwc3Aq2WUI9klTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773813208; c=relaxed/simple;
	bh=2Xp9lzfJzR+MWEgYcbZSrGJ5MtteFy2ftN9oU8hZG/I=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BjOdGL/1NyHknah374xpOKO/Kvd2GmMPgShmA5b0gKC3nJkzba0KsfkuKw+fWBN7doweuEsZEE2yNlyGqv4W2GHLMWtLBjG33xfMS/VKnNkuFMqjfRLWVYljwbASyqJSqse9PLwEG/vZ1GtEKiPnJbBKsBEsuueJln+dr7R37gU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=OKAP5Byh; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1773813208; x=1805349208;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=2Xp9lzfJzR+MWEgYcbZSrGJ5MtteFy2ftN9oU8hZG/I=;
  b=OKAP5Byh3FQf88m9tvouIV/BBkT0O4/jgS5LuaQ+7DP7eya7MqjpStMs
   tm1yTZkvrKk2+7KyRtshzILxEfD6vtp25ekWPK/9w77RwFMl+U6Fqvw3p
   vQHZVwncGD3QgESF/lxX0f+wpGhQGoxLtux6SBMCeC5jkzTr17gW9GD/n
   I7UW/nZ2BVJd6dWyywgYbxHiG+f9rD6N44TwF/BmtggfMPZhuuA6pBpCg
   63ZdbBpxQYwR3NGXCvBsCS+0vH7uh5j/ac0u08tDSjbR1ROKB2KXAGmlE
   59lpB0+g8SQSgc57zoJH3oHIrbMnbg/iOiHfAdGbUWdQhn2gUCavwNz+J
   Q==;
X-CSE-ConnectionGUID: TZ/u7H+YTQiHBRAlQQhOfg==
X-CSE-MsgGUID: waZvmdF3QgqL84434mEKJQ==
X-IronPort-AV: E=Sophos;i="6.23,126,1770620400"; 
   d="scan'208";a="286208449"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2026 22:53:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex3.mchp-main.com (10.10.87.32) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Tue, 17 Mar 2026 22:52:49 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 17 Mar 2026 22:52:40 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Frank.Li@nxp.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <linux@armlinux.org.uk>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <ardb@kernel.org>,
	<martin.petersen@oracle.com>, <ebiggers@google.com>, <tytso@mit.edu>,
	<cristian.birsan@microchip.com>, <adrian.hunter@intel.com>,
	<jarkko.nikula@linux.intel.com>, <kees@kernel.org>, <npitre@baylibre.com>,
	<linux-i3c@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-clk@vger.kernel.org>
CC: <manikandan.m@microchip.com>
Subject: [PATCH v4 0/5] Add microchip sama7d65 SoC I3C support
Date: Wed, 18 Mar 2026 11:22:25 +0530
Message-ID: <20260318055230.307030-1-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276930-lists,devicetree=lfdr.de];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:dkim,microchip.com:mid]
X-Rspamd-Queue-Id: BB4902B606D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add support for microchip sama7d65 SoC I3C master only IP which is
based on mipi-i3c-hci from synopsys implementing version 1.0
specification. The platform specific changes are integrated in the
existing mipi-i3c-hci driver by introducing a quirk

I3C in master mode supports up to 12.5MHz, SDR mode data transfer in
mixed bus mode (I2C and I3C target devices on same i3c bus).

Durai Manickam KR (3):
  clk: at91: sama7d65: add peripheral clock for I3C
  ARM: dts: microchip: add I3C controller
  ARM: configs: at91: sama7: add sama7d65 i3c-hci

Manikandan Muralidharan (2):
  dt-bindings: i3c: mipi-i3c-hci: add Microchip SAMA7D65 compatible
  i3c: mipi-i3c-hci: add microchip sama7d65 SoC compatible with the
    appropriate quirk

 .../devicetree/bindings/i3c/mipi-i3c-hci.yaml | 26 ++++++++++++++++---
 arch/arm/boot/dts/microchip/sama7d65.dtsi     |  8 ++++++
 arch/arm/configs/sama7_defconfig              |  2 ++
 drivers/clk/at91/sama7d65.c                   |  1 +
 drivers/i3c/master/mipi-i3c-hci/core.c        | 12 +++++++++
 drivers/i3c/master/mipi-i3c-hci/hci.h         |  1 +
 6 files changed, 46 insertions(+), 4 deletions(-)

-- 
2.25.1


