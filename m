Return-Path: <devicetree+bounces-314780-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ry4lBuNnOmoc8QcAu9opvQ
	(envelope-from <devicetree+bounces-314780-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:02:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A89C26B67EF
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 13:02:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=microchip.com header.s=mchp header.b=Ic1W16XG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314780-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314780-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=microchip.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 185DA3045CA9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 11:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 120EF3D34B1;
	Tue, 23 Jun 2026 11:00:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6DA93D333C;
	Tue, 23 Jun 2026 11:00:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782212451; cv=none; b=icE9RQM75wLgAxw3jY7q/FJRNftN6g5aL/l27RxRWXLKsBbmum24cuNceXvpFkeNRU5ydaCBHuX6kb7W4lP/LjMG3toL2Ixv7Y0uWbH9SD3VO0PK4iHC8KqWTW9INDPya3diNWbFOKafRvH7h7h5lrUrPg219F39sDw1fIvxUVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782212451; c=relaxed/simple;
	bh=xo5iwXFK0E9pHQdJ+Y5ZSzvvpbR4uPF2/cc1u7E9VuE=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=H0T5R1QhWjq9+fd3ta2MSXVF6V88q3M9J/Je4epuwxxmOS0m+xxmgoYKOUAebJVRp0HmjoAWKDPapxos+dttkxJd9CsifL09yO6/hZNPj77KcHtvOgKgSpwrohtECvBeaN4Ag73054sn0EJq/uCGzB8lw4z35QoWkGSCcxPfHCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=Ic1W16XG; arc=none smtp.client-ip=68.232.154.123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1782212450; x=1813748450;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=xo5iwXFK0E9pHQdJ+Y5ZSzvvpbR4uPF2/cc1u7E9VuE=;
  b=Ic1W16XGzvKVZxuWN8UY9ITrQz6ka7hvAw6oLZuv3aDRRkb8sjrTF7A7
   Ga3txG6dPSUT3dcs105vtoTLb3hIM/D8lT3CM3c97EeEbUgKJkn+bEuL6
   WVsU7Kwhg5K6lHrGb+/gBigssTrhZm3GLv9GHpBW799eVXFHCBubgNxhF
   4C48gcimqIDzbXdqDoZvnLJIdPSqNPbgEA1hSv5IryfvzxlRvqraWLd6T
   jKF70thupFlbQ95iSSTAfBi+LmR6lkqd5/2hAJ2U2vEww18gFH+OILBp8
   BZ79vhGZnw/zO9W7YvZp68Byv9kvJL/eGkgkGbKGbSpkBK/U7St2DxmHL
   A==;
X-CSE-ConnectionGUID: HG4UDu/ESsOEp0yyfbVe3Q==
X-CSE-MsgGUID: aC55ILazSgi4ypNQoeKrvw==
X-IronPort-AV: E=Sophos;i="6.24,220,1774335600"; 
   d="scan'208";a="58700379"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 23 Jun 2026 04:00:50 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 23 Jun 2026 04:00:48 -0700
Received: from che-ll-i67070.microchip.com (10.10.85.11) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 23 Jun 2026 04:00:42 -0700
From: Varshini Rajendran <varshini.rajendran@microchip.com>
To: <ehristev@kernel.org>, <jic23@kernel.org>, <dlechner@baylibre.com>,
	<nuno.sa@analog.com>, <andy@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <nicolas.ferre@microchip.com>,
	<alexandre.belloni@bootlin.com>, <claudiu.beznea@tuxon.dev>,
	<srini@kernel.org>, <linux-iio@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>
CC: <varshini.rajendran@microchip.com>
Subject: [PATCH v2 06/12] ARM: dts: microchip: sama7d65: add cpu opps
Date: Tue, 23 Jun 2026 16:29:38 +0530
Message-ID: <20260623105944.128840-7-varshini.rajendran@microchip.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260623105944.128840-1-varshini.rajendran@microchip.com>
References: <20260623105944.128840-1-varshini.rajendran@microchip.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[microchip.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[microchip.com:s=mchp];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314780-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[varshini.rajendran@microchip.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:ehristev@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:srini@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:varshini.rajendran@microchip.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	DKIM_TRACE(0.00)[microchip.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[varshini.rajendran@microchip.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:dkim,microchip.com:email,microchip.com:mid,microchip.com:from_mime,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A89C26B67EF

Add CPU OPPs table for SAMA7D65.

Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 36 +++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index 67253bbc08df..94d49e20dc79 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -35,6 +35,7 @@ cpu0: cpu@0 {
 			d-cache-size = <0x8000>;	// L1, 32 KB
 			i-cache-size = <0x8000>;	// L1, 32 KB
 			next-level-cache = <&L2>;
+			operating-points-v2 = <&cpu_opp_table>;
 
 			L2: l2-cache {
 				compatible = "cache";
@@ -45,6 +46,41 @@ L2: l2-cache {
 		};
 	};
 
+	cpu_opp_table: opp-table {
+		compatible = "operating-points-v2";
+
+		opp-90000000 {
+			opp-hz = /bits/ 64 <90000000>;
+			opp-microvolt = <1050000 1050000 1225000>;
+			clock-latency-ns = <320000>;
+		};
+
+		opp-250000000 {
+			opp-hz = /bits/ 64 <250000000>;
+			opp-microvolt = <1050000 1050000 1225000>;
+			clock-latency-ns = <320000>;
+		};
+
+		opp-600000000 {
+			opp-hz = /bits/ 64 <600000000>;
+			opp-microvolt = <1050000 1050000 1225000>;
+			clock-latency-ns = <320000>;
+			opp-suspend;
+		};
+
+		opp-800000000 {
+			opp-hz = /bits/ 64 <800000000>;
+			opp-microvolt = <1150000 1125000 1225000>;
+			clock-latency-ns = <320000>;
+		};
+
+		opp-1000000002 {
+			opp-hz = /bits/ 64 <1000000002>;
+			opp-microvolt = <1250000 1225000 1300000>;
+			clock-latency-ns = <320000>;
+		};
+	};
+
 	clocks {
 		main_xtal: clock-mainxtal {
 			compatible = "fixed-clock";
-- 
2.34.1


