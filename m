Return-Path: <devicetree+bounces-311921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qkv8JYTvL2pIJQUAu9opvQ
	(envelope-from <devicetree+bounces-311921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:26:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 007476862FA
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:26:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=einfochips.com header.s=NAESA-Selector1 header.b=WGlO0tRm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311921-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311921-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=einfochips.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 24DC3308A5F2
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 504703E92A5;
	Mon, 15 Jun 2026 12:21:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from naesa05.arrow.com (naesa05.arrow.com [216.150.161.26])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE333E866C;
	Mon, 15 Jun 2026 12:21:28 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781526090; cv=none; b=O0Xf7166qW8/FBw2hK3pExWIT1gK4Inii44Zn6PoN8igt/RNX8afAJGZ8UDtZwo3uHecODQi9YAuh2GA6hmmGv1+dwags6sVxo8z2kbP84yYJ00MvnZIsXU+EnKwNEzmdPTF0S/1pbc5Jx9XJkszuTNyXuOpvGSoJ14ZNO2/UF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781526090; c=relaxed/simple;
	bh=E4UJjPbIbx/AMRxoHb0usfCVZCCwtCrFuUv99B+UnfI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jm0gwRCMWiaf8KNIXV4SMsl4u1m8/hQyEPHSh6NyW7UzqCK1E0phKXBTsxpGW6PeDGbObVXcpuDSRk/oCbquFJGTFKK1O7OM7wIAe543XUFE2fhV1L4i2nQnRroStgTBhdosyOCT4KufAHdBu4ZPZMvCy8Lsl/I4/UIF01swoek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=einfochips.com; spf=pass smtp.mailfrom=einfochips.com; dkim=pass (2048-bit key) header.d=einfochips.com header.i=@einfochips.com header.b=WGlO0tRm; arc=none smtp.client-ip=216.150.161.26
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=einfochips.com; i=@einfochips.com; l=1890; q=dns/txt;
  s=NAESA-Selector1; t=1781526089; x=1813062089;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vvvQffFpjs/VksFWNOIERELN6UIGdOwIgArUo+fkTPo=;
  b=WGlO0tRmdRiXwZI7NTLYDgd+hEal0MEJrpx3p5s+Lsx8nyStxzmSUdpP
   mml5Ih2HTh0lVDXcDvlxlJFca4Y9V2ST6QC96eDXrOEz6pfEbAk/ypuIb
   TzDdeoeNDJHOXZRkWQ0Iito+4wilVvDuZ7QCSeP0Huf+jm07GPm12a226
   Sp6olf44ZdChlZ4UjpKQaahe7u9q4vcbGtXvcpWGa0E6I6sI21dA3K3UP
   ta6G52HPlmUnqPLb8W5VVNIf/a3qv0kbVtnVMZodvBz3pKoZ12Zf88l33
   FUhTlC25R9bI1HJa/8S5eahGYIvCCT1+ONN/PWMeOlQQKJE5AIBo73MMw
   A==;
X-CSE-ConnectionGUID: 0UyMlXg/QVGVO5QCy9Q4kQ==
X-CSE-MsgGUID: ecQ1NBbKTDuOl2WWoQ/fUA==
X-IronPort-AV: E=Sophos;i="6.24,206,1774332000"; 
   d="scan'208";a="55984201"
Received: from unknown (HELO eicahmirelay01.einfochips.com) ([10.100.49.50])
  by naesa05out.arrow.com with ESMTP; 15 Jun 2026 06:20:20 -0600
Received: from AHMCPU1888.ap.corp.arrow.com ([172.25.5.100]) by eicahmirelay01.einfochips.com with Microsoft SMTPSVC(10.0.20348.1);
	 Mon, 15 Jun 2026 17:50:16 +0530
From: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	Min Lin <linmin@eswincomputing.com>
Cc: Yulin Lu <luyulin@eswincomputing.com>,
	Samuel Holland <samuel.holland@sifive.com>,
	Darshan Prajapati <darshan.prajapati@einfochips.com>,
	Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>,
	Pritesh Patel <pritesh.patel@einfochips.com>
Subject: [PATCH 2/7] riscv: dts: eswin: add clock generator for EIC7700 SoC
Date: Mon, 15 Jun 2026 17:50:11 +0530
Message-Id: <20260615122016.1110206-3-pinkesh.vaghela@einfochips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
References: <20260615122016.1110206-1-pinkesh.vaghela@einfochips.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-OriginalArrivalTime: 15 Jun 2026 12:20:16.0878 (UTC) FILETIME=[532F78E0:01DCFCC1]
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[einfochips.com,reject];
	R_DKIM_ALLOW(-0.20)[einfochips.com:s=NAESA-Selector1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311921-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:lee@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:pjw@kernel.org,m:palmer@dabbelt.com,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-riscv@lists.infradead.org,m:linmin@eswincomputing.com,m:luyulin@eswincomputing.com,m:samuel.holland@sifive.com,m:darshan.prajapati@einfochips.com,m:pinkesh.vaghela@einfochips.com,m:pritesh.patel@einfochips.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[pinkesh.vaghela@einfochips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[einfochips.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,einfochips.com:dkim,einfochips.com:email,einfochips.com:mid,einfochips.com:from_mime,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 007476862FA

From: Pritesh Patel <pritesh.patel@einfochips.com>

Add clock generator node for EIC7700 SoC.
HiFive Premier P550 boards have 24MHz crystal oscillator to provide
the input clock.

Signed-off-by: Pritesh Patel <pritesh.patel@einfochips.com>
Signed-off-by: Pinkesh Vaghela <pinkesh.vaghela@einfochips.com>
---
 .../boot/dts/eswin/eic7700-hifive-premier-p550.dts  |  5 +++++
 arch/riscv/boot/dts/eswin/eic7700.dtsi              | 13 +++++++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
index 131ed1fc6b2e..1fb92f0e7c55 100644
--- a/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
+++ b/arch/riscv/boot/dts/eswin/eic7700-hifive-premier-p550.dts
@@ -20,6 +20,11 @@ chosen {
 	};
 };
 
+&xtal {
+	clock-frequency = <24000000>;
+	clock-output-names = "xtal24m";
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/riscv/boot/dts/eswin/eic7700.dtsi b/arch/riscv/boot/dts/eswin/eic7700.dtsi
index 430a210f01e6..a7ebb1115958 100644
--- a/arch/riscv/boot/dts/eswin/eic7700.dtsi
+++ b/arch/riscv/boot/dts/eswin/eic7700.dtsi
@@ -4,6 +4,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/clock/eswin,eic7700-clock.h>
 #include <dt-bindings/reset/eswin,eic7700-reset.h>
 
 / {
@@ -203,6 +204,11 @@ pmu {
 				<0x00000000 0x0000000f 0xfffffffc 0x000000ff 0x00000078>;
 	};
 
+	xtal: oscillator {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		ranges;
@@ -343,6 +349,13 @@ gpioD: gpio-port@3 {
 			};
 		};
 
+		clk: clock-controller@51828000 {
+			compatible = "eswin,eic7700-clock";
+			reg = <0x0 0x51828000 0x0 0x300>;
+			clocks = <&xtal>;
+			#clock-cells = <1>;
+		};
+
 		reset: reset-controller@51828300 {
 			compatible = "eswin,eic7700-reset";
 			reg = <0x0 0x51828300 0x0 0x200>;
-- 
2.34.1


