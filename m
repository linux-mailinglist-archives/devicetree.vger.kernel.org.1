Return-Path: <devicetree+bounces-317583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VdiKBnyQQ2qDcAoAu9opvQ
	(envelope-from <devicetree+bounces-317583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:46:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E17F56E2667
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:46:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=microchip.com header.s=mchp header.b=EGKMhbw1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317583-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317583-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=microchip.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 83D4A3030495
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2654C3B1EFC;
	Tue, 30 Jun 2026 09:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2510399357;
	Tue, 30 Jun 2026 09:38:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812303; cv=none; b=p+sgkadGRRcBorbgpKb1x3sKEpktxHnrisDUA0hsfCCXybKtlnXDLBx4TU0i7Nlh+Mz7bTyWCh8X9/GtSOmuJlYLQTV9BUhq4/VDrpmrHOgklEuxTRYzPu82E41CHG36X7XIORKvxzoqLWGUjqC7xVNHgYkvmajNAkqYResGFlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812303; c=relaxed/simple;
	bh=qPxtI+f+BE5aWVid8LOQEajXcJY4oSXCvUiv/NY6ixY=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=OHeOZMyF9oLPqH6l/cjgDghUXC8omr2CahKLka5ZsmkHrD0dIijpgKIi5LuyVQhSHXnd7QdY6nvhRJ1fw4ID7TJ3nJK0/z8W2O4zkDLhv3i513CoyxhSl+VVuKvH253rueAQ9PkJEytuqJRF1QUWIWpTCpYAcpTAS7IKvxuAgSQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=EGKMhbw1; arc=none smtp.client-ip=68.232.154.123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1782812301; x=1814348301;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=qPxtI+f+BE5aWVid8LOQEajXcJY4oSXCvUiv/NY6ixY=;
  b=EGKMhbw1DqyQ0g4WNq5jNCEL+1g9wc7nQeL+g2zOYsBce7L4WV1Qi7Dj
   aKxVNWtavPqdZPMfh2+at5W4nAJ5l23eIsIf/jXnczv3XeXioyn/Sqjeq
   toOiCNF+3n8cWbzHCJTs+KczP2kISk9Id5T3JVuV0o488261dQNbHv2qu
   o71/Q4vHRHoV452QNxwoDHKNyGZ1IzATNE9qUoEKFckJu864DbzDNv1h0
   nmhzOGyjlDtdBVkBXKSaiMqMbu7i6A2OwdnIGZ8Qihfd3Y/cXrI6ayjM4
   Ak2S5NwVy0q7CmxE52x16KCm9VW7+UIBw0jOyxeNro7TVVm8FGSj1auaN
   Q==;
X-CSE-ConnectionGUID: DMe9/CRHQ/yCFfdCFRbxVQ==
X-CSE-MsgGUID: P4Zsrn08TZebKbn4DPHosg==
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="59032715"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 02:38:21 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.43; Tue, 30 Jun 2026 02:38:20 -0700
Received: from che-ll-i67070.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 30 Jun 2026 02:38:12 -0700
From: Varshini Rajendran <varshini.rajendran@microchip.com>
To: <ehristev@kernel.org>, <jic23@kernel.org>, <dlechner@baylibre.com>,
	<nuno.sa@analog.com>, <andy@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<srini@kernel.org>, <marcelo.schmitt@analog.com>, <jorge.marques@analog.com>,
	<mazziesaccount@gmail.com>, <Jonathan.Santos@analog.com>,
	<jishnu.prakash@oss.qualcomm.com>, <antoniu.miclaus@analog.com>,
	<duje@dujemihanovic.xyz>, <varshini.rajendran@microchip.com>,
	<linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 11/13] ARM: dts: microchip: sama7d65: add cells for temperature calibration
Date: Tue, 30 Jun 2026 15:06:01 +0530
Message-ID: <20260630093603.38663-12-varshini.rajendran@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260630093603.38663-1-varshini.rajendran@microchip.com>
References: <20260630093603.38663-1-varshini.rajendran@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317583-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[vger.kernel.org:server fail,sto.lore.kernel.org:server fail,microchip.com:server fail];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[varshini.rajendran@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:marcelo.schmitt@analog.com,m:jorge.marques@analog.com,m:mazziesaccount@gmail.com,m:Jonathan.Santos@analog.com,m:jishnu.prakash@oss.qualcomm.com,m:antoniu.miclaus@analog.com,m:duje@dujemihanovic.xyz,m:varshini.rajendran@microchip.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[kernel.org,baylibre.com,analog.com,microchip.com,bootlin.com,tuxon.dev,gmail.com,oss.qualcomm.com,dujemihanovic.xyz,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varshini.rajendran@microchip.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[microchip.com:+];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E17F56E2667

Add NVMEM cell to ADC for temperature calibration data.

Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index 5867fda378b1..c336f863406d 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -323,6 +323,8 @@ adc: adc@e1000000 {
 			atmel,trigger-edge-type = <IRQ_TYPE_EDGE_RISING>;
 			atmel,startup-time-ms = <4>;
 			#io-channel-cells = <1>;
+			nvmem-cells = <&temperature_calib>;
+			nvmem-cell-names = "temperature_calib";
 			status = "disabled";
 		};
 
-- 
2.34.1


