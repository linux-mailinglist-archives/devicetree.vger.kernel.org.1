Return-Path: <devicetree+bounces-259493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEt1LrJod2nCfQEAu9opvQ
	(envelope-from <devicetree+bounces-259493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:14:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E14788AA8
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:14:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21BFC3055628
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 13:11:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 850E73382FB;
	Mon, 26 Jan 2026 13:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="NIrfIwjV"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE5DB3382F2;
	Mon, 26 Jan 2026 13:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433115; cv=none; b=PrahShbFk8rD0rucHnGQ8ZgbJUXemgmbvUpC4Gt8DInry3eOqam2REQx8HGth63mdnAKGquwys3XRWTIsA8nRydfaKIZMjw8Bb3pL72ObtR7iqB8qlY93I/N5zKeV3HsJVIC9oSgVG5Q3a9l+GREuO0ksaZ9SUXjM+0Cg/wOrbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433115; c=relaxed/simple;
	bh=qgwSRI66vLiiiyC2j8OTPqaQNYDGhuB7pMuJpWExgOI=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type; b=BndCCFjf1I4iKY8/j5LACIseFRkTK2sbf3V1QzV8I1fevBqRf+gMRXm8Vh/InNvGvYfNEg4Dh8t9wmjseQGj+Vo0FUEpjo7JQdIGLBnOO4Og3Bl1wSca3wki76mfR3zvOWH1aoYq3ayVvUxGoQoXnLIC8pcrBL2X1mTycAYvvwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=NIrfIwjV; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1769433113; x=1800969113;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=qgwSRI66vLiiiyC2j8OTPqaQNYDGhuB7pMuJpWExgOI=;
  b=NIrfIwjVCPAR+N6EzAwZ2vL/jur5j14jiIZkhnEjlWgO0m0l9gjuSLz5
   +mjAVmq5KftQWKj2c+R5MvQdJqZ3GoSYOj788hXvDS0RW+zJm5Ql0mTWy
   nSEx/ALWXw9d0vTTgKgGkz95RDbIEmGp47p5F0/6p7pzzW6gTXRSlW3xp
   lx9yRO+7qjl9N2k6Mdf8jt8snUtsGIZahdIzpPpE2hrg+bukxRadCn/Ms
   BxYrpeoPOHQA1DnQf6XV3QR2l6S051ZU+cq6stb0ovceiAnD03kQMysyP
   Ah3wGR0gMCkT79RPJWGE0VOXqQ84gPh3jg9fVXzKpILaqT3WdVDEGR//s
   Q==;
X-CSE-ConnectionGUID: Az3rqHMsQl24QN4Xwb7X+w==
X-CSE-MsgGUID: dZk2bJ/QQ+qozjWPjcLGyA==
X-IronPort-AV: E=Sophos;i="6.21,255,1763449200"; 
   d="scan'208";a="59539141"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 26 Jan 2026 06:11:53 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Mon, 26 Jan 2026 06:11:22 -0700
Received: from archlinux.mchp-main.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 26 Jan 2026 06:11:20 -0700
From: Mihai Sain <mihai.sain@microchip.com>
To: <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
	<claudiu.beznea@tuxon.dev>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Mihai Sain <mihai.sain@microchip.com>
Subject: [PATCH] ARM: dts: microchip: sama7d65: add Cortex-A7 PMU node
Date: Mon, 26 Jan 2026 15:10:23 +0200
Message-ID: <20260126131035.6964-2-mihai.sain@microchip.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259493-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mihai.sain@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3E14788AA8
X-Rspamd-Action: no action

Add the Performance Monitoring Unit (PMU) node with the appropriate
compatible string, interrupt line, and affinity so that perf and other
PMU‑based tooling can function correctly on this SoC.

[root@SAMA7D65 ~]$ dmesg | grep -i pmu
[    1.487869] hw-perfevents: enabled with armv7_cortex_a7 PMU driver, 5 (8000000f) counters available

[root@SAMA7D65 ~]$ perf list hw
List of pre-defined events (to be used in -e or -M):

branch-instructions OR branches                    [Hardware event]
branch-misses                                      [Hardware event]
bus-cycles                                         [Hardware event]
cache-misses                                       [Hardware event]
cache-references                                   [Hardware event]
cpu-cycles OR cycles                               [Hardware event]
instructions                                       [Hardware event]

Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index 868045c650a7..1e1ca4f93969 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -45,6 +45,12 @@ L2: l2-cache {
 		};
 	};
 
+	pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+	};
+
 	clocks {
 		main_xtal: clock-mainxtal {
 			compatible = "fixed-clock";

base-commit: 63804fed149a6750ffd28610c5c1c98cce6bd377
-- 
2.52.0


