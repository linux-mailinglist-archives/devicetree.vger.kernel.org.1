Return-Path: <devicetree+bounces-263900-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIBsLx2kiWlU/wQAu9opvQ
	(envelope-from <devicetree+bounces-263900-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:08:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 16BB410D5C0
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 10:08:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A4F353019514
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 09:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B863A32BF21;
	Mon,  9 Feb 2026 09:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="sjD2PHR6"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CB732ABF1;
	Mon,  9 Feb 2026 09:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770628102; cv=none; b=fuHRpb0Ll2DGTMNxkde9NVarPZQ8QJZWCJCl6jxvLTi3nMcIxZ2nfosf6+5YMcAdIin5HC/oIZSdcOHYC4yj0e5wAvjaa3WqVWgKpW7SQSDx/Fv3ypgzRhzxXd2wggu9IYuCWb49RpqyGMgqXHzthQdrZUidJzvBlVa3KegoLeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770628102; c=relaxed/simple;
	bh=tJorA0fNCKm3BvR9HVxFu7GfXmHBPROs/lhg5ksDUYw=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=bvQEY/y2DAXZTbpKJWZDYLgDvfMZgMYZDt5KgxOW+rZb6wmdzOaiMrKbQSa1J0l2Po9qaziWE26GyJjbyEeqXeKR1iiUd8tXXgoplKKLDZq9on2L0NdPFBHx1L1EaPkCWKBjjkcktksT/sgGNQ6qUDseEDjIXtT8OxS+bSR4Z7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=sjD2PHR6; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1770628100; x=1802164100;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=tJorA0fNCKm3BvR9HVxFu7GfXmHBPROs/lhg5ksDUYw=;
  b=sjD2PHR6sgK0qmpOfpOAsY3Be+ucHvuRdflPhfdYhMcoOBOTArVzkiuI
   IkOTyfq2zj62yZ0LIqmtMVm+bjjHOEZY93tby02chHEdfFsu8GXFmen8y
   y51vEn42Pw2FcORohTQ1xWFV8AidfbYKFtrBGAKAX4LzjSuEGJWkMeTnz
   dHgPTJBGNjGaG16UMb8Mw4R8heBhuziztMTzmyz51idGiG/XJXYb9nPgL
   SRW0tABIN4USYwBGiERSAq1Y/uWZQtOd3jF4j5CPC86wUyt5R/k57b12c
   pA4u9nUBcI56r9cUlNCt0D9lOuwb802kfPSESOFw/PSy3U5VgQxLOUlft
   A==;
X-CSE-ConnectionGUID: 81ZPVNkQSz6nV3HsOCpGbA==
X-CSE-MsgGUID: 2cvv8S72RxCXiX09dmrrTA==
X-IronPort-AV: E=Sophos;i="6.21,281,1763449200"; 
   d="scan'208";a="284507848"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Feb 2026 02:08:14 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 9 Feb 2026 02:07:47 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 9 Feb 2026 02:07:44 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <varshini.rajendran@microchip.com>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH] ARM: dts: microchip: sam9x7: fix gpio-lines count for pioB
Date: Mon, 9 Feb 2026 11:07:35 +0200
Message-ID: <20260209090735.2016-1-mihai.sain@microchip.com>
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
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263900-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 16BB410D5C0
X-Rspamd-Action: no action

The pioB controller on the SAM9X7 SoC actually supports 27 GPIO lines.
The previous value of 26 was incorrect, leading to the last pin being
unavailable for use by the GPIO subsystem.
Update the #gpio-lines property to reflect
the correct hardware specification.

Fixes: 41af45af8bc3 ("ARM: dts: at91: sam9x7: add device tree for SoC")
Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/sam9x7.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
index 46dacbbd201d..d242d7a934d0 100644
--- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
+++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
@@ -1226,7 +1226,7 @@ pioB: gpio@fffff600 {
 				interrupt-controller;
 				#gpio-cells = <2>;
 				gpio-controller;
-				#gpio-lines = <26>;
+				#gpio-lines = <27>;
 				clocks = <&pmc PMC_TYPE_PERIPHERAL 3>;
 			};
 

base-commit: 05f7e89ab9731565d8a62e3b5d1ec206485eeb0b
-- 
2.53.0


