Return-Path: <devicetree+bounces-274415-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oK9WCf0/smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274415-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:24:29 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BBABE26D14F
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC6A530C1F9C
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:22:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A76F83947B5;
	Thu, 12 Mar 2026 04:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="yNQ+XmAo"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5962D4A23;
	Thu, 12 Mar 2026 04:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773289342; cv=none; b=biPvasp+GqRCOMj1DoVbxu+TKSbFg6j71OrH4Hg84uLrV3FzaTzfJgprhzhOIoZ/8vR6KK5Q8GsPnmo9iZJTI5KPzuyqVwvrE557sfoxJddxbKUvO4tf+aPjqUiibnTEIdSqhd50gBDhkjvlDU7qAC6zIqfsMcOCVAkBoCq2LmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773289342; c=relaxed/simple;
	bh=PUYnKeKHUBCeKind9Npf1NIbjQzWI2oBFhL1pRGpyEw=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kjxltr8XHqbrcuOYjqc37CHM0io2PC786YR3d2tt9n4oxnQXHAlpNCRn+qb76jVFUYQ5ZrchdQ7DQ00ub+JqZ2+wOpbei8LV4DXNdarIjcA2lq91UDXyjA+EXv5HDc4Hcuf61ZmYi3kVOjZCcoM+TvdOVwK1rUfSQgKQfp8gyrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=yNQ+XmAo; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1773289340; x=1804825340;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PUYnKeKHUBCeKind9Npf1NIbjQzWI2oBFhL1pRGpyEw=;
  b=yNQ+XmAorypvnC+9wQ8Z8z7ZdOwgcYqpejk4N32O61pIQZRrI6TlOExL
   6cnxVqt1xOSXUr1Rcyxq/vMRj+oi0GeBNu3oQfM6EaUZzSzvL65SBSS8d
   GAhxzIQ2hBErxAChaE4VrsRw8i3SL+abiQSEMoshki3RJpXvjdDx2rcet
   UbaQIPBhnLS2TAg4ydLiQhkFNjfHmm6OumzXWwdzGV7OxNbRvdBVhGOK9
   ZlMc8fEfZ+Fhmhpc/uAgDYvF7SFaAxfXzrLhgYmMqNWF4yDkD+PZxLSR9
   9KfTEU1SZG/+gltts6MqczVq5BY9yJkPwTEZyyLJgeIaYQH5bX4f3CYDX
   Q==;
X-CSE-ConnectionGUID: il7LFELGTMWBUr9DGihooA==
X-CSE-MsgGUID: Cw+T+2u+Sv2qNM7MfPGmPw==
X-IronPort-AV: E=Sophos;i="6.23,115,1770620400"; 
   d="scan'208";a="54551562"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Mar 2026 21:22:19 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Wed, 11 Mar 2026 21:21:49 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 11 Mar 2026 21:21:40 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <alexandre.belloni@bootlin.com>, <Frank.Li@nxp.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<claudiu.beznea@tuxon.dev>, <linux@armlinux.org.uk>,
	<mturquette@baylibre.com>, <sboyd@kernel.org>, <ardb@kernel.org>,
	<ebiggers@google.com>, <martin.petersen@oracle.com>, <tytso@mit.edu>,
	<cristian.birsan@microchip.com>, <adrian.hunter@intel.com>,
	<jarkko.nikula@linux.intel.com>, <kees@kernel.org>, <npitre@baylibre.com>,
	<linux-i3c@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-clk@vger.kernel.org>
CC: <manikandan.m@microchip.com>, Durai Manickam KR
	<durai.manickamkr@microchip.com>
Subject: [PATCH v3 4/5] ARM: dts: microchip: add I3C controller
Date: Thu, 12 Mar 2026 09:50:55 +0530
Message-ID: <20260312042056.309237-5-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260312042056.309237-1-manikandan.m@microchip.com>
References: <20260312042056.309237-1-manikandan.m@microchip.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-274415-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:dkim,microchip.com:email,microchip.com:mid]
X-Rspamd-Queue-Id: BBABE26D14F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Durai Manickam KR <durai.manickamkr@microchip.com>

Add I3C controller for sama7d65 SoC.

Signed-off-by: Durai Manickam KR <durai.manickamkr@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
Changes in v3:
- Remove clock-names property as driver enables the clk in bulk
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index e21556f46384..f358aae3ec59 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -1015,5 +1015,13 @@ gic: interrupt-controller@e8c11000 {
 			#address-cells = <0>;
 			interrupt-controller;
 		};
+
+		i3c: i3c@e9000000 {
+			compatible = "microchip,sama7d65-i3c-hci";
+			reg = <0xe9000000 0x300>;
+			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 105>, <&pmc PMC_TYPE_GCK 105>;
+			status = "disabled";
+		};
 	};
 };
-- 
2.25.1


