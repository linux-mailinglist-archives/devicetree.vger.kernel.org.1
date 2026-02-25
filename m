Return-Path: <devicetree+bounces-268206-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EEXXBf65nmnwWwQAu9opvQ
	(envelope-from <devicetree+bounces-268206-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:59:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8968019485B
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 09:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F27BC302F73A
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 08:56:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5877325706;
	Wed, 25 Feb 2026 08:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="hnc6JeqI"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 845E7302767;
	Wed, 25 Feb 2026 08:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772009782; cv=none; b=FQtFTv1VUejWC+N5OyC7jrUYY5DS9siW3DIdJfRMJdMMOiXKNiWxSDIWis2Fh4t/TlDW1hyk3ORJUIJ8YYlfOngUKpEAklaZyDe3+r9yTaiDvzY92mcUoRVDD/u9ZFMWtDGZx5h+ZflQuAMnGKCIB+GN0qjCw+v20TWP8s25a0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772009782; c=relaxed/simple;
	bh=VAvPNBcS6K1A7dVEFNuDOkfGtWQ/7kbOPXG77uNI0+g=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=d52um87NMsysB9IEf4H1Rl+mvIy9vDxgizI8gqs6UZn2K82G0U2DbyiSr9peS+KXy88hdGEzovBQP8OWtP3Y6/2/rAZRdrvbY3hvzN7g6Xs8RUOFOiW+FNmfI675LJF5uqJZA6ULSpMlPCk/F9zb6L679zhK3TB2NHzglkViRfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=hnc6JeqI; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1772009781; x=1803545781;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VAvPNBcS6K1A7dVEFNuDOkfGtWQ/7kbOPXG77uNI0+g=;
  b=hnc6JeqIsZQ3YDtypB/4QmXjghPYvsmc341s0klDTl1J2UHTEd3bVDeA
   2bHTwZkBjt/B55DWV3OBPYzsS5nv8jWHruUmH8MtD8UbbP/0P9Hmed/BT
   Ia5Fc68PZvXnZ4rdbV4oNxxJUfKHJblG+I25HbkDJtEf8HUJFHinGX0CR
   3h4PYxPv2a4dj9x+XQdZkJ1LsUkUorB81O7y1bjqBJ5RbF4pO2vyhM+SR
   piB+uZ5SXJjGQgfNFjoWSdM2gTIE57dWytEktCt/3EZ4uSFoZHXabMjoB
   DLuhRSFA+821gqdCKli/26tYwd0JmDPB5v6IukiNRWYJrr5HRzhBjbgxI
   g==;
X-CSE-ConnectionGUID: CuTHRctdSuOo+CeX/pVyrg==
X-CSE-MsgGUID: l01JtG8PRkGjfh2LIX/aCQ==
X-IronPort-AV: E=Sophos;i="6.21,310,1763449200"; 
   d="scan'208";a="61258794"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 01:56:20 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.35; Wed, 25 Feb 2026 01:55:50 -0700
Received: from che-lt-i67131.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Wed, 25 Feb 2026 01:55:40 -0700
From: Manikandan Muralidharan <manikandan.m@microchip.com>
To: <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>,
	<rfoss@kernel.org>, <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
	<jernej.skrabec@gmail.com>, <airlied@gmail.com>, <simona@ffwll.ch>,
	<maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
	<tzimmermann@suse.de>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<linux@armlinux.org.uk>, <ebiggers@google.com>, <martin.petersen@oracle.com>,
	<ardb@kernel.org>, <tytso@mit.edu>, <dri-devel@lists.freedesktop.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>
CC: Ryan Wanner <Ryan.Wanner@microchip.com>, Manikandan Muralidharan
	<manikandan.m@microchip.com>
Subject: [PATCH 1/6] ARM: dts: microchip: sama7d65: add LCD controller
Date: Wed, 25 Feb 2026 14:24:25 +0530
Message-ID: <20260225085430.480052-2-manikandan.m@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260225085430.480052-1-manikandan.m@microchip.com>
References: <20260225085430.480052-1-manikandan.m@microchip.com>
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
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	TAGGED_FROM(0.00)[bounces-268206-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,ffwll.ch,linux.intel.com,suse.de,microchip.com,bootlin.com,tuxon.dev,armlinux.org.uk,google.com,oracle.com,mit.edu,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[manikandan.m@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 8968019485B
X-Rspamd-Action: no action

From: Ryan Wanner <Ryan.Wanner@microchip.com>

Add support for LCD controller node

Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 26 +++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index e21556f46384..b2fe76115aec 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -278,6 +278,32 @@ sdmmc1: mmc@e1208000 {
 			status = "disabled";
 		};
 
+		xlcdc: lcd-controller@e1400000{
+			compatible = "microchip,sama7d65-xlcdc";
+			reg = <0xe1400000 0x2000>;
+			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&pmc PMC_TYPE_PERIPHERAL 56>, <&pmc PMC_TYPE_GCK 56>, <&clk32k 1>;
+			clock-names = "periph_clk", "sys_clk", "slow_clk";
+			status = "disabled";
+
+			display-controller {
+				compatible = "atmel,hlcdc-display-controller";
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+					#address-cells = <1>;
+					#size-cells = <0>;
+				};
+			};
+
+			pwm {
+				compatible = "atmel,hlcdc-pwm";
+				#pwm-cells = <3>;
+			};
+		};
+
 		aes: crypto@e1600000 {
 			compatible = "microchip,sama7d65-aes", "atmel,at91sam9g46-aes";
 			reg = <0xe1600000 0x100>;
-- 
2.25.1


