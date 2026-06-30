Return-Path: <devicetree+bounces-317585-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id raZwGp+QQ2qdcAoAu9opvQ
	(envelope-from <devicetree+bounces-317585-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:47:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 213686E268C
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:47:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=microchip.com header.s=mchp header.b=nggM+Frq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317585-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317585-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=reject) header.from=microchip.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B08673065A65
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:39:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4ECFC38C407;
	Tue, 30 Jun 2026 09:38:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F06DA3D6493;
	Tue, 30 Jun 2026 09:38:39 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782812321; cv=none; b=DKDPbAufRuFX5fUJ2SNz//17Xj0qP2MPTXNY/wGKH2eHOqjQxTP6cPzQ5dKOQL3EkeEFZNru1N3pEWdaNBRC4XvoMuY++4iZFNg91P/t8E1iXV1DH/28/PURaB2wzd9mAW083PtE1R/XiNDhMw2nrb+vgIlrlfvwHMdzNCGmmL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782812321; c=relaxed/simple;
	bh=5xYA55UOhzIXToSE5GZpeE9CT0EHf953ZhVrNg1L6YA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=MXfsgh2sU3kJmYpaoR32QZoKEk7fNjmapd1awGf2dFRw9MUaiqoLTexY9udRe6CLZRhMlVMMdH/HqEXGZzRQ79dQhutXinHVb1yfP8DUTYlV9DkcMz7ypUyiNcXYrwtGT8iDFVA3I6zwLtF11nceugTzK62jyONMi/6VM6MGUrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=nggM+Frq; arc=none smtp.client-ip=68.232.154.123
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1782812319; x=1814348319;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=5xYA55UOhzIXToSE5GZpeE9CT0EHf953ZhVrNg1L6YA=;
  b=nggM+Frq6VlAtxRv+Fc+sRaOw0dhxN+tXpyJUCarwbUNI5ytrPFHFsFp
   xGRsLab0A6DgzN81nG2IvLdoUAvoZ6WhMRx5cGymOy/YRs0OFKgvQhRdV
   Uch1pfCyTLAvzAWWc1HiKTEFzmeEoRddf1wlnDAU8ZLUuKj4snHTAZ9v3
   inW6NUtlbzgPbu2H/akaUsCGoqaRFdE6yWmCm+yE0uy2Yc43M9RyGy+EJ
   iQnAxvmU7YUruOrlh4u+wg/7lf7xvK7GNaOP/W/IX20DvO5gRD5tEsb3X
   oQHvE4tcCBYE/nrPQBPLRvR2tJVckJfZGZu0V40MjE9oxDWFY0QBcmKrn
   g==;
X-CSE-ConnectionGUID: SUqO/kxASaKWBXK1VeZsfw==
X-CSE-MsgGUID: Bg9g48AeTziF9k/8sH2P2A==
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; 
   d="scan'208";a="227053760"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Jun 2026 02:38:39 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.43; Tue, 30 Jun 2026 02:38:38 -0700
Received: from che-ll-i67070.microchip.com (10.10.85.11) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Tue, 30 Jun 2026 02:38:30 -0700
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
Subject: [PATCH v3 13/13] ARM: dts: microchip: sama7d65: add thermal zones node
Date: Tue, 30 Jun 2026 15:06:03 +0530
Message-ID: <20260630093603.38663-14-varshini.rajendran@microchip.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317585-lists,devicetree=lfdr.de];
	URIBL_MULTI_FAIL(0.00)[microchip.com:server fail,vger.kernel.org:server fail,sto.lore.kernel.org:server fail];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 213686E268C

Add thermal zones node with its associated trips and cooling-maps.
It uses CPUFreq as cooling device for temperatures in the interval
[90, 100) degrees Celsius and describe the temperature of 100 degrees
Celsius as critical temperature. System will shut down when reaching
critical temperature.

Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
---
 arch/arm/boot/dts/microchip/sama7d65.dtsi | 42 +++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
index 89904397d021..f2140010d337 100644
--- a/arch/arm/boot/dts/microchip/sama7d65.dtsi
+++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
@@ -16,6 +16,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/mfd/at91-usart.h>
 #include <dt-bindings/nvmem/microchip,sama7g5-otpc.h>
+#include <dt-bindings/thermal/thermal.h>
 
 / {
 	model = "Microchip SAMA7D65 family SoC";
@@ -38,6 +39,7 @@ cpu0: cpu@0 {
 			i-cache-size = <0x8000>;	// L1, 32 KB
 			next-level-cache = <&L2>;
 			operating-points-v2 = <&cpu_opp_table>;
+			#cooling-cells = <2>; /* min followed by max */
 
 			L2: l2-cache {
 				compatible = "cache";
@@ -127,6 +129,46 @@ thermal_sensor: thermal-sensor {
 		io-channel-names = "sensor-channel";
 	};
 
+	thermal-zones {
+		cpu_thermal: cpu-thermal {
+			polling-delay-passive = <1000>;
+			polling-delay = <5000>;
+			thermal-sensors = <&thermal_sensor>;
+
+			trips {
+				cpu_normal: cpu-alert0 {
+					temperature = <90000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				cpu_hot: cpu-alert1 {
+					temperature = <95000>;
+					hysteresis = <0>;
+					type = "passive";
+				};
+
+				cpu_critical: cpu-critical {
+					temperature = <100000>;
+					hysteresis = <0>;
+					type = "critical";
+				};
+			};
+
+			cooling-maps {
+				map0 {
+					trip = <&cpu_normal>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+
+				map1 {
+					trip = <&cpu_hot>;
+					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
+		};
+	};
+
 	soc {
 		compatible = "simple-bus";
 		ranges;
-- 
2.34.1


