Return-Path: <devicetree+bounces-277138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBNIIjKEumnrXQIAu9opvQ
	(envelope-from <devicetree+bounces-277138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:53:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CE72BA454
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:53:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 77E833069E4C
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 10:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 279AA39A04F;
	Wed, 18 Mar 2026 10:51:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DADF9396B6F
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 10:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773831105; cv=none; b=DvLKbE69dRb4gyKI7i1VTicaNlTmy3aVDNc/yokkRICuBIJcW4Sg0lbqgdr67Nhe0EMq+kgycILQLz8ZHBnTuDBZByDWT6APY4U+ZW2TWlRc9K2PlFs4Gq5B8qsnfLWCTJFycdWqtyr3qZ/EEawoISE3kwHvV9j8SMwoaXKKlDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773831105; c=relaxed/simple;
	bh=fY7ASz0zWeUR8O66cYDJopAwvXuoXz2od4ZmbubNWsE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=l7iH7BmjWnPo0Ykm9rkjIYzS8ikt7vAsTqS5I4EVM/TTX6GFzFzxZ3JiH7ytxb7rhCfcuB1NJ4V6Elt/7AQYB0Vo4el7BQALXD66PFKbJKZnX9GbGM8IRcm7+Cjf8Dw3bjQs8KEZxKykFD2BBP9iKRNpJalaW52Z8JJdVOEWIUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUn-0001WJ-F0; Wed, 18 Mar 2026 11:51:25 +0100
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac] helo=dude04)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUn-000tSN-00;
	Wed, 18 Mar 2026 11:51:25 +0100
Received: from ore by dude04 with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1w2oUm-00000003RII-3uSv;
	Wed, 18 Mar 2026 11:51:24 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: David Jander <david@protonic.nl>,
	stable@vger.kernel.org,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v1 1/7] ARM: dts: stm32: stm32mp15x-mecio1-io: Enable internal ADC reference
Date: Wed, 18 Mar 2026 11:51:17 +0100
Message-ID: <20260318105123.819807-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260318105123.819807-1-o.rempel@pengutronix.de>
References: <20260318105123.819807-1-o.rempel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [1.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,foss.st.com];
	RCVD_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277138-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[o.rempel@pengutronix.de,devicetree@vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[protonic.nl:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pengutronix.de:email,pengutronix.de:mid]
X-Rspamd-Queue-Id: 08CE72BA454
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: David Jander <david@protonic.nl>

Switch the ADC reference supply from the general 3.3V rail to the
internal 2.5V VREFBUF regulator. The ADC circuits on this board are
designed for the internal 2.5V reference. Without this change, all ADC
measurement values are incorrect.

Fixes: 8267753c891c ("ARM: dts: stm32: Add MECIO1 and MECT1S board variants")
Cc: <stable@vger.kernel.org>
Signed-off-by: David Jander <david@protonic.nl>
Co-developed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi b/arch/arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi
index 915ba2526f45..1ce01bac9814 100644
--- a/arch/arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi
+++ b/arch/arm/boot/dts/st/stm32mp15x-mecio1-io.dtsi
@@ -95,7 +95,7 @@ &adc {
 	pinctrl-names = "default";
 	vdd-supply = <&v3v3>;
 	vdda-supply = <&v3v3>;
-	vref-supply = <&v3v3>;
+	vref-supply = <&vrefbuf>;
 	status = "okay";
 };
 
@@ -412,6 +412,13 @@ &usbphyc_port1 {
 	phy-supply = <&v3v3>;
 };
 
+&vrefbuf {
+	regulator-min-microvolt = <2500000>;
+	regulator-max-microvolt = <2500000>;
+	vdda-supply = <&v3v3>;
+	status = "okay";
+};
+
 &pinctrl {
 	adc12_pins_mecsbc: adc12-ain-mecsbc-0 {
 		pins {
-- 
2.47.3


