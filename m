Return-Path: <devicetree+bounces-267997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2IjRCYbanWk0SQQAu9opvQ
	(envelope-from <devicetree+bounces-267997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:06:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 9793D18A48E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:06:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 56F2E301A7A3
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C4723A7848;
	Tue, 24 Feb 2026 17:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b="jXmls00H"
X-Original-To: devicetree@vger.kernel.org
Received: from out-182.mta1.migadu.com (out-182.mta1.migadu.com [95.215.58.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEF62BDC0B
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771952759; cv=none; b=d2UnibqPgF9+4jQW+Dx7iFSI2fbWziz5r/qTV23qh4h68XQa87zAax3oiZf/Vmj9vWFOz1h/dueknVkVWEIZNlw9Dce8TkPjUlxhCkT5a6QDNg61owvql7k/nkJ17806r/xhhERLDQZ9OUoWqJXLQsMqbhMHQG04GSrVVxufeks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771952759; c=relaxed/simple;
	bh=2vh5QxSQk0DiU6NMTKln1suZjggBC6gtnv+Q2Hl+nIk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ceV5yOfj3LsSdYU8yV5IdgiyAE1NM80dukcscbRwCE019C0W+9u2SNKV/cc+8HblHBZclZqjC1FfE+QpRHHyOcCt+hnOYpY+3uVmC+M2CHAsuGqI42c+myKQRYw1NEMrInDi7u8Upbe+jsToA9+dvP019na7pLxVIqEdU92Tkmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com; spf=pass smtp.mailfrom=cknow-tech.com; dkim=pass (2048-bit key) header.d=cknow-tech.com header.i=@cknow-tech.com header.b=jXmls00H; arc=none smtp.client-ip=95.215.58.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow-tech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow-tech.com
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1771952753;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=ioP1qSExwiStIhsPUWCvZVeGtY9ld3ywuq6BtEqmxw0=;
	b=jXmls00HBdKEZ+Fi1Uq7rydjBUkhrg3zkIhggJ9VifP2kNFuEDi9xIrxO/0u9Vn3Zr+sKh
	aqT7m7CgcLhqTrh+cjTxvvpxs5uX87STnWNUCi4jcJC0v6s1zYXYRaaG2frAFHwHCHX/qH
	TM/JUWBjCq5H8pM0WVJ3piE2RBn2Cnbjqaz76t6wLpkqxw5XqJOmP69OO/B1WHcPS5fFhe
	6OkskUOWnBOitcNzLn+jFvNbC5brEIlx9VteO9ia3gHfq/I9DeiYhT1nLSJ0HcAvsh7+OH
	IIaQQsQqoguvTXuCLpR6jyeqIzm2UatvC9dmnz1dz4Q00U4rZFWZcw991vF4zQ==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Samuel Holland <samuel@sholland.org>,
	Maximilian Weigand <mweigand@mweigand.net>,
	Andreas Kemnade <andreas@kemnade.info>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	hrdl <git@hrdl.eu>,
	phantomas <phantomas@phantomas.xyz>,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH] arm64: dts: rockchip: Add battery and charger on rk3566-pinenote
Date: Tue, 24 Feb 2026 18:04:51 +0100
Message-ID: <20260224170531.516392-1-diederik@cknow-tech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[cknow-tech.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[cknow-tech.com:s=key1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-267997-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[diederik@cknow-tech.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[cknow-tech.com:+];
	DBL_PROHIBIT(0.00)[0.0.0.20:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sholland.org:email,cknow-tech.com:mid,cknow-tech.com:dkim,cknow-tech.com:email]
X-Rspamd-Queue-Id: 9793D18A48E
X-Rspamd-Action: no action

From: Samuel Holland <samuel@sholland.org>

The PineNote has a single cell 4000mAh battery which can be charged via
the rk817 PMIC.

Signed-off-by: Samuel Holland <samuel@sholland.org>
Co-developed-by: Maximilian Weigand <mweigand@mweigand.net>
Signed-off-by: Maximilian Weigand <mweigand@mweigand.net>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 .../boot/dts/rockchip/rk3566-pinenote.dtsi    | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
index 791719acb9dd..551d551a113b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinenote.dtsi
@@ -40,6 +40,25 @@ spk_amp: audio-amplifier {
 		sound-name-prefix = "Speaker Amp";
 	};
 
+	battery: battery {
+		compatible = "simple-battery";
+		charge-full-design-microamp-hours = <4000000>;
+		charge-term-current-microamp = <300000>;
+		constant-charge-current-max-microamp = <2000000>;
+		constant-charge-voltage-max-microvolt = <4200000>;
+		factory-internal-resistance-micro-ohms = <96000>;
+		voltage-max-design-microvolt = <4200000>;
+		voltage-min-design-microvolt = <3500000>;
+
+		ocv-capacity-celsius = <20>;
+		ocv-capacity-table-0 = <4168000 100>, <4109000 95>, <4066000 90>, <4023000 85>,
+					<3985000 80>, <3954000 75>, <3924000 70>, <3897000 65>,
+					<3866000 60>, <3826000 55>, <3804000 50>, <3789000 45>,
+					<3777000 40>, <3770000 35>, <3763000 30>, <3750000 25>,
+					<3732000 20>, <3710000 15>, <3680000 10>, <3670000  5>,
+					<3500000  0>;
+	};
+
 	dmic_codec: dmic-codec {
 		compatible = "dmic-codec";
 		num-channels = <6>;
@@ -260,6 +279,13 @@ rk817: pmic@20 {
 		vcc8-supply = <&vcc_sys>;
 		vcc9-supply = <&dcdc_boost>;
 
+		charger {
+			monitored-battery = <&battery>;
+			rockchip,resistor-sense-micro-ohms = <10000>;
+			rockchip,sleep-enter-current-microamp = <150000>;
+			rockchip,sleep-filter-current-microamp = <100000>;
+		};
+
 		regulators {
 			vdd_logic: DCDC_REG1 {
 				regulator-name = "vdd_logic";
-- 
2.51.0


