Return-Path: <devicetree+bounces-293868-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ePpnEaFT/GlOOAAAu9opvQ
	(envelope-from <devicetree+bounces-293868-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 10:56:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B43674E54BE
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 10:56:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5AAEA30A0BAB
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 08:50:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DD639A051;
	Thu,  7 May 2026 08:49:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="XniS21eZ"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA8437B3E1;
	Thu,  7 May 2026 08:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778143754; cv=none; b=I2/0xWmuJ2XOV+CVIPtnGpFF8amT8B+bRHqaDr/yHf5zRnVJ8+8+jgQEIezH9xkex6+Qn/fj6iJco2TReTlI11C/lSjlHScYuLDV2yd93uBAHf3l7snR3Aeg3mx36xAmz3vhhVYwrxlKGl/HUr19ewU5BRhwgsRqz+c63REQXv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778143754; c=relaxed/simple;
	bh=IjmyKrRs5bSU2CVMI2YglfCQfHmycQAZGSeoqpQ2FxM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EsfRK6oCIUM/OMCQGEJw+0x7ayaFZFGyWY8Pd8xzCFLfZrGddwWRLmzt7/qDuYTy50IbvAJN1F9x131ybmI81gtkiXGMVzY8O8d7Jop2JUkiP6s7bObL52OoIo3pAYV6HbSGPAmFSRnj2FmqHFcbHy2sfVujiPoCz73zDIzoDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=XniS21eZ; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1778143749; x=1809679749;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=IjmyKrRs5bSU2CVMI2YglfCQfHmycQAZGSeoqpQ2FxM=;
  b=XniS21eZg1J6Aydjrs421BPjkWh2UcdkuxnMrKRpVrWKXntzTLgaT9Gq
   n/lPupHRSObyWPrk8BozHB251NPM+FAXAjRHWrFQjJS7bmdfaQnz1BP1n
   HDCz/asokJ4xFzCP26vw0Z32Ng2sCJZVRDMkyxIT2il5JAuqVeSR1004K
   DNhoVD6Anok/5ehAQArAoKls1LxTkJms/I8PbuEK3hwd8E8v/GAnotb/h
   XQvGlGmwU43O/Q7Co5dnXyVSStXvyr0xvuU09x/XJT+L0hqX0bvfDosUK
   UUcMpeGWOnRfKzUoA4AEqGKOTBrIsTBwKZKUE6vHl8SE2R5QDq4kVHb3X
   w==;
X-CSE-ConnectionGUID: 5g54zo4oSXqjCAVENxCvvA==
X-CSE-MsgGUID: MISv4/VQQWmMAERkCqQgxg==
X-IronPort-AV: E=Sophos;i="6.23,221,1770620400"; 
   d="scan'208";a="65430976"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 07 May 2026 01:49:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Thu, 7 May 2026 01:49:05 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Thu, 7 May 2026 01:48:57 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Frank.Li@nxp.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <linux@armlinux.org.uk>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <tytso@mit.edu>,
	<aubin.constans@microchip.com>, <Ryan.Wanner@microchip.com>,
	<romain.sioen@microchip.com>, <durai.manickamkr@microchip.com>,
	<cristian.birsan@microchip.com>, <adrian.hunter@intel.com>,
	<jarkko.nikula@linux.intel.com>, <npitre@baylibre.com>,
	<linux-i3c@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-clk@vger.kernel.org>
CC: <manikandan.m@microchip.com>
Subject: [PATCH v6 5/5] ARM: configs: at91: sama7: add sama7d65 i3c-hci
Date: Thu, 7 May 2026 14:18:05 +0530
Message-ID: <20260507084805.481737-6-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260507084805.481737-1-manikandan.m@microchip.com>
References: <20260507084805.481737-1-manikandan.m@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Queue-Id: B43674E54BE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-293868-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[25];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Action: no action

Enable the configs needed for I3C framework and microchip
sama7d65 i3c-hci driver.

Signed-off-by: Durai Manickam KR <durai.manickamkr@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 arch/arm/configs/sama7_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/sama7_defconfig b/arch/arm/configs/sama7_defconfig
index e52f671ccec4..6470c7d3fe8a 100644
--- a/arch/arm/configs/sama7_defconfig
+++ b/arch/arm/configs/sama7_defconfig
@@ -117,6 +117,8 @@ CONFIG_HW_RANDOM=y
 CONFIG_I2C=y
 CONFIG_I2C_CHARDEV=y
 CONFIG_I2C_AT91=y
+CONFIG_I3C=y
+CONFIG_MIPI_I3C_HCI=y
 CONFIG_SPI=y
 CONFIG_SPI_ATMEL=y
 CONFIG_SPI_ATMEL_QUADSPI=y
-- 
2.25.1


